-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse AmexEquities OpenBook Xdp 1.9.a Protocol
local omi_nyse_amexequities_openbook_xdp_v1_9_a = Proto("Omi.Nyse.AmexEquities.OpenBook.Xdp.v1.9.a", "Nyse AmexEquities OpenBook Xdp 1.9.a")

-- Protocol table
local nyse_amexequities_openbook_xdp_v1_9_a = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse AmexEquities OpenBook Xdp 1.9.a Fields
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.auction_time = ProtoField.new("Auction Time", "nyse.amexequities.openbook.xdp.v1.9.a.auctiontime", ftypes.UINT16, nil, nil, nil, "Projected Auction Time (hhmm)")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.auction_type = ProtoField.new("Auction Type", "nyse.amexequities.openbook.xdp.v1.9.a.auctiontype", ftypes.STRING, nil, nil, nil, "Auction type. For the NYSE / NYSE MKT, the opening imbalance will have an \"M\" Auction Type.")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.closing_only_clearing_price = ProtoField.new("Closing Only Clearing Price", "nyse.amexequities.openbook.xdp.v1.9.a.closingonlyclearingprice", ftypes.UINT32, nil, nil, nil, "This field contains the indicative price against closing only order only. This field is a future enhancement for NYSE Arca and will have a '0' value until such time. This field is not yet implemented and is left as a future release.")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.continuous_book_clearing_price = ProtoField.new("Continuous Book Clearing Price", "nyse.amexequities.openbook.xdp.v1.9.a.continuousbookclearingprice", ftypes.UINT32, nil, nil, nil, "The Continuous Book Clearing Price is defined as the price closest to last sale where imbalance is zero. If a Book Clearing Price is not reached, a zero will be published. This field is a future enhancement for NYSE Arca and will have a '0' value until such time. This field is not yet implemented and is left as a future release.")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.amexequities.openbook.xdp.v1.9.a.deliveryflag", ftypes.UINT8, nil, nil, nil, "A flag that indicates whether this is an original, retransmitted, or ‘replayed’ message.")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.firm_id = ProtoField.new("Firm Id", "nyse.amexequities.openbook.xdp.v1.9.a.firmid", ftypes.STRING, nil, nil, nil, "This field provides market participant's firm ID")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.imbalance_side = ProtoField.new("Imbalance Side", "nyse.amexequities.openbook.xdp.v1.9.a.imbalanceside", ftypes.STRING, nil, nil, nil, "This field indicates the side of the imbalance Buy/sell. This field is a future enhancement for NYSE Arca and will have a '0' value until such time. This field is not yet implemented and is left as a future release.")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.market_imbalance_qty = ProtoField.new("Market Imbalance Qty", "nyse.amexequities.openbook.xdp.v1.9.a.marketimbalanceqty", ftypes.UINT32, nil, nil, nil, "This field indicates the total market order imbalance at the reference price. For NYSE Arca, positive or negative Imbalance Quantities denote a Buy or Sell imbalance, respectively.")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.message_count = ProtoField.new("Message Count", "nyse.amexequities.openbook.xdp.v1.9.a.messagecount", ftypes.UINT8, nil, nil, nil, "The number of messages in this packet")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.message_size = ProtoField.new("Message Size", "nyse.amexequities.openbook.xdp.v1.9.a.messagesize", ftypes.UINT16, nil, nil, nil, "The size of this message in bytes")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.message_type = ProtoField.new("Message Type", "nyse.amexequities.openbook.xdp.v1.9.a.messagetype", ftypes.UINT16, nil, nil, nil, "The type of this message")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.amexequities.openbook.xdp.v1.9.a.nanoseconds", ftypes.UINT32, nil, nil, nil, "The nanosecond offset from the Send Time")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.order_id = ProtoField.new("Order Id", "nyse.amexequities.openbook.xdp.v1.9.a.orderid", ftypes.UINT32, nil, nil, nil, "The Order ID identifies a unique order.")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.order_idgtc_indicator = ProtoField.new("Order Idgtc Indicator", "nyse.amexequities.openbook.xdp.v1.9.a.orderidgtcindicator", ftypes.UINT8, nil, nil, nil, "This field specifies if Trade Order ID is a GTC order")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.packet_size = ProtoField.new("Packet Size", "nyse.amexequities.openbook.xdp.v1.9.a.packetsize", ftypes.UINT16, nil, nil, nil, "The size of the packet in bytes, including this 16 byte packet header")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.paired_qty = ProtoField.new("Paired Qty", "nyse.amexequities.openbook.xdp.v1.9.a.pairedqty", ftypes.UINT32, nil, nil, nil, "This field contains the paired off quantity at the reference price point")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.price = ProtoField.new("Price", "nyse.amexequities.openbook.xdp.v1.9.a.price", ftypes.UINT32, nil, nil, nil, "This field contains the price point. Use the Price scale from the symbol-mapping index.")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.reason_code = ProtoField.new("Reason Code", "nyse.amexequities.openbook.xdp.v1.9.a.reasoncode", ftypes.UINT8, nil, nil, nil, "Modify Reason: 5 - Change (lost position in book), 6 - Routed (keep position in book), 7 - Modify Fill keep position. Reason Code 7 not applicable to NYSE or NYSE MKT. This field is left as a future enhancement. The default value is currently set as 0, which has no underlying meaning.")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.reference_price = ProtoField.new("Reference Price", "nyse.amexequities.openbook.xdp.v1.9.a.referenceprice", ftypes.UINT32, nil, nil, nil, "The Reference Price is the Last Sale if the last sale is at or between the current best quote. Otherwise the Reference Price is the Bid Price if last sale is lower than Bid price, or the Offer price if last sale is higher than Offer price.")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.seconds = ProtoField.new("Seconds", "nyse.amexequities.openbook.xdp.v1.9.a.seconds", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The time when this packet was published to the multicast channel, in seconds since Jan 1, 1970 00:00:00 UTC.")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.seconds_utc = ProtoField.new("Seconds", "nyse.amexequities.openbook.xdp.v1.9.a.seconds.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The time when this packet was published to the multicast channel, in seconds since Jan 1, 1970 00:00:00 UTC.")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.send_time = ProtoField.new("Send Time", "nyse.amexequities.openbook.xdp.v1.9.a.sendtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The time when this packet was published to the multicast channel")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.send_time_utc = ProtoField.new("Send Time", "nyse.amexequities.openbook.xdp.v1.9.a.sendtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The time when this packet was published to the multicast channel")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.amexequities.openbook.xdp.v1.9.a.sequencenumber", ftypes.UINT32, nil, nil, nil, "The message sequence number of the first message in this packet")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.side = ProtoField.new("Side", "nyse.amexequities.openbook.xdp.v1.9.a.side", ftypes.STRING, nil, nil, nil, "This field indicates the side of the order Buy/Sell.")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.source_time = ProtoField.new("Source Time", "nyse.amexequities.openbook.xdp.v1.9.a.sourcetime", ftypes.UINT32, nil, nil, nil, "This field specifies the time when the msg was generated in the order book. The number represents the number of seconds in UTC time (EPOCH)")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.amexequities.openbook.xdp.v1.9.a.sourcetimens", ftypes.UINT32, nil, nil, nil, "This field represents the nanosecond offset from the time reference second in UTC time (EPOCH)")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.ssr_filing_price = ProtoField.new("Ssr Filing Price", "nyse.amexequities.openbook.xdp.v1.9.a.ssrfilingprice", ftypes.UINT32, nil, nil, nil, "This field contains the SSR Filing Price, the price at which Sell Short interest will be filed in the matching in the event a Sell Short Restriction is in effect for the security. It is based on the National Best Bid at 9:30am and remains static after it has been determined. This field is a future enhancement for NYSE Arca and will have a '0' value until such time. This field is not yet implemented and is left as a future release.")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.amexequities.openbook.xdp.v1.9.a.symbolindex", ftypes.UINT32, nil, nil, nil, "This field identifies the numerical representation of the symbol.")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.amexequities.openbook.xdp.v1.9.a.symbolseqnum", ftypes.UINT32, nil, nil, nil, "This field contains the symbol sequence number")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.total_imbalance_qty = ProtoField.new("Total Imbalance Qty", "nyse.amexequities.openbook.xdp.v1.9.a.totalimbalanceqty", ftypes.UINT32, nil, nil, nil, "This field contains the total imbalance quantity at the reference price point. For NYSE Arca, positive or negative Imbalance Quantities denote a Buy or Sell imbalance, respectively.")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.trade_id = ProtoField.new("Trade Id", "nyse.amexequities.openbook.xdp.v1.9.a.tradeid", ftypes.UINT32, nil, nil, nil, "The TradeID identifies a unique transaction in the matching engine and allows clients to correlate execution reports to the last sale.")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.trade_session = ProtoField.new("Trade Session", "nyse.amexequities.openbook.xdp.v1.9.a.tradesession", ftypes.UINT8, nil, nil, nil, "Trading sessions the order is eligible for. For NYSE and NYSE MKT, only 2 is applicable.")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.volume = ProtoField.new("Volume", "nyse.amexequities.openbook.xdp.v1.9.a.volume", ftypes.UINT32, nil, nil, nil, "This field contains the order quantity in shares.")

