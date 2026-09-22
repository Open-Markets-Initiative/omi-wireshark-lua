-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Txse TxseEquities Bale Rake 1.0 Protocol
local omi_txse_txseequities_bale_rake_v1_0 = Proto("Omi.Txse.TxseEquities.Bale.Rake.v1.0", "Txse TxseEquities Bale Rake 1.0")

-- Protocol table
local txse_txseequities_bale_rake_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Txse TxseEquities Bale Rake 1.0 Fields
omi_txse_txseequities_bale_rake_v1_0.fields.ask_price = ProtoField.new("Ask Price", "txse.txseequities.bale.rake.v1.0.askprice", ftypes.DOUBLE)
omi_txse_txseequities_bale_rake_v1_0.fields.ask_qty = ProtoField.new("Ask Qty", "txse.txseequities.bale.rake.v1.0.askqty", ftypes.INT32)
omi_txse_txseequities_bale_rake_v1_0.fields.auction_price = ProtoField.new("Auction Price", "txse.txseequities.bale.rake.v1.0.auctionprice", ftypes.DOUBLE)
omi_txse_txseequities_bale_rake_v1_0.fields.auction_start = ProtoField.new("Auction Start", "txse.txseequities.bale.rake.v1.0.auctionstart", ftypes.INT64)
omi_txse_txseequities_bale_rake_v1_0.fields.auction_type = ProtoField.new("Auction Type", "txse.txseequities.bale.rake.v1.0.auctiontype", ftypes.INT8)
omi_txse_txseequities_bale_rake_v1_0.fields.bid_price = ProtoField.new("Bid Price", "txse.txseequities.bale.rake.v1.0.bidprice", ftypes.DOUBLE)
omi_txse_txseequities_bale_rake_v1_0.fields.bid_qty = ProtoField.new("Bid Qty", "txse.txseequities.bale.rake.v1.0.bidqty", ftypes.INT32)
omi_txse_txseequities_bale_rake_v1_0.fields.buy_shares_at_lower = ProtoField.new("Buy Shares At Lower", "txse.txseequities.bale.rake.v1.0.buysharesatlower", ftypes.INT32)
omi_txse_txseequities_bale_rake_v1_0.fields.buy_shares_at_upper = ProtoField.new("Buy Shares At Upper", "txse.txseequities.bale.rake.v1.0.buysharesatupper", ftypes.INT32)
omi_txse_txseequities_bale_rake_v1_0.fields.define_symbol_bit_fields = ProtoField.new("Define Symbol Bit Fields", "txse.txseequities.bale.rake.v1.0.definesymbolbitfields", ftypes.STRING)
omi_txse_txseequities_bale_rake_v1_0.fields.excess_auction_side = ProtoField.new("Excess Auction Side", "txse.txseequities.bale.rake.v1.0.excessauctionside", ftypes.INT8)
omi_txse_txseequities_bale_rake_v1_0.fields.exec_id = ProtoField.new("Exec Id", "txse.txseequities.bale.rake.v1.0.execid", ftypes.INT64)
omi_txse_txseequities_bale_rake_v1_0.fields.extension_cycle_count = ProtoField.new("Extension Cycle Count", "txse.txseequities.bale.rake.v1.0.extensioncyclecount", ftypes.INT8)
omi_txse_txseequities_bale_rake_v1_0.fields.has_symbol_status_operational_halt_reason = ProtoField.new("Has Symbol Status Operational Halt Reason", "txse.txseequities.bale.rake.v1.0.hassymbolstatusoperationalhaltreason", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_txse_txseequities_bale_rake_v1_0.fields.has_symbol_status_regulatory_halt_reason = ProtoField.new("Has Symbol Status Regulatory Halt Reason", "txse.txseequities.bale.rake.v1.0.hassymbolstatusregulatoryhaltreason", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_txse_txseequities_bale_rake_v1_0.fields.has_trading_session_status_operational_halt_reason = ProtoField.new("Has Trading Session Status Operational Halt Reason", "txse.txseequities.bale.rake.v1.0.hastradingsessionstatusoperationalhaltreason", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_txse_txseequities_bale_rake_v1_0.fields.has_trading_session_status_regulatory_halt_reason = ProtoField.new("Has Trading Session Status Regulatory Halt Reason", "txse.txseequities.bale.rake.v1.0.hastradingsessionstatusregulatoryhaltreason", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_txse_txseequities_bale_rake_v1_0.fields.is_test = ProtoField.new("Is Test", "txse.txseequities.bale.rake.v1.0.istest", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_txse_txseequities_bale_rake_v1_0.fields.listing_market = ProtoField.new("Listing Market", "txse.txseequities.bale.rake.v1.0.listingmarket", ftypes.INT8)
omi_txse_txseequities_bale_rake_v1_0.fields.lot_size = ProtoField.new("Lot Size", "txse.txseequities.bale.rake.v1.0.lotsize", ftypes.INT32)
omi_txse_txseequities_bale_rake_v1_0.fields.lower_participation_band = ProtoField.new("Lower Participation Band", "txse.txseequities.bale.rake.v1.0.lowerparticipationband", ftypes.DOUBLE)
omi_txse_txseequities_bale_rake_v1_0.fields.market_hours_state = ProtoField.new("Market Hours State", "txse.txseequities.bale.rake.v1.0.markethoursstate", ftypes.INT8)
omi_txse_txseequities_bale_rake_v1_0.fields.matched_shares = ProtoField.new("Matched Shares", "txse.txseequities.bale.rake.v1.0.matchedshares", ftypes.INT32)
omi_txse_txseequities_bale_rake_v1_0.fields.matching_engine_id = ProtoField.new("Matching Engine Id", "txse.txseequities.bale.rake.v1.0.matchingengineid", ftypes.INT8)
omi_txse_txseequities_bale_rake_v1_0.fields.message_count = ProtoField.new("Message Count", "txse.txseequities.bale.rake.v1.0.messagecount", ftypes.UINT16)
omi_txse_txseequities_bale_rake_v1_0.fields.message_length = ProtoField.new("Message Length", "txse.txseequities.bale.rake.v1.0.messagelength", ftypes.UINT16)
omi_txse_txseequities_bale_rake_v1_0.fields.message_type = ProtoField.new("Message Type", "txse.txseequities.bale.rake.v1.0.messagetype", ftypes.UINT8)
omi_txse_txseequities_bale_rake_v1_0.fields.packet_type = ProtoField.new("Packet Type", "txse.txseequities.bale.rake.v1.0.packettype", ftypes.UINT8)
omi_txse_txseequities_bale_rake_v1_0.fields.price = ProtoField.new("Price", "txse.txseequities.bale.rake.v1.0.price", ftypes.DOUBLE)
omi_txse_txseequities_bale_rake_v1_0.fields.qty = ProtoField.new("Qty", "txse.txseequities.bale.rake.v1.0.qty", ftypes.INT32)
omi_txse_txseequities_bale_rake_v1_0.fields.reserved_6 = ProtoField.new("Reserved 6", "txse.txseequities.bale.rake.v1.0.reserved6", ftypes.UINT8, nil, base.DEC, 0xFC)
omi_txse_txseequities_bale_rake_v1_0.fields.reserved_7 = ProtoField.new("Reserved 7", "txse.txseequities.bale.rake.v1.0.reserved7", ftypes.UINT8, nil, base.DEC, 0xFE)
omi_txse_txseequities_bale_rake_v1_0.fields.reserved_8 = ProtoField.new("Reserved 8", "txse.txseequities.bale.rake.v1.0.reserved8", ftypes.INT64)
omi_txse_txseequities_bale_rake_v1_0.fields.sell_shares_at_lower = ProtoField.new("Sell Shares At Lower", "txse.txseequities.bale.rake.v1.0.sellsharesatlower", ftypes.INT32)
omi_txse_txseequities_bale_rake_v1_0.fields.sell_shares_at_upper = ProtoField.new("Sell Shares At Upper", "txse.txseequities.bale.rake.v1.0.sellsharesatupper", ftypes.INT32)
omi_txse_txseequities_bale_rake_v1_0.fields.sequence = ProtoField.new("Sequence", "txse.txseequities.bale.rake.v1.0.sequence", ftypes.UINT64)
omi_txse_txseequities_bale_rake_v1_0.fields.session = ProtoField.new("Session", "txse.txseequities.bale.rake.v1.0.session", ftypes.UINT64)
omi_txse_txseequities_bale_rake_v1_0.fields.session_trading_state = ProtoField.new("Session Trading State", "txse.txseequities.bale.rake.v1.0.sessiontradingstate", ftypes.INT8)
omi_txse_txseequities_bale_rake_v1_0.fields.short_sale_restriction_state = ProtoField.new("Short Sale Restriction State", "txse.txseequities.bale.rake.v1.0.shortsalerestrictionstate", ftypes.INT8)
omi_txse_txseequities_bale_rake_v1_0.fields.stream_id = ProtoField.new("Stream Id", "txse.txseequities.bale.rake.v1.0.streamid", ftypes.UINT8)
omi_txse_txseequities_bale_rake_v1_0.fields.suffix = ProtoField.new("Suffix", "txse.txseequities.bale.rake.v1.0.suffix", ftypes.STRING)
omi_txse_txseequities_bale_rake_v1_0.fields.symbol = ProtoField.new("Symbol", "txse.txseequities.bale.rake.v1.0.symbol", ftypes.STRING)
omi_txse_txseequities_bale_rake_v1_0.fields.symbol_id = ProtoField.new("Symbol Id", "txse.txseequities.bale.rake.v1.0.symbolid", ftypes.INT16)
omi_txse_txseequities_bale_rake_v1_0.fields.symbol_status_operational_halt_reason = ProtoField.new("Symbol Status Operational Halt Reason", "txse.txseequities.bale.rake.v1.0.symbolstatusoperationalhaltreason", ftypes.INT8)
omi_txse_txseequities_bale_rake_v1_0.fields.symbol_status_presence_bits = ProtoField.new("Symbol Status Presence Bits", "txse.txseequities.bale.rake.v1.0.symbolstatuspresencebits", ftypes.STRING)
omi_txse_txseequities_bale_rake_v1_0.fields.symbol_status_regulatory_halt_reason = ProtoField.new("Symbol Status Regulatory Halt Reason", "txse.txseequities.bale.rake.v1.0.symbolstatusregulatoryhaltreason", ftypes.INT8)
omi_txse_txseequities_bale_rake_v1_0.fields.symbol_trading_state = ProtoField.new("Symbol Trading State", "txse.txseequities.bale.rake.v1.0.symboltradingstate", ftypes.INT8)
omi_txse_txseequities_bale_rake_v1_0.fields.trade_through_exemption_reason = ProtoField.new("Trade Through Exemption Reason", "txse.txseequities.bale.rake.v1.0.tradethroughexemptionreason", ftypes.INT8)
omi_txse_txseequities_bale_rake_v1_0.fields.trading_session_status_operational_halt_reason = ProtoField.new("Trading Session Status Operational Halt Reason", "txse.txseequities.bale.rake.v1.0.tradingsessionstatusoperationalhaltreason", ftypes.INT8)
omi_txse_txseequities_bale_rake_v1_0.fields.trading_session_status_presence_bits = ProtoField.new("Trading Session Status Presence Bits", "txse.txseequities.bale.rake.v1.0.tradingsessionstatuspresencebits", ftypes.STRING)
omi_txse_txseequities_bale_rake_v1_0.fields.trading_session_status_regulatory_halt_reason = ProtoField.new("Trading Session Status Regulatory Halt Reason", "txse.txseequities.bale.rake.v1.0.tradingsessionstatusregulatoryhaltreason", ftypes.INT8)
omi_txse_txseequities_bale_rake_v1_0.fields.transact_time = ProtoField.new("Transact Time", "txse.txseequities.bale.rake.v1.0.transacttime", ftypes.INT64)
omi_txse_txseequities_bale_rake_v1_0.fields.upper_participation_band = ProtoField.new("Upper Participation Band", "txse.txseequities.bale.rake.v1.0.upperparticipationband", ftypes.DOUBLE)

-- Txse TxseEquities Bale Rake 1.0 Framing
omi_txse_txseequities_bale_rake_v1_0.fields.packet = ProtoField.new("Packet", "txse.txseequities.bale.rake.v1.0.packet", ftypes.STRING)
omi_txse_txseequities_bale_rake_v1_0.fields.udp_header = ProtoField.new("Udp Header", "txse.txseequities.bale.rake.v1.0.udpheader", ftypes.STRING)
omi_txse_txseequities_bale_rake_v1_0.fields.udp_sequenced_message = ProtoField.new("Udp Sequenced Message", "txse.txseequities.bale.rake.v1.0.udpsequencedmessage", ftypes.STRING)

-- Txse TxseEquities Bale 1.0 Application Messages
omi_txse_txseequities_bale_rake_v1_0.fields.auction_band_window_message = ProtoField.new("Auction Band Window Message", "txse.txseequities.bale.rake.v1.0.auctionbandwindowmessage", ftypes.STRING)
omi_txse_txseequities_bale_rake_v1_0.fields.auction_preamble_message = ProtoField.new("Auction Preamble Message", "txse.txseequities.bale.rake.v1.0.auctionpreamblemessage", ftypes.STRING)
omi_txse_txseequities_bale_rake_v1_0.fields.auction_print_message = ProtoField.new("Auction Print Message", "txse.txseequities.bale.rake.v1.0.auctionprintmessage", ftypes.STRING)
omi_txse_txseequities_bale_rake_v1_0.fields.define_symbol_message = ProtoField.new("Define Symbol Message", "txse.txseequities.bale.rake.v1.0.definesymbolmessage", ftypes.STRING)
omi_txse_txseequities_bale_rake_v1_0.fields.symbol_status_message = ProtoField.new("Symbol Status Message", "txse.txseequities.bale.rake.v1.0.symbolstatusmessage", ftypes.STRING)
omi_txse_txseequities_bale_rake_v1_0.fields.top_of_book_message = ProtoField.new("Top Of Book Message", "txse.txseequities.bale.rake.v1.0.topofbookmessage", ftypes.STRING)
omi_txse_txseequities_bale_rake_v1_0.fields.trade_message = ProtoField.new("Trade Message", "txse.txseequities.bale.rake.v1.0.trademessage", ftypes.STRING)
omi_txse_txseequities_bale_rake_v1_0.fields.trading_session_status_message = ProtoField.new("Trading Session Status Message", "txse.txseequities.bale.rake.v1.0.tradingsessionstatusmessage", ftypes.STRING)

-- Txse TxseEquities Bale Rake 1.0 Generated Fields
omi_txse_txseequities_bale_rake_v1_0.fields.udp_sequenced_message_index = ProtoField.new("Udp Sequenced Message Index", "txse.txseequities.bale.rake.v1.0.udpsequencedmessageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Txse TxseEquities Bale Rake 1.0 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Txse TxseEquities Bale Rake 1.0 Show Options
omi_txse_txseequities_bale_rake_v1_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_txse_txseequities_bale_rake_v1_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_txse_txseequities_bale_rake_v1_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_txse_txseequities_bale_rake_v1_0.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_txse_txseequities_bale_rake_v1_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_txse_txseequities_bale_rake_v1_0.prefs.show_application_messages then
    show.application_messages = omi_txse_txseequities_bale_rake_v1_0.prefs.show_application_messages
  end
  if show.headers ~= omi_txse_txseequities_bale_rake_v1_0.prefs.show_headers then
    show.headers = omi_txse_txseequities_bale_rake_v1_0.prefs.show_headers
  end
  if show.structs ~= omi_txse_txseequities_bale_rake_v1_0.prefs.show_structs then
    show.structs = omi_txse_txseequities_bale_rake_v1_0.prefs.show_structs
  end
  if show.indexes ~= omi_txse_txseequities_bale_rake_v1_0.prefs.show_indexes then
    show.indexes = omi_txse_txseequities_bale_rake_v1_0.prefs.show_indexes
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
-- Txse TxseEquities Bale Rake 1.0 Fields
-----------------------------------------------------------------------

-- Ask Price
txse_txseequities_bale_rake_v1_0.ask_price = {}

-- Size: Ask Price
txse_txseequities_bale_rake_v1_0.ask_price.size = 8

-- Display: Ask Price
txse_txseequities_bale_rake_v1_0.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
txse_txseequities_bale_rake_v1_0.ask_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Ask Price
txse_txseequities_bale_rake_v1_0.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.ask_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = txse_txseequities_bale_rake_v1_0.ask_price.translate(raw)
  local display = txse_txseequities_bale_rake_v1_0.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Qty
txse_txseequities_bale_rake_v1_0.ask_qty = {}

-- Size: Ask Qty
txse_txseequities_bale_rake_v1_0.ask_qty.size = 4

-- Display: Ask Qty
txse_txseequities_bale_rake_v1_0.ask_qty.display = function(value)
  return "Ask Qty: "..value
end

-- Dissect: Ask Qty
txse_txseequities_bale_rake_v1_0.ask_qty.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.ask_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_bale_rake_v1_0.ask_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.ask_qty, range, value, display)

  return offset + length, value
end

-- Auction Price
txse_txseequities_bale_rake_v1_0.auction_price = {}

-- Size: Auction Price
txse_txseequities_bale_rake_v1_0.auction_price.size = 8

-- Display: Auction Price
txse_txseequities_bale_rake_v1_0.auction_price.display = function(value)
  return "Auction Price: "..value
end

-- Translate: Auction Price
txse_txseequities_bale_rake_v1_0.auction_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Auction Price
txse_txseequities_bale_rake_v1_0.auction_price.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.auction_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = txse_txseequities_bale_rake_v1_0.auction_price.translate(raw)
  local display = txse_txseequities_bale_rake_v1_0.auction_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.auction_price, range, value, display)

  return offset + length, value
end

-- Auction Start
txse_txseequities_bale_rake_v1_0.auction_start = {}

-- Size: Auction Start
txse_txseequities_bale_rake_v1_0.auction_start.size = 8

-- Display: Auction Start
txse_txseequities_bale_rake_v1_0.auction_start.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Auction Start: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Auction Start
txse_txseequities_bale_rake_v1_0.auction_start.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.auction_start.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_txseequities_bale_rake_v1_0.auction_start.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.auction_start, range, value, display)

  return offset + length, value
end

-- Auction Type
txse_txseequities_bale_rake_v1_0.auction_type = {}

-- Size: Auction Type
txse_txseequities_bale_rake_v1_0.auction_type.size = 1

-- Display: Auction Type
txse_txseequities_bale_rake_v1_0.auction_type.display = function(value)
  if value == 1 then
    return "Auction Type: Opening (1)"
  end
  if value == 2 then
    return "Auction Type: Closing (2)"
  end
  if value == 3 then
    return "Auction Type: Halt (3)"
  end
  if value == 4 then
    return "Auction Type: Ipo (4)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
txse_txseequities_bale_rake_v1_0.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.auction_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_bale_rake_v1_0.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Bid Price
txse_txseequities_bale_rake_v1_0.bid_price = {}

-- Size: Bid Price
txse_txseequities_bale_rake_v1_0.bid_price.size = 8

-- Display: Bid Price
txse_txseequities_bale_rake_v1_0.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
txse_txseequities_bale_rake_v1_0.bid_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Bid Price
txse_txseequities_bale_rake_v1_0.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = txse_txseequities_bale_rake_v1_0.bid_price.translate(raw)
  local display = txse_txseequities_bale_rake_v1_0.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Qty
txse_txseequities_bale_rake_v1_0.bid_qty = {}

-- Size: Bid Qty
txse_txseequities_bale_rake_v1_0.bid_qty.size = 4

-- Display: Bid Qty
txse_txseequities_bale_rake_v1_0.bid_qty.display = function(value)
  return "Bid Qty: "..value
end

-- Dissect: Bid Qty
txse_txseequities_bale_rake_v1_0.bid_qty.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.bid_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_bale_rake_v1_0.bid_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.bid_qty, range, value, display)

  return offset + length, value
end

-- Buy Shares At Lower
txse_txseequities_bale_rake_v1_0.buy_shares_at_lower = {}

-- Size: Buy Shares At Lower
txse_txseequities_bale_rake_v1_0.buy_shares_at_lower.size = 4

-- Display: Buy Shares At Lower
txse_txseequities_bale_rake_v1_0.buy_shares_at_lower.display = function(value)
  return "Buy Shares At Lower: "..value
end

-- Dissect: Buy Shares At Lower
txse_txseequities_bale_rake_v1_0.buy_shares_at_lower.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.buy_shares_at_lower.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_bale_rake_v1_0.buy_shares_at_lower.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.buy_shares_at_lower, range, value, display)

  return offset + length, value
end

-- Buy Shares At Upper
txse_txseequities_bale_rake_v1_0.buy_shares_at_upper = {}

-- Size: Buy Shares At Upper
txse_txseequities_bale_rake_v1_0.buy_shares_at_upper.size = 4

-- Display: Buy Shares At Upper
txse_txseequities_bale_rake_v1_0.buy_shares_at_upper.display = function(value)
  return "Buy Shares At Upper: "..value
end

-- Dissect: Buy Shares At Upper
txse_txseequities_bale_rake_v1_0.buy_shares_at_upper.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.buy_shares_at_upper.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_bale_rake_v1_0.buy_shares_at_upper.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.buy_shares_at_upper, range, value, display)

  return offset + length, value
