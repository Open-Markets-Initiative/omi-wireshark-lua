-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe C1Options OpeningProcess Pitch 1.0.34 Protocol
local omi_cboe_c1options_openingprocess_pitch_v1_0_34 = Proto("Omi.Cboe.C1Options.OpeningProcess.Pitch.v1.0.34", "Cboe C1Options OpeningProcess Pitch 1.0.34")

-- Protocol table
local cboe_c1options_openingprocess_pitch_v1_0_34 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe C1Options OpeningProcess Pitch 1.0.34 Fields
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.auction_only_price = ProtoField.new("Auction Only Price", "cboe.c1options.openingprocess.pitch.v1.0.34.auctiononlyprice", ftypes.DOUBLE, nil, nil, nil, "Uncollared VMIM price computed on the queuing book only.")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.auction_type = ProtoField.new("Auction Type", "cboe.c1options.openingprocess.pitch.v1.0.34.auctiontype", ftypes.STRING, nil, nil, nil, "Auction type indicator")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.buy_contracts = ProtoField.new("Buy Contracts", "cboe.c1options.openingprocess.pitch.v1.0.34.buycontracts", ftypes.UINT32, nil, nil, nil, "Cumulative Buy contracts at the Reference Price and above.")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.composite_market_bid_price = ProtoField.new("Composite Market Bid Price", "cboe.c1options.openingprocess.pitch.v1.0.34.compositemarketbidprice", ftypes.DOUBLE, nil, nil, nil, "Bid Price of the prevailing Composite Market")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.composite_market_offer_price = ProtoField.new("Composite Market Offer Price", "cboe.c1options.openingprocess.pitch.v1.0.34.compositemarketofferprice", ftypes.DOUBLE, nil, nil, nil, "Offer Price of the prevailing Composite Market.")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.epoch_time = ProtoField.new("Epoch Time", "cboe.c1options.openingprocess.pitch.v1.0.34.epochtime", ftypes.UINT32, nil, nil, nil, "Number of whole seconds since the Epoch (midnight January 1, 1970 UTC).")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.c1options.openingprocess.pitch.v1.0.34.feedsymbol", ftypes.STRING, nil, nil, nil, "Symbol right padded with spaces")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.c1options.openingprocess.pitch.v1.0.34.indicativeprice", ftypes.DOUBLE, nil, nil, nil, "Collared VMIM price computed on the combined queuing book and the continuous book. Equal to Reference Price for options that do not have a GTH trading session.")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.length = ProtoField.new("Length", "cboe.c1options.openingprocess.pitch.v1.0.34.length", ftypes.UINT16, nil, nil, nil, "Length of entire block of messages. Includes this header and Message Count messages to follow")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.lower_strike_price = ProtoField.new("Lower Strike Price", "cboe.c1options.openingprocess.pitch.v1.0.34.lowerstrikeprice", ftypes.DOUBLE, nil, nil, nil, "SOQ lower strike price")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.message_count = ProtoField.new("Message Count", "cboe.c1options.openingprocess.pitch.v1.0.34.messagecount", ftypes.UINT8, nil, nil, nil, "Number of messages to follow this header")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.message_length = ProtoField.new("Message Length", "cboe.c1options.openingprocess.pitch.v1.0.34.messagelength", ftypes.UINT8, nil, nil, nil, "Current Pitch message length")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.message_type = ProtoField.new("Message Type", "cboe.c1options.openingprocess.pitch.v1.0.34.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying this message type")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.midnight_reference = ProtoField.new("Midnight Reference", "cboe.c1options.openingprocess.pitch.v1.0.34.midnightreference", ftypes.UINT32, nil, nil, nil, "Midnight Eastern Time reference time for subsequent Time messages, expressed as number of whole seconds since the Epoch (midnight January 1, 1970 UTC).")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.multiplier = ProtoField.new("Multiplier", "cboe.c1options.openingprocess.pitch.v1.0.34.multiplier", ftypes.DOUBLE, nil, nil, nil, "Width multiplier.")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.opening_condition = ProtoField.new("Opening Condition", "cboe.c1options.openingprocess.pitch.v1.0.34.openingcondition", ftypes.STRING, nil, nil, nil, "Opening condition indicator")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.osi_symbol = ProtoField.new("Osi Symbol", "cboe.c1options.openingprocess.pitch.v1.0.34.osisymbol", ftypes.STRING)
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.price = ProtoField.new("Price", "cboe.c1options.openingprocess.pitch.v1.0.34.price", ftypes.DOUBLE, nil, nil, nil, "Auction price.")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.quantity = ProtoField.new("Quantity", "cboe.c1options.openingprocess.pitch.v1.0.34.quantity", ftypes.UINT32, nil, nil, nil, "Cumulative number of contracts executed during the auction.")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.reference_price = ProtoField.new("Reference Price", "cboe.c1options.openingprocess.pitch.v1.0.34.referenceprice", ftypes.DOUBLE, nil, nil, nil, "Collared VMIM price computed on the queuing book only.")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.sell_contracts = ProtoField.new("Sell Contracts", "cboe.c1options.openingprocess.pitch.v1.0.34.sellcontracts", ftypes.UINT32, nil, nil, nil, "Cumulative Sell contracts at the Reference Price and below.")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.sequence = ProtoField.new("Sequence", "cboe.c1options.openingprocess.pitch.v1.0.34.sequence", ftypes.UINT32, nil, nil, nil, "Sequence Number of the first message to follow this header")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.soq_identifier = ProtoField.new("Soq Identifier", "cboe.c1options.openingprocess.pitch.v1.0.34.soqidentifier", ftypes.STRING, nil, nil, nil, "Dissemination symbol of the final SOQ right padded with spaces.")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.symbol = ProtoField.new("Symbol", "cboe.c1options.openingprocess.pitch.v1.0.34.symbol", ftypes.STRING, nil, nil, nil, "Symbol right padded with spaces.")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.c1options.openingprocess.pitch.v1.0.34.symbolcondition", ftypes.STRING, nil, nil, nil, "Symbol condition indicator")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.time = ProtoField.new("Time", "cboe.c1options.openingprocess.pitch.v1.0.34.time", ftypes.UINT32, nil, nil, nil, "Number of whole seconds elapsed since the start of the current Eastern Time calendar day.")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.time_offset = ProtoField.new("Time Offset", "cboe.c1options.openingprocess.pitch.v1.0.34.timeoffset", ftypes.UINT32, nil, nil, nil, "Nanosecond offset from last unit timestamp.")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.time_reference = ProtoField.new("Time Reference", "cboe.c1options.openingprocess.pitch.v1.0.34.timereference", ftypes.UINT32, nil, nil, nil, "Number of whole seconds elapsed since the start of the current Eastern Time calendar day.")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.trade_date = ProtoField.new("Trade Date", "cboe.c1options.openingprocess.pitch.v1.0.34.tradedate", ftypes.UINT32, nil, nil, nil, "Current Trade Date")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.underlying = ProtoField.new("Underlying", "cboe.c1options.openingprocess.pitch.v1.0.34.underlying", ftypes.STRING, nil, nil, nil, "Underlying right padded with spaces.")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.unit = ProtoField.new("Unit", "cboe.c1options.openingprocess.pitch.v1.0.34.unit", ftypes.UINT8, nil, nil, nil, "Unit that applies to messages included in this header")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.upper_strike_price = ProtoField.new("Upper Strike Price", "cboe.c1options.openingprocess.pitch.v1.0.34.upperstrikeprice", ftypes.DOUBLE, nil, nil, nil, "SOQ upper strike price")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.width_type = ProtoField.new("Width Type", "cboe.c1options.openingprocess.pitch.v1.0.34.widthtype", ftypes.STRING, nil, nil, nil, "Width type indicator")