-- Nyse AmexEquities OpenBook Xdp 1.9.a Framing
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.message = ProtoField.new("Message", "nyse.amexequities.openbook.xdp.v1.9.a.message", ftypes.STRING)
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.message_header = ProtoField.new("Message Header", "nyse.amexequities.openbook.xdp.v1.9.a.messageheader", ftypes.STRING)
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.packet = ProtoField.new("Packet", "nyse.amexequities.openbook.xdp.v1.9.a.packet", ftypes.STRING, nil, nil, nil, "Xdp Udp Packet")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.packet_header = ProtoField.new("Packet Header", "nyse.amexequities.openbook.xdp.v1.9.a.packetheader", ftypes.STRING)

-- Nyse AmexEquities OpenBook 1.9.a Application Messages
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.add_order_message = ProtoField.new("Add Order Message", "nyse.amexequities.openbook.xdp.v1.9.a.addordermessage", ftypes.STRING, nil, nil, nil, "Order Book Add Order message. Size of the message: 31 bytes (NYSE, NYSE MKT and NYSE Arca).")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.add_order_refresh_message = ProtoField.new("Add Order Refresh Message", "nyse.amexequities.openbook.xdp.v1.9.a.addorderrefreshmessage", ftypes.STRING, nil, nil, nil, "Sent only during a refresh or after a symbol clear which will result in a book refresh. Size of the message: 35 bytes (NYSE, NYSE MKT and NYSE Arca).")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.attributed_add_order_message = ProtoField.new("Attributed Add Order Message", "nyse.amexequities.openbook.xdp.v1.9.a.attributedaddordermessage", ftypes.STRING, nil, nil, nil, "Order Book Attribution Add Order message. Size of the message: NYSE 31 bytes, NYSE MKT 31 bytes, NYSE Arca 36 bytes.")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.attributed_add_order_refresh_message = ProtoField.new("Attributed Add Order Refresh Message", "nyse.amexequities.openbook.xdp.v1.9.a.attributedaddorderrefreshmessage", ftypes.STRING, nil, nil, nil, "Sent by NYSE Arca only during a refresh or after a symbol clear which will result in a book refresh. Size of the message: NYSE 35 bytes, NYSE MKT 35 bytes, NYSE Arca 40 bytes.")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.delete_order_message = ProtoField.new("Delete Order Message", "nyse.amexequities.openbook.xdp.v1.9.a.deleteordermessage", ftypes.STRING, nil, nil, nil, "Sent when an order is taken off of the order book: the order is cancelled, expires, or is routed to an away market. Size of the message: 23 bytes (NYSE, NYSE MKT and NYSE Arca).")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.execution_message = ProtoField.new("Execution Message", "nyse.amexequities.openbook.xdp.v1.9.a.executionmessage", ftypes.STRING, nil, nil, nil, "Order Book Execution message. With reason codes set to zero, a partial fill is followed by a modify message and a full fill by a delete message for the executed OrderID; with reason codes in use, only the execution message is sent, with reason code 7 (reduce the order's volume) or 3 (remove the order). Size of the message: 34 bytes (NYSE, NYSE MKT and NYSE Arca).")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.imbalance_message = ProtoField.new("Imbalance Message", "nyse.amexequities.openbook.xdp.v1.9.a.imbalancemessage", ftypes.STRING, nil, nil, nil, "Imbalance message. Size of the message: 52 bytes (NYSE, NYSE MKT and NYSE Arca).")
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.modify_order_message = ProtoField.new("Modify Order Message", "nyse.amexequities.openbook.xdp.v1.9.a.modifyordermessage", ftypes.STRING, nil, nil, nil, "Sent when an order in the Order Book is modified: the price or the size of the order changes, or the order is routed to an away market with some shares remaining in the Order Book. The Order ID refers to the original order sent in the add order message. Size of the message: 31 bytes (NYSE, NYSE MKT and NYSE Arca).")

-- Nyse AmexEquities OpenBook Xdp 1.9.a Generated Fields
omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.message_index = ProtoField.new("Message Index", "nyse.amexequities.openbook.xdp.v1.9.a.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Nyse AmexEquities OpenBook Xdp 1.9.a Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
nyse_amexequities_openbook_xdp_v1_9_a.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse AmexEquities OpenBook Xdp 1.9.a Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Nyse AmexEquities OpenBook Xdp 1.9.a Show Options
omi_nyse_amexequities_openbook_xdp_v1_9_a.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nyse_amexequities_openbook_xdp_v1_9_a.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nyse_amexequities_openbook_xdp_v1_9_a.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nyse_amexequities_openbook_xdp_v1_9_a.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_nyse_amexequities_openbook_xdp_v1_9_a.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_nyse_amexequities_openbook_xdp_v1_9_a.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nyse_amexequities_openbook_xdp_v1_9_a.prefs.show_application_messages then
    show.application_messages = omi_nyse_amexequities_openbook_xdp_v1_9_a.prefs.show_application_messages
  end
  if show.headers ~= omi_nyse_amexequities_openbook_xdp_v1_9_a.prefs.show_headers then
    show.headers = omi_nyse_amexequities_openbook_xdp_v1_9_a.prefs.show_headers
  end
  if show.structs ~= omi_nyse_amexequities_openbook_xdp_v1_9_a.prefs.show_structs then
    show.structs = omi_nyse_amexequities_openbook_xdp_v1_9_a.prefs.show_structs
  end
  if show.indexes ~= omi_nyse_amexequities_openbook_xdp_v1_9_a.prefs.show_indexes then
    show.indexes = omi_nyse_amexequities_openbook_xdp_v1_9_a.prefs.show_indexes
  end
  if nyse_amexequities_openbook_xdp_v1_9_a.absolute_time_base ~= omi_nyse_amexequities_openbook_xdp_v1_9_a.prefs.absolute_time_base then
    nyse_amexequities_openbook_xdp_v1_9_a.absolute_time_base = omi_nyse_amexequities_openbook_xdp_v1_9_a.prefs.absolute_time_base
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
-- Nyse AmexEquities OpenBook Xdp 1.9.a Fields
-----------------------------------------------------------------------

-- Auction Time
nyse_amexequities_openbook_xdp_v1_9_a.auction_time = {}

-- Size: Auction Time
nyse_amexequities_openbook_xdp_v1_9_a.auction_time.size = 2

-- Display: Auction Time
nyse_amexequities_openbook_xdp_v1_9_a.auction_time.display = function(value)
  return "Auction Time: "..value
end

-- Dissect: Auction Time
nyse_amexequities_openbook_xdp_v1_9_a.auction_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.auction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_xdp_v1_9_a.auction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.auction_time, range, value, display)

  return offset + length, value