end

-- Excess Auction Side
txse_txseequities_bale_rake_v1_0.excess_auction_side = {}

-- Size: Excess Auction Side
txse_txseequities_bale_rake_v1_0.excess_auction_side.size = 1

-- Display: Excess Auction Side
txse_txseequities_bale_rake_v1_0.excess_auction_side.display = function(value)
  if value == 0 then
    return "Excess Auction Side: Equal (0)"
  end
  if value == 1 then
    return "Excess Auction Side: Buy (1)"
  end
  if value == 2 then
    return "Excess Auction Side: Sell (2)"
  end

  return "Excess Auction Side: Unknown("..value..")"
end

-- Dissect: Excess Auction Side
txse_txseequities_bale_rake_v1_0.excess_auction_side.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.excess_auction_side.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_bale_rake_v1_0.excess_auction_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.excess_auction_side, range, value, display)

  return offset + length, value
end

-- Exec Id
txse_txseequities_bale_rake_v1_0.exec_id = {}

-- Size: Exec Id
txse_txseequities_bale_rake_v1_0.exec_id.size = 8

-- Display: Exec Id
txse_txseequities_bale_rake_v1_0.exec_id.display = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
txse_txseequities_bale_rake_v1_0.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.exec_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_txseequities_bale_rake_v1_0.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Extension Cycle Count
txse_txseequities_bale_rake_v1_0.extension_cycle_count = {}