-- Cboe C1Options OpeningProcess Pitch 1.0.34 Framing
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.message = ProtoField.new("Message", "cboe.c1options.openingprocess.pitch.v1.0.34.message", ftypes.STRING)
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.message_header = ProtoField.new("Message Header", "cboe.c1options.openingprocess.pitch.v1.0.34.messageheader", ftypes.STRING)
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.packet = ProtoField.new("Packet", "cboe.c1options.openingprocess.pitch.v1.0.34.packet", ftypes.STRING, nil, nil, nil, "Pitch Udp Packet")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.packet_header = ProtoField.new("Packet Header", "cboe.c1options.openingprocess.pitch.v1.0.34.packetheader", ftypes.STRING)

-- Cboe C1Options OpeningProcess 1.0.34 Application Messages
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.c1options.openingprocess.pitch.v1.0.34.auctionsummarymessage", ftypes.STRING, nil, nil, nil, "Auction Summary messages are used to disseminate the results of an auction. An Opening or Re-Opening Auction Summary message for each symbol is sent at the conclusion of its Opening or Re-Opening auction and represents the Cboe Opening Price.")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.constituent_symbol_mapping_message = ProtoField.new("Constituent Symbol Mapping Message", "cboe.c1options.openingprocess.pitch.v1.0.34.constituentsymbolmappingmessage", ftypes.STRING, nil, nil, nil, "The Constituent Symbol Mapping message is only available on the C1 Exchange. This message is used to communicate which options series (if any) are Constituent Series in a Volatility Settlement Special Opening Quote (SOQ).")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.c1options.openingprocess.pitch.v1.0.34.endofsessionmessage", ftypes.STRING, nil, nil, nil, "The End of Session message is sent for the feed when all the units have shut down.")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.options_auction_update_message = ProtoField.new("Options Auction Update Message", "cboe.c1options.openingprocess.pitch.v1.0.34.optionsauctionupdatemessage", ftypes.STRING, nil, nil, nil, "Options Auction Update messages are used to disseminate price and size information and Composite Market bid and offer prices during Opening and Re-Opening (halt) auctions on the Cboe Options Exchange.")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.soq_strike_range_update_message = ProtoField.new("Soq Strike Range Update Message", "cboe.c1options.openingprocess.pitch.v1.0.34.soqstrikerangeupdatemessage", ftypes.STRING, nil, nil, nil, "The SOQ Strike Range Update message is only available on the C1 Exchange. This message disseminates the minimum and maximum strike prices of the price range used to calculate the Special Opening Quote (SOQ) on a Volatility Settlement date.")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.symbol_mapping_message = ProtoField.new("Symbol Mapping Message", "cboe.c1options.openingprocess.pitch.v1.0.34.symbolmappingmessage", ftypes.STRING, nil, nil, nil, "A Symbol Mapping message is used to map the 6 character multicast feed symbol field to an OSI symbol.")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.time_message = ProtoField.new("Time Message", "cboe.c1options.openingprocess.pitch.v1.0.34.timemessage", ftypes.STRING, nil, nil, nil, "A Time message is sent whenever the source time for a unit passes over a second boundary.")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.time_reference_message = ProtoField.new("Time Reference Message", "cboe.c1options.openingprocess.pitch.v1.0.34.timereferencemessage", ftypes.STRING, nil, nil, nil, "The Time Reference message is used to provide a midnight reference point for recipients of the feed.")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.width_update_message = ProtoField.new("Width Update Message", "cboe.c1options.openingprocess.pitch.v1.0.34.widthupdatemessage", ftypes.STRING, nil, nil, nil, "The Width Update message is used to communicate the opening quote width multiplier.")

-- Cboe C1Options OpeningProcess Pitch 1.0.34 Generated Fields
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.message_index = ProtoField.new("Message Index", "cboe.c1options.openingprocess.pitch.v1.0.34.messageindex", ftypes.UINT16)
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "cboe.c1options.openingprocess.pitch.v1.0.34.messagesequencenumber", ftypes.UINT64)
omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.timestamp = ProtoField.new("Timestamp", "cboe.c1options.openingprocess.pitch.v1.0.34.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Cboe C1Options OpeningProcess Pitch 1.0.34 Formatting
-----------------------------------------------------------------------

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
cboe_c1options_openingprocess_pitch_v1_0_34.format_timestamp = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe C1Options OpeningProcess Pitch 1.0.34 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Cboe C1Options OpeningProcess Pitch 1.0.34 Show Options
omi_cboe_c1options_openingprocess_pitch_v1_0_34.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")
omi_cboe_c1options_openingprocess_pitch_v1_0_34.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

-- Handle changed preferences
function omi_cboe_c1options_openingprocess_pitch_v1_0_34.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_c1options_openingprocess_pitch_v1_0_34.prefs.show_application_messages then
    show.application_messages = omi_cboe_c1options_openingprocess_pitch_v1_0_34.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_c1options_openingprocess_pitch_v1_0_34.prefs.show_headers then
    show.headers = omi_cboe_c1options_openingprocess_pitch_v1_0_34.prefs.show_headers
  end
  if show.structs ~= omi_cboe_c1options_openingprocess_pitch_v1_0_34.prefs.show_structs then
    show.structs = omi_cboe_c1options_openingprocess_pitch_v1_0_34.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_c1options_openingprocess_pitch_v1_0_34.prefs.show_indexes then
    show.indexes = omi_cboe_c1options_openingprocess_pitch_v1_0_34.prefs.show_indexes
  end
  if show.sequences ~= omi_cboe_c1options_openingprocess_pitch_v1_0_34.prefs.show_sequences then
    show.sequences = omi_cboe_c1options_openingprocess_pitch_v1_0_34.prefs.show_sequences
  end
  if cboe_c1options_openingprocess_pitch_v1_0_34.format_timestamp ~= omi_cboe_c1options_openingprocess_pitch_v1_0_34.prefs.format_timestamp then
    cboe_c1options_openingprocess_pitch_v1_0_34.format_timestamp = omi_cboe_c1options_openingprocess_pitch_v1_0_34.prefs.format_timestamp
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
cboe_c1options_openingprocess_pitch_v1_0_34.conversation = {}
cboe_c1options_openingprocess_pitch_v1_0_34.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
cboe_c1options_openingprocess_pitch_v1_0_34.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
cboe_c1options_openingprocess_pitch_v1_0_34.conversation.data = function(packet)
  local key = cboe_c1options_openingprocess_pitch_v1_0_34.conversation.key(packet)
  local data = cboe_c1options_openingprocess_pitch_v1_0_34.conversation.flows[key]
  if data == nil then
    data = { midnight_reference = { last = nil, frames = {} }, time = { last = nil, frames = {} } }
    cboe_c1options_openingprocess_pitch_v1_0_34.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
cboe_c1options_openingprocess_pitch_v1_0_34.conversation.current = nil


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
-- Cboe C1Options OpeningProcess Pitch 1.0.34 Fields
-----------------------------------------------------------------------

-- Auction Only Price
cboe_c1options_openingprocess_pitch_v1_0_34.auction_only_price = {}

-- Size: Auction Only Price
cboe_c1options_openingprocess_pitch_v1_0_34.auction_only_price.size = 8

-- Display: Auction Only Price
cboe_c1options_openingprocess_pitch_v1_0_34.auction_only_price.display = function(value)
  return "Auction Only Price: "..value
end

-- Translate: Auction Only Price
cboe_c1options_openingprocess_pitch_v1_0_34.auction_only_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Auction Only Price
cboe_c1options_openingprocess_pitch_v1_0_34.auction_only_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.auction_only_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_c1options_openingprocess_pitch_v1_0_34.auction_only_price.translate(raw)
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.auction_only_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.auction_only_price, range, value, display)

  return offset + length, value