end

-- Auction Type
nyse_amexequities_openbook_xdp_v1_9_a.auction_type = {}

-- Size: Auction Type
nyse_amexequities_openbook_xdp_v1_9_a.auction_type.size = 1

-- Display: Auction Type
nyse_amexequities_openbook_xdp_v1_9_a.auction_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Auction Type: No Value"
  end

  if value == "O" then
    return "Auction Type: Open 4 Am Arca Only (O)"
  end
  if value == "M" then
    return "Auction Type: Market 930 Am (M)"
  end
  if value == "H" then
    return "Auction Type: Halt (H)"
  end
  if value == "C" then
    return "Auction Type: Closing (C)"
  end
  if value == "R" then
    return "Auction Type: Regulatory Imbalance (R)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nyse_amexequities_openbook_xdp_v1_9_a.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.auction_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_amexequities_openbook_xdp_v1_9_a.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Closing Only Clearing Price
nyse_amexequities_openbook_xdp_v1_9_a.closing_only_clearing_price = {}

-- Size: Closing Only Clearing Price
nyse_amexequities_openbook_xdp_v1_9_a.closing_only_clearing_price.size = 4

-- Display: Closing Only Clearing Price
nyse_amexequities_openbook_xdp_v1_9_a.closing_only_clearing_price.display = function(value)
  return "Closing Only Clearing Price: "..value
end

-- Dissect: Closing Only Clearing Price
nyse_amexequities_openbook_xdp_v1_9_a.closing_only_clearing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.closing_only_clearing_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_xdp_v1_9_a.closing_only_clearing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.closing_only_clearing_price, range, value, display)

  return offset + length, value
end

-- Continuous Book Clearing Price
nyse_amexequities_openbook_xdp_v1_9_a.continuous_book_clearing_price = {}

-- Size: Continuous Book Clearing Price
nyse_amexequities_openbook_xdp_v1_9_a.continuous_book_clearing_price.size = 4

-- Display: Continuous Book Clearing Price
nyse_amexequities_openbook_xdp_v1_9_a.continuous_book_clearing_price.display = function(value)
  return "Continuous Book Clearing Price: "..value
end

-- Dissect: Continuous Book Clearing Price
nyse_amexequities_openbook_xdp_v1_9_a.continuous_book_clearing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.continuous_book_clearing_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_xdp_v1_9_a.continuous_book_clearing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.continuous_book_clearing_price, range, value, display)

  return offset + length, value
end

-- Delivery Flag
nyse_amexequities_openbook_xdp_v1_9_a.delivery_flag = {}

-- Size: Delivery Flag
nyse_amexequities_openbook_xdp_v1_9_a.delivery_flag.size = 1

-- Display: Delivery Flag
nyse_amexequities_openbook_xdp_v1_9_a.delivery_flag.labels = {
  [1] = "Delivery Flag: Heartbeat (1)",
  [10] = "Delivery Flag: Xdp Failover (10)",
  [11] = "Delivery Flag: Original Message (11)",
  [12] = "Delivery Flag: Sequence Number Reset Message (12)",
  [13] = "Delivery Flag: One Retransmission Packet (13)",
  [15] = "Delivery Flag: Retransmission Sequence Message (15)",
  [17] = "Delivery Flag: One Refresh Packet (17)",
  [18] = "Delivery Flag: Refresh Sequence Start (18)",
  [19] = "Delivery Flag: Refresh Sequence Message (19)",
  [20] = "Delivery Flag: Refresh Sequence End (20)",
  [21] = "Delivery Flag: Message Unavailable (21)",
}

nyse_amexequities_openbook_xdp_v1_9_a.delivery_flag.display = function(value)
  return nyse_amexequities_openbook_xdp_v1_9_a.delivery_flag.labels[value] or "Delivery Flag: Unknown("..value..")"
end

-- Dissect: Delivery Flag
nyse_amexequities_openbook_xdp_v1_9_a.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_xdp_v1_9_a.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- Firm Id
nyse_amexequities_openbook_xdp_v1_9_a.firm_id = {}

-- Size: Firm Id
nyse_amexequities_openbook_xdp_v1_9_a.firm_id.size = 5

-- Display: Firm Id
nyse_amexequities_openbook_xdp_v1_9_a.firm_id.display = function(value)
  return "Firm Id: "..value
end

-- Dissect: Firm Id
nyse_amexequities_openbook_xdp_v1_9_a.firm_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.firm_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_amexequities_openbook_xdp_v1_9_a.firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Imbalance Side
nyse_amexequities_openbook_xdp_v1_9_a.imbalance_side = {}

-- Size: Imbalance Side
nyse_amexequities_openbook_xdp_v1_9_a.imbalance_side.size = 1

-- Display: Imbalance Side
nyse_amexequities_openbook_xdp_v1_9_a.imbalance_side.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Imbalance Side: No Value"
  end

  if value == "B" then
    return "Imbalance Side: Buy (B)"
  end
  if value == "S" then
    return "Imbalance Side: Sell (S)"
  end
  if value == " " then
    return "Imbalance Side: No Imbalance (<whitespace>)"
  end

  return "Imbalance Side: Unknown("..value..")"
end

-- Dissect: Imbalance Side
nyse_amexequities_openbook_xdp_v1_9_a.imbalance_side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.imbalance_side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_amexequities_openbook_xdp_v1_9_a.imbalance_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.imbalance_side, range, value, display)

  return offset + length, value
end

-- Market Imbalance Qty
nyse_amexequities_openbook_xdp_v1_9_a.market_imbalance_qty = {}

-- Size: Market Imbalance Qty
nyse_amexequities_openbook_xdp_v1_9_a.market_imbalance_qty.size = 4

-- Display: Market Imbalance Qty
nyse_amexequities_openbook_xdp_v1_9_a.market_imbalance_qty.display = function(value)
  return "Market Imbalance Qty: "..value
end

-- Dissect: Market Imbalance Qty
nyse_amexequities_openbook_xdp_v1_9_a.market_imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.market_imbalance_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_xdp_v1_9_a.market_imbalance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.market_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Message Count
nyse_amexequities_openbook_xdp_v1_9_a.message_count = {}

-- Size: Message Count
nyse_amexequities_openbook_xdp_v1_9_a.message_count.size = 1

-- Display: Message Count
nyse_amexequities_openbook_xdp_v1_9_a.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nyse_amexequities_openbook_xdp_v1_9_a.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_xdp_v1_9_a.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Size
nyse_amexequities_openbook_xdp_v1_9_a.message_size = {}

-- Size: Message Size
nyse_amexequities_openbook_xdp_v1_9_a.message_size.size = 2

-- Display: Message Size
nyse_amexequities_openbook_xdp_v1_9_a.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_amexequities_openbook_xdp_v1_9_a.message_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_xdp_v1_9_a.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
nyse_amexequities_openbook_xdp_v1_9_a.message_type = {}

-- Size: Message Type
nyse_amexequities_openbook_xdp_v1_9_a.message_type.size = 2