-- Size: Extension Cycle Count
txse_txseequities_bale_rake_v1_0.extension_cycle_count.size = 1

-- Display: Extension Cycle Count
txse_txseequities_bale_rake_v1_0.extension_cycle_count.display = function(value)
  return "Extension Cycle Count: "..value
end

-- Dissect: Extension Cycle Count
txse_txseequities_bale_rake_v1_0.extension_cycle_count.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.extension_cycle_count.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_bale_rake_v1_0.extension_cycle_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.extension_cycle_count, range, value, display)

  return offset + length, value
end

-- Listing Market
txse_txseequities_bale_rake_v1_0.listing_market = {}

-- Size: Listing Market
txse_txseequities_bale_rake_v1_0.listing_market.size = 1

-- Display: Listing Market
txse_txseequities_bale_rake_v1_0.listing_market.display = function(value)
  return "Listing Market: "..value
end

-- Dissect: Listing Market
txse_txseequities_bale_rake_v1_0.listing_market.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.listing_market.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_bale_rake_v1_0.listing_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.listing_market, range, value, display)

  return offset + length, value
end

-- Lot Size
txse_txseequities_bale_rake_v1_0.lot_size = {}

-- Size: Lot Size
txse_txseequities_bale_rake_v1_0.lot_size.size = 4

-- Display: Lot Size
txse_txseequities_bale_rake_v1_0.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
txse_txseequities_bale_rake_v1_0.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_bale_rake_v1_0.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Lower Participation Band
txse_txseequities_bale_rake_v1_0.lower_participation_band = {}

-- Size: Lower Participation Band
txse_txseequities_bale_rake_v1_0.lower_participation_band.size = 8

-- Display: Lower Participation Band
txse_txseequities_bale_rake_v1_0.lower_participation_band.display = function(value)
  return "Lower Participation Band: "..value
end

-- Translate: Lower Participation Band
txse_txseequities_bale_rake_v1_0.lower_participation_band.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Lower Participation Band
txse_txseequities_bale_rake_v1_0.lower_participation_band.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.lower_participation_band.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = txse_txseequities_bale_rake_v1_0.lower_participation_band.translate(raw)
  local display = txse_txseequities_bale_rake_v1_0.lower_participation_band.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.lower_participation_band, range, value, display)

  return offset + length, value
end

-- Market Hours State
txse_txseequities_bale_rake_v1_0.market_hours_state = {}

-- Size: Market Hours State
txse_txseequities_bale_rake_v1_0.market_hours_state.size = 1

-- Display: Market Hours State
txse_txseequities_bale_rake_v1_0.market_hours_state.display = function(value)
  if value == 0 then
    return "Market Hours State: Closed Before Hours (0)"
  end
  if value == 1 then
    return "Market Hours State: Early Session (1)"
  end
  if value == 2 then
    return "Market Hours State: Regular Session (2)"
  end
  if value == 3 then
    return "Market Hours State: After Hours Session (3)"
  end
  if value == 4 then
    return "Market Hours State: Closed After Hours (4)"
  end

  return "Market Hours State: Unknown("..value..")"
end

-- Dissect: Market Hours State
txse_txseequities_bale_rake_v1_0.market_hours_state.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.market_hours_state.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_bale_rake_v1_0.market_hours_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.market_hours_state, range, value, display)

  return offset + length, value
end

-- Matched Shares
txse_txseequities_bale_rake_v1_0.matched_shares = {}

-- Size: Matched Shares
txse_txseequities_bale_rake_v1_0.matched_shares.size = 4

-- Display: Matched Shares
txse_txseequities_bale_rake_v1_0.matched_shares.display = function(value)
  return "Matched Shares: "..value
end

-- Dissect: Matched Shares
txse_txseequities_bale_rake_v1_0.matched_shares.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.matched_shares.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_bale_rake_v1_0.matched_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.matched_shares, range, value, display)

  return offset + length, value
end

-- Matching Engine Id
txse_txseequities_bale_rake_v1_0.matching_engine_id = {}

-- Size: Matching Engine Id
txse_txseequities_bale_rake_v1_0.matching_engine_id.size = 1

-- Display: Matching Engine Id
txse_txseequities_bale_rake_v1_0.matching_engine_id.display = function(value)
  return "Matching Engine Id: "..value
end

-- Dissect: Matching Engine Id
txse_txseequities_bale_rake_v1_0.matching_engine_id.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.matching_engine_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_bale_rake_v1_0.matching_engine_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.matching_engine_id, range, value, display)

  return offset + length, value
end

-- Message Count
txse_txseequities_bale_rake_v1_0.message_count = {}

-- Size: Message Count
txse_txseequities_bale_rake_v1_0.message_count.size = 2

-- Display: Message Count
txse_txseequities_bale_rake_v1_0.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
txse_txseequities_bale_rake_v1_0.message_count.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = txse_txseequities_bale_rake_v1_0.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
txse_txseequities_bale_rake_v1_0.message_length = {}

-- Size: Message Length
txse_txseequities_bale_rake_v1_0.message_length.size = 2

-- Display: Message Length
txse_txseequities_bale_rake_v1_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
txse_txseequities_bale_rake_v1_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = txse_txseequities_bale_rake_v1_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
txse_txseequities_bale_rake_v1_0.message_type = {}

-- Size: Message Type
txse_txseequities_bale_rake_v1_0.message_type.size = 1

-- Display: Message Type
txse_txseequities_bale_rake_v1_0.message_type.display = function(value)
  if value == 105 then
    return "Message Type: Trading Session Status Message (105)"
  end
  if value == 115 then
    return "Message Type: Define Symbol Message (115)"
  end
  if value == 121 then
    return "Message Type: Symbol Status Message (121)"
  end
  if value == 120 then
    return "Message Type: Trade Message (120)"
  end
  if value == 113 then
    return "Message Type: Top Of Book Message (113)"
  end
  if value == 117 then
    return "Message Type: Auction Preamble Message (117)"
  end
  if value == 118 then
    return "Message Type: Auction Band Window Message (118)"
  end
  if value == 110 then
    return "Message Type: Auction Print Message (110)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
txse_txseequities_bale_rake_v1_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = txse_txseequities_bale_rake_v1_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Packet Type
txse_txseequities_bale_rake_v1_0.packet_type = {}

-- Size: Packet Type
txse_txseequities_bale_rake_v1_0.packet_type.size = 1

-- Display: Packet Type
txse_txseequities_bale_rake_v1_0.packet_type.display = function(value)
  if value == 0 then
    return "Packet Type: Sequenced Data (0)"
  end
  if value == 1 then
    return "Packet Type: Heartbeat (1)"
  end
  if value == 2 then
    return "Packet Type: Start Of Session (2)"
  end
  if value == 3 then
    return "Packet Type: End Of Session (3)"
  end
  if value == 4 then
    return "Packet Type: Gap Fill Request (4)"
  end
  if value == 5 then
    return "Packet Type: Gap Fill Response (5)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
txse_txseequities_bale_rake_v1_0.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.packet_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = txse_txseequities_bale_rake_v1_0.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Price
txse_txseequities_bale_rake_v1_0.price = {}

-- Size: Price
txse_txseequities_bale_rake_v1_0.price.size = 8

-- Display: Price
txse_txseequities_bale_rake_v1_0.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
txse_txseequities_bale_rake_v1_0.price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price
txse_txseequities_bale_rake_v1_0.price.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = txse_txseequities_bale_rake_v1_0.price.translate(raw)
  local display = txse_txseequities_bale_rake_v1_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.price, range, value, display)

  return offset + length, value
end

-- Qty
txse_txseequities_bale_rake_v1_0.qty = {}

-- Size: Qty
txse_txseequities_bale_rake_v1_0.qty.size = 4

-- Display: Qty
txse_txseequities_bale_rake_v1_0.qty.display = function(value)
  return "Qty: "..value
end

-- Dissect: Qty
txse_txseequities_bale_rake_v1_0.qty.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_bale_rake_v1_0.qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.qty, range, value, display)

  return offset + length, value
end

-- Reserved 8
txse_txseequities_bale_rake_v1_0.reserved_8 = {}

-- Size: Reserved 8
txse_txseequities_bale_rake_v1_0.reserved_8.size = 8

-- Display: Reserved 8
txse_txseequities_bale_rake_v1_0.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
txse_txseequities_bale_rake_v1_0.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.reserved_8.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_txseequities_bale_rake_v1_0.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Sell Shares At Lower
txse_txseequities_bale_rake_v1_0.sell_shares_at_lower = {}