end

-- Auction Type
cboe_c1options_openingprocess_pitch_v1_0_34.auction_type = {}

-- Size: Auction Type
cboe_c1options_openingprocess_pitch_v1_0_34.auction_type.size = 1

-- Display: Auction Type
cboe_c1options_openingprocess_pitch_v1_0_34.auction_type.display = function(value)
  if value == "G" then
    return "Auction Type: Gth Opening (G)"
  end
  if value == "O" then
    return "Auction Type: Rth Opening (O)"
  end
  if value == "H" then
    return "Auction Type: Halt Re Opening (H)"
  end
  if value == "V" then
    return "Auction Type: Volatility Opening (V)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
cboe_c1options_openingprocess_pitch_v1_0_34.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Buy Contracts
cboe_c1options_openingprocess_pitch_v1_0_34.buy_contracts = {}

-- Size: Buy Contracts
cboe_c1options_openingprocess_pitch_v1_0_34.buy_contracts.size = 4

-- Display: Buy Contracts
cboe_c1options_openingprocess_pitch_v1_0_34.buy_contracts.display = function(value)
  return "Buy Contracts: "..value
end

-- Dissect: Buy Contracts
cboe_c1options_openingprocess_pitch_v1_0_34.buy_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.buy_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.buy_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.buy_contracts, range, value, display)

  return offset + length, value
end

-- Composite Market Bid Price
cboe_c1options_openingprocess_pitch_v1_0_34.composite_market_bid_price = {}

-- Size: Composite Market Bid Price
cboe_c1options_openingprocess_pitch_v1_0_34.composite_market_bid_price.size = 8

-- Display: Composite Market Bid Price
cboe_c1options_openingprocess_pitch_v1_0_34.composite_market_bid_price.display = function(value)
  return "Composite Market Bid Price: "..value
end

-- Translate: Composite Market Bid Price
cboe_c1options_openingprocess_pitch_v1_0_34.composite_market_bid_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Bid Price
cboe_c1options_openingprocess_pitch_v1_0_34.composite_market_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.composite_market_bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_c1options_openingprocess_pitch_v1_0_34.composite_market_bid_price.translate(raw)
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.composite_market_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.composite_market_bid_price, range, value, display)

  return offset + length, value
end

-- Composite Market Offer Price
cboe_c1options_openingprocess_pitch_v1_0_34.composite_market_offer_price = {}

-- Size: Composite Market Offer Price
cboe_c1options_openingprocess_pitch_v1_0_34.composite_market_offer_price.size = 8

-- Display: Composite Market Offer Price
cboe_c1options_openingprocess_pitch_v1_0_34.composite_market_offer_price.display = function(value)
  return "Composite Market Offer Price: "..value
end

-- Translate: Composite Market Offer Price
cboe_c1options_openingprocess_pitch_v1_0_34.composite_market_offer_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Offer Price
cboe_c1options_openingprocess_pitch_v1_0_34.composite_market_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.composite_market_offer_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_c1options_openingprocess_pitch_v1_0_34.composite_market_offer_price.translate(raw)
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.composite_market_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.composite_market_offer_price, range, value, display)

  return offset + length, value
end

-- Epoch Time
cboe_c1options_openingprocess_pitch_v1_0_34.epoch_time = {}

-- Size: Epoch Time
cboe_c1options_openingprocess_pitch_v1_0_34.epoch_time.size = 4

-- Display: Epoch Time
cboe_c1options_openingprocess_pitch_v1_0_34.epoch_time.display = function(value)
  return "Epoch Time: "..value
end

-- Dissect: Epoch Time
cboe_c1options_openingprocess_pitch_v1_0_34.epoch_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.epoch_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.epoch_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.epoch_time, range, value, display)

  return offset + length, value
end

-- Feed Symbol
cboe_c1options_openingprocess_pitch_v1_0_34.feed_symbol = {}

-- Size: Feed Symbol
cboe_c1options_openingprocess_pitch_v1_0_34.feed_symbol.size = 6

-- Display: Feed Symbol
cboe_c1options_openingprocess_pitch_v1_0_34.feed_symbol.display = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_c1options_openingprocess_pitch_v1_0_34.feed_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.feed_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.feed_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Indicative Price
cboe_c1options_openingprocess_pitch_v1_0_34.indicative_price = {}

-- Size: Indicative Price
cboe_c1options_openingprocess_pitch_v1_0_34.indicative_price.size = 8

-- Display: Indicative Price
cboe_c1options_openingprocess_pitch_v1_0_34.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
cboe_c1options_openingprocess_pitch_v1_0_34.indicative_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Indicative Price
cboe_c1options_openingprocess_pitch_v1_0_34.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.indicative_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_c1options_openingprocess_pitch_v1_0_34.indicative_price.translate(raw)
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Length
cboe_c1options_openingprocess_pitch_v1_0_34.length = {}

-- Size: Length
cboe_c1options_openingprocess_pitch_v1_0_34.length.size = 2

-- Display: Length
cboe_c1options_openingprocess_pitch_v1_0_34.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_c1options_openingprocess_pitch_v1_0_34.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.length, range, value, display)

  return offset + length, value
end

-- Lower Strike Price
cboe_c1options_openingprocess_pitch_v1_0_34.lower_strike_price = {}

-- Size: Lower Strike Price
cboe_c1options_openingprocess_pitch_v1_0_34.lower_strike_price.size = 8

-- Display: Lower Strike Price
cboe_c1options_openingprocess_pitch_v1_0_34.lower_strike_price.display = function(value)
  return "Lower Strike Price: "..value
end

-- Translate: Lower Strike Price
cboe_c1options_openingprocess_pitch_v1_0_34.lower_strike_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Lower Strike Price
cboe_c1options_openingprocess_pitch_v1_0_34.lower_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.lower_strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_c1options_openingprocess_pitch_v1_0_34.lower_strike_price.translate(raw)
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.lower_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.lower_strike_price, range, value, display)

  return offset + length, value
end

-- Message Count
cboe_c1options_openingprocess_pitch_v1_0_34.message_count = {}

-- Size: Message Count
cboe_c1options_openingprocess_pitch_v1_0_34.message_count.size = 1

-- Display: Message Count
cboe_c1options_openingprocess_pitch_v1_0_34.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
cboe_c1options_openingprocess_pitch_v1_0_34.message_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_c1options_openingprocess_pitch_v1_0_34.message_length = {}

-- Size: Message Length
cboe_c1options_openingprocess_pitch_v1_0_34.message_length.size = 1

-- Display: Message Length
cboe_c1options_openingprocess_pitch_v1_0_34.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_c1options_openingprocess_pitch_v1_0_34.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_c1options_openingprocess_pitch_v1_0_34.message_type = {}

-- Size: Message Type
cboe_c1options_openingprocess_pitch_v1_0_34.message_type.size = 1