-- Display: Message Type
nyse_amexequities_openbook_xdp_v1_9_a.message_type.labels = {
  [100] = "Message Type: Add Order Message (100)",
  [107] = "Message Type: Attributed Add Order Message (107)",
  [101] = "Message Type: Modify Order Message (101)",
  [102] = "Message Type: Delete Order Message (102)",
  [103] = "Message Type: Execution Message (103)",
  [106] = "Message Type: Add Order Refresh Message (106)",
  [108] = "Message Type: Attributed Add Order Refresh Message (108)",
  [105] = "Message Type: Imbalance Message (105)",
}

nyse_amexequities_openbook_xdp_v1_9_a.message_type.display = function(value)
  return nyse_amexequities_openbook_xdp_v1_9_a.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nyse_amexequities_openbook_xdp_v1_9_a.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_xdp_v1_9_a.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nanoseconds
nyse_amexequities_openbook_xdp_v1_9_a.nanoseconds = {}

-- Size: Nanoseconds
nyse_amexequities_openbook_xdp_v1_9_a.nanoseconds.size = 4

-- Display: Nanoseconds
nyse_amexequities_openbook_xdp_v1_9_a.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_amexequities_openbook_xdp_v1_9_a.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_xdp_v1_9_a.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Order Id
nyse_amexequities_openbook_xdp_v1_9_a.order_id = {}

-- Size: Order Id
nyse_amexequities_openbook_xdp_v1_9_a.order_id.size = 4

-- Display: Order Id
nyse_amexequities_openbook_xdp_v1_9_a.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
nyse_amexequities_openbook_xdp_v1_9_a.order_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_xdp_v1_9_a.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Idgtc Indicator
nyse_amexequities_openbook_xdp_v1_9_a.order_idgtc_indicator = {}

-- Size: Order Idgtc Indicator
nyse_amexequities_openbook_xdp_v1_9_a.order_idgtc_indicator.size = 1

-- Display: Order Idgtc Indicator
nyse_amexequities_openbook_xdp_v1_9_a.order_idgtc_indicator.labels = {
  [0] = "Order Idgtc Indicator: Day Order (0)",
  [1] = "Order Idgtc Indicator: Gtc Order (1)",
}

nyse_amexequities_openbook_xdp_v1_9_a.order_idgtc_indicator.display = function(value)
  return nyse_amexequities_openbook_xdp_v1_9_a.order_idgtc_indicator.labels[value] or "Order Idgtc Indicator: Unknown("..value..")"
end

-- Dissect: Order Idgtc Indicator
nyse_amexequities_openbook_xdp_v1_9_a.order_idgtc_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.order_idgtc_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_xdp_v1_9_a.order_idgtc_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.order_idgtc_indicator, range, value, display)

  return offset + length, value
end

-- Packet Size
nyse_amexequities_openbook_xdp_v1_9_a.packet_size = {}

-- Size: Packet Size
nyse_amexequities_openbook_xdp_v1_9_a.packet_size.size = 2

-- Display: Packet Size
nyse_amexequities_openbook_xdp_v1_9_a.packet_size.display = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
nyse_amexequities_openbook_xdp_v1_9_a.packet_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.packet_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_xdp_v1_9_a.packet_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Paired Qty
nyse_amexequities_openbook_xdp_v1_9_a.paired_qty = {}

-- Size: Paired Qty
nyse_amexequities_openbook_xdp_v1_9_a.paired_qty.size = 4

-- Display: Paired Qty
nyse_amexequities_openbook_xdp_v1_9_a.paired_qty.display = function(value)
  return "Paired Qty: "..value
end

-- Dissect: Paired Qty
nyse_amexequities_openbook_xdp_v1_9_a.paired_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.paired_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_xdp_v1_9_a.paired_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.paired_qty, range, value, display)

  return offset + length, value
end

-- Price
nyse_amexequities_openbook_xdp_v1_9_a.price = {}

-- Size: Price
nyse_amexequities_openbook_xdp_v1_9_a.price.size = 4

-- Display: Price
nyse_amexequities_openbook_xdp_v1_9_a.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
nyse_amexequities_openbook_xdp_v1_9_a.price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_xdp_v1_9_a.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.price, range, value, display)

  return offset + length, value
end

-- Reason Code
nyse_amexequities_openbook_xdp_v1_9_a.reason_code = {}

-- Size: Reason Code
nyse_amexequities_openbook_xdp_v1_9_a.reason_code.size = 1

-- Display: Reason Code
nyse_amexequities_openbook_xdp_v1_9_a.reason_code.display = function(value)
  return "Reason Code: "..value
end

-- Dissect: Reason Code
nyse_amexequities_openbook_xdp_v1_9_a.reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.reason_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_xdp_v1_9_a.reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Reference Price
nyse_amexequities_openbook_xdp_v1_9_a.reference_price = {}

-- Size: Reference Price
nyse_amexequities_openbook_xdp_v1_9_a.reference_price.size = 4

-- Display: Reference Price
nyse_amexequities_openbook_xdp_v1_9_a.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Dissect: Reference Price
nyse_amexequities_openbook_xdp_v1_9_a.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.reference_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_xdp_v1_9_a.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Seconds
nyse_amexequities_openbook_xdp_v1_9_a.seconds = {}

-- Size: Seconds
nyse_amexequities_openbook_xdp_v1_9_a.seconds.size = 4

-- Dissect: Seconds
nyse_amexequities_openbook_xdp_v1_9_a.seconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.seconds
  if nyse_amexequities_openbook_xdp_v1_9_a.absolute_time_base == 1 then field = omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.seconds_utc end

  local seconds = value
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Sequence Number
nyse_amexequities_openbook_xdp_v1_9_a.sequence_number = {}

-- Size: Sequence Number
nyse_amexequities_openbook_xdp_v1_9_a.sequence_number.size = 4

-- Display: Sequence Number
nyse_amexequities_openbook_xdp_v1_9_a.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nyse_amexequities_openbook_xdp_v1_9_a.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_xdp_v1_9_a.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Side
nyse_amexequities_openbook_xdp_v1_9_a.side = {}

-- Size: Side
nyse_amexequities_openbook_xdp_v1_9_a.side.size = 1

-- Display: Side
nyse_amexequities_openbook_xdp_v1_9_a.side.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Side: No Value"
  end

  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nyse_amexequities_openbook_xdp_v1_9_a.side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_amexequities_openbook_xdp_v1_9_a.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.side, range, value, display)

  return offset + length, value
end

-- Source Time
nyse_amexequities_openbook_xdp_v1_9_a.source_time = {}

-- Size: Source Time
nyse_amexequities_openbook_xdp_v1_9_a.source_time.size = 4

-- Display: Source Time
nyse_amexequities_openbook_xdp_v1_9_a.source_time.display = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_amexequities_openbook_xdp_v1_9_a.source_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.source_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_xdp_v1_9_a.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.source_time, range, value, display)

  return offset + length, value
end

-- Source Time Ns
nyse_amexequities_openbook_xdp_v1_9_a.source_time_ns = {}

-- Size: Source Time Ns
nyse_amexequities_openbook_xdp_v1_9_a.source_time_ns.size = 4

-- Display: Source Time Ns
nyse_amexequities_openbook_xdp_v1_9_a.source_time_ns.display = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_amexequities_openbook_xdp_v1_9_a.source_time_ns.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.source_time_ns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_xdp_v1_9_a.source_time_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Ssr Filing Price
nyse_amexequities_openbook_xdp_v1_9_a.ssr_filing_price = {}

-- Size: Ssr Filing Price
nyse_amexequities_openbook_xdp_v1_9_a.ssr_filing_price.size = 4

-- Display: Ssr Filing Price
nyse_amexequities_openbook_xdp_v1_9_a.ssr_filing_price.display = function(value)
  return "Ssr Filing Price: "..value