-- Size: Sell Shares At Lower
txse_txseequities_bale_rake_v1_0.sell_shares_at_lower.size = 4

-- Display: Sell Shares At Lower
txse_txseequities_bale_rake_v1_0.sell_shares_at_lower.display = function(value)
  return "Sell Shares At Lower: "..value
end

-- Dissect: Sell Shares At Lower
txse_txseequities_bale_rake_v1_0.sell_shares_at_lower.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.sell_shares_at_lower.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_bale_rake_v1_0.sell_shares_at_lower.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.sell_shares_at_lower, range, value, display)

  return offset + length, value
end

-- Sell Shares At Upper
txse_txseequities_bale_rake_v1_0.sell_shares_at_upper = {}

-- Size: Sell Shares At Upper
txse_txseequities_bale_rake_v1_0.sell_shares_at_upper.size = 4

-- Display: Sell Shares At Upper
txse_txseequities_bale_rake_v1_0.sell_shares_at_upper.display = function(value)
  return "Sell Shares At Upper: "..value
end

-- Dissect: Sell Shares At Upper
txse_txseequities_bale_rake_v1_0.sell_shares_at_upper.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.sell_shares_at_upper.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_bale_rake_v1_0.sell_shares_at_upper.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.sell_shares_at_upper, range, value, display)

  return offset + length, value
end

-- Sequence
txse_txseequities_bale_rake_v1_0.sequence = {}

-- Size: Sequence
txse_txseequities_bale_rake_v1_0.sequence.size = 8

-- Display: Sequence
txse_txseequities_bale_rake_v1_0.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
txse_txseequities_bale_rake_v1_0.sequence.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = txse_txseequities_bale_rake_v1_0.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.sequence, range, value, display)

  return offset + length, value
end

-- Session
txse_txseequities_bale_rake_v1_0.session = {}

-- Size: Session
txse_txseequities_bale_rake_v1_0.session.size = 8

-- Display: Session
txse_txseequities_bale_rake_v1_0.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
txse_txseequities_bale_rake_v1_0.session.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.session.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = txse_txseequities_bale_rake_v1_0.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.session, range, value, display)

  return offset + length, value
end

-- Session Trading State
txse_txseequities_bale_rake_v1_0.session_trading_state = {}

-- Size: Session Trading State
txse_txseequities_bale_rake_v1_0.session_trading_state.size = 1

-- Display: Session Trading State
txse_txseequities_bale_rake_v1_0.session_trading_state.display = function(value)
  if value == 0 then
    return "Session Trading State: Closed (0)"
  end
  if value == 1 then
    return "Session Trading State: Trading (1)"
  end
  if value == 2 then
    return "Session Trading State: Halted (2)"
  end

  return "Session Trading State: Unknown("..value..")"
end

-- Dissect: Session Trading State
txse_txseequities_bale_rake_v1_0.session_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.session_trading_state.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_bale_rake_v1_0.session_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.session_trading_state, range, value, display)

  return offset + length, value
end

-- Short Sale Restriction State
txse_txseequities_bale_rake_v1_0.short_sale_restriction_state = {}

-- Size: Short Sale Restriction State
txse_txseequities_bale_rake_v1_0.short_sale_restriction_state.size = 1

-- Display: Short Sale Restriction State
txse_txseequities_bale_rake_v1_0.short_sale_restriction_state.display = function(value)
  if value == 0 then
    return "Short Sale Restriction State: None (0)"
  end
  if value == 1 then
    return "Short Sale Restriction State: Activated (1)"
  end
  if value == 2 then
    return "Short Sale Restriction State: Continued (2)"
  end
  if value == 3 then
    return "Short Sale Restriction State: Deactivated (3)"
  end
  if value == 4 then
    return "Short Sale Restriction State: In Effect (4)"
  end

  return "Short Sale Restriction State: Unknown("..value..")"
end

-- Dissect: Short Sale Restriction State
txse_txseequities_bale_rake_v1_0.short_sale_restriction_state.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.short_sale_restriction_state.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_bale_rake_v1_0.short_sale_restriction_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.short_sale_restriction_state, range, value, display)

  return offset + length, value
end

-- Stream Id
txse_txseequities_bale_rake_v1_0.stream_id = {}

-- Size: Stream Id
txse_txseequities_bale_rake_v1_0.stream_id.size = 1

-- Display: Stream Id
txse_txseequities_bale_rake_v1_0.stream_id.display = function(value)
  return "Stream Id: "..value
end

-- Dissect: Stream Id
txse_txseequities_bale_rake_v1_0.stream_id.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.stream_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = txse_txseequities_bale_rake_v1_0.stream_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.stream_id, range, value, display)

  return offset + length, value
end

-- Suffix
txse_txseequities_bale_rake_v1_0.suffix = {}

-- Size: Suffix
txse_txseequities_bale_rake_v1_0.suffix.size = 8

-- Display: Suffix
txse_txseequities_bale_rake_v1_0.suffix.display = function(value)
  return "Suffix: "..value
end

-- Dissect: Suffix
txse_txseequities_bale_rake_v1_0.suffix.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.suffix.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_bale_rake_v1_0.suffix.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.suffix, range, value, display)

  return offset + length, value
end

-- Symbol
txse_txseequities_bale_rake_v1_0.symbol = {}

-- Size: Symbol
txse_txseequities_bale_rake_v1_0.symbol.size = 8

-- Display: Symbol
txse_txseequities_bale_rake_v1_0.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
txse_txseequities_bale_rake_v1_0.symbol.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_bale_rake_v1_0.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Id
txse_txseequities_bale_rake_v1_0.symbol_id = {}

-- Size: Symbol Id
txse_txseequities_bale_rake_v1_0.symbol_id.size = 2

-- Display: Symbol Id
txse_txseequities_bale_rake_v1_0.symbol_id.display = function(value)
  return "Symbol Id: "..value
end

-- Dissect: Symbol Id
txse_txseequities_bale_rake_v1_0.symbol_id.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.symbol_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_bale_rake_v1_0.symbol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.symbol_id, range, value, display)

  return offset + length, value
end

-- Symbol Status Operational Halt Reason
txse_txseequities_bale_rake_v1_0.symbol_status_operational_halt_reason = {}

-- Size: Symbol Status Operational Halt Reason
txse_txseequities_bale_rake_v1_0.symbol_status_operational_halt_reason.size = 1

-- Display: Symbol Status Operational Halt Reason
txse_txseequities_bale_rake_v1_0.symbol_status_operational_halt_reason.display = function(value)
  if value == 0 then
    return "Symbol Status Operational Halt Reason: Administrative (0)"
  end

  return "Symbol Status Operational Halt Reason: Unknown("..value..")"
end

-- Dissect: Symbol Status Operational Halt Reason
txse_txseequities_bale_rake_v1_0.symbol_status_operational_halt_reason.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.symbol_status_operational_halt_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_bale_rake_v1_0.symbol_status_operational_halt_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.symbol_status_operational_halt_reason, range, value, display)

  return offset + length, value
end

-- Symbol Status Regulatory Halt Reason
txse_txseequities_bale_rake_v1_0.symbol_status_regulatory_halt_reason = {}

-- Size: Symbol Status Regulatory Halt Reason
txse_txseequities_bale_rake_v1_0.symbol_status_regulatory_halt_reason.size = 1

-- Display: Symbol Status Regulatory Halt Reason
txse_txseequities_bale_rake_v1_0.symbol_status_regulatory_halt_reason.display = function(value)
  if value == 0 then
    return "Symbol Status Regulatory Halt Reason: Reason Not Available (0)"
  end
  if value == 1 then
    return "Symbol Status Regulatory Halt Reason: News Pending (1)"
  end
  if value == 2 then
    return "Symbol Status Regulatory Halt Reason: News Dissemination (2)"
  end
  if value == 3 then
    return "Symbol Status Regulatory Halt Reason: Info Requested (3)"
  end
  if value == 4 then
    return "Symbol Status Regulatory Halt Reason: Order Imbalance (4)"
  end
  if value == 5 then
    return "Symbol Status Regulatory Halt Reason: Extraordinary Market Activity (5)"
  end
  if value == 6 then
    return "Symbol Status Regulatory Halt Reason: Luld Pause (6)"
  end
  if value == 7 then
    return "Symbol Status Regulatory Halt Reason: Non Compliance (7)"
  end
  if value == 8 then
    return "Symbol Status Regulatory Halt Reason: Filings Not Current (8)"
  end
  if value == 9 then
    return "Symbol Status Regulatory Halt Reason: Sec Suspension (9)"
  end
  if value == 10 then
    return "Symbol Status Regulatory Halt Reason: Regulatory Concern (10)"
  end
  if value == 11 then
    return "Symbol Status Regulatory Halt Reason: Sub Penny Trading (11)"
  end
  if value == 12 then
    return "Symbol Status Regulatory Halt Reason: Etf (12)"
  end
  if value == 13 then
    return "Symbol Status Regulatory Halt Reason: Ipo Not Trading (13)"
  end
  if value == 14 then
    return "Symbol Status Regulatory Halt Reason: Corporate Action (14)"
  end
  if value == 15 then
    return "Symbol Status Regulatory Halt Reason: Circuit Breaker L 1 (15)"
  end
  if value == 16 then
    return "Symbol Status Regulatory Halt Reason: Circuit Breaker L 2 (16)"
  end
  if value == 17 then
    return "Symbol Status Regulatory Halt Reason: Circuit Breaker L 3 (17)"
  end
  if value == 18 then
    return "Symbol Status Regulatory Halt Reason: Circuit Breaker Carryover (18)"
  end
  if value == 19 then
    return "Symbol Status Regulatory Halt Reason: Merger Effective (19)"
  end
  if value == 20 then
    return "Symbol Status Regulatory Halt Reason: New Security Offering (20)"
  end
  if value == 21 then
    return "Symbol Status Regulatory Halt Reason: Indicative Value Not Available (21)"
  end
  if value == 22 then
    return "Symbol Status Regulatory Halt Reason: Quotation Not Available (22)"
  end
  if value == 23 then
    return "Symbol Status Regulatory Halt Reason: Single Stock Trading Pause (23)"
  end
  if value == 24 then
    return "Symbol Status Regulatory Halt Reason: Operational (24)"
  end
  if value == 25 then
    return "Symbol Status Regulatory Halt Reason: Luld Pause Straddle (25)"
  end
  if value == 26 then
    return "Symbol Status Regulatory Halt Reason: News Resumption Times (26)"
  end
  if value == 27 then
    return "Symbol Status Regulatory Halt Reason: Single Stock Trading Pause Quoting (27)"
  end
  if value == 28 then
    return "Symbol Status Regulatory Halt Reason: Qualifications Issues Resolved (28)"
  end
  if value == 29 then
    return "Symbol Status Regulatory Halt Reason: Filing Requirements Satisfied (29)"
  end
  if value == 30 then
    return "Symbol Status Regulatory Halt Reason: Issuer News Not Forthcoming (30)"
  end
  if value == 31 then
    return "Symbol Status Regulatory Halt Reason: Qualifications Halt Ended (31)"
  end
  if value == 32 then
    return "Symbol Status Regulatory Halt Reason: Qualifications Halt Concluded (32)"
  end
  if value == 33 then
    return "Symbol Status Regulatory Halt Reason: Regulatory Authority Halt Concluded (33)"
  end
  if value == 34 then
    return "Symbol Status Regulatory Halt Reason: New Issue Available (34)"
  end
  if value == 35 then
    return "Symbol Status Regulatory Halt Reason: Issue Available (35)"
  end
  if value == 36 then
    return "Symbol Status Regulatory Halt Reason: Ipo Quotation Released (36)"
  end
  if value == 37 then
    return "Symbol Status Regulatory Halt Reason: Ipo Positioning Window Extension (37)"
  end
  if value == 38 then
    return "Symbol Status Regulatory Halt Reason: Circuit Breaker Quotation Resumption (38)"
  end

  return "Symbol Status Regulatory Halt Reason: Unknown("..value..")"