-- Display: Message Type
cboe_c1options_openingprocess_pitch_v1_0_34.message_type.display = function(value)
  if value == 0xB1 then
    return "Message Type: Time Reference Message (0xB1)"
  end
  if value == 0x20 then
    return "Message Type: Time Message (0x20)"
  end
  if value == 0xD1 then
    return "Message Type: Options Auction Update Message (0xD1)"
  end
  if value == 0x96 then
    return "Message Type: Auction Summary Message (0x96)"
  end
  if value == 0xD2 then
    return "Message Type: Width Update Message (0xD2)"
  end
  if value == 0x2E then
    return "Message Type: Symbol Mapping Message (0x2E)"
  end
  if value == 0x2D then
    return "Message Type: End Of Session Message (0x2D)"
  end
  if value == 0x9D then
    return "Message Type: Soq Strike Range Update Message (0x9D)"
  end
  if value == 0x9E then
    return "Message Type: Constituent Symbol Mapping Message (0x9E)"
  end

  return "Message Type: Unknown("..string.format("0x%02X", value)..")"
end

-- Dissect: Message Type
cboe_c1options_openingprocess_pitch_v1_0_34.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.message_type, range, value, display)

  return offset + length, value
end

-- Midnight Reference
cboe_c1options_openingprocess_pitch_v1_0_34.midnight_reference = {}

-- Size: Midnight Reference
cboe_c1options_openingprocess_pitch_v1_0_34.midnight_reference.size = 4

-- Store: Midnight Reference
cboe_c1options_openingprocess_pitch_v1_0_34.midnight_reference.current = nil

-- Generated: Midnight Reference
cboe_c1options_openingprocess_pitch_v1_0_34.midnight_reference.generated = function(value, range, packet, parent)
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.midnight_reference.display(value)
  local midnight_reference = parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.midnight_reference, range, value, display)
  midnight_reference:set_generated()
end

-- Display: Midnight Reference
cboe_c1options_openingprocess_pitch_v1_0_34.midnight_reference.display = function(value)
  -- Parse unix seconds timestamp
  return "Midnight Reference: "..os.date("%Y-%m-%d %H:%M:%S", value)
end

-- Dissect: Midnight Reference
cboe_c1options_openingprocess_pitch_v1_0_34.midnight_reference.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.midnight_reference.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.midnight_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.midnight_reference, range, value, display)

  return offset + length, value
end

-- Multiplier
cboe_c1options_openingprocess_pitch_v1_0_34.multiplier = {}

-- Size: Multiplier
cboe_c1options_openingprocess_pitch_v1_0_34.multiplier.size = 4

-- Display: Multiplier
cboe_c1options_openingprocess_pitch_v1_0_34.multiplier.display = function(value)
  return "Multiplier: "..value
end

-- Translate: Multiplier
cboe_c1options_openingprocess_pitch_v1_0_34.multiplier.translate = function(raw)
  return raw/10
end

-- Dissect: Multiplier
cboe_c1options_openingprocess_pitch_v1_0_34.multiplier.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.multiplier.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_c1options_openingprocess_pitch_v1_0_34.multiplier.translate(raw)
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.multiplier, range, value, display)

  return offset + length, value
end

-- Opening Condition
cboe_c1options_openingprocess_pitch_v1_0_34.opening_condition = {}

-- Size: Opening Condition
cboe_c1options_openingprocess_pitch_v1_0_34.opening_condition.size = 1

-- Display: Opening Condition
cboe_c1options_openingprocess_pitch_v1_0_34.opening_condition.display = function(value)
  if value == "O" then
    return "Opening Condition: Would Open (O)"
  end
  if value == "Q" then
    return "Opening Condition: Need Quote To Open (Q)"
  end
  if value == "B" then
    return "Opening Condition: Need More Buyers (B)"
  end
  if value == "S" then
    return "Opening Condition: Need More Sellers (S)"
  end
  if value == "C" then
    return "Opening Condition: Crossed Composite Market (C)"
  end

  return "Opening Condition: Unknown("..value..")"
end

-- Dissect: Opening Condition
cboe_c1options_openingprocess_pitch_v1_0_34.opening_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.opening_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.opening_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.opening_condition, range, value, display)

  return offset + length, value
end

-- Osi Symbol
cboe_c1options_openingprocess_pitch_v1_0_34.osi_symbol = {}

-- Size: Osi Symbol
cboe_c1options_openingprocess_pitch_v1_0_34.osi_symbol.size = 21

-- Display: Osi Symbol
cboe_c1options_openingprocess_pitch_v1_0_34.osi_symbol.display = function(value)
  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
cboe_c1options_openingprocess_pitch_v1_0_34.osi_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.osi_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.osi_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.osi_symbol, range, value, display)

  return offset + length, value
end

-- Price
cboe_c1options_openingprocess_pitch_v1_0_34.price = {}

-- Size: Price
cboe_c1options_openingprocess_pitch_v1_0_34.price.size = 8

-- Display: Price
cboe_c1options_openingprocess_pitch_v1_0_34.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cboe_c1options_openingprocess_pitch_v1_0_34.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
cboe_c1options_openingprocess_pitch_v1_0_34.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_c1options_openingprocess_pitch_v1_0_34.price.translate(raw)
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
cboe_c1options_openingprocess_pitch_v1_0_34.quantity = {}

-- Size: Quantity
cboe_c1options_openingprocess_pitch_v1_0_34.quantity.size = 4

-- Display: Quantity
cboe_c1options_openingprocess_pitch_v1_0_34.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
cboe_c1options_openingprocess_pitch_v1_0_34.quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reference Price
cboe_c1options_openingprocess_pitch_v1_0_34.reference_price = {}

-- Size: Reference Price
cboe_c1options_openingprocess_pitch_v1_0_34.reference_price.size = 8

-- Display: Reference Price
cboe_c1options_openingprocess_pitch_v1_0_34.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
cboe_c1options_openingprocess_pitch_v1_0_34.reference_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Reference Price
cboe_c1options_openingprocess_pitch_v1_0_34.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_c1options_openingprocess_pitch_v1_0_34.reference_price.translate(raw)
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Sell Contracts
cboe_c1options_openingprocess_pitch_v1_0_34.sell_contracts = {}

-- Size: Sell Contracts
cboe_c1options_openingprocess_pitch_v1_0_34.sell_contracts.size = 4

-- Display: Sell Contracts
cboe_c1options_openingprocess_pitch_v1_0_34.sell_contracts.display = function(value)
  return "Sell Contracts: "..value
end

-- Dissect: Sell Contracts
cboe_c1options_openingprocess_pitch_v1_0_34.sell_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.sell_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.sell_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.sell_contracts, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_c1options_openingprocess_pitch_v1_0_34.sequence = {}

-- Size: Sequence
cboe_c1options_openingprocess_pitch_v1_0_34.sequence.size = 4

-- Display: Sequence
cboe_c1options_openingprocess_pitch_v1_0_34.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_c1options_openingprocess_pitch_v1_0_34.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.sequence, range, value, display)

  return offset + length, value
end

-- Soq Identifier
cboe_c1options_openingprocess_pitch_v1_0_34.soq_identifier = {}

-- Size: Soq Identifier
cboe_c1options_openingprocess_pitch_v1_0_34.soq_identifier.size = 20

-- Display: Soq Identifier
cboe_c1options_openingprocess_pitch_v1_0_34.soq_identifier.display = function(value)
  return "Soq Identifier: "..value