end

-- Dissect: Ssr Filing Price
nyse_amexequities_openbook_xdp_v1_9_a.ssr_filing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.ssr_filing_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_xdp_v1_9_a.ssr_filing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.ssr_filing_price, range, value, display)

  return offset + length, value
end

-- Symbol Index
nyse_amexequities_openbook_xdp_v1_9_a.symbol_index = {}

-- Size: Symbol Index
nyse_amexequities_openbook_xdp_v1_9_a.symbol_index.size = 4

-- Display: Symbol Index
nyse_amexequities_openbook_xdp_v1_9_a.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_amexequities_openbook_xdp_v1_9_a.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_xdp_v1_9_a.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Symbol Seq Num
nyse_amexequities_openbook_xdp_v1_9_a.symbol_seq_num = {}

-- Size: Symbol Seq Num
nyse_amexequities_openbook_xdp_v1_9_a.symbol_seq_num.size = 4

-- Display: Symbol Seq Num
nyse_amexequities_openbook_xdp_v1_9_a.symbol_seq_num.display = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_amexequities_openbook_xdp_v1_9_a.symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_xdp_v1_9_a.symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Total Imbalance Qty
nyse_amexequities_openbook_xdp_v1_9_a.total_imbalance_qty = {}

-- Size: Total Imbalance Qty
nyse_amexequities_openbook_xdp_v1_9_a.total_imbalance_qty.size = 4

-- Display: Total Imbalance Qty
nyse_amexequities_openbook_xdp_v1_9_a.total_imbalance_qty.display = function(value)
  return "Total Imbalance Qty: "..value
end

-- Dissect: Total Imbalance Qty
nyse_amexequities_openbook_xdp_v1_9_a.total_imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.total_imbalance_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_xdp_v1_9_a.total_imbalance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.total_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Trade Id
nyse_amexequities_openbook_xdp_v1_9_a.trade_id = {}

-- Size: Trade Id
nyse_amexequities_openbook_xdp_v1_9_a.trade_id.size = 4

-- Display: Trade Id
nyse_amexequities_openbook_xdp_v1_9_a.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
nyse_amexequities_openbook_xdp_v1_9_a.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_xdp_v1_9_a.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Session
nyse_amexequities_openbook_xdp_v1_9_a.trade_session = {}

-- Size: Trade Session
nyse_amexequities_openbook_xdp_v1_9_a.trade_session.size = 1

-- Display: Trade Session
nyse_amexequities_openbook_xdp_v1_9_a.trade_session.labels = {
  [1] = "Trade Session: Ok For Morning Hours (1)",
  [2] = "Trade Session: Ok For National Hours Core (2)",
  [3] = "Trade Session: Ok For Morning And Core (3)",
  [4] = "Trade Session: Ok For Late Hours (4)",
  [6] = "Trade Session: Ok For Core And Late (6)",
  [7] = "Trade Session: Ok For Morning Core And Late (7)",
}

nyse_amexequities_openbook_xdp_v1_9_a.trade_session.display = function(value)
  return nyse_amexequities_openbook_xdp_v1_9_a.trade_session.labels[value] or "Trade Session: Unknown("..value..")"
end

-- Dissect: Trade Session
nyse_amexequities_openbook_xdp_v1_9_a.trade_session.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.trade_session.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_xdp_v1_9_a.trade_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.trade_session, range, value, display)

  return offset + length, value
end

-- Volume
nyse_amexequities_openbook_xdp_v1_9_a.volume = {}

-- Size: Volume
nyse_amexequities_openbook_xdp_v1_9_a.volume.size = 4

-- Display: Volume
nyse_amexequities_openbook_xdp_v1_9_a.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nyse_amexequities_openbook_xdp_v1_9_a.volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amexequities_openbook_xdp_v1_9_a.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amexequities_openbook_xdp_v1_9_a.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.volume, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nyse AmexEquities OpenBook Xdp 1.9.a
-----------------------------------------------------------------------

-- Imbalance Message
nyse_amexequities_openbook_xdp_v1_9_a.imbalance_message = {}

-- Size: Imbalance Message
nyse_amexequities_openbook_xdp_v1_9_a.imbalance_message.size =
  nyse_amexequities_openbook_xdp_v1_9_a.source_time.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.source_time_ns.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.symbol_index.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.symbol_seq_num.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.reference_price.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.paired_qty.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.total_imbalance_qty.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.market_imbalance_qty.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.auction_time.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.auction_type.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.imbalance_side.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.continuous_book_clearing_price.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.closing_only_clearing_price.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.ssr_filing_price.size

-- Display: Imbalance Message
nyse_amexequities_openbook_xdp_v1_9_a.imbalance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Imbalance Message
nyse_amexequities_openbook_xdp_v1_9_a.imbalance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary Integer
  index, source_time = nyse_amexequities_openbook_xdp_v1_9_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary Integer
  index, source_time_ns = nyse_amexequities_openbook_xdp_v1_9_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary Integer
  index, symbol_index = nyse_amexequities_openbook_xdp_v1_9_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary Integer
  index, symbol_seq_num = nyse_amexequities_openbook_xdp_v1_9_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Reference Price: Binary Integer
  index, reference_price = nyse_amexequities_openbook_xdp_v1_9_a.reference_price.dissect(buffer, index, packet, parent)

  -- Paired Qty: Binary Integer
  index, paired_qty = nyse_amexequities_openbook_xdp_v1_9_a.paired_qty.dissect(buffer, index, packet, parent)

  -- Total Imbalance Qty: Binary Integer
  index, total_imbalance_qty = nyse_amexequities_openbook_xdp_v1_9_a.total_imbalance_qty.dissect(buffer, index, packet, parent)

  -- Market Imbalance Qty: Binary Integer
  index, market_imbalance_qty = nyse_amexequities_openbook_xdp_v1_9_a.market_imbalance_qty.dissect(buffer, index, packet, parent)

  -- Auction Time: Binary Integer
  index, auction_time = nyse_amexequities_openbook_xdp_v1_9_a.auction_time.dissect(buffer, index, packet, parent)

  -- Auction Type: ASCII Character
  index, auction_type = nyse_amexequities_openbook_xdp_v1_9_a.auction_type.dissect(buffer, index, packet, parent)

  -- Imbalance Side: ASCII Character
  index, imbalance_side = nyse_amexequities_openbook_xdp_v1_9_a.imbalance_side.dissect(buffer, index, packet, parent)

  -- Continuous Book Clearing Price: Binary Integer
  index, continuous_book_clearing_price = nyse_amexequities_openbook_xdp_v1_9_a.continuous_book_clearing_price.dissect(buffer, index, packet, parent)

  -- Closing Only Clearing Price: Binary Integer
  index, closing_only_clearing_price = nyse_amexequities_openbook_xdp_v1_9_a.closing_only_clearing_price.dissect(buffer, index, packet, parent)

  -- Ssr Filing Price: Binary Integer
  index, ssr_filing_price = nyse_amexequities_openbook_xdp_v1_9_a.ssr_filing_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Imbalance Message
nyse_amexequities_openbook_xdp_v1_9_a.imbalance_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.imbalance_message, buffer(offset, 0))
    local index = nyse_amexequities_openbook_xdp_v1_9_a.imbalance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_openbook_xdp_v1_9_a.imbalance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_openbook_xdp_v1_9_a.imbalance_message.fields(buffer, offset, packet, parent)
  end
end

-- Attributed Add Order Refresh Message
nyse_amexequities_openbook_xdp_v1_9_a.attributed_add_order_refresh_message = {}