end

-- Dissect: Symbol Status Regulatory Halt Reason
txse_txseequities_bale_rake_v1_0.symbol_status_regulatory_halt_reason.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.symbol_status_regulatory_halt_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_bale_rake_v1_0.symbol_status_regulatory_halt_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.symbol_status_regulatory_halt_reason, range, value, display)

  return offset + length, value
end

-- Symbol Trading State
txse_txseequities_bale_rake_v1_0.symbol_trading_state = {}

-- Size: Symbol Trading State
txse_txseequities_bale_rake_v1_0.symbol_trading_state.size = 1

-- Display: Symbol Trading State
txse_txseequities_bale_rake_v1_0.symbol_trading_state.display = function(value)
  if value == 1 then
    return "Symbol Trading State: Trading (1)"
  end
  if value == 2 then
    return "Symbol Trading State: Halted (2)"
  end
  if value == 3 then
    return "Symbol Trading State: Resume Pending (3)"
  end

  return "Symbol Trading State: Unknown("..value..")"
end

-- Dissect: Symbol Trading State
txse_txseequities_bale_rake_v1_0.symbol_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.symbol_trading_state.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_bale_rake_v1_0.symbol_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.symbol_trading_state, range, value, display)

  return offset + length, value
end

-- Trade Through Exemption Reason
txse_txseequities_bale_rake_v1_0.trade_through_exemption_reason = {}

-- Size: Trade Through Exemption Reason
txse_txseequities_bale_rake_v1_0.trade_through_exemption_reason.size = 1

-- Display: Trade Through Exemption Reason
txse_txseequities_bale_rake_v1_0.trade_through_exemption_reason.display = function(value)
  if value == 0 then
    return "Trade Through Exemption Reason: None (0)"
  end
  if value == 1 then
    return "Trade Through Exemption Reason: Intermarket Sweep (1)"
  end

  return "Trade Through Exemption Reason: Unknown("..value..")"
end

-- Dissect: Trade Through Exemption Reason
txse_txseequities_bale_rake_v1_0.trade_through_exemption_reason.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.trade_through_exemption_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_bale_rake_v1_0.trade_through_exemption_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.trade_through_exemption_reason, range, value, display)

  return offset + length, value
end

-- Trading Session Status Operational Halt Reason
txse_txseequities_bale_rake_v1_0.trading_session_status_operational_halt_reason = {}

-- Size: Trading Session Status Operational Halt Reason
txse_txseequities_bale_rake_v1_0.trading_session_status_operational_halt_reason.size = 1

-- Display: Trading Session Status Operational Halt Reason
txse_txseequities_bale_rake_v1_0.trading_session_status_operational_halt_reason.display = function(value)
  if value == 0 then
    return "Trading Session Status Operational Halt Reason: Administrative (0)"
  end

  return "Trading Session Status Operational Halt Reason: Unknown("..value..")"
end

-- Dissect: Trading Session Status Operational Halt Reason
txse_txseequities_bale_rake_v1_0.trading_session_status_operational_halt_reason.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.trading_session_status_operational_halt_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_bale_rake_v1_0.trading_session_status_operational_halt_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.trading_session_status_operational_halt_reason, range, value, display)

  return offset + length, value
end

-- Trading Session Status Regulatory Halt Reason
txse_txseequities_bale_rake_v1_0.trading_session_status_regulatory_halt_reason = {}

-- Size: Trading Session Status Regulatory Halt Reason
txse_txseequities_bale_rake_v1_0.trading_session_status_regulatory_halt_reason.size = 1

-- Display: Trading Session Status Regulatory Halt Reason
txse_txseequities_bale_rake_v1_0.trading_session_status_regulatory_halt_reason.display = function(value)
  if value == 0 then
    return "Trading Session Status Regulatory Halt Reason: Reason Not Available (0)"
  end
  if value == 1 then
    return "Trading Session Status Regulatory Halt Reason: News Pending (1)"
  end
  if value == 2 then
    return "Trading Session Status Regulatory Halt Reason: News Dissemination (2)"
  end
  if value == 3 then
    return "Trading Session Status Regulatory Halt Reason: Info Requested (3)"
  end
  if value == 4 then
    return "Trading Session Status Regulatory Halt Reason: Order Imbalance (4)"
  end
  if value == 5 then
    return "Trading Session Status Regulatory Halt Reason: Extraordinary Market Activity (5)"
  end
  if value == 6 then
    return "Trading Session Status Regulatory Halt Reason: Luld Pause (6)"
  end
  if value == 7 then
    return "Trading Session Status Regulatory Halt Reason: Non Compliance (7)"
  end
  if value == 8 then
    return "Trading Session Status Regulatory Halt Reason: Filings Not Current (8)"
  end
  if value == 9 then
    return "Trading Session Status Regulatory Halt Reason: Sec Suspension (9)"
  end
  if value == 10 then
    return "Trading Session Status Regulatory Halt Reason: Regulatory Concern (10)"
  end
  if value == 11 then
    return "Trading Session Status Regulatory Halt Reason: Sub Penny Trading (11)"
  end
  if value == 12 then
    return "Trading Session Status Regulatory Halt Reason: Etf (12)"
  end
  if value == 13 then
    return "Trading Session Status Regulatory Halt Reason: Ipo Not Trading (13)"
  end
  if value == 14 then
    return "Trading Session Status Regulatory Halt Reason: Corporate Action (14)"
  end
  if value == 15 then
    return "Trading Session Status Regulatory Halt Reason: Circuit Breaker L 1 (15)"
  end
  if value == 16 then
    return "Trading Session Status Regulatory Halt Reason: Circuit Breaker L 2 (16)"
  end
  if value == 17 then
    return "Trading Session Status Regulatory Halt Reason: Circuit Breaker L 3 (17)"
  end
  if value == 18 then
    return "Trading Session Status Regulatory Halt Reason: Circuit Breaker Carryover (18)"
  end
  if value == 19 then
    return "Trading Session Status Regulatory Halt Reason: Merger Effective (19)"
  end
  if value == 20 then
    return "Trading Session Status Regulatory Halt Reason: New Security Offering (20)"
  end
  if value == 21 then
    return "Trading Session Status Regulatory Halt Reason: Indicative Value Not Available (21)"
  end
  if value == 22 then
    return "Trading Session Status Regulatory Halt Reason: Quotation Not Available (22)"
  end
  if value == 23 then
    return "Trading Session Status Regulatory Halt Reason: Single Stock Trading Pause (23)"
  end
  if value == 24 then
    return "Trading Session Status Regulatory Halt Reason: Operational (24)"
  end
  if value == 25 then
    return "Trading Session Status Regulatory Halt Reason: Luld Pause Straddle (25)"
  end
  if value == 26 then
    return "Trading Session Status Regulatory Halt Reason: News Resumption Times (26)"
  end
  if value == 27 then
    return "Trading Session Status Regulatory Halt Reason: Single Stock Trading Pause Quoting (27)"
  end
  if value == 28 then
    return "Trading Session Status Regulatory Halt Reason: Qualifications Issues Resolved (28)"
  end
  if value == 29 then
    return "Trading Session Status Regulatory Halt Reason: Filing Requirements Satisfied (29)"
  end
  if value == 30 then
    return "Trading Session Status Regulatory Halt Reason: Issuer News Not Forthcoming (30)"
  end
  if value == 31 then
    return "Trading Session Status Regulatory Halt Reason: Qualifications Halt Ended (31)"
  end
  if value == 32 then
    return "Trading Session Status Regulatory Halt Reason: Qualifications Halt Concluded (32)"
  end
  if value == 33 then
    return "Trading Session Status Regulatory Halt Reason: Regulatory Authority Halt Concluded (33)"
  end
  if value == 34 then
    return "Trading Session Status Regulatory Halt Reason: New Issue Available (34)"
  end
  if value == 35 then
    return "Trading Session Status Regulatory Halt Reason: Issue Available (35)"
  end
  if value == 36 then
    return "Trading Session Status Regulatory Halt Reason: Ipo Quotation Released (36)"
  end
  if value == 37 then
    return "Trading Session Status Regulatory Halt Reason: Ipo Positioning Window Extension (37)"
  end
  if value == 38 then
    return "Trading Session Status Regulatory Halt Reason: Circuit Breaker Quotation Resumption (38)"
  end

  return "Trading Session Status Regulatory Halt Reason: Unknown("..value..")"
end

-- Dissect: Trading Session Status Regulatory Halt Reason
txse_txseequities_bale_rake_v1_0.trading_session_status_regulatory_halt_reason.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.trading_session_status_regulatory_halt_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_bale_rake_v1_0.trading_session_status_regulatory_halt_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.trading_session_status_regulatory_halt_reason, range, value, display)

  return offset + length, value
end