end

-- Dissect: Soq Identifier
cboe_c1options_openingprocess_pitch_v1_0_34.soq_identifier.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.soq_identifier.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.soq_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.soq_identifier, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_c1options_openingprocess_pitch_v1_0_34.symbol = {}

-- Size: Symbol
cboe_c1options_openingprocess_pitch_v1_0_34.symbol.size = 8

-- Display: Symbol
cboe_c1options_openingprocess_pitch_v1_0_34.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_c1options_openingprocess_pitch_v1_0_34.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Condition
cboe_c1options_openingprocess_pitch_v1_0_34.symbol_condition = {}

-- Size: Symbol Condition
cboe_c1options_openingprocess_pitch_v1_0_34.symbol_condition.size = 1

-- Display: Symbol Condition
cboe_c1options_openingprocess_pitch_v1_0_34.symbol_condition.display = function(value)
  if value == "N" then
    return "Symbol Condition: Normal (N)"
  end
  if value == "C" then
    return "Symbol Condition: Closing Only (C)"
  end

  return "Symbol Condition: Unknown("..value..")"
end

-- Dissect: Symbol Condition
cboe_c1options_openingprocess_pitch_v1_0_34.symbol_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.symbol_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.symbol_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.symbol_condition, range, value, display)

  return offset + length, value
end

-- Time
cboe_c1options_openingprocess_pitch_v1_0_34.time = {}

-- Size: Time
cboe_c1options_openingprocess_pitch_v1_0_34.time.size = 4

-- Store: Time
cboe_c1options_openingprocess_pitch_v1_0_34.time.current = nil

-- Generated: Time
cboe_c1options_openingprocess_pitch_v1_0_34.time.generated = function(value, range, packet, parent)
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.time.display(value)
  local time = parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.time, range, value, display)
  time:set_generated()
end

-- Display: Time
cboe_c1options_openingprocess_pitch_v1_0_34.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_c1options_openingprocess_pitch_v1_0_34.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_c1options_openingprocess_pitch_v1_0_34.time_offset = {}

-- Size: Time Offset
cboe_c1options_openingprocess_pitch_v1_0_34.time_offset.size = 4

-- Display: Time Offset
cboe_c1options_openingprocess_pitch_v1_0_34.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_c1options_openingprocess_pitch_v1_0_34.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Time Reference
cboe_c1options_openingprocess_pitch_v1_0_34.time_reference = {}

-- Size: Time Reference
cboe_c1options_openingprocess_pitch_v1_0_34.time_reference.size = 4

-- Display: Time Reference
cboe_c1options_openingprocess_pitch_v1_0_34.time_reference.display = function(value)
  return "Time Reference: "..value
end

-- Dissect: Time Reference
cboe_c1options_openingprocess_pitch_v1_0_34.time_reference.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.time_reference.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.time_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.time_reference, range, value, display)

  return offset + length, value
end

-- Trade Date
cboe_c1options_openingprocess_pitch_v1_0_34.trade_date = {}

-- Size: Trade Date
cboe_c1options_openingprocess_pitch_v1_0_34.trade_date.size = 4

-- Display: Trade Date
cboe_c1options_openingprocess_pitch_v1_0_34.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
cboe_c1options_openingprocess_pitch_v1_0_34.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Underlying
cboe_c1options_openingprocess_pitch_v1_0_34.underlying = {}

-- Size: Underlying
cboe_c1options_openingprocess_pitch_v1_0_34.underlying.size = 8

-- Display: Underlying
cboe_c1options_openingprocess_pitch_v1_0_34.underlying.display = function(value)
  return "Underlying: "..value
end

-- Dissect: Underlying
cboe_c1options_openingprocess_pitch_v1_0_34.underlying.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.underlying.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.underlying, range, value, display)

  return offset + length, value
end

-- Unit
cboe_c1options_openingprocess_pitch_v1_0_34.unit = {}

-- Size: Unit
cboe_c1options_openingprocess_pitch_v1_0_34.unit.size = 1

-- Display: Unit
cboe_c1options_openingprocess_pitch_v1_0_34.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_c1options_openingprocess_pitch_v1_0_34.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.unit, range, value, display)

  return offset + length, value
end

-- Upper Strike Price
cboe_c1options_openingprocess_pitch_v1_0_34.upper_strike_price = {}

-- Size: Upper Strike Price
cboe_c1options_openingprocess_pitch_v1_0_34.upper_strike_price.size = 8

-- Display: Upper Strike Price
cboe_c1options_openingprocess_pitch_v1_0_34.upper_strike_price.display = function(value)
  return "Upper Strike Price: "..value
end

-- Translate: Upper Strike Price
cboe_c1options_openingprocess_pitch_v1_0_34.upper_strike_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Upper Strike Price
cboe_c1options_openingprocess_pitch_v1_0_34.upper_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.upper_strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_c1options_openingprocess_pitch_v1_0_34.upper_strike_price.translate(raw)
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.upper_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.upper_strike_price, range, value, display)

  return offset + length, value
end

-- Width Type
cboe_c1options_openingprocess_pitch_v1_0_34.width_type = {}

-- Size: Width Type
cboe_c1options_openingprocess_pitch_v1_0_34.width_type.size = 1

-- Display: Width Type
cboe_c1options_openingprocess_pitch_v1_0_34.width_type.display = function(value)
  if value == "Q" then
    return "Width Type: Max Quote Width (Q)"
  end
  if value == "R" then
    return "Width Type: Regular (R)"
  end
  if value == "V" then
    return "Width Type: Volatility (V)"
  end

  return "Width Type: Unknown("..value..")"
end

-- Dissect: Width Type
cboe_c1options_openingprocess_pitch_v1_0_34.width_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.width_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.width_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.width_type, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_c1options_openingprocess_pitch_v1_0_34.timestamp = {}

-- Translate: Timestamp
cboe_c1options_openingprocess_pitch_v1_0_34.timestamp.translate = function(time_offset, stored_midnight_reference, stored_time)
  return UInt64.new((stored_midnight_reference + stored_time) * 1000000000 + time_offset)
end

-- Display: Timestamp
cboe_c1options_openingprocess_pitch_v1_0_34.timestamp.display = function(time_offset, stored_midnight_reference, stored_time)
  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", stored_midnight_reference + stored_time)..string.format("%09d", time_offset)
end

-- Composite: Timestamp
cboe_c1options_openingprocess_pitch_v1_0_34.timestamp.composite = function(buffer, offset, stored_midnight_reference, stored_time, packet, parent)
  local length = cboe_c1options_openingprocess_pitch_v1_0_34.time_offset.size
  local range = buffer(offset, length)
  local time_offset = range:le_uint()
  local value = cboe_c1options_openingprocess_pitch_v1_0_34.timestamp.translate(time_offset, stored_midnight_reference, stored_time)
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.timestamp.display(time_offset, stored_midnight_reference, stored_time)
  parent = parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.timestamp, range, value, display)

  cboe_c1options_openingprocess_pitch_v1_0_34.time.generated(stored_time, range, packet, parent)

  display = cboe_c1options_openingprocess_pitch_v1_0_34.time_offset.display(time_offset)
  parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.time_offset, range, time_offset, display)

  return offset + length, value
end