-- Size: Attributed Add Order Refresh Message
nyse_amexequities_openbook_xdp_v1_9_a.attributed_add_order_refresh_message.size =
  nyse_amexequities_openbook_xdp_v1_9_a.source_time.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.source_time_ns.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.symbol_index.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.symbol_seq_num.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.order_id.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.price.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.volume.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.side.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.order_idgtc_indicator.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.trade_session.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.firm_id.size

-- Display: Attributed Add Order Refresh Message
nyse_amexequities_openbook_xdp_v1_9_a.attributed_add_order_refresh_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Attributed Add Order Refresh Message
nyse_amexequities_openbook_xdp_v1_9_a.attributed_add_order_refresh_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary Integer
  index, source_time = nyse_amexequities_openbook_xdp_v1_9_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary Integer
  index, source_time_ns = nyse_amexequities_openbook_xdp_v1_9_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary Integer
  index, symbol_index = nyse_amexequities_openbook_xdp_v1_9_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary Integer
  index, symbol_seq_num = nyse_amexequities_openbook_xdp_v1_9_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: Binary Integer
  index, order_id = nyse_amexequities_openbook_xdp_v1_9_a.order_id.dissect(buffer, index, packet, parent)

  -- Price: Binary Integer
  index, price = nyse_amexequities_openbook_xdp_v1_9_a.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary Integer
  index, volume = nyse_amexequities_openbook_xdp_v1_9_a.volume.dissect(buffer, index, packet, parent)

  -- Side: ASCII Character
  index, side = nyse_amexequities_openbook_xdp_v1_9_a.side.dissect(buffer, index, packet, parent)

  -- Order Idgtc Indicator: Binary Integer
  index, order_idgtc_indicator = nyse_amexequities_openbook_xdp_v1_9_a.order_idgtc_indicator.dissect(buffer, index, packet, parent)

  -- Trade Session: Binary Integer
  index, trade_session = nyse_amexequities_openbook_xdp_v1_9_a.trade_session.dissect(buffer, index, packet, parent)

  -- Firm Id: ASCII Character
  index, firm_id = nyse_amexequities_openbook_xdp_v1_9_a.firm_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Attributed Add Order Refresh Message
nyse_amexequities_openbook_xdp_v1_9_a.attributed_add_order_refresh_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.attributed_add_order_refresh_message, buffer(offset, 0))
    local index = nyse_amexequities_openbook_xdp_v1_9_a.attributed_add_order_refresh_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_openbook_xdp_v1_9_a.attributed_add_order_refresh_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_openbook_xdp_v1_9_a.attributed_add_order_refresh_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Refresh Message
nyse_amexequities_openbook_xdp_v1_9_a.add_order_refresh_message = {}

-- Size: Add Order Refresh Message
nyse_amexequities_openbook_xdp_v1_9_a.add_order_refresh_message.size =
  nyse_amexequities_openbook_xdp_v1_9_a.source_time.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.source_time_ns.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.symbol_index.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.symbol_seq_num.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.order_id.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.price.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.volume.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.side.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.order_idgtc_indicator.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.trade_session.size

-- Display: Add Order Refresh Message
nyse_amexequities_openbook_xdp_v1_9_a.add_order_refresh_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Refresh Message
nyse_amexequities_openbook_xdp_v1_9_a.add_order_refresh_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary Integer
  index, source_time = nyse_amexequities_openbook_xdp_v1_9_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary Integer
  index, source_time_ns = nyse_amexequities_openbook_xdp_v1_9_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary Integer
  index, symbol_index = nyse_amexequities_openbook_xdp_v1_9_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary Integer
  index, symbol_seq_num = nyse_amexequities_openbook_xdp_v1_9_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: Binary Integer
  index, order_id = nyse_amexequities_openbook_xdp_v1_9_a.order_id.dissect(buffer, index, packet, parent)

  -- Price: Binary Integer
  index, price = nyse_amexequities_openbook_xdp_v1_9_a.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary Integer
  index, volume = nyse_amexequities_openbook_xdp_v1_9_a.volume.dissect(buffer, index, packet, parent)

  -- Side: ASCII Character
  index, side = nyse_amexequities_openbook_xdp_v1_9_a.side.dissect(buffer, index, packet, parent)

  -- Order Idgtc Indicator: Binary Integer
  index, order_idgtc_indicator = nyse_amexequities_openbook_xdp_v1_9_a.order_idgtc_indicator.dissect(buffer, index, packet, parent)

  -- Trade Session: Binary Integer
  index, trade_session = nyse_amexequities_openbook_xdp_v1_9_a.trade_session.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Refresh Message
nyse_amexequities_openbook_xdp_v1_9_a.add_order_refresh_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.add_order_refresh_message, buffer(offset, 0))
    local index = nyse_amexequities_openbook_xdp_v1_9_a.add_order_refresh_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_openbook_xdp_v1_9_a.add_order_refresh_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_openbook_xdp_v1_9_a.add_order_refresh_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Message
nyse_amexequities_openbook_xdp_v1_9_a.execution_message = {}

-- Size: Execution Message
nyse_amexequities_openbook_xdp_v1_9_a.execution_message.size =
  nyse_amexequities_openbook_xdp_v1_9_a.source_time_ns.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.symbol_index.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.symbol_seq_num.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.order_id.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.price.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.volume.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.order_idgtc_indicator.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.reason_code.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.trade_id.size

-- Display: Execution Message
nyse_amexequities_openbook_xdp_v1_9_a.execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Message
nyse_amexequities_openbook_xdp_v1_9_a.execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Binary Integer
  index, source_time_ns = nyse_amexequities_openbook_xdp_v1_9_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary Integer
  index, symbol_index = nyse_amexequities_openbook_xdp_v1_9_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary Integer
  index, symbol_seq_num = nyse_amexequities_openbook_xdp_v1_9_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: Binary Integer
  index, order_id = nyse_amexequities_openbook_xdp_v1_9_a.order_id.dissect(buffer, index, packet, parent)

  -- Price: Binary Integer
  index, price = nyse_amexequities_openbook_xdp_v1_9_a.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary Integer
  index, volume = nyse_amexequities_openbook_xdp_v1_9_a.volume.dissect(buffer, index, packet, parent)

  -- Order Idgtc Indicator: Binary Integer
  index, order_idgtc_indicator = nyse_amexequities_openbook_xdp_v1_9_a.order_idgtc_indicator.dissect(buffer, index, packet, parent)

  -- Reason Code: Binary Integer
  index, reason_code = nyse_amexequities_openbook_xdp_v1_9_a.reason_code.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary Integer
  index, trade_id = nyse_amexequities_openbook_xdp_v1_9_a.trade_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Message
nyse_amexequities_openbook_xdp_v1_9_a.execution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.execution_message, buffer(offset, 0))
    local index = nyse_amexequities_openbook_xdp_v1_9_a.execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_openbook_xdp_v1_9_a.execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_openbook_xdp_v1_9_a.execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
nyse_amexequities_openbook_xdp_v1_9_a.delete_order_message = {}

-- Size: Delete Order Message
nyse_amexequities_openbook_xdp_v1_9_a.delete_order_message.size =
  nyse_amexequities_openbook_xdp_v1_9_a.source_time_ns.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.symbol_index.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.symbol_seq_num.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.order_id.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.side.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.order_idgtc_indicator.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.reason_code.size