-- Transact Time
txse_txseequities_bale_rake_v1_0.transact_time = {}

-- Size: Transact Time
txse_txseequities_bale_rake_v1_0.transact_time.size = 8

-- Display: Transact Time
txse_txseequities_bale_rake_v1_0.transact_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Transact Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transact Time
txse_txseequities_bale_rake_v1_0.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_txseequities_bale_rake_v1_0.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Upper Participation Band
txse_txseequities_bale_rake_v1_0.upper_participation_band = {}

-- Size: Upper Participation Band
txse_txseequities_bale_rake_v1_0.upper_participation_band.size = 8

-- Display: Upper Participation Band
txse_txseequities_bale_rake_v1_0.upper_participation_band.display = function(value)
  return "Upper Participation Band: "..value
end

-- Translate: Upper Participation Band
txse_txseequities_bale_rake_v1_0.upper_participation_band.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Upper Participation Band
txse_txseequities_bale_rake_v1_0.upper_participation_band.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_bale_rake_v1_0.upper_participation_band.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = txse_txseequities_bale_rake_v1_0.upper_participation_band.translate(raw)
  local display = txse_txseequities_bale_rake_v1_0.upper_participation_band.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.upper_participation_band, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Txse TxseEquities Bale Rake 1.0
-----------------------------------------------------------------------

-- Auction Print Message
txse_txseequities_bale_rake_v1_0.auction_print_message = {}

-- Size: Auction Print Message
txse_txseequities_bale_rake_v1_0.auction_print_message.size =
  txse_txseequities_bale_rake_v1_0.transact_time.size + 
  txse_txseequities_bale_rake_v1_0.symbol_id.size + 
  txse_txseequities_bale_rake_v1_0.auction_type.size + 
  txse_txseequities_bale_rake_v1_0.auction_price.size + 
  txse_txseequities_bale_rake_v1_0.matched_shares.size + 
  txse_txseequities_bale_rake_v1_0.exec_id.size

-- Display: Auction Print Message
txse_txseequities_bale_rake_v1_0.auction_print_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Print Message
txse_txseequities_bale_rake_v1_0.auction_print_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: TimeStamp
  index, transact_time = txse_txseequities_bale_rake_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: Short
  index, symbol_id = txse_txseequities_bale_rake_v1_0.symbol_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Enum
  index, auction_type = txse_txseequities_bale_rake_v1_0.auction_type.dissect(buffer, index, packet, parent)

  -- Auction Price: Price
  index, auction_price = txse_txseequities_bale_rake_v1_0.auction_price.dissect(buffer, index, packet, parent)

  -- Matched Shares: Int
  index, matched_shares = txse_txseequities_bale_rake_v1_0.matched_shares.dissect(buffer, index, packet, parent)

  -- Exec Id: Long
  index, exec_id = txse_txseequities_bale_rake_v1_0.exec_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Print Message
txse_txseequities_bale_rake_v1_0.auction_print_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.auction_print_message, buffer(offset, 0))
    local index = txse_txseequities_bale_rake_v1_0.auction_print_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_bale_rake_v1_0.auction_print_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_bale_rake_v1_0.auction_print_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Band Window Message
txse_txseequities_bale_rake_v1_0.auction_band_window_message = {}

-- Size: Auction Band Window Message
txse_txseequities_bale_rake_v1_0.auction_band_window_message.size =
  txse_txseequities_bale_rake_v1_0.transact_time.size + 
  txse_txseequities_bale_rake_v1_0.symbol_id.size + 
  txse_txseequities_bale_rake_v1_0.auction_type.size + 
  txse_txseequities_bale_rake_v1_0.auction_start.size + 
  txse_txseequities_bale_rake_v1_0.extension_cycle_count.size + 
  txse_txseequities_bale_rake_v1_0.lower_participation_band.size + 
  txse_txseequities_bale_rake_v1_0.buy_shares_at_lower.size + 
  txse_txseequities_bale_rake_v1_0.sell_shares_at_lower.size + 
  txse_txseequities_bale_rake_v1_0.upper_participation_band.size + 
  txse_txseequities_bale_rake_v1_0.buy_shares_at_upper.size + 
  txse_txseequities_bale_rake_v1_0.sell_shares_at_upper.size + 
  txse_txseequities_bale_rake_v1_0.reserved_8.size

-- Display: Auction Band Window Message
txse_txseequities_bale_rake_v1_0.auction_band_window_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Band Window Message
txse_txseequities_bale_rake_v1_0.auction_band_window_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: TimeStamp
  index, transact_time = txse_txseequities_bale_rake_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: Short
  index, symbol_id = txse_txseequities_bale_rake_v1_0.symbol_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Enum
  index, auction_type = txse_txseequities_bale_rake_v1_0.auction_type.dissect(buffer, index, packet, parent)

  -- Auction Start: TimeStamp
  index, auction_start = txse_txseequities_bale_rake_v1_0.auction_start.dissect(buffer, index, packet, parent)

  -- Extension Cycle Count: Byte
  index, extension_cycle_count = txse_txseequities_bale_rake_v1_0.extension_cycle_count.dissect(buffer, index, packet, parent)

  -- Lower Participation Band: Price
  index, lower_participation_band = txse_txseequities_bale_rake_v1_0.lower_participation_band.dissect(buffer, index, packet, parent)

  -- Buy Shares At Lower: Int
  index, buy_shares_at_lower = txse_txseequities_bale_rake_v1_0.buy_shares_at_lower.dissect(buffer, index, packet, parent)

  -- Sell Shares At Lower: Int
  index, sell_shares_at_lower = txse_txseequities_bale_rake_v1_0.sell_shares_at_lower.dissect(buffer, index, packet, parent)

  -- Upper Participation Band: Price
  index, upper_participation_band = txse_txseequities_bale_rake_v1_0.upper_participation_band.dissect(buffer, index, packet, parent)

  -- Buy Shares At Upper: Int
  index, buy_shares_at_upper = txse_txseequities_bale_rake_v1_0.buy_shares_at_upper.dissect(buffer, index, packet, parent)

  -- Sell Shares At Upper: Int
  index, sell_shares_at_upper = txse_txseequities_bale_rake_v1_0.sell_shares_at_upper.dissect(buffer, index, packet, parent)

  -- Reserved 8: Long
  index, reserved_8 = txse_txseequities_bale_rake_v1_0.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Band Window Message
txse_txseequities_bale_rake_v1_0.auction_band_window_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.auction_band_window_message, buffer(offset, 0))
    local index = txse_txseequities_bale_rake_v1_0.auction_band_window_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_bale_rake_v1_0.auction_band_window_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_bale_rake_v1_0.auction_band_window_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Preamble Message
txse_txseequities_bale_rake_v1_0.auction_preamble_message = {}

-- Size: Auction Preamble Message
txse_txseequities_bale_rake_v1_0.auction_preamble_message.size =
  txse_txseequities_bale_rake_v1_0.transact_time.size + 
  txse_txseequities_bale_rake_v1_0.symbol_id.size + 
  txse_txseequities_bale_rake_v1_0.auction_type.size + 
  txse_txseequities_bale_rake_v1_0.auction_start.size + 
  txse_txseequities_bale_rake_v1_0.matched_shares.size + 
  txse_txseequities_bale_rake_v1_0.excess_auction_side.size + 
  txse_txseequities_bale_rake_v1_0.reserved_8.size

-- Display: Auction Preamble Message
txse_txseequities_bale_rake_v1_0.auction_preamble_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Preamble Message
txse_txseequities_bale_rake_v1_0.auction_preamble_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: TimeStamp
  index, transact_time = txse_txseequities_bale_rake_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: Short
  index, symbol_id = txse_txseequities_bale_rake_v1_0.symbol_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Enum
  index, auction_type = txse_txseequities_bale_rake_v1_0.auction_type.dissect(buffer, index, packet, parent)

  -- Auction Start: TimeStamp
  index, auction_start = txse_txseequities_bale_rake_v1_0.auction_start.dissect(buffer, index, packet, parent)

  -- Matched Shares: Int
  index, matched_shares = txse_txseequities_bale_rake_v1_0.matched_shares.dissect(buffer, index, packet, parent)

  -- Excess Auction Side: Enum
  index, excess_auction_side = txse_txseequities_bale_rake_v1_0.excess_auction_side.dissect(buffer, index, packet, parent)

  -- Reserved 8: Long
  index, reserved_8 = txse_txseequities_bale_rake_v1_0.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Preamble Message
txse_txseequities_bale_rake_v1_0.auction_preamble_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.auction_preamble_message, buffer(offset, 0))
    local index = txse_txseequities_bale_rake_v1_0.auction_preamble_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_bale_rake_v1_0.auction_preamble_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_bale_rake_v1_0.auction_preamble_message.fields(buffer, offset, packet, parent)
  end
end

-- Top Of Book Message
txse_txseequities_bale_rake_v1_0.top_of_book_message = {}

-- Size: Top Of Book Message
txse_txseequities_bale_rake_v1_0.top_of_book_message.size =
  txse_txseequities_bale_rake_v1_0.transact_time.size + 
  txse_txseequities_bale_rake_v1_0.symbol_id.size + 
  txse_txseequities_bale_rake_v1_0.bid_price.size + 
  txse_txseequities_bale_rake_v1_0.bid_qty.size + 
  txse_txseequities_bale_rake_v1_0.ask_price.size + 
  txse_txseequities_bale_rake_v1_0.ask_qty.size

-- Display: Top Of Book Message
txse_txseequities_bale_rake_v1_0.top_of_book_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Of Book Message
txse_txseequities_bale_rake_v1_0.top_of_book_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: TimeStamp
  index, transact_time = txse_txseequities_bale_rake_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: Short
  index, symbol_id = txse_txseequities_bale_rake_v1_0.symbol_id.dissect(buffer, index, packet, parent)

  -- Bid Price: Price
  index, bid_price = txse_txseequities_bale_rake_v1_0.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Qty: Int
  index, bid_qty = txse_txseequities_bale_rake_v1_0.bid_qty.dissect(buffer, index, packet, parent)

  -- Ask Price: Price
  index, ask_price = txse_txseequities_bale_rake_v1_0.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Qty: Int
  index, ask_qty = txse_txseequities_bale_rake_v1_0.ask_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Of Book Message
txse_txseequities_bale_rake_v1_0.top_of_book_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.top_of_book_message, buffer(offset, 0))
    local index = txse_txseequities_bale_rake_v1_0.top_of_book_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_bale_rake_v1_0.top_of_book_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_bale_rake_v1_0.top_of_book_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