-- Dissect: Timestamp
cboe_c1options_openingprocess_pitch_v1_0_34.timestamp.dissect = function(buffer, offset, packet, parent)
  local stored_midnight_reference = cboe_c1options_openingprocess_pitch_v1_0_34.midnight_reference.current
  local stored_time = cboe_c1options_openingprocess_pitch_v1_0_34.time.current

  if stored_midnight_reference ~= nil and stored_time ~= nil then
    return cboe_c1options_openingprocess_pitch_v1_0_34.timestamp.composite(buffer, offset, stored_midnight_reference, stored_time, packet, parent)
  end

  return cboe_c1options_openingprocess_pitch_v1_0_34.time_offset.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Cboe C1Options OpeningProcess Pitch 1.0.34
-----------------------------------------------------------------------

-- Constituent Symbol Mapping Message
cboe_c1options_openingprocess_pitch_v1_0_34.constituent_symbol_mapping_message = {}

-- Size: Constituent Symbol Mapping Message
cboe_c1options_openingprocess_pitch_v1_0_34.constituent_symbol_mapping_message.size =
  cboe_c1options_openingprocess_pitch_v1_0_34.feed_symbol.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.osi_symbol.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.symbol_condition.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.underlying.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.soq_identifier.size

-- Display: Constituent Symbol Mapping Message
cboe_c1options_openingprocess_pitch_v1_0_34.constituent_symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Constituent Symbol Mapping Message
cboe_c1options_openingprocess_pitch_v1_0_34.constituent_symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: Printable ASCII
  index, feed_symbol = cboe_c1options_openingprocess_pitch_v1_0_34.feed_symbol.dissect(buffer, index, packet, parent)

  -- Osi Symbol: Printable ASCII
  index, osi_symbol = cboe_c1options_openingprocess_pitch_v1_0_34.osi_symbol.dissect(buffer, index, packet, parent)

  -- Symbol Condition: Alphanumeric
  index, symbol_condition = cboe_c1options_openingprocess_pitch_v1_0_34.symbol_condition.dissect(buffer, index, packet, parent)

  -- Underlying: Alphanumeric
  index, underlying = cboe_c1options_openingprocess_pitch_v1_0_34.underlying.dissect(buffer, index, packet, parent)

  -- Soq Identifier: Printable ASCII
  index, soq_identifier = cboe_c1options_openingprocess_pitch_v1_0_34.soq_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Constituent Symbol Mapping Message
cboe_c1options_openingprocess_pitch_v1_0_34.constituent_symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.constituent_symbol_mapping_message, buffer(offset, 0))
    local index = cboe_c1options_openingprocess_pitch_v1_0_34.constituent_symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_openingprocess_pitch_v1_0_34.constituent_symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_openingprocess_pitch_v1_0_34.constituent_symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Soq Strike Range Update Message
cboe_c1options_openingprocess_pitch_v1_0_34.soq_strike_range_update_message = {}

-- Size: Soq Strike Range Update Message
cboe_c1options_openingprocess_pitch_v1_0_34.soq_strike_range_update_message.size =
  cboe_c1options_openingprocess_pitch_v1_0_34.time_offset.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.soq_identifier.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.lower_strike_price.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.upper_strike_price.size

-- Display: Soq Strike Range Update Message
cboe_c1options_openingprocess_pitch_v1_0_34.soq_strike_range_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Soq Strike Range Update Message
cboe_c1options_openingprocess_pitch_v1_0_34.soq_strike_range_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_openingprocess_pitch_v1_0_34.timestamp.dissect(buffer, index, packet, parent)

  -- Soq Identifier: Printable ASCII
  index, soq_identifier = cboe_c1options_openingprocess_pitch_v1_0_34.soq_identifier.dissect(buffer, index, packet, parent)

  -- Lower Strike Price: Binary Long Price
  index, lower_strike_price = cboe_c1options_openingprocess_pitch_v1_0_34.lower_strike_price.dissect(buffer, index, packet, parent)

  -- Upper Strike Price: Binary Long Price
  index, upper_strike_price = cboe_c1options_openingprocess_pitch_v1_0_34.upper_strike_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Soq Strike Range Update Message
cboe_c1options_openingprocess_pitch_v1_0_34.soq_strike_range_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.soq_strike_range_update_message, buffer(offset, 0))
    local index = cboe_c1options_openingprocess_pitch_v1_0_34.soq_strike_range_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_openingprocess_pitch_v1_0_34.soq_strike_range_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_openingprocess_pitch_v1_0_34.soq_strike_range_update_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Session Message
cboe_c1options_openingprocess_pitch_v1_0_34.end_of_session_message = {}

-- Size: End Of Session Message
cboe_c1options_openingprocess_pitch_v1_0_34.end_of_session_message.size =
  cboe_c1options_openingprocess_pitch_v1_0_34.time_offset.size

-- Display: End Of Session Message
cboe_c1options_openingprocess_pitch_v1_0_34.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_c1options_openingprocess_pitch_v1_0_34.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_openingprocess_pitch_v1_0_34.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_c1options_openingprocess_pitch_v1_0_34.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_c1options_openingprocess_pitch_v1_0_34.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_openingprocess_pitch_v1_0_34.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_openingprocess_pitch_v1_0_34.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Mapping Message
cboe_c1options_openingprocess_pitch_v1_0_34.symbol_mapping_message = {}

-- Size: Symbol Mapping Message
cboe_c1options_openingprocess_pitch_v1_0_34.symbol_mapping_message.size =
  cboe_c1options_openingprocess_pitch_v1_0_34.feed_symbol.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.osi_symbol.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.symbol_condition.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.underlying.size

-- Display: Symbol Mapping Message
cboe_c1options_openingprocess_pitch_v1_0_34.symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Mapping Message
cboe_c1options_openingprocess_pitch_v1_0_34.symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: Printable ASCII
  index, feed_symbol = cboe_c1options_openingprocess_pitch_v1_0_34.feed_symbol.dissect(buffer, index, packet, parent)

  -- Osi Symbol: Printable ASCII
  index, osi_symbol = cboe_c1options_openingprocess_pitch_v1_0_34.osi_symbol.dissect(buffer, index, packet, parent)

  -- Symbol Condition: Alphanumeric
  index, symbol_condition = cboe_c1options_openingprocess_pitch_v1_0_34.symbol_condition.dissect(buffer, index, packet, parent)

  -- Underlying: Alphanumeric
  index, underlying = cboe_c1options_openingprocess_pitch_v1_0_34.underlying.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Message
cboe_c1options_openingprocess_pitch_v1_0_34.symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.symbol_mapping_message, buffer(offset, 0))
    local index = cboe_c1options_openingprocess_pitch_v1_0_34.symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_openingprocess_pitch_v1_0_34.symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_openingprocess_pitch_v1_0_34.symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Width Update Message
cboe_c1options_openingprocess_pitch_v1_0_34.width_update_message = {}

-- Size: Width Update Message
cboe_c1options_openingprocess_pitch_v1_0_34.width_update_message.size =
  cboe_c1options_openingprocess_pitch_v1_0_34.time_offset.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.underlying.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.width_type.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.multiplier.size

-- Display: Width Update Message
cboe_c1options_openingprocess_pitch_v1_0_34.width_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Width Update Message
cboe_c1options_openingprocess_pitch_v1_0_34.width_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_openingprocess_pitch_v1_0_34.timestamp.dissect(buffer, index, packet, parent)

  -- Underlying: Alphanumeric
  index, underlying = cboe_c1options_openingprocess_pitch_v1_0_34.underlying.dissect(buffer, index, packet, parent)

  -- Width Type: Alphanumeric
  index, width_type = cboe_c1options_openingprocess_pitch_v1_0_34.width_type.dissect(buffer, index, packet, parent)

  -- Multiplier: Multiplier
  index, multiplier = cboe_c1options_openingprocess_pitch_v1_0_34.multiplier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Width Update Message