-- Display: Delete Order Message
nyse_amexequities_openbook_xdp_v1_9_a.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
nyse_amexequities_openbook_xdp_v1_9_a.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Binary Integer
  index, source_time_ns = nyse_amexequities_openbook_xdp_v1_9_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary Integer
  index, symbol_index = nyse_amexequities_openbook_xdp_v1_9_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary Integer
  index, symbol_seq_num = nyse_amexequities_openbook_xdp_v1_9_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: Binary Integer
  index, order_id = nyse_amexequities_openbook_xdp_v1_9_a.order_id.dissect(buffer, index, packet, parent)

  -- Side: ASCII Character
  index, side = nyse_amexequities_openbook_xdp_v1_9_a.side.dissect(buffer, index, packet, parent)

  -- Order Idgtc Indicator: Binary Integer
  index, order_idgtc_indicator = nyse_amexequities_openbook_xdp_v1_9_a.order_idgtc_indicator.dissect(buffer, index, packet, parent)

  -- Reason Code: Binary Integer
  index, reason_code = nyse_amexequities_openbook_xdp_v1_9_a.reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
nyse_amexequities_openbook_xdp_v1_9_a.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.delete_order_message, buffer(offset, 0))
    local index = nyse_amexequities_openbook_xdp_v1_9_a.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_openbook_xdp_v1_9_a.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_openbook_xdp_v1_9_a.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Message
nyse_amexequities_openbook_xdp_v1_9_a.modify_order_message = {}

-- Size: Modify Order Message
nyse_amexequities_openbook_xdp_v1_9_a.modify_order_message.size =
  nyse_amexequities_openbook_xdp_v1_9_a.source_time_ns.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.symbol_index.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.symbol_seq_num.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.order_id.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.price.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.volume.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.side.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.order_idgtc_indicator.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.reason_code.size

-- Display: Modify Order Message
nyse_amexequities_openbook_xdp_v1_9_a.modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Message
nyse_amexequities_openbook_xdp_v1_9_a.modify_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Binary Integer
  index, source_time_ns = nyse_amexequities_openbook_xdp_v1_9_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary Integer
  index, symbol_index = nyse_amexequities_openbook_xdp_v1_9_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary Integer
  index, symbol_seq_num = nyse_amexequities_openbook_xdp_v1_9_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: Binary Integer
  index, order_id = nyse_amexequities_openbook_xdp_v1_9_a.order_id.dissect(buffer, index, packet, parent)

  -- Price: Binary Integer
  index, price = nyse_amexequities_openbook_xdp_v1_9_a.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary Integer
  index, volume = nyse_amexequities_openbook_xdp_v1_9_a.volume.dissect(buffer, index, packet, parent)

  -- Side: ASCII Character
  index, side = nyse_amexequities_openbook_xdp_v1_9_a.side.dissect(buffer, index, packet, parent)

  -- Order Idgtc Indicator: Binary Integer
  index, order_idgtc_indicator = nyse_amexequities_openbook_xdp_v1_9_a.order_idgtc_indicator.dissect(buffer, index, packet, parent)

  -- Reason Code: Binary Integer
  index, reason_code = nyse_amexequities_openbook_xdp_v1_9_a.reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Message
nyse_amexequities_openbook_xdp_v1_9_a.modify_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.modify_order_message, buffer(offset, 0))
    local index = nyse_amexequities_openbook_xdp_v1_9_a.modify_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_openbook_xdp_v1_9_a.modify_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_openbook_xdp_v1_9_a.modify_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Attributed Add Order Message
nyse_amexequities_openbook_xdp_v1_9_a.attributed_add_order_message = {}

-- Size: Attributed Add Order Message
nyse_amexequities_openbook_xdp_v1_9_a.attributed_add_order_message.size =
  nyse_amexequities_openbook_xdp_v1_9_a.source_time_ns.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.symbol_index.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.symbol_seq_num.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.order_id.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.price.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.volume.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.side.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.order_idgtc_indicator.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.trade_session.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.firm_id.size

-- Display: Attributed Add Order Message
nyse_amexequities_openbook_xdp_v1_9_a.attributed_add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Attributed Add Order Message
nyse_amexequities_openbook_xdp_v1_9_a.attributed_add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Binary Integer
  index, source_time_ns = nyse_amexequities_openbook_xdp_v1_9_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary Integer
  index, symbol_index = nyse_amexequities_openbook_xdp_v1_9_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary Integer
  index, symbol_seq_num = nyse_amexequities_openbook_xdp_v1_9_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: Binary Integer
  index, order_id = nyse_amexequities_openbook_xdp_v1_9_a.order_id.dissect(buffer, index, packet, parent)

  -- Price: Binary Integer
  index, price = nyse_amexequities_openbook_xdp_v1_9_a.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary Integer
  index, volume = nyse_amexequities_openbook_xdp_v1_9_a.volume.dissect(buffer, index, packet, parent)

  -- Side: ASCII Character
  index, side = nyse_amexequities_openbook_xdp_v1_9_a.side.dissect(buffer, index, packet, parent)

  -- Order Idgtc Indicator: Binary Integer
  index, order_idgtc_indicator = nyse_amexequities_openbook_xdp_v1_9_a.order_idgtc_indicator.dissect(buffer, index, packet, parent)

  -- Trade Session: Binary Integer
  index, trade_session = nyse_amexequities_openbook_xdp_v1_9_a.trade_session.dissect(buffer, index, packet, parent)

  -- Firm Id: ASCII Character
  index, firm_id = nyse_amexequities_openbook_xdp_v1_9_a.firm_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Attributed Add Order Message
nyse_amexequities_openbook_xdp_v1_9_a.attributed_add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.attributed_add_order_message, buffer(offset, 0))
    local index = nyse_amexequities_openbook_xdp_v1_9_a.attributed_add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_openbook_xdp_v1_9_a.attributed_add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_openbook_xdp_v1_9_a.attributed_add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
nyse_amexequities_openbook_xdp_v1_9_a.add_order_message = {}

-- Size: Add Order Message
nyse_amexequities_openbook_xdp_v1_9_a.add_order_message.size =
  nyse_amexequities_openbook_xdp_v1_9_a.source_time_ns.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.symbol_index.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.symbol_seq_num.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.order_id.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.price.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.volume.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.side.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.order_idgtc_indicator.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.trade_session.size

-- Display: Add Order Message
nyse_amexequities_openbook_xdp_v1_9_a.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
nyse_amexequities_openbook_xdp_v1_9_a.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Binary Integer
  index, source_time_ns = nyse_amexequities_openbook_xdp_v1_9_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary Integer
  index, symbol_index = nyse_amexequities_openbook_xdp_v1_9_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary Integer
  index, symbol_seq_num = nyse_amexequities_openbook_xdp_v1_9_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: Binary Integer
  index, order_id = nyse_amexequities_openbook_xdp_v1_9_a.order_id.dissect(buffer, index, packet, parent)

  -- Price: Binary Integer
  index, price = nyse_amexequities_openbook_xdp_v1_9_a.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary Integer
  index, volume = nyse_amexequities_openbook_xdp_v1_9_a.volume.dissect(buffer, index, packet, parent)

  -- Side: ASCII Character
  index, side = nyse_amexequities_openbook_xdp_v1_9_a.side.dissect(buffer, index, packet, parent)

  -- Order Idgtc Indicator: Binary Integer
  index, order_idgtc_indicator = nyse_amexequities_openbook_xdp_v1_9_a.order_idgtc_indicator.dissect(buffer, index, packet, parent)

  -- Trade Session: Binary Integer
  index, trade_session = nyse_amexequities_openbook_xdp_v1_9_a.trade_session.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
nyse_amexequities_openbook_xdp_v1_9_a.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.add_order_message, buffer(offset, 0))
    local index = nyse_amexequities_openbook_xdp_v1_9_a.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_openbook_xdp_v1_9_a.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_openbook_xdp_v1_9_a.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nyse_amexequities_openbook_xdp_v1_9_a.payload = {}