txse_txseequities_bale_rake_v1_0.trade_message = {}

-- Size: Trade Message
txse_txseequities_bale_rake_v1_0.trade_message.size =
  txse_txseequities_bale_rake_v1_0.transact_time.size + 
  txse_txseequities_bale_rake_v1_0.symbol_id.size + 
  txse_txseequities_bale_rake_v1_0.price.size + 
  txse_txseequities_bale_rake_v1_0.qty.size + 
  txse_txseequities_bale_rake_v1_0.trade_through_exemption_reason.size

-- Display: Trade Message
txse_txseequities_bale_rake_v1_0.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
txse_txseequities_bale_rake_v1_0.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: TimeStamp
  index, transact_time = txse_txseequities_bale_rake_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: Short
  index, symbol_id = txse_txseequities_bale_rake_v1_0.symbol_id.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = txse_txseequities_bale_rake_v1_0.price.dissect(buffer, index, packet, parent)

  -- Qty: Int
  index, qty = txse_txseequities_bale_rake_v1_0.qty.dissect(buffer, index, packet, parent)

  -- Trade Through Exemption Reason: Byte
  index, trade_through_exemption_reason = txse_txseequities_bale_rake_v1_0.trade_through_exemption_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
txse_txseequities_bale_rake_v1_0.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.trade_message, buffer(offset, 0))
    local index = txse_txseequities_bale_rake_v1_0.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_bale_rake_v1_0.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_bale_rake_v1_0.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Status Presence Bits
txse_txseequities_bale_rake_v1_0.symbol_status_presence_bits = {}

-- Size: Symbol Status Presence Bits
txse_txseequities_bale_rake_v1_0.symbol_status_presence_bits.size = 1

-- Display: Symbol Status Presence Bits
txse_txseequities_bale_rake_v1_0.symbol_status_presence_bits.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Has Symbol Status Operational Halt Reason flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Has Symbol Status Operational Halt Reason"
  end
  -- Is Has Symbol Status Regulatory Halt Reason flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Has Symbol Status Regulatory Halt Reason"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Symbol Status Presence Bits
txse_txseequities_bale_rake_v1_0.symbol_status_presence_bits.bits = function(range, value, packet, parent)

  -- Has Symbol Status Operational Halt Reason: 1 Bit
  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.has_symbol_status_operational_halt_reason, range, value)

  -- Has Symbol Status Regulatory Halt Reason: 1 Bit
  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.has_symbol_status_regulatory_halt_reason, range, value)

  -- Reserved 6: 6 Bit
  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.reserved_6, range, value)
end

-- Dissect: Symbol Status Presence Bits
txse_txseequities_bale_rake_v1_0.symbol_status_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_bale_rake_v1_0.symbol_status_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_bale_rake_v1_0.symbol_status_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.symbol_status_presence_bits, range, display)

  if show.structs then
    txse_txseequities_bale_rake_v1_0.symbol_status_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Symbol Status Message
txse_txseequities_bale_rake_v1_0.symbol_status_message = {}

-- Calculate size of: Symbol Status Message
txse_txseequities_bale_rake_v1_0.symbol_status_message.size = function(buffer, offset)
  local index = 0

  index = index + txse_txseequities_bale_rake_v1_0.symbol_status_presence_bits.size

  index = index + txse_txseequities_bale_rake_v1_0.transact_time.size

  index = index + txse_txseequities_bale_rake_v1_0.symbol_id.size

  index = index + txse_txseequities_bale_rake_v1_0.symbol_trading_state.size

  index = index + txse_txseequities_bale_rake_v1_0.short_sale_restriction_state.size

  local has_symbol_status_operational_halt_reason = buffer(offset + 1, 1):le_uint()

  if bit.band(symbol_status_presence_bits, 0x01) == 1 then
    index = index + txse_txseequities_bale_rake_v1_0.symbol_status_operational_halt_reason.size

  end

  local has_symbol_status_regulatory_halt_reason = buffer(offset + 1, 1):le_uint()

  if bit.band(symbol_status_presence_bits, 0x02) == 1 then
    index = index + txse_txseequities_bale_rake_v1_0.symbol_status_regulatory_halt_reason.size

  end

  return index
end

-- Display: Symbol Status Message
txse_txseequities_bale_rake_v1_0.symbol_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Status Message
txse_txseequities_bale_rake_v1_0.symbol_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Status Presence Bits: Struct of 3 fields
  index, symbol_status_presence_bits = txse_txseequities_bale_rake_v1_0.symbol_status_presence_bits.dissect(buffer, index, packet, parent)

  -- Transact Time: TimeStamp
  index, transact_time = txse_txseequities_bale_rake_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: Short
  index, symbol_id = txse_txseequities_bale_rake_v1_0.symbol_id.dissect(buffer, index, packet, parent)

  -- Symbol Trading State: Byte
  index, symbol_trading_state = txse_txseequities_bale_rake_v1_0.symbol_trading_state.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction State: Enum
  index, short_sale_restriction_state = txse_txseequities_bale_rake_v1_0.short_sale_restriction_state.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Symbol Status Operational Halt Reason
  local symbol_status_operational_halt_reason = nil

  local symbol_status_operational_halt_reason_exists = bit.band(symbol_status_presence_bits, 0x01) == 1

  if symbol_status_operational_halt_reason_exists then
    index, symbol_status_operational_halt_reason = txse_txseequities_bale_rake_v1_0.symbol_status_operational_halt_reason.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol Status Regulatory Halt Reason
  local symbol_status_regulatory_halt_reason = nil

  local symbol_status_regulatory_halt_reason_exists = bit.band(symbol_status_presence_bits, 0x02) == 1

  if symbol_status_regulatory_halt_reason_exists then
    index, symbol_status_regulatory_halt_reason = txse_txseequities_bale_rake_v1_0.symbol_status_regulatory_halt_reason.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Symbol Status Message
txse_txseequities_bale_rake_v1_0.symbol_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.symbol_status_message, buffer(offset, 0))
    local index = txse_txseequities_bale_rake_v1_0.symbol_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_bale_rake_v1_0.symbol_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_bale_rake_v1_0.symbol_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Define Symbol Bit Fields
txse_txseequities_bale_rake_v1_0.define_symbol_bit_fields = {}

-- Size: Define Symbol Bit Fields
txse_txseequities_bale_rake_v1_0.define_symbol_bit_fields.size = 1

-- Display: Define Symbol Bit Fields
txse_txseequities_bale_rake_v1_0.define_symbol_bit_fields.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Is Test flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Is Test"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Define Symbol Bit Fields
txse_txseequities_bale_rake_v1_0.define_symbol_bit_fields.bits = function(range, value, packet, parent)

  -- Is Test: 1 Bit
  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.is_test, range, value)

  -- Reserved 7: 7 Bit
  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.reserved_7, range, value)
end

-- Dissect: Define Symbol Bit Fields
txse_txseequities_bale_rake_v1_0.define_symbol_bit_fields.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_bale_rake_v1_0.define_symbol_bit_fields.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_bale_rake_v1_0.define_symbol_bit_fields.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.define_symbol_bit_fields, range, display)

  if show.structs then
    txse_txseequities_bale_rake_v1_0.define_symbol_bit_fields.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Define Symbol Message
txse_txseequities_bale_rake_v1_0.define_symbol_message = {}

-- Size: Define Symbol Message
txse_txseequities_bale_rake_v1_0.define_symbol_message.size =
  txse_txseequities_bale_rake_v1_0.transact_time.size + 
  txse_txseequities_bale_rake_v1_0.symbol_id.size + 
  txse_txseequities_bale_rake_v1_0.symbol.size + 
  txse_txseequities_bale_rake_v1_0.suffix.size + 
  txse_txseequities_bale_rake_v1_0.matching_engine_id.size + 
  txse_txseequities_bale_rake_v1_0.define_symbol_bit_fields.size + 
  txse_txseequities_bale_rake_v1_0.lot_size.size + 
  txse_txseequities_bale_rake_v1_0.listing_market.size

-- Display: Define Symbol Message
txse_txseequities_bale_rake_v1_0.define_symbol_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Define Symbol Message
txse_txseequities_bale_rake_v1_0.define_symbol_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: TimeStamp
  index, transact_time = txse_txseequities_bale_rake_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: Short
  index, symbol_id = txse_txseequities_bale_rake_v1_0.symbol_id.dissect(buffer, index, packet, parent)

  -- Symbol: Str(8)
  index, symbol = txse_txseequities_bale_rake_v1_0.symbol.dissect(buffer, index, packet, parent)

  -- Suffix: Str(8)
  index, suffix = txse_txseequities_bale_rake_v1_0.suffix.dissect(buffer, index, packet, parent)

  -- Matching Engine Id: Byte
  index, matching_engine_id = txse_txseequities_bale_rake_v1_0.matching_engine_id.dissect(buffer, index, packet, parent)

  -- Define Symbol Bit Fields: Struct of 2 fields
  index, define_symbol_bit_fields = txse_txseequities_bale_rake_v1_0.define_symbol_bit_fields.dissect(buffer, index, packet, parent)

  -- Lot Size: Int
  index, lot_size = txse_txseequities_bale_rake_v1_0.lot_size.dissect(buffer, index, packet, parent)

  -- Listing Market: Byte
  index, listing_market = txse_txseequities_bale_rake_v1_0.listing_market.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Define Symbol Message
txse_txseequities_bale_rake_v1_0.define_symbol_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.define_symbol_message, buffer(offset, 0))
    local index = txse_txseequities_bale_rake_v1_0.define_symbol_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_bale_rake_v1_0.define_symbol_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_bale_rake_v1_0.define_symbol_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session Status Presence Bits
txse_txseequities_bale_rake_v1_0.trading_session_status_presence_bits = {}

-- Size: Trading Session Status Presence Bits
txse_txseequities_bale_rake_v1_0.trading_session_status_presence_bits.size = 1

-- Display: Trading Session Status Presence Bits
txse_txseequities_bale_rake_v1_0.trading_session_status_presence_bits.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Has Trading Session Status Operational Halt Reason flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Has Trading Session Status Operational Halt Reason"
  end
  -- Is Has Trading Session Status Regulatory Halt Reason flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Has Trading Session Status Regulatory Halt Reason"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trading Session Status Presence Bits