cboe_c1options_openingprocess_pitch_v1_0_34.width_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.width_update_message, buffer(offset, 0))
    local index = cboe_c1options_openingprocess_pitch_v1_0_34.width_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_openingprocess_pitch_v1_0_34.width_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_openingprocess_pitch_v1_0_34.width_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Summary Message
cboe_c1options_openingprocess_pitch_v1_0_34.auction_summary_message = {}

-- Size: Auction Summary Message
cboe_c1options_openingprocess_pitch_v1_0_34.auction_summary_message.size =
  cboe_c1options_openingprocess_pitch_v1_0_34.time_offset.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.symbol.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.auction_type.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.price.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.quantity.size

-- Display: Auction Summary Message
cboe_c1options_openingprocess_pitch_v1_0_34.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_c1options_openingprocess_pitch_v1_0_34.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_openingprocess_pitch_v1_0_34.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_c1options_openingprocess_pitch_v1_0_34.symbol.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_c1options_openingprocess_pitch_v1_0_34.auction_type.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = cboe_c1options_openingprocess_pitch_v1_0_34.price.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = cboe_c1options_openingprocess_pitch_v1_0_34.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_c1options_openingprocess_pitch_v1_0_34.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_c1options_openingprocess_pitch_v1_0_34.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_openingprocess_pitch_v1_0_34.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_openingprocess_pitch_v1_0_34.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Auction Update Message
cboe_c1options_openingprocess_pitch_v1_0_34.options_auction_update_message = {}

-- Size: Options Auction Update Message
cboe_c1options_openingprocess_pitch_v1_0_34.options_auction_update_message.size =
  cboe_c1options_openingprocess_pitch_v1_0_34.time_offset.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.symbol.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.auction_type.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.reference_price.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.buy_contracts.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.sell_contracts.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.indicative_price.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.auction_only_price.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.opening_condition.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.composite_market_bid_price.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.composite_market_offer_price.size

-- Display: Options Auction Update Message
cboe_c1options_openingprocess_pitch_v1_0_34.options_auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Auction Update Message
cboe_c1options_openingprocess_pitch_v1_0_34.options_auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_openingprocess_pitch_v1_0_34.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_c1options_openingprocess_pitch_v1_0_34.symbol.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_c1options_openingprocess_pitch_v1_0_34.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price: Binary Long Price
  index, reference_price = cboe_c1options_openingprocess_pitch_v1_0_34.reference_price.dissect(buffer, index, packet, parent)

  -- Buy Contracts: Binary
  index, buy_contracts = cboe_c1options_openingprocess_pitch_v1_0_34.buy_contracts.dissect(buffer, index, packet, parent)

  -- Sell Contracts: Binary
  index, sell_contracts = cboe_c1options_openingprocess_pitch_v1_0_34.sell_contracts.dissect(buffer, index, packet, parent)

  -- Indicative Price: Binary Long Price
  index, indicative_price = cboe_c1options_openingprocess_pitch_v1_0_34.indicative_price.dissect(buffer, index, packet, parent)

  -- Auction Only Price: Binary Long Price
  index, auction_only_price = cboe_c1options_openingprocess_pitch_v1_0_34.auction_only_price.dissect(buffer, index, packet, parent)

  -- Opening Condition: Alphanumeric
  index, opening_condition = cboe_c1options_openingprocess_pitch_v1_0_34.opening_condition.dissect(buffer, index, packet, parent)

  -- Composite Market Bid Price: Binary Long Price
  index, composite_market_bid_price = cboe_c1options_openingprocess_pitch_v1_0_34.composite_market_bid_price.dissect(buffer, index, packet, parent)

  -- Composite Market Offer Price: Binary Long Price
  index, composite_market_offer_price = cboe_c1options_openingprocess_pitch_v1_0_34.composite_market_offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Auction Update Message
cboe_c1options_openingprocess_pitch_v1_0_34.options_auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.options_auction_update_message, buffer(offset, 0))
    local index = cboe_c1options_openingprocess_pitch_v1_0_34.options_auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_openingprocess_pitch_v1_0_34.options_auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_openingprocess_pitch_v1_0_34.options_auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_c1options_openingprocess_pitch_v1_0_34.time_message = {}

-- Size: Time Message
cboe_c1options_openingprocess_pitch_v1_0_34.time_message.size =
  cboe_c1options_openingprocess_pitch_v1_0_34.time.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.epoch_time.size

-- Display: Time Message
cboe_c1options_openingprocess_pitch_v1_0_34.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_c1options_openingprocess_pitch_v1_0_34.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = cboe_c1options_openingprocess_pitch_v1_0_34.time.dissect(buffer, index, packet, parent)

  -- Store Time Value
  cboe_c1options_openingprocess_pitch_v1_0_34.time.current = time

  if not packet.visited then
    cboe_c1options_openingprocess_pitch_v1_0_34.conversation.current.time.last = time
  end

  -- Epoch Time: Binary
  index, epoch_time = cboe_c1options_openingprocess_pitch_v1_0_34.epoch_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_c1options_openingprocess_pitch_v1_0_34.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.time_message, buffer(offset, 0))
    local index = cboe_c1options_openingprocess_pitch_v1_0_34.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_openingprocess_pitch_v1_0_34.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_openingprocess_pitch_v1_0_34.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Reference Message
cboe_c1options_openingprocess_pitch_v1_0_34.time_reference_message = {}

-- Size: Time Reference Message
cboe_c1options_openingprocess_pitch_v1_0_34.time_reference_message.size =
  cboe_c1options_openingprocess_pitch_v1_0_34.midnight_reference.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.time_reference.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.time_offset.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.trade_date.size

-- Display: Time Reference Message
cboe_c1options_openingprocess_pitch_v1_0_34.time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Reference Message
cboe_c1options_openingprocess_pitch_v1_0_34.time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Midnight Reference: Binary
  index, midnight_reference = cboe_c1options_openingprocess_pitch_v1_0_34.midnight_reference.dissect(buffer, index, packet, parent)

  -- Store Midnight Reference Value
  cboe_c1options_openingprocess_pitch_v1_0_34.midnight_reference.current = midnight_reference

  if not packet.visited then
    cboe_c1options_openingprocess_pitch_v1_0_34.conversation.current.midnight_reference.last = midnight_reference
  end

  -- Time Reference: Binary
  index, time_reference = cboe_c1options_openingprocess_pitch_v1_0_34.time_reference.dissect(buffer, index, packet, parent)

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_openingprocess_pitch_v1_0_34.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Binary Date
  index, trade_date = cboe_c1options_openingprocess_pitch_v1_0_34.trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Reference Message
cboe_c1options_openingprocess_pitch_v1_0_34.time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.time_reference_message, buffer(offset, 0))
    local index = cboe_c1options_openingprocess_pitch_v1_0_34.time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_openingprocess_pitch_v1_0_34.time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_openingprocess_pitch_v1_0_34.time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_c1options_openingprocess_pitch_v1_0_34.payload = {}