-- Dissect: Payload
nyse_amexequities_openbook_xdp_v1_9_a.payload.dispatch = {
  [100] = nyse_amexequities_openbook_xdp_v1_9_a.add_order_message.dissect,
  [107] = nyse_amexequities_openbook_xdp_v1_9_a.attributed_add_order_message.dissect,
  [101] = nyse_amexequities_openbook_xdp_v1_9_a.modify_order_message.dissect,
  [102] = nyse_amexequities_openbook_xdp_v1_9_a.delete_order_message.dissect,
  [103] = nyse_amexequities_openbook_xdp_v1_9_a.execution_message.dissect,
  [106] = nyse_amexequities_openbook_xdp_v1_9_a.add_order_refresh_message.dissect,
  [108] = nyse_amexequities_openbook_xdp_v1_9_a.attributed_add_order_refresh_message.dissect,
  [105] = nyse_amexequities_openbook_xdp_v1_9_a.imbalance_message.dissect,
}

nyse_amexequities_openbook_xdp_v1_9_a.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = nyse_amexequities_openbook_xdp_v1_9_a.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nyse_amexequities_openbook_xdp_v1_9_a.message_header = {}

-- Size: Message Header
nyse_amexequities_openbook_xdp_v1_9_a.message_header.size =
  nyse_amexequities_openbook_xdp_v1_9_a.message_size.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.message_type.size

-- Display: Message Header
nyse_amexequities_openbook_xdp_v1_9_a.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_amexequities_openbook_xdp_v1_9_a.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_amexequities_openbook_xdp_v1_9_a.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, message_type = nyse_amexequities_openbook_xdp_v1_9_a.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_amexequities_openbook_xdp_v1_9_a.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.message_header, buffer(offset, 0))
    local index = nyse_amexequities_openbook_xdp_v1_9_a.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_openbook_xdp_v1_9_a.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_openbook_xdp_v1_9_a.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nyse_amexequities_openbook_xdp_v1_9_a.message = {}

-- Display: Message
nyse_amexequities_openbook_xdp_v1_9_a.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_amexequities_openbook_xdp_v1_9_a.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_amexequities_openbook_xdp_v1_9_a.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 8 branches
  index = nyse_amexequities_openbook_xdp_v1_9_a.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_amexequities_openbook_xdp_v1_9_a.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.message, buffer(offset, 0))
    local current = nyse_amexequities_openbook_xdp_v1_9_a.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nyse_amexequities_openbook_xdp_v1_9_a.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_amexequities_openbook_xdp_v1_9_a.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Send Time
nyse_amexequities_openbook_xdp_v1_9_a.send_time = {}

-- Size: Send Time
nyse_amexequities_openbook_xdp_v1_9_a.send_time.size =
  nyse_amexequities_openbook_xdp_v1_9_a.seconds.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.nanoseconds.size

-- Display: Send Time
nyse_amexequities_openbook_xdp_v1_9_a.send_time.display = function(packet, parent, value)
  -- Check null value
  if value == nil then
    return "No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect Fields: Send Time
nyse_amexequities_openbook_xdp_v1_9_a.send_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = nyse_amexequities_openbook_xdp_v1_9_a.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nyse_amexequities_openbook_xdp_v1_9_a.nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local send_time = UInt64.new(seconds * 1000000000 + nanoseconds)

  return index, send_time
end

-- Dissect: Send Time
nyse_amexequities_openbook_xdp_v1_9_a.send_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- An absolute time item carries its value from the moment it is created,
    -- so the parts are read here rather than taken from the fields below it
    local seconds = buffer(offset, 4):le_uint()
    local nanoseconds = buffer(offset + 4, 4):le_uint()
    local length = nyse_amexequities_openbook_xdp_v1_9_a.send_time.size
    -- A field's absolute time base is fixed when it is declared, so the
    -- protocol declares one per base and the preference picks between them
    local field = omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.send_time
    if nyse_amexequities_openbook_xdp_v1_9_a.absolute_time_base == 1 then field = omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.send_time_utc end
    parent = parent:add(field, buffer(offset, length), NSTime.new(seconds, nanoseconds))
    local index = nyse_amexequities_openbook_xdp_v1_9_a.send_time.fields(buffer, offset, packet, parent)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_openbook_xdp_v1_9_a.send_time.fields(buffer, offset, packet, parent)
  end
end

-- Packet Header
nyse_amexequities_openbook_xdp_v1_9_a.packet_header = {}

-- Size: Packet Header
nyse_amexequities_openbook_xdp_v1_9_a.packet_header.size =
  nyse_amexequities_openbook_xdp_v1_9_a.packet_size.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.delivery_flag.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.message_count.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.sequence_number.size + 
  nyse_amexequities_openbook_xdp_v1_9_a.send_time.size

-- Display: Packet Header
nyse_amexequities_openbook_xdp_v1_9_a.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_amexequities_openbook_xdp_v1_9_a.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = nyse_amexequities_openbook_xdp_v1_9_a.packet_size.dissect(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_amexequities_openbook_xdp_v1_9_a.delivery_flag.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = nyse_amexequities_openbook_xdp_v1_9_a.message_count.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = nyse_amexequities_openbook_xdp_v1_9_a.sequence_number.dissect(buffer, index, packet, parent)

  -- Send Time: Struct of 2 fields
  index, send_time = nyse_amexequities_openbook_xdp_v1_9_a.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_amexequities_openbook_xdp_v1_9_a.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a.fields.packet_header, buffer(offset, 0))
    local index = nyse_amexequities_openbook_xdp_v1_9_a.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amexequities_openbook_xdp_v1_9_a.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amexequities_openbook_xdp_v1_9_a.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nyse_amexequities_openbook_xdp_v1_9_a.packet = {}

-- Verify required size of Udp packet
nyse_amexequities_openbook_xdp_v1_9_a.packet.requiredsize = function(buffer)
  return buffer:len() >= nyse_amexequities_openbook_xdp_v1_9_a.packet_header.size
end

-- Dissect Packet
nyse_amexequities_openbook_xdp_v1_9_a.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = nyse_amexequities_openbook_xdp_v1_9_a.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = nyse_amexequities_openbook_xdp_v1_9_a.message.dissect(buffer, index, packet, parent, message_size, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_amexequities_openbook_xdp_v1_9_a.init()
end

-- Dissector for Nyse AmexEquities OpenBook Xdp 1.9.a
function omi_nyse_amexequities_openbook_xdp_v1_9_a.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nyse_amexequities_openbook_xdp_v1_9_a.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_amexequities_openbook_xdp_v1_9_a, buffer(), omi_nyse_amexequities_openbook_xdp_v1_9_a.description, "("..buffer:len().." Bytes)")
  return nyse_amexequities_openbook_xdp_v1_9_a.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nyse AmexEquities OpenBook Xdp 1.9.a (Udp)
local function omi_nyse_amexequities_openbook_xdp_v1_9_a_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_amexequities_openbook_xdp_v1_9_a.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_amexequities_openbook_xdp_v1_9_a
  omi_nyse_amexequities_openbook_xdp_v1_9_a.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse AmexEquities OpenBook Xdp 1.9.a
omi_nyse_amexequities_openbook_xdp_v1_9_a:register_heuristic("udp", omi_nyse_amexequities_openbook_xdp_v1_9_a_udp_heuristic)

-- Register Nyse AmexEquities OpenBook Xdp 1.9.a for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nyse_amexequities_openbook_xdp_v1_9_a)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 1.9.a
--   Date: Monday, March 24, 2014
--   Specification: XDP_Depth_of_Book_Client_Spec.pdf
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