txse_txseequities_bale_rake_v1_0.trading_session_status_presence_bits.bits = function(range, value, packet, parent)

  -- Has Trading Session Status Operational Halt Reason: 1 Bit
  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.has_trading_session_status_operational_halt_reason, range, value)

  -- Has Trading Session Status Regulatory Halt Reason: 1 Bit
  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.has_trading_session_status_regulatory_halt_reason, range, value)

  -- Reserved 6: 6 Bit
  parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.reserved_6, range, value)
end

-- Dissect: Trading Session Status Presence Bits
txse_txseequities_bale_rake_v1_0.trading_session_status_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_bale_rake_v1_0.trading_session_status_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_bale_rake_v1_0.trading_session_status_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.trading_session_status_presence_bits, range, display)

  if show.structs then
    txse_txseequities_bale_rake_v1_0.trading_session_status_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trading Session Status Message
txse_txseequities_bale_rake_v1_0.trading_session_status_message = {}

-- Calculate size of: Trading Session Status Message
txse_txseequities_bale_rake_v1_0.trading_session_status_message.size = function(buffer, offset)
  local index = 0

  index = index + txse_txseequities_bale_rake_v1_0.trading_session_status_presence_bits.size

  index = index + txse_txseequities_bale_rake_v1_0.transact_time.size

  index = index + txse_txseequities_bale_rake_v1_0.market_hours_state.size

  index = index + txse_txseequities_bale_rake_v1_0.session_trading_state.size

  local has_trading_session_status_operational_halt_reason = buffer(offset + 1, 1):le_uint()

  if bit.band(trading_session_status_presence_bits, 0x01) == 1 then
    index = index + txse_txseequities_bale_rake_v1_0.trading_session_status_operational_halt_reason.size

  end

  local has_trading_session_status_regulatory_halt_reason = buffer(offset + 1, 1):le_uint()

  if bit.band(trading_session_status_presence_bits, 0x02) == 1 then
    index = index + txse_txseequities_bale_rake_v1_0.trading_session_status_regulatory_halt_reason.size

  end

  return index
end

-- Display: Trading Session Status Message
txse_txseequities_bale_rake_v1_0.trading_session_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Status Message
txse_txseequities_bale_rake_v1_0.trading_session_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Session Status Presence Bits: Struct of 3 fields
  index, trading_session_status_presence_bits = txse_txseequities_bale_rake_v1_0.trading_session_status_presence_bits.dissect(buffer, index, packet, parent)

  -- Transact Time: TimeStamp
  index, transact_time = txse_txseequities_bale_rake_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Market Hours State: Enum
  index, market_hours_state = txse_txseequities_bale_rake_v1_0.market_hours_state.dissect(buffer, index, packet, parent)

  -- Session Trading State: Byte
  index, session_trading_state = txse_txseequities_bale_rake_v1_0.session_trading_state.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Trading Session Status Operational Halt Reason
  local trading_session_status_operational_halt_reason = nil

  local trading_session_status_operational_halt_reason_exists = bit.band(trading_session_status_presence_bits, 0x01) == 1

  if trading_session_status_operational_halt_reason_exists then
    index, trading_session_status_operational_halt_reason = txse_txseequities_bale_rake_v1_0.trading_session_status_operational_halt_reason.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trading Session Status Regulatory Halt Reason
  local trading_session_status_regulatory_halt_reason = nil

  local trading_session_status_regulatory_halt_reason_exists = bit.band(trading_session_status_presence_bits, 0x02) == 1

  if trading_session_status_regulatory_halt_reason_exists then
    index, trading_session_status_regulatory_halt_reason = txse_txseequities_bale_rake_v1_0.trading_session_status_regulatory_halt_reason.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Trading Session Status Message
txse_txseequities_bale_rake_v1_0.trading_session_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.trading_session_status_message, buffer(offset, 0))
    local index = txse_txseequities_bale_rake_v1_0.trading_session_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_bale_rake_v1_0.trading_session_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_bale_rake_v1_0.trading_session_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
txse_txseequities_bale_rake_v1_0.payload = {}

-- Dissect: Payload
txse_txseequities_bale_rake_v1_0.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Trading Session Status Message
  if message_type == 105 then
    return txse_txseequities_bale_rake_v1_0.trading_session_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Define Symbol Message
  if message_type == 115 then
    return txse_txseequities_bale_rake_v1_0.define_symbol_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Status Message
  if message_type == 121 then
    return txse_txseequities_bale_rake_v1_0.symbol_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == 120 then
    return txse_txseequities_bale_rake_v1_0.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Top Of Book Message
  if message_type == 113 then
    return txse_txseequities_bale_rake_v1_0.top_of_book_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Preamble Message
  if message_type == 117 then
    return txse_txseequities_bale_rake_v1_0.auction_preamble_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Band Window Message
  if message_type == 118 then
    return txse_txseequities_bale_rake_v1_0.auction_band_window_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Print Message
  if message_type == 110 then
    return txse_txseequities_bale_rake_v1_0.auction_print_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Udp Sequenced Message
txse_txseequities_bale_rake_v1_0.udp_sequenced_message = {}

-- Display: Udp Sequenced Message
txse_txseequities_bale_rake_v1_0.udp_sequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Udp Sequenced Message
txse_txseequities_bale_rake_v1_0.udp_sequenced_message.fields = function(buffer, offset, packet, parent, size_of_udp_sequenced_message, udp_sequenced_message_index)
  local index = offset

  -- Implicit Udp Sequenced Message Index
  if udp_sequenced_message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.udp_sequenced_message_index, udp_sequenced_message_index)
    iteration:set_generated()
  end

  -- Message Length: Short
  index, message_length = txse_txseequities_bale_rake_v1_0.message_length.dissect(buffer, index, packet, parent)

  -- Stream Id: Byte
  index, stream_id = txse_txseequities_bale_rake_v1_0.stream_id.dissect(buffer, index, packet, parent)

  -- Message Type: Byte
  index, message_type = txse_txseequities_bale_rake_v1_0.message_type.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 8 branches
  index = txse_txseequities_bale_rake_v1_0.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Udp Sequenced Message
txse_txseequities_bale_rake_v1_0.udp_sequenced_message.dissect = function(buffer, offset, packet, parent, size_of_udp_sequenced_message, udp_sequenced_message_index)
  local index = offset + size_of_udp_sequenced_message

  -- Optionally add group/struct element to protocol tree
  if show.headers then
    parent = parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.udp_sequenced_message, buffer(offset, 0))
    local current = txse_txseequities_bale_rake_v1_0.udp_sequenced_message.fields(buffer, offset, packet, parent, size_of_udp_sequenced_message, udp_sequenced_message_index)
    parent:set_len(size_of_udp_sequenced_message)
    local display = txse_txseequities_bale_rake_v1_0.udp_sequenced_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    txse_txseequities_bale_rake_v1_0.udp_sequenced_message.fields(buffer, offset, packet, parent, size_of_udp_sequenced_message, udp_sequenced_message_index)

    return index
  end
end

-- Udp Header
txse_txseequities_bale_rake_v1_0.udp_header = {}

-- Size: Udp Header
txse_txseequities_bale_rake_v1_0.udp_header.size =
  txse_txseequities_bale_rake_v1_0.session.size + 
  txse_txseequities_bale_rake_v1_0.sequence.size + 
  txse_txseequities_bale_rake_v1_0.message_count.size + 
  txse_txseequities_bale_rake_v1_0.packet_type.size

-- Display: Udp Header
txse_txseequities_bale_rake_v1_0.udp_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Udp Header
txse_txseequities_bale_rake_v1_0.udp_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: Long
  index, session = txse_txseequities_bale_rake_v1_0.session.dissect(buffer, index, packet, parent)

  -- Sequence: Long
  index, sequence = txse_txseequities_bale_rake_v1_0.sequence.dissect(buffer, index, packet, parent)

  -- Message Count: Short
  index, message_count = txse_txseequities_bale_rake_v1_0.message_count.dissect(buffer, index, packet, parent)

  -- Packet Type: Enum
  index, packet_type = txse_txseequities_bale_rake_v1_0.packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Udp Header
txse_txseequities_bale_rake_v1_0.udp_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_bale_rake_v1_0.fields.udp_header, buffer(offset, 0))
    local index = txse_txseequities_bale_rake_v1_0.udp_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_bale_rake_v1_0.udp_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_bale_rake_v1_0.udp_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
txse_txseequities_bale_rake_v1_0.packet = {}

-- Verify required size of Udp packet
txse_txseequities_bale_rake_v1_0.packet.requiredsize = function(buffer)
  return buffer:len() >= txse_txseequities_bale_rake_v1_0.udp_header.size
end

-- Dissect Packet
txse_txseequities_bale_rake_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Udp Header: Struct of 4 fields
  index, udp_header = txse_txseequities_bale_rake_v1_0.udp_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 3, 2):le_uint()

  -- Repeating: Udp Sequenced Message
  for udp_sequenced_message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):le_uint()

    -- Runtime Size Of: Udp Sequenced Message
    local size_of_udp_sequenced_message = message_length + 2

    -- Udp Sequenced Message: Struct of 4 fields
    index, udp_sequenced_message = txse_txseequities_bale_rake_v1_0.udp_sequenced_message.dissect(buffer, index, packet, parent, size_of_udp_sequenced_message, udp_sequenced_message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_txse_txseequities_bale_rake_v1_0.init()
end

-- Dissector for Txse TxseEquities Bale Rake 1.0
function omi_txse_txseequities_bale_rake_v1_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_txse_txseequities_bale_rake_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_txse_txseequities_bale_rake_v1_0, buffer(), omi_txse_txseequities_bale_rake_v1_0.description, "("..buffer:len().." Bytes)")
  return txse_txseequities_bale_rake_v1_0.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Txse TxseEquities Bale Rake 1.0 (Udp)
local function omi_txse_txseequities_bale_rake_v1_0_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not txse_txseequities_bale_rake_v1_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_txse_txseequities_bale_rake_v1_0
  omi_txse_txseequities_bale_rake_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Txse TxseEquities Bale Rake 1.0
omi_txse_txseequities_bale_rake_v1_0:register_heuristic("udp", omi_txse_txseequities_bale_rake_v1_0_udp_heuristic)

-- Register Txse TxseEquities Bale Rake 1.0 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_txse_txseequities_bale_rake_v1_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Texas Stock Exchange
--   Version: 1.0
--   Date: Friday, June 12, 2026
--   Specification: BALE.pdf
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