-- Dissect: Payload
cboe_c1options_openingprocess_pitch_v1_0_34.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Reference Message
  if message_type == 0xB1 then
    return cboe_c1options_openingprocess_pitch_v1_0_34.time_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_c1options_openingprocess_pitch_v1_0_34.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Auction Update Message
  if message_type == 0xD1 then
    return cboe_c1options_openingprocess_pitch_v1_0_34.options_auction_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if message_type == 0x96 then
    return cboe_c1options_openingprocess_pitch_v1_0_34.auction_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Width Update Message
  if message_type == 0xD2 then
    return cboe_c1options_openingprocess_pitch_v1_0_34.width_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Mapping Message
  if message_type == 0x2E then
    return cboe_c1options_openingprocess_pitch_v1_0_34.symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_c1options_openingprocess_pitch_v1_0_34.end_of_session_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Soq Strike Range Update Message
  if message_type == 0x9D then
    return cboe_c1options_openingprocess_pitch_v1_0_34.soq_strike_range_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Constituent Symbol Mapping Message
  if message_type == 0x9E then
    return cboe_c1options_openingprocess_pitch_v1_0_34.constituent_symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_c1options_openingprocess_pitch_v1_0_34.message_header = {}

-- Size: Message Header
cboe_c1options_openingprocess_pitch_v1_0_34.message_header.size =
  cboe_c1options_openingprocess_pitch_v1_0_34.message_length.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.message_type.size

-- Display: Message Header
cboe_c1options_openingprocess_pitch_v1_0_34.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_c1options_openingprocess_pitch_v1_0_34.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_c1options_openingprocess_pitch_v1_0_34.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, message_type = cboe_c1options_openingprocess_pitch_v1_0_34.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_c1options_openingprocess_pitch_v1_0_34.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.message_header, buffer(offset, 0))
    local index = cboe_c1options_openingprocess_pitch_v1_0_34.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_openingprocess_pitch_v1_0_34.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_openingprocess_pitch_v1_0_34.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_c1options_openingprocess_pitch_v1_0_34.message = {}

-- Read runtime size of: Message
cboe_c1options_openingprocess_pitch_v1_0_34.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_c1options_openingprocess_pitch_v1_0_34.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_c1options_openingprocess_pitch_v1_0_34.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and cboe_c1options_openingprocess_pitch_v1_0_34.packet_sequence ~= nil then
    local sequence = parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.message_sequence_number, UInt64.new(cboe_c1options_openingprocess_pitch_v1_0_34.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_c1options_openingprocess_pitch_v1_0_34.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 9 branches
  index = cboe_c1options_openingprocess_pitch_v1_0_34.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_c1options_openingprocess_pitch_v1_0_34.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_c1options_openingprocess_pitch_v1_0_34.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.message, buffer(offset, 0))
    local current = cboe_c1options_openingprocess_pitch_v1_0_34.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_c1options_openingprocess_pitch_v1_0_34.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_c1options_openingprocess_pitch_v1_0_34.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
cboe_c1options_openingprocess_pitch_v1_0_34.heartbeat = {}

-- Display: Heartbeat
cboe_c1options_openingprocess_pitch_v1_0_34.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
cboe_c1options_openingprocess_pitch_v1_0_34.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_c1options_openingprocess_pitch_v1_0_34.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
cboe_c1options_openingprocess_pitch_v1_0_34.messages = {}

-- Dissect: Messages
cboe_c1options_openingprocess_pitch_v1_0_34.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return cboe_c1options_openingprocess_pitch_v1_0_34.heartbeat.dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_c1options_openingprocess_pitch_v1_0_34.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
cboe_c1options_openingprocess_pitch_v1_0_34.packet_header = {}

-- Size: Packet Header
cboe_c1options_openingprocess_pitch_v1_0_34.packet_header.size =
  cboe_c1options_openingprocess_pitch_v1_0_34.length.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.message_count.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.unit.size + 
  cboe_c1options_openingprocess_pitch_v1_0_34.sequence.size

-- Display: Packet Header
cboe_c1options_openingprocess_pitch_v1_0_34.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_c1options_openingprocess_pitch_v1_0_34.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_c1options_openingprocess_pitch_v1_0_34.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = cboe_c1options_openingprocess_pitch_v1_0_34.message_count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_c1options_openingprocess_pitch_v1_0_34.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_c1options_openingprocess_pitch_v1_0_34.sequence.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  cboe_c1options_openingprocess_pitch_v1_0_34.packet_sequence = sequence

  return index
end

-- Dissect: Packet Header
cboe_c1options_openingprocess_pitch_v1_0_34.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34.fields.packet_header, buffer(offset, 0))
    local index = cboe_c1options_openingprocess_pitch_v1_0_34.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_openingprocess_pitch_v1_0_34.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_openingprocess_pitch_v1_0_34.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_c1options_openingprocess_pitch_v1_0_34.packet = {}

-- Verify required size of Udp packet
cboe_c1options_openingprocess_pitch_v1_0_34.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_c1options_openingprocess_pitch_v1_0_34.packet_header.size
end

-- Dissect Packet
cboe_c1options_openingprocess_pitch_v1_0_34.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = cboe_c1options_openingprocess_pitch_v1_0_34.conversation.data(packet)
  if not packet.visited then
    data.midnight_reference.frames[packet.number] = data.midnight_reference.last
    data.time.frames[packet.number] = data.time.last
  end
  cboe_c1options_openingprocess_pitch_v1_0_34.midnight_reference.current = data.midnight_reference.frames[packet.number]
  cboe_c1options_openingprocess_pitch_v1_0_34.time.current = data.time.frames[packet.number]
  cboe_c1options_openingprocess_pitch_v1_0_34.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_c1options_openingprocess_pitch_v1_0_34.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_c1options_openingprocess_pitch_v1_0_34.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_c1options_openingprocess_pitch_v1_0_34.init()
  cboe_c1options_openingprocess_pitch_v1_0_34.midnight_reference.current = nil
  cboe_c1options_openingprocess_pitch_v1_0_34.time.current = nil
  cboe_c1options_openingprocess_pitch_v1_0_34.conversation.current = nil
  cboe_c1options_openingprocess_pitch_v1_0_34.conversation.flows = {}
end

-- Dissector for Cboe C1Options OpeningProcess Pitch 1.0.34
function omi_cboe_c1options_openingprocess_pitch_v1_0_34.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_c1options_openingprocess_pitch_v1_0_34.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_c1options_openingprocess_pitch_v1_0_34, buffer(), omi_cboe_c1options_openingprocess_pitch_v1_0_34.description, "("..buffer:len().." Bytes)")
  return cboe_c1options_openingprocess_pitch_v1_0_34.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe C1Options OpeningProcess Pitch 1.0.34 (Udp)
local function omi_cboe_c1options_openingprocess_pitch_v1_0_34_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_c1options_openingprocess_pitch_v1_0_34.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_c1options_openingprocess_pitch_v1_0_34
  omi_cboe_c1options_openingprocess_pitch_v1_0_34.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe C1Options OpeningProcess Pitch 1.0.34
omi_cboe_c1options_openingprocess_pitch_v1_0_34:register_heuristic("udp", omi_cboe_c1options_openingprocess_pitch_v1_0_34_udp_heuristic)

-- Register Cboe C1Options OpeningProcess Pitch 1.0.34 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_cboe_c1options_openingprocess_pitch_v1_0_34)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.0.34
--   Date: Friday, September 4, 2026
--   Specification: technical-specifications-cboe-titanium-us-options-opening-process-feed-specification.pdf
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
