-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Bmv BmvMarketData Product19 Intra 1.1 Protocol
local omi_bmv_bmvmarketdata_product19_intra_v1_1 = Proto("Omi.Bmv.BmvMarketData.Product19.Intra.v1.1", "Bmv BmvMarketData Product19 Intra 1.1")

-- Protocol table
local bmv_bmvmarketdata_product19_intra_v1_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Bmv BmvMarketData Product19 Intra 1.1 Fields
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.amount = ProtoField.new("Amount", "bmv.bmvmarketdata.product19.intra.v1.1.amount", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.concertation_type = ProtoField.new("Concertation Type", "bmv.bmvmarketdata.product19.intra.v1.1.concertationtype", ftypes.STRING, nil, nil, nil, "See Concertation Type Catalog on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.datetime = ProtoField.new("Datetime", "bmv.bmvmarketdata.product19.intra.v1.1.datetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date and time the packet is created")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.datetime_utc = ProtoField.new("Datetime", "bmv.bmvmarketdata.product19.intra.v1.1.datetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date and time the packet is created")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.ending_time = ProtoField.new("Ending Time", "bmv.bmvmarketdata.product19.intra.v1.1.endingtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Recess official ending time. Only used when an official recess or automatic recess occurred.")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.ending_time_utc = ProtoField.new("Ending Time", "bmv.bmvmarketdata.product19.intra.v1.1.endingtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Recess official ending time. Only used when an official recess or automatic recess occurred.")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.event_code = ProtoField.new("Event Code", "bmv.bmvmarketdata.product19.intra.v1.1.eventcode", ftypes.STRING, nil, nil, nil, "See the table of System Event Codes Catalog on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.instrument_number = ProtoField.new("Instrument Number", "bmv.bmvmarketdata.product19.intra.v1.1.instrumentnumber", ftypes.INT32, nil, nil, nil, "Always zero")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.instrument_status = ProtoField.new("Instrument Status", "bmv.bmvmarketdata.product19.intra.v1.1.instrumentstatus", ftypes.STRING, nil, nil, nil, "See the table of Instrument Status Catalog on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.last_price_of_the_day = ProtoField.new("Last Price Of The Day", "bmv.bmvmarketdata.product19.intra.v1.1.lastpriceoftheday", ftypes.DOUBLE, nil, nil, nil, "Last price recorded on the day")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.leg_type = ProtoField.new("Leg Type", "bmv.bmvmarketdata.product19.intra.v1.1.legtype", ftypes.STRING, nil, nil, nil, "L-Long leg C-Short leg X-Forwards chain leg P-Indicates if its parent strategy \"\"-Fact not generated from a strategy")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.length = ProtoField.new("Length", "bmv.bmvmarketdata.product19.intra.v1.1.length", ftypes.INT16, nil, nil, nil, "Packet length, including header and all attached messages")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.lower_price_of_the_day = ProtoField.new("Lower Price Of The Day", "bmv.bmvmarketdata.product19.intra.v1.1.lowerpriceoftheday", ftypes.DOUBLE, nil, nil, nil, "Lower price recorded on the day")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.market = ProtoField.new("Market", "bmv.bmvmarketdata.product19.intra.v1.1.market", ftypes.STRING, nil, nil, nil, "See the table of Markets Catalog (only used when there is an official recess) on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.market_data_group = ProtoField.new("Market Data Group", "bmv.bmvmarketdata.product19.intra.v1.1.marketdatagroup", ftypes.INT8, nil, nil, nil, "See Market Data Groups Catalog")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.max_price_of_the_day = ProtoField.new("Max Price Of The Day", "bmv.bmvmarketdata.product19.intra.v1.1.maxpriceoftheday", ftypes.DOUBLE, nil, nil, nil, "Max price recorded on the day")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.message_length = ProtoField.new("Message Length", "bmv.bmvmarketdata.product19.intra.v1.1.messagelength", ftypes.INT16, nil, nil, nil, "Indicates message length contained in this message block")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.message_type = ProtoField.new("Message Type", "bmv.bmvmarketdata.product19.intra.v1.1.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying the message")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.number_of_orders = ProtoField.new("Number Of Orders", "bmv.bmvmarketdata.product19.intra.v1.1.numberoforders", ftypes.INT16, nil, nil, nil, "Level number of orders (Document label: Number of orders-1)")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.open_interest = ProtoField.new("Open Interest", "bmv.bmvmarketdata.product19.intra.v1.1.openinterest", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.opening_price = ProtoField.new("Opening Price", "bmv.bmvmarketdata.product19.intra.v1.1.openingprice", ftypes.DOUBLE, nil, nil, nil, "First price of the day or opening price")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.operation_type = ProtoField.new("Operation Type", "bmv.bmvmarketdata.product19.intra.v1.1.operationtype", ftypes.STRING, nil, nil, nil, "See Operation Type Catalog on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.parent_trade_number = ProtoField.new("Parent Trade Number", "bmv.bmvmarketdata.product19.intra.v1.1.parenttradenumber", ftypes.INT32, nil, nil, nil, "Will only contain a value if and only if is about a strategy leg.")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.previous_settlement_price = ProtoField.new("Previous Settlement Price", "bmv.bmvmarketdata.product19.intra.v1.1.previoussettlementprice", ftypes.DOUBLE, nil, nil, nil, "Last day settlement price")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.price = ProtoField.new("Price", "bmv.bmvmarketdata.product19.intra.v1.1.price", ftypes.DOUBLE, nil, nil, nil, "Level price (Document label: Price-1)")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.price_level = ProtoField.new("Price Level", "bmv.bmvmarketdata.product19.intra.v1.1.pricelevel", ftypes.STRING, nil, nil, nil, "One price level of the Depth message")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.price_rate = ProtoField.new("Price Rate", "bmv.bmvmarketdata.product19.intra.v1.1.pricerate", ftypes.DOUBLE, nil, nil, nil, "Operation price")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.purchase_or_sale_levels = ProtoField.new("Purchase Or Sale Levels", "bmv.bmvmarketdata.product19.intra.v1.1.purchaseorsalelevels", ftypes.INT8, nil, nil, nil, "Number of buy or sale levels to be sent")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.sending_time = ProtoField.new("Sending Time", "bmv.bmvmarketdata.product19.intra.v1.1.sendingtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Recess’s official sending time. Only used when official recess has occurred.")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.sending_time_utc = ProtoField.new("Sending Time", "bmv.bmvmarketdata.product19.intra.v1.1.sendingtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Recess’s official sending time. Only used when official recess has occurred.")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.sequence_number = ProtoField.new("Sequence Number", "bmv.bmvmarketdata.product19.intra.v1.1.sequencenumber", ftypes.INT32, nil, nil, nil, "Sequence number of the first message attached to header")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.session = ProtoField.new("Session", "bmv.bmvmarketdata.product19.intra.v1.1.session", ftypes.INT8, nil, nil, nil, "Current session identifier")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.side = ProtoField.new("Side", "bmv.bmvmarketdata.product19.intra.v1.1.side", ftypes.INT8, nil, nil, nil, "O - Buy, 1 - Sell")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.total_messages = ProtoField.new("Total Messages", "bmv.bmvmarketdata.product19.intra.v1.1.totalmessages", ftypes.INT8, nil, nil, nil, "Number of messages after the header")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.trade_number = ProtoField.new("Trade Number", "bmv.bmvmarketdata.product19.intra.v1.1.tradenumber", ftypes.INT32, nil, nil, nil, "Stamp number by instrument")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.trade_time = ProtoField.new("Trade Time", "bmv.bmvmarketdata.product19.intra.v1.1.tradetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the operation was carried out")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.trade_time_utc = ProtoField.new("Trade Time", "bmv.bmvmarketdata.product19.intra.v1.1.tradetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the operation was carried out")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.volatility = ProtoField.new("Volatility", "bmv.bmvmarketdata.product19.intra.v1.1.volatility", ftypes.DOUBLE, nil, nil, nil, "Volatility instrument.")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.volume = ProtoField.new("Volume", "bmv.bmvmarketdata.product19.intra.v1.1.volume", ftypes.INT32, nil, nil, nil, "Traded stocks")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.weighted_average_price = ProtoField.new("Weighted Average Price", "bmv.bmvmarketdata.product19.intra.v1.1.weightedaverageprice", ftypes.DOUBLE, nil, nil, nil, "Average price instrument.")

-- Bmv BmvMarketData Product19 Intra 1.1 Framing
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.intra_multicast_header = ProtoField.new("INTRA Multicast Header", "bmv.bmvmarketdata.product19.intra.v1.1.intramulticastheader", ftypes.STRING, nil, nil, nil, "BMV INTRA Multicast Header")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.message_block = ProtoField.new("Message Block", "bmv.bmvmarketdata.product19.intra.v1.1.messageblock", ftypes.STRING, nil, nil, nil, "BMV INTRA Multicast message block")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.message_header = ProtoField.new("Message Header", "bmv.bmvmarketdata.product19.intra.v1.1.messageheader", ftypes.STRING, nil, nil, nil, "Message length and message type")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.packet = ProtoField.new("Packet", "bmv.bmvmarketdata.product19.intra.v1.1.packet", ftypes.STRING, nil, nil, nil, "Bmv INTRA Multicast Udp Packet")

-- Bmv BmvMarketData Product19 1.1 Application Messages
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.depth_message = ProtoField.new("Depth Message", "bmv.bmvmarketdata.product19.intra.v1.1.depthmessage", ftypes.STRING, nil, nil, nil, "Market depth: up to 20 best buy or sale price levels (10 on the derivatives groups 7, 8 and 19), as many as Purchase or sale levels.")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.derivatives_market_trades_message = ProtoField.new("Derivatives Market Trades Message", "bmv.bmvmarketdata.product19.intra.v1.1.derivativesmarkettradesmessage", ftypes.STRING, nil, nil, nil, "Contains information on any MexDer accepted transaction.")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.events_system_message = ProtoField.new("Events System Message", "bmv.bmvmarketdata.product19.intra.v1.1.eventssystemmessage", ftypes.STRING, nil, nil, nil, "The system of events message is used to inform that an event has occurred, which needs to be of public domain.")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.open_interest_message = ProtoField.new("Open Interest Message", "bmv.bmvmarketdata.product19.intra.v1.1.openinterestmessage", ftypes.STRING, nil, nil, nil, "Open Interest")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.statistics_of_instruments_message = ProtoField.new("Statistics Of Instruments Message", "bmv.bmvmarketdata.product19.intra.v1.1.statisticsofinstrumentsmessage", ftypes.STRING, nil, nil, nil, "Update message from derivatives statistics sent each time there is an update on the trading floor at any level price.")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.status_changes_message = ProtoField.new("Status Changes Message", "bmv.bmvmarketdata.product19.intra.v1.1.statuschangesmessage", ftypes.STRING, nil, nil, nil, "All instruments are in a certain status before and during trading session.")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.trade_cancellation_message = ProtoField.new("Trade Cancellation Message", "bmv.bmvmarketdata.product19.intra.v1.1.tradecancellationmessage", ftypes.STRING, nil, nil, nil, "This message is sent when a transaction is cancelled from the BMV system.")
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.weighted_average_price_settlement_prices_message = ProtoField.new("Weighted Average Price Settlement Prices Message", "bmv.bmvmarketdata.product19.intra.v1.1.weightedaveragepricesettlementpricesmessage", ftypes.STRING, nil, nil, nil, "For equities market, this message will be sent for each operation containing weighted average price per instrument generated within WAP calculation period (last 20 minutes of trading).")

-- Bmv BmvMarketData Product19 Intra 1.1 Generated Fields
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.message_block_index = ProtoField.new("Message Block Index", "bmv.bmvmarketdata.product19.intra.v1.1.messageblockindex", ftypes.UINT16)
omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.price_level_index = ProtoField.new("Price Level Index", "bmv.bmvmarketdata.product19.intra.v1.1.pricelevelindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Bmv BmvMarketData Product19 Intra 1.1 Formatting
-----------------------------------------------------------------------

-- Text field character encoding (Wireshark ENC_ constant)
bmv_bmvmarketdata_product19_intra_v1_1.text_encoding = ENC_ASCII

-- timestamp format
local timestamp_format_enum = {
  { 1, "Full DateTime Local", 2 },
  { 2, "Full DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=Full DateTime Local, 3=Full DateTime Utc
bmv_bmvmarketdata_product19_intra_v1_1.timestamp_format = 2


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Bmv BmvMarketData Product19 Intra 1.1 Element Dissection Options
show.application_messages = true
show.headers = true
show.structs = true
show.repeating_groups = true
show.indexes = true

-- Register Bmv BmvMarketData Product19 Intra 1.1 Show Options
omi_bmv_bmvmarketdata_product19_intra_v1_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_bmv_bmvmarketdata_product19_intra_v1_1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_bmv_bmvmarketdata_product19_intra_v1_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_bmv_bmvmarketdata_product19_intra_v1_1.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_bmv_bmvmarketdata_product19_intra_v1_1.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_bmv_bmvmarketdata_product19_intra_v1_1.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_bmv_bmvmarketdata_product19_intra_v1_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_bmv_bmvmarketdata_product19_intra_v1_1.prefs.show_application_messages then
    show.application_messages = omi_bmv_bmvmarketdata_product19_intra_v1_1.prefs.show_application_messages
  end
  if show.headers ~= omi_bmv_bmvmarketdata_product19_intra_v1_1.prefs.show_headers then
    show.headers = omi_bmv_bmvmarketdata_product19_intra_v1_1.prefs.show_headers
  end
  if show.repeating_groups ~= omi_bmv_bmvmarketdata_product19_intra_v1_1.prefs.show_repeating_groups then
    show.repeating_groups = omi_bmv_bmvmarketdata_product19_intra_v1_1.prefs.show_repeating_groups
  end
  if show.structs ~= omi_bmv_bmvmarketdata_product19_intra_v1_1.prefs.show_structs then
    show.structs = omi_bmv_bmvmarketdata_product19_intra_v1_1.prefs.show_structs
  end
  if show.indexes ~= omi_bmv_bmvmarketdata_product19_intra_v1_1.prefs.show_indexes then
    show.indexes = omi_bmv_bmvmarketdata_product19_intra_v1_1.prefs.show_indexes
  end
  if bmv_bmvmarketdata_product19_intra_v1_1.timestamp_format ~= omi_bmv_bmvmarketdata_product19_intra_v1_1.prefs.timestamp_format then
    bmv_bmvmarketdata_product19_intra_v1_1.timestamp_format = omi_bmv_bmvmarketdata_product19_intra_v1_1.prefs.timestamp_format
  end
end


-----------------------------------------------------------------------
-- Bmv BmvMarketData Product19 Intra 1.1 Fields
-----------------------------------------------------------------------

-- Amount
bmv_bmvmarketdata_product19_intra_v1_1.amount = {}

-- Size: Amount
bmv_bmvmarketdata_product19_intra_v1_1.amount.size = 8

-- Display: Amount
bmv_bmvmarketdata_product19_intra_v1_1.amount.display = function(value)
  return "Amount: "..value
end

-- Translate: Amount
bmv_bmvmarketdata_product19_intra_v1_1.amount.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Amount
bmv_bmvmarketdata_product19_intra_v1_1.amount.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.amount.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product19_intra_v1_1.amount.translate(raw)
  local display = bmv_bmvmarketdata_product19_intra_v1_1.amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.amount, range, value, display)

  return offset + length, value
end

-- Concertation Type
bmv_bmvmarketdata_product19_intra_v1_1.concertation_type = {}

-- Size: Concertation Type
bmv_bmvmarketdata_product19_intra_v1_1.concertation_type.size = 1

-- Display: Concertation Type
bmv_bmvmarketdata_product19_intra_v1_1.concertation_type.labels = {
  ["C"] = "Concertation Type: Crossing Operation (C)",
  ["O"] = "Concertation Type: Order Closing (O)",
  ["H"] = "Concertation Type: Operation At Closing Price (H)",
  ["D"] = "Concertation Type: Operation After Closing (D)",
  ["M"] = "Concertation Type: Operation At Medium Price (M)",
  ["P"] = "Concertation Type: Operation At Average Price For The Day (P)",
  ["X"] = "Concertation Type: Block Operations By Exception (X)",
  ["v"] = "Concertation Type: Vwap Operations By Exception (v)",
  ["w"] = "Concertation Type: Twap Operations By Exception (w)",
  ["%"] = "Concertation Type: Basket Trading (%)",
  ["x"] = "Concertation Type: Otc Recent Operations (x)",
  ["y"] = "Concertation Type: Otc Agreed Operations (y)",
  ["A"] = "Concertation Type: Buy Auto Entry (A)",
  ["B"] = "Concertation Type: Sell Auto Entry (B)",
  ["E"] = "Concertation Type: Block Trade (E)",
  ["F"] = "Concertation Type: Leg Of Blocktrade For Chain Of Forwards (F)",
  ["G"] = "Concertation Type: Leg Of Chain Of Forwards (G)",
  ["J"] = "Concertation Type: Leg Of Crossing Of Foreign Currency Strategy (J)",
  ["K"] = "Concertation Type: Sell Leg Auto Entry Of Foreign Currency Strategy (K)",
  ["L"] = "Concertation Type: Buy Leg Auto Entry Of Foreign Currency Strategy (L)",
  ["N"] = "Concertation Type: Leg Of Foreign Currency Strategy (N)",
  ["Q"] = "Concertation Type: Leg Of Foreign Currency Strategy (Q)",
  ["R"] = "Concertation Type: Leg Of Crossing Of Chain Of Forwards (R)",
  ["S"] = "Concertation Type: Sell Leg Auto Entry Of Chain Of Forwards (S)",
  ["T"] = "Concertation Type: Buy Leg Auto Entry Of Chain Of Forwards (T)",
  ["U"] = "Concertation Type: Leg Of Auction Of Chain Of Forwards (U)",
  ["V"] = "Concertation Type: Leg Of Round Of Chain Of Forwards (V)",
  ["W"] = "Concertation Type: Chains Of Forwards (W)",
  ["Y"] = "Concertation Type: Leg Of Rollover Crossing (Y)",
  ["Z"] = "Concertation Type: Sell Leg Auto Entry Of Rollover (Z)",
  ["a"] = "Concertation Type: Buy Leg Auto Entry Of Rollover (a)",
  ["b"] = "Concertation Type: Leg Of Round Of Rollover (b)",
  ["c"] = "Concertation Type: Depth Of Round Of Chain Of Forwards (c)",
  ["d"] = "Concertation Type: Trading Of Chain Of Forwards (d)",
  ["e"] = "Concertation Type: Depth Of Round (e)",
  ["f"] = "Concertation Type: Round Of Chain Of Forwards (f)",
  ["g"] = "Concertation Type: Rollover Sentra (g)",
  ["h"] = "Concertation Type: Type Round (h)",
  ["i"] = "Concertation Type: Auctions (i)",
  ["j"] = "Concertation Type: Leg Of Block Trade Of Rollover (j)",
  ["k"] = "Concertation Type: Leg Of Block Trade Of Foreign Currency Strategy (k)",
  ["l"] = "Concertation Type: Block Trade Of Foreign Currency Strategy (l)",
  ["m"] = "Concertation Type: Block Trade Of Chain Of Forwards (m)",
  ["n"] = "Concertation Type: Blocktrade Of Rollover (n)",
  ["o"] = "Concertation Type: Crossing Of Chain Of Forwards (o)",
  ["p"] = "Concertation Type: Sell Auto Entry Of Chain Of Forwards (p)",
  ["q"] = "Concertation Type: Buy Auto Entry Of Chain Of Forwards (q)",
  ["r"] = "Concertation Type: Swap Block Trade (r)",
  ["s"] = "Concertation Type: Swap Block Trade With Continuous Coupon (s)",
  ["t"] = "Concertation Type: Block Trade Of Unwind (t)",
  ["u"] = "Concertation Type: Block Trade Of Substitution (u)",
  ["z"] = "Concertation Type: Voice Over (z)",
  ["#"] = "Concertation Type: Firm Order (#)",
  ["I"] = "Concertation Type: Ipo Cross (I)",
  ["+"] = "Concertation Type: Unintentional Self Cross (+)",
  ["&"] = "Concertation Type: Without Concertation (&)",
  ["("] = "Concertation Type: Inav To Closing Price Trading (()",
  [")"] = "Concertation Type: Inav After Closing ())",
}

bmv_bmvmarketdata_product19_intra_v1_1.concertation_type.display = function(value)
  return bmv_bmvmarketdata_product19_intra_v1_1.concertation_type.labels[value] or "Concertation Type: Unknown("..value..")"
end

-- Dissect: Concertation Type
bmv_bmvmarketdata_product19_intra_v1_1.concertation_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.concertation_type.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product19_intra_v1_1.concertation_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.concertation_type, range, value, display)

  return offset + length, value
end

-- Datetime
bmv_bmvmarketdata_product19_intra_v1_1.datetime = {}

-- Size: Datetime
bmv_bmvmarketdata_product19_intra_v1_1.datetime.size = 8

-- Dissect: Datetime
bmv_bmvmarketdata_product19_intra_v1_1.datetime.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.datetime.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.datetime
  if bmv_bmvmarketdata_product19_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.datetime_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Ending Time
bmv_bmvmarketdata_product19_intra_v1_1.ending_time = {}

-- Size: Ending Time
bmv_bmvmarketdata_product19_intra_v1_1.ending_time.size = 8

-- Dissect: Ending Time
bmv_bmvmarketdata_product19_intra_v1_1.ending_time.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.ending_time.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.ending_time
  if bmv_bmvmarketdata_product19_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.ending_time_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Event Code
bmv_bmvmarketdata_product19_intra_v1_1.event_code = {}

-- Size: Event Code
bmv_bmvmarketdata_product19_intra_v1_1.event_code.size = 1

-- Display: Event Code
bmv_bmvmarketdata_product19_intra_v1_1.event_code.labels = {
  ["A"] = "Event Code: Start Of System Hours (A)",
  ["B"] = "Event Code: Cancelation Of Offers (B)",
  ["C"] = "Event Code: Start Of Opening Auction (C)",
  ["D"] = "Event Code: Start Of Continuous Market (D)",
  ["E"] = "Event Code: Start Of Wap Period (E)",
  ["F"] = "Event Code: Continuous Market Ends (F)",
  ["G"] = "Event Code: Start Of After Closing Phase (G)",
  ["H"] = "Event Code: It Ends After Closing (H)",
  ["J"] = "Event Code: Transmission Of Final Prices Ends (J)",
  ["K"] = "Event Code: End Of System Hours (K)",
  ["M"] = "Event Code: Start Of Administrative Recess (M)",
  ["N"] = "Event Code: End Of Administrative Recess (N)",
  ["O"] = "Event Code: Start Dvmamx Markets (O)",
  ["P"] = "Event Code: End Of Dvma Markets (P)",
  ["Q"] = "Event Code: End Of Mx Markets (Q)",
  ["R"] = "Event Code: Start Of Opc Modality (R)",
  ["S"] = "Event Code: End Of Opc Modality (S)",
  ["T"] = "Event Code: Start Of Settlement Auction (T)",
  ["U"] = "Event Code: End Of Settlement Auction (U)",
  ["V"] = "Event Code: Final Register Of Settlement Prices (V)",
  ["W"] = "Event Code: Open Interest (W)",
}

bmv_bmvmarketdata_product19_intra_v1_1.event_code.display = function(value)
  return bmv_bmvmarketdata_product19_intra_v1_1.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
bmv_bmvmarketdata_product19_intra_v1_1.event_code.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.event_code.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product19_intra_v1_1.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.event_code, range, value, display)

  return offset + length, value
end

-- Instrument Number
bmv_bmvmarketdata_product19_intra_v1_1.instrument_number = {}

-- Size: Instrument Number
bmv_bmvmarketdata_product19_intra_v1_1.instrument_number.size = 4

-- Display: Instrument Number
bmv_bmvmarketdata_product19_intra_v1_1.instrument_number.display = function(value)
  return "Instrument Number: "..value
end

-- Dissect: Instrument Number
bmv_bmvmarketdata_product19_intra_v1_1.instrument_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.instrument_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product19_intra_v1_1.instrument_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.instrument_number, range, value, display)

  return offset + length, value
end

-- Instrument Status
bmv_bmvmarketdata_product19_intra_v1_1.instrument_status = {}

-- Size: Instrument Status
bmv_bmvmarketdata_product19_intra_v1_1.instrument_status.size = 1

-- Display: Instrument Status
bmv_bmvmarketdata_product19_intra_v1_1.instrument_status.labels = {
  ["C"] = "Instrument Status: Cancellation Of Offers (C)",
  ["A"] = "Instrument Status: Opening Auction (A)",
  ["P"] = "Instrument Status: Pre Opening (P)",
  ["E"] = "Instrument Status: Being Allocated (E)",
  ["G"] = "Instrument Status: Auction Allocated (G)",
  ["T"] = "Instrument Status: Auction Ended (T)",
  ["N"] = "Instrument Status: Continuous Trading (N)",
  ["K"] = "Instrument Status: Breaking Auction Parameters (K)",
  ["M"] = "Instrument Status: Continuous Auction Due To Stop Operating More Than 20 Working Days (M)",
  ["U"] = "Instrument Status: Cleaving Auction (U)",
  ["O"] = "Instrument Status: Suspended Series (O)",
  ["V"] = "Instrument Status: Suspended Quotation (V)",
  ["L"] = "Instrument Status: Auction For Breach (L)",
  ["I"] = "Instrument Status: Withdrawal Of Orders On Continuous Auction (I)",
  ["B"] = "Instrument Status: Withdrawal Of Order On Intraday Auction (B)",
  ["W"] = "Instrument Status: News Pending (W)",
  ["X"] = "Instrument Status: Settlement Auction (X)",
  ["Y"] = "Instrument Status: Extraordinary Settlement Auction (Y)",
  ["R"] = "Instrument Status: Auction Total Of Ck Des (R)",
}

bmv_bmvmarketdata_product19_intra_v1_1.instrument_status.display = function(value)
  return bmv_bmvmarketdata_product19_intra_v1_1.instrument_status.labels[value] or "Instrument Status: Unknown("..value..")"
end

-- Dissect: Instrument Status
bmv_bmvmarketdata_product19_intra_v1_1.instrument_status.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.instrument_status.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product19_intra_v1_1.instrument_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.instrument_status, range, value, display)

  return offset + length, value
end

-- Last Price Of The Day
bmv_bmvmarketdata_product19_intra_v1_1.last_price_of_the_day = {}

-- Size: Last Price Of The Day
bmv_bmvmarketdata_product19_intra_v1_1.last_price_of_the_day.size = 8

-- Display: Last Price Of The Day
bmv_bmvmarketdata_product19_intra_v1_1.last_price_of_the_day.display = function(value)
  return "Last Price Of The Day: "..value
end

-- Translate: Last Price Of The Day
bmv_bmvmarketdata_product19_intra_v1_1.last_price_of_the_day.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Price Of The Day
bmv_bmvmarketdata_product19_intra_v1_1.last_price_of_the_day.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.last_price_of_the_day.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product19_intra_v1_1.last_price_of_the_day.translate(raw)
  local display = bmv_bmvmarketdata_product19_intra_v1_1.last_price_of_the_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.last_price_of_the_day, range, value, display)

  return offset + length, value
end

-- Leg Type
bmv_bmvmarketdata_product19_intra_v1_1.leg_type = {}

-- Size: Leg Type
bmv_bmvmarketdata_product19_intra_v1_1.leg_type.size = 1

-- Display: Leg Type
bmv_bmvmarketdata_product19_intra_v1_1.leg_type.display = function(value)
  if value == "L" then
    return "Leg Type: Long Leg (L)"
  end
  if value == "C" then
    return "Leg Type: Short Leg (C)"
  end
  if value == "X" then
    return "Leg Type: Forwards Chain Leg (X)"
  end
  if value == "P" then
    return "Leg Type: Parent Strategy (P)"
  end
  if value == " " then
    return "Leg Type: Not Generated From A Strategy (<whitespace>)"
  end

  return "Leg Type: Unknown("..value..")"
end

-- Dissect: Leg Type
bmv_bmvmarketdata_product19_intra_v1_1.leg_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.leg_type.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product19_intra_v1_1.leg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.leg_type, range, value, display)

  return offset + length, value
end

-- Length
bmv_bmvmarketdata_product19_intra_v1_1.length = {}

-- Size: Length
bmv_bmvmarketdata_product19_intra_v1_1.length.size = 2

-- Display: Length
bmv_bmvmarketdata_product19_intra_v1_1.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
bmv_bmvmarketdata_product19_intra_v1_1.length.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product19_intra_v1_1.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.length, range, value, display)

  return offset + length, value
end

-- Lower Price Of The Day
bmv_bmvmarketdata_product19_intra_v1_1.lower_price_of_the_day = {}

-- Size: Lower Price Of The Day
bmv_bmvmarketdata_product19_intra_v1_1.lower_price_of_the_day.size = 8

-- Display: Lower Price Of The Day
bmv_bmvmarketdata_product19_intra_v1_1.lower_price_of_the_day.display = function(value)
  return "Lower Price Of The Day: "..value
end

-- Translate: Lower Price Of The Day
bmv_bmvmarketdata_product19_intra_v1_1.lower_price_of_the_day.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Lower Price Of The Day
bmv_bmvmarketdata_product19_intra_v1_1.lower_price_of_the_day.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.lower_price_of_the_day.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product19_intra_v1_1.lower_price_of_the_day.translate(raw)
  local display = bmv_bmvmarketdata_product19_intra_v1_1.lower_price_of_the_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.lower_price_of_the_day, range, value, display)

  return offset + length, value
end

-- Market
bmv_bmvmarketdata_product19_intra_v1_1.market = {}

-- Size: Market
bmv_bmvmarketdata_product19_intra_v1_1.market.size = 1

-- Display: Market
bmv_bmvmarketdata_product19_intra_v1_1.market.display = function(value)
  if value == "L" then
    return "Market: Local (L)"
  end
  if value == "G" then
    return "Market: Global (G)"
  end
  if value == "D" then
    return "Market: Local Debt (D)"
  end
  if value == "F" then
    return "Market: Global Debt (F)"
  end
  if value == "E" then
    return "Market: Money (E)"
  end
  if value == "M" then
    return "Market: Dollar Option Market (M)"
  end
  if value == "X" then
    return "Market: Stock Market (X)"
  end
  if value == "V" then
    return "Market: Forex And Rates Market (V)"
  end
  if value == "J" then
    return "Market: Fixed Income (J)"
  end
  if value == "B" then
    return "Market: Variable Income (B)"
  end
  if value == "T" then
    return "Market: Metals (T)"
  end
  if value == "I" then
    return "Market: Mutual Funds (I)"
  end
  if value == "W" then
    return "Market: Warrants (W)"
  end
  if value == " " then
    return "Market: All Markets (<whitespace>)"
  end

  return "Market: Unknown("..value..")"
end

-- Dissect: Market
bmv_bmvmarketdata_product19_intra_v1_1.market.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.market.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product19_intra_v1_1.market.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.market, range, value, display)

  return offset + length, value
end

-- Market Data Group
bmv_bmvmarketdata_product19_intra_v1_1.market_data_group = {}

-- Size: Market Data Group
bmv_bmvmarketdata_product19_intra_v1_1.market_data_group.size = 1

-- Display: Market Data Group
bmv_bmvmarketdata_product19_intra_v1_1.market_data_group.labels = {
  [1] = "Market Data Group: Indepth Local Market (1)",
  [2] = "Market Data Group: Indepth Global Market (2)",
  [3] = "Market Data Group: Twenty Price Levels Of Local Market (3)",
  [4] = "Market Data Group: Twenty Price Levels Of Global Market (4)",
  [5] = "Market Data Group: Best Offers Of Local Market (5)",
  [6] = "Market Data Group: Best Offers Of Global Market (6)",
  [7] = "Market Data Group: Ten Price Levels Of Derivative Futures (7)",
  [8] = "Market Data Group: Ten Price Levels Of Derivative Options (8)",
  [9] = "Market Data Group: Best Offers For Derivative Futures (9)",
  [10] = "Market Data Group: Best Offers For Derivative Options (10)",
  [11] = "Market Data Group: Money Market (11)",
  [12] = "Market Data Group: Indices Components (12)",
  [13] = "Market Data Group: Level Of Indices (13)",
  [14] = "Market Data Group: Levels Of Inavs (14)",
  [15] = "Market Data Group: Indepth Local And Global Market (15)",
  [16] = "Market Data Group: Twenty Price Levels Of Local And Global Market (16)",
  [17] = "Market Data Group: Best Offers Of Local And Global Market With Money Market (17)",
  [18] = "Market Data Group: Twenty Price Levels Of Local And Global Market Indices Components Level Of Indices And Levels Of Inavs (18)",
  [19] = "Market Data Group: Ten Price Levels Of Derivate Futures And Derivative Options (19)",
  [20] = "Market Data Group: Best Offers For Derivative Futures And Derivative Options (20)",
  [21] = "Market Data Group: Added Value With Benchmark (21)",
  [22] = "Market Data Group: Added Value With Capitalization Rules (22)",
  [23] = "Market Data Group: Indices Levels With Delay (23)",
  [24] = "Market Data Group: Local And Global Market With Money Market Best Positions With Delay (24)",
  [25] = "Market Data Group: Equities Market Trades Consolidated Feed (25)",
  [26] = "Market Data Group: Best Bid Of The Equities Market Consolidated Feed (26)",
  [27] = "Market Data Group: Full Depth Consolidated Feed (27)",
  [28] = "Market Data Group: Closing Price Origin (28)",
  [29] = "Market Data Group: Analytics Price And Market Depth (29)",
  [32] = "Market Data Group: Analytics Market Quality (32)",
  [33] = "Market Data Group: Analytics Spead Performance (33)",
  [34] = "Market Data Group: Analytics Negotiation (34)",
  [40] = "Market Data Group: Channel Zero Catalogs (40)",
}

bmv_bmvmarketdata_product19_intra_v1_1.market_data_group.display = function(value)
  return bmv_bmvmarketdata_product19_intra_v1_1.market_data_group.labels[value] or "Market Data Group: Unknown("..value..")"
end

-- Dissect: Market Data Group
bmv_bmvmarketdata_product19_intra_v1_1.market_data_group.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.market_data_group.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product19_intra_v1_1.market_data_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Max Price Of The Day
bmv_bmvmarketdata_product19_intra_v1_1.max_price_of_the_day = {}

-- Size: Max Price Of The Day
bmv_bmvmarketdata_product19_intra_v1_1.max_price_of_the_day.size = 8

-- Display: Max Price Of The Day
bmv_bmvmarketdata_product19_intra_v1_1.max_price_of_the_day.display = function(value)
  return "Max Price Of The Day: "..value
end

-- Translate: Max Price Of The Day
bmv_bmvmarketdata_product19_intra_v1_1.max_price_of_the_day.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Max Price Of The Day
bmv_bmvmarketdata_product19_intra_v1_1.max_price_of_the_day.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.max_price_of_the_day.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product19_intra_v1_1.max_price_of_the_day.translate(raw)
  local display = bmv_bmvmarketdata_product19_intra_v1_1.max_price_of_the_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.max_price_of_the_day, range, value, display)

  return offset + length, value
end

-- Message Length
bmv_bmvmarketdata_product19_intra_v1_1.message_length = {}

-- Size: Message Length
bmv_bmvmarketdata_product19_intra_v1_1.message_length.size = 2

-- Display: Message Length
bmv_bmvmarketdata_product19_intra_v1_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
bmv_bmvmarketdata_product19_intra_v1_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product19_intra_v1_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
bmv_bmvmarketdata_product19_intra_v1_1.message_type = {}

-- Size: Message Type
bmv_bmvmarketdata_product19_intra_v1_1.message_type.size = 1

-- Display: Message Type
bmv_bmvmarketdata_product19_intra_v1_1.message_type.display = function(value)
  if value == 0x53 then
    return "Message Type: Events System Message (0x53)"
  end
  if value == 0x48 then
    return "Message Type: Trade Cancellation Message (0x48)"
  end
  if value == 0x34 then
    return "Message Type: Status Changes Message (0x34)"
  end
  if value == 0x4D then
    return "Message Type: Weighted Average Price Settlement Prices Message (0x4D)"
  end
  if value == 0x31 then
    return "Message Type: Depth Message (0x31)"
  end
  if value == 0x49 then
    return "Message Type: Open Interest Message (0x49)"
  end
  if value == 0x51 then
    return "Message Type: Derivatives Market Trades Message (0x51)"
  end
  if value == 0x52 then
    return "Message Type: Statistics Of Instruments Message (0x52)"
  end

  return "Message Type: Unknown("..string.format("0x%02X", value)..")"
end

-- Dissect: Message Type
bmv_bmvmarketdata_product19_intra_v1_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bmv_bmvmarketdata_product19_intra_v1_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Number Of Orders
bmv_bmvmarketdata_product19_intra_v1_1.number_of_orders = {}

-- Size: Number Of Orders
bmv_bmvmarketdata_product19_intra_v1_1.number_of_orders.size = 2

-- Display: Number Of Orders
bmv_bmvmarketdata_product19_intra_v1_1.number_of_orders.display = function(value)
  return "Number Of Orders: "..value
end

-- Dissect: Number Of Orders
bmv_bmvmarketdata_product19_intra_v1_1.number_of_orders.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.number_of_orders.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product19_intra_v1_1.number_of_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.number_of_orders, range, value, display)

  return offset + length, value
end

-- Open Interest
bmv_bmvmarketdata_product19_intra_v1_1.open_interest = {}

-- Size: Open Interest
bmv_bmvmarketdata_product19_intra_v1_1.open_interest.size = 4

-- Display: Open Interest
bmv_bmvmarketdata_product19_intra_v1_1.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Translate: Open Interest
bmv_bmvmarketdata_product19_intra_v1_1.open_interest.translate = function(raw)
  return raw/10000
end

-- Dissect: Open Interest
bmv_bmvmarketdata_product19_intra_v1_1.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.open_interest.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_product19_intra_v1_1.open_interest.translate(raw)
  local display = bmv_bmvmarketdata_product19_intra_v1_1.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Opening Price
bmv_bmvmarketdata_product19_intra_v1_1.opening_price = {}

-- Size: Opening Price
bmv_bmvmarketdata_product19_intra_v1_1.opening_price.size = 8

-- Display: Opening Price
bmv_bmvmarketdata_product19_intra_v1_1.opening_price.display = function(value)
  return "Opening Price: "..value
end

-- Translate: Opening Price
bmv_bmvmarketdata_product19_intra_v1_1.opening_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Opening Price
bmv_bmvmarketdata_product19_intra_v1_1.opening_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.opening_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product19_intra_v1_1.opening_price.translate(raw)
  local display = bmv_bmvmarketdata_product19_intra_v1_1.opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Operation Type
bmv_bmvmarketdata_product19_intra_v1_1.operation_type = {}

-- Size: Operation Type
bmv_bmvmarketdata_product19_intra_v1_1.operation_type.size = 1

-- Display: Operation Type
bmv_bmvmarketdata_product19_intra_v1_1.operation_type.labels = {
  ["C"] = "Operation Type: Cash (C)",
  ["O"] = "Operation Type: Public Offering (O)",
  ["R"] = "Operation Type: Registration Operation (R)",
  ["A"] = "Operation Type: Overallocation (A)",
  ["S"] = "Operation Type: Reciprocal Subscription (S)",
  ["F"] = "Operation Type: Public Buy Offering (F)",
  ["H"] = "Operation Type: Trades At Closing (H)",
  ["M"] = "Operation Type: Medium Price (M)",
  ["X"] = "Operation Type: Operation By Exception (X)",
  ["P"] = "Operation Type: Average For The Day (P)",
  ["D"] = "Operation Type: After Closing (D)",
  ["N"] = "Operation Type: Inav Trading (N)",
}

bmv_bmvmarketdata_product19_intra_v1_1.operation_type.display = function(value)
  return bmv_bmvmarketdata_product19_intra_v1_1.operation_type.labels[value] or "Operation Type: Unknown("..value..")"
end

-- Dissect: Operation Type
bmv_bmvmarketdata_product19_intra_v1_1.operation_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.operation_type.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product19_intra_v1_1.operation_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.operation_type, range, value, display)

  return offset + length, value
end

-- Parent Trade Number
bmv_bmvmarketdata_product19_intra_v1_1.parent_trade_number = {}

-- Size: Parent Trade Number
bmv_bmvmarketdata_product19_intra_v1_1.parent_trade_number.size = 4

-- Display: Parent Trade Number
bmv_bmvmarketdata_product19_intra_v1_1.parent_trade_number.display = function(value)
  return "Parent Trade Number: "..value
end

-- Dissect: Parent Trade Number
bmv_bmvmarketdata_product19_intra_v1_1.parent_trade_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.parent_trade_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product19_intra_v1_1.parent_trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.parent_trade_number, range, value, display)

  return offset + length, value
end

-- Previous Settlement Price
bmv_bmvmarketdata_product19_intra_v1_1.previous_settlement_price = {}

-- Size: Previous Settlement Price
bmv_bmvmarketdata_product19_intra_v1_1.previous_settlement_price.size = 8

-- Display: Previous Settlement Price
bmv_bmvmarketdata_product19_intra_v1_1.previous_settlement_price.display = function(value)
  return "Previous Settlement Price: "..value
end

-- Translate: Previous Settlement Price
bmv_bmvmarketdata_product19_intra_v1_1.previous_settlement_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Previous Settlement Price
bmv_bmvmarketdata_product19_intra_v1_1.previous_settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.previous_settlement_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product19_intra_v1_1.previous_settlement_price.translate(raw)
  local display = bmv_bmvmarketdata_product19_intra_v1_1.previous_settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.previous_settlement_price, range, value, display)

  return offset + length, value
end

-- Price
bmv_bmvmarketdata_product19_intra_v1_1.price = {}

-- Size: Price
bmv_bmvmarketdata_product19_intra_v1_1.price.size = 8

-- Display: Price
bmv_bmvmarketdata_product19_intra_v1_1.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
bmv_bmvmarketdata_product19_intra_v1_1.price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price
bmv_bmvmarketdata_product19_intra_v1_1.price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product19_intra_v1_1.price.translate(raw)
  local display = bmv_bmvmarketdata_product19_intra_v1_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.price, range, value, display)

  return offset + length, value
end

-- Price Rate
bmv_bmvmarketdata_product19_intra_v1_1.price_rate = {}

-- Size: Price Rate
bmv_bmvmarketdata_product19_intra_v1_1.price_rate.size = 8

-- Display: Price Rate
bmv_bmvmarketdata_product19_intra_v1_1.price_rate.display = function(value)
  return "Price Rate: "..value
end

-- Translate: Price Rate
bmv_bmvmarketdata_product19_intra_v1_1.price_rate.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price Rate
bmv_bmvmarketdata_product19_intra_v1_1.price_rate.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.price_rate.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product19_intra_v1_1.price_rate.translate(raw)
  local display = bmv_bmvmarketdata_product19_intra_v1_1.price_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.price_rate, range, value, display)

  return offset + length, value
end

-- Purchase Or Sale Levels
bmv_bmvmarketdata_product19_intra_v1_1.purchase_or_sale_levels = {}

-- Size: Purchase Or Sale Levels
bmv_bmvmarketdata_product19_intra_v1_1.purchase_or_sale_levels.size = 1

-- Display: Purchase Or Sale Levels
bmv_bmvmarketdata_product19_intra_v1_1.purchase_or_sale_levels.display = function(value)
  return "Purchase Or Sale Levels: "..value
end

-- Dissect: Purchase Or Sale Levels
bmv_bmvmarketdata_product19_intra_v1_1.purchase_or_sale_levels.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.purchase_or_sale_levels.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product19_intra_v1_1.purchase_or_sale_levels.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.purchase_or_sale_levels, range, value, display)

  return offset + length, value
end

-- Sending Time
bmv_bmvmarketdata_product19_intra_v1_1.sending_time = {}

-- Size: Sending Time
bmv_bmvmarketdata_product19_intra_v1_1.sending_time.size = 8

-- Dissect: Sending Time
bmv_bmvmarketdata_product19_intra_v1_1.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.sending_time.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.sending_time
  if bmv_bmvmarketdata_product19_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.sending_time_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Sequence Number
bmv_bmvmarketdata_product19_intra_v1_1.sequence_number = {}

-- Size: Sequence Number
bmv_bmvmarketdata_product19_intra_v1_1.sequence_number.size = 4

-- Display: Sequence Number
bmv_bmvmarketdata_product19_intra_v1_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
bmv_bmvmarketdata_product19_intra_v1_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.sequence_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product19_intra_v1_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
bmv_bmvmarketdata_product19_intra_v1_1.session = {}

-- Size: Session
bmv_bmvmarketdata_product19_intra_v1_1.session.size = 1

-- Display: Session
bmv_bmvmarketdata_product19_intra_v1_1.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
bmv_bmvmarketdata_product19_intra_v1_1.session.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.session.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product19_intra_v1_1.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.session, range, value, display)

  return offset + length, value
end

-- Side
bmv_bmvmarketdata_product19_intra_v1_1.side = {}

-- Size: Side
bmv_bmvmarketdata_product19_intra_v1_1.side.size = 1

-- Display: Side
bmv_bmvmarketdata_product19_intra_v1_1.side.labels = {
  [0] = "Side: Buy (0)",
  [1] = "Side: Sell (1)",
}

bmv_bmvmarketdata_product19_intra_v1_1.side.display = function(value)
  return bmv_bmvmarketdata_product19_intra_v1_1.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
bmv_bmvmarketdata_product19_intra_v1_1.side.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.side.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product19_intra_v1_1.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.side, range, value, display)

  return offset + length, value
end

-- Total Messages
bmv_bmvmarketdata_product19_intra_v1_1.total_messages = {}

-- Size: Total Messages
bmv_bmvmarketdata_product19_intra_v1_1.total_messages.size = 1

-- Display: Total Messages
bmv_bmvmarketdata_product19_intra_v1_1.total_messages.display = function(value)
  return "Total Messages: "..value
end

-- Dissect: Total Messages
bmv_bmvmarketdata_product19_intra_v1_1.total_messages.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.total_messages.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product19_intra_v1_1.total_messages.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.total_messages, range, value, display)

  return offset + length, value
end

-- Trade Number
bmv_bmvmarketdata_product19_intra_v1_1.trade_number = {}

-- Size: Trade Number
bmv_bmvmarketdata_product19_intra_v1_1.trade_number.size = 4

-- Display: Trade Number
bmv_bmvmarketdata_product19_intra_v1_1.trade_number.display = function(value)
  return "Trade Number: "..value
end

-- Dissect: Trade Number
bmv_bmvmarketdata_product19_intra_v1_1.trade_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.trade_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product19_intra_v1_1.trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.trade_number, range, value, display)

  return offset + length, value
end

-- Trade Time
bmv_bmvmarketdata_product19_intra_v1_1.trade_time = {}

-- Size: Trade Time
bmv_bmvmarketdata_product19_intra_v1_1.trade_time.size = 8

-- Dissect: Trade Time
bmv_bmvmarketdata_product19_intra_v1_1.trade_time.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.trade_time.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.trade_time
  if bmv_bmvmarketdata_product19_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.trade_time_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Volatility
bmv_bmvmarketdata_product19_intra_v1_1.volatility = {}

-- Size: Volatility
bmv_bmvmarketdata_product19_intra_v1_1.volatility.size = 8

-- Display: Volatility
bmv_bmvmarketdata_product19_intra_v1_1.volatility.display = function(value)
  return "Volatility: "..value
end

-- Translate: Volatility
bmv_bmvmarketdata_product19_intra_v1_1.volatility.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Volatility
bmv_bmvmarketdata_product19_intra_v1_1.volatility.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.volatility.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product19_intra_v1_1.volatility.translate(raw)
  local display = bmv_bmvmarketdata_product19_intra_v1_1.volatility.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.volatility, range, value, display)

  return offset + length, value
end

-- Volume
bmv_bmvmarketdata_product19_intra_v1_1.volume = {}

-- Size: Volume
bmv_bmvmarketdata_product19_intra_v1_1.volume.size = 4

-- Display: Volume
bmv_bmvmarketdata_product19_intra_v1_1.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
bmv_bmvmarketdata_product19_intra_v1_1.volume.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product19_intra_v1_1.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.volume, range, value, display)

  return offset + length, value
end

-- Weighted Average Price
bmv_bmvmarketdata_product19_intra_v1_1.weighted_average_price = {}

-- Size: Weighted Average Price
bmv_bmvmarketdata_product19_intra_v1_1.weighted_average_price.size = 8

-- Display: Weighted Average Price
bmv_bmvmarketdata_product19_intra_v1_1.weighted_average_price.display = function(value)
  return "Weighted Average Price: "..value
end

-- Translate: Weighted Average Price
bmv_bmvmarketdata_product19_intra_v1_1.weighted_average_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Weighted Average Price
bmv_bmvmarketdata_product19_intra_v1_1.weighted_average_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product19_intra_v1_1.weighted_average_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product19_intra_v1_1.weighted_average_price.translate(raw)
  local display = bmv_bmvmarketdata_product19_intra_v1_1.weighted_average_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.weighted_average_price, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Bmv BmvMarketData Product19 Intra 1.1
-----------------------------------------------------------------------

-- Statistics Of Instruments Message
bmv_bmvmarketdata_product19_intra_v1_1.statistics_of_instruments_message = {}

-- Size: Statistics Of Instruments Message
bmv_bmvmarketdata_product19_intra_v1_1.statistics_of_instruments_message.size =
  bmv_bmvmarketdata_product19_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.previous_settlement_price.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.opening_price.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.max_price_of_the_day.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.lower_price_of_the_day.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.last_price_of_the_day.size

-- Display: Statistics Of Instruments Message
bmv_bmvmarketdata_product19_intra_v1_1.statistics_of_instruments_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Of Instruments Message
bmv_bmvmarketdata_product19_intra_v1_1.statistics_of_instruments_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product19_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Previous Settlement Price: Price (8)
  index, previous_settlement_price = bmv_bmvmarketdata_product19_intra_v1_1.previous_settlement_price.dissect(buffer, index, packet, parent)

  -- Opening Price: Price (8)
  index, opening_price = bmv_bmvmarketdata_product19_intra_v1_1.opening_price.dissect(buffer, index, packet, parent)

  -- Max Price Of The Day: Price (8)
  index, max_price_of_the_day = bmv_bmvmarketdata_product19_intra_v1_1.max_price_of_the_day.dissect(buffer, index, packet, parent)

  -- Lower Price Of The Day: Price (8)
  index, lower_price_of_the_day = bmv_bmvmarketdata_product19_intra_v1_1.lower_price_of_the_day.dissect(buffer, index, packet, parent)

  -- Last Price Of The Day: Price (8)
  index, last_price_of_the_day = bmv_bmvmarketdata_product19_intra_v1_1.last_price_of_the_day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Of Instruments Message
bmv_bmvmarketdata_product19_intra_v1_1.statistics_of_instruments_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.statistics_of_instruments_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product19_intra_v1_1.statistics_of_instruments_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product19_intra_v1_1.statistics_of_instruments_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product19_intra_v1_1.statistics_of_instruments_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Market Trades Message
bmv_bmvmarketdata_product19_intra_v1_1.derivatives_market_trades_message = {}

-- Size: Derivatives Market Trades Message
bmv_bmvmarketdata_product19_intra_v1_1.derivatives_market_trades_message.size =
  bmv_bmvmarketdata_product19_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.trade_time.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.volume.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.price_rate.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.concertation_type.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.trade_number.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.operation_type.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.amount.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.parent_trade_number.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.leg_type.size

-- Display: Derivatives Market Trades Message
bmv_bmvmarketdata_product19_intra_v1_1.derivatives_market_trades_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Market Trades Message
bmv_bmvmarketdata_product19_intra_v1_1.derivatives_market_trades_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product19_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Trade Time: Timestamp(2)
  index, trade_time = bmv_bmvmarketdata_product19_intra_v1_1.trade_time.dissect(buffer, index, packet, parent)

  -- Volume: Int32
  index, volume = bmv_bmvmarketdata_product19_intra_v1_1.volume.dissect(buffer, index, packet, parent)

  -- Price Rate: Price (8)
  index, price_rate = bmv_bmvmarketdata_product19_intra_v1_1.price_rate.dissect(buffer, index, packet, parent)

  -- Concertation Type: ALPHA
  index, concertation_type = bmv_bmvmarketdata_product19_intra_v1_1.concertation_type.dissect(buffer, index, packet, parent)

  -- Trade Number: Int32
  index, trade_number = bmv_bmvmarketdata_product19_intra_v1_1.trade_number.dissect(buffer, index, packet, parent)

  -- Operation Type: ALPHA
  index, operation_type = bmv_bmvmarketdata_product19_intra_v1_1.operation_type.dissect(buffer, index, packet, parent)

  -- Amount: Price (8)
  index, amount = bmv_bmvmarketdata_product19_intra_v1_1.amount.dissect(buffer, index, packet, parent)

  -- Parent Trade Number: Int32
  index, parent_trade_number = bmv_bmvmarketdata_product19_intra_v1_1.parent_trade_number.dissect(buffer, index, packet, parent)

  -- Leg Type: ALPHA
  index, leg_type = bmv_bmvmarketdata_product19_intra_v1_1.leg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Market Trades Message
bmv_bmvmarketdata_product19_intra_v1_1.derivatives_market_trades_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.derivatives_market_trades_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product19_intra_v1_1.derivatives_market_trades_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product19_intra_v1_1.derivatives_market_trades_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product19_intra_v1_1.derivatives_market_trades_message.fields(buffer, offset, packet, parent)
  end
end

-- Open Interest Message
bmv_bmvmarketdata_product19_intra_v1_1.open_interest_message = {}

-- Size: Open Interest Message
bmv_bmvmarketdata_product19_intra_v1_1.open_interest_message.size =
  bmv_bmvmarketdata_product19_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.open_interest.size

-- Display: Open Interest Message
bmv_bmvmarketdata_product19_intra_v1_1.open_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Interest Message
bmv_bmvmarketdata_product19_intra_v1_1.open_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product19_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Open Interest: Price (4)
  index, open_interest = bmv_bmvmarketdata_product19_intra_v1_1.open_interest.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Interest Message
bmv_bmvmarketdata_product19_intra_v1_1.open_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.open_interest_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product19_intra_v1_1.open_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product19_intra_v1_1.open_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product19_intra_v1_1.open_interest_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Level
bmv_bmvmarketdata_product19_intra_v1_1.price_level = {}

-- Size: Price Level
bmv_bmvmarketdata_product19_intra_v1_1.price_level.size =
  bmv_bmvmarketdata_product19_intra_v1_1.price.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.number_of_orders.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.volume.size

-- Display: Price Level
bmv_bmvmarketdata_product19_intra_v1_1.price_level.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Level
bmv_bmvmarketdata_product19_intra_v1_1.price_level.fields = function(buffer, offset, packet, parent, price_level_index)
  local index = offset

  -- Implicit Price Level Index
  if price_level_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.price_level_index, price_level_index)
    iteration:set_generated()
  end

  -- Price: Price (8)
  index, price = bmv_bmvmarketdata_product19_intra_v1_1.price.dissect(buffer, index, packet, parent)

  -- Number Of Orders: Int16
  index, number_of_orders = bmv_bmvmarketdata_product19_intra_v1_1.number_of_orders.dissect(buffer, index, packet, parent)

  -- Volume: Int32
  index, volume = bmv_bmvmarketdata_product19_intra_v1_1.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Level
bmv_bmvmarketdata_product19_intra_v1_1.price_level.dissect = function(buffer, offset, packet, parent, price_level_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.price_level, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product19_intra_v1_1.price_level.fields(buffer, offset, packet, parent, price_level_index)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product19_intra_v1_1.price_level.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product19_intra_v1_1.price_level.fields(buffer, offset, packet, parent, price_level_index)
  end
end

-- Depth Message
bmv_bmvmarketdata_product19_intra_v1_1.depth_message = {}

-- Calculate size of: Depth Message
bmv_bmvmarketdata_product19_intra_v1_1.depth_message.size = function(buffer, offset)
  local index = 0

  index = index + bmv_bmvmarketdata_product19_intra_v1_1.instrument_number.size

  index = index + bmv_bmvmarketdata_product19_intra_v1_1.side.size

  index = index + bmv_bmvmarketdata_product19_intra_v1_1.purchase_or_sale_levels.size

  -- Calculate field size from count
  local price_level_count = buffer(offset + index - 1, 1):int()
  index = index + price_level_count * 14

  return index
end

-- Display: Depth Message
bmv_bmvmarketdata_product19_intra_v1_1.depth_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Depth Message
bmv_bmvmarketdata_product19_intra_v1_1.depth_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product19_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Side: Int8
  index, side = bmv_bmvmarketdata_product19_intra_v1_1.side.dissect(buffer, index, packet, parent)

  -- Purchase Or Sale Levels: Int8
  index, purchase_or_sale_levels = bmv_bmvmarketdata_product19_intra_v1_1.purchase_or_sale_levels.dissect(buffer, index, packet, parent)

  -- Repeating: Price Level
  for price_level_index = 1, purchase_or_sale_levels do
    index, price_level = bmv_bmvmarketdata_product19_intra_v1_1.price_level.dissect(buffer, index, packet, parent, price_level_index)
  end

  return index
end

-- Dissect: Depth Message
bmv_bmvmarketdata_product19_intra_v1_1.depth_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.depth_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product19_intra_v1_1.depth_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product19_intra_v1_1.depth_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product19_intra_v1_1.depth_message.fields(buffer, offset, packet, parent)
  end
end

-- Weighted Average Price Settlement Prices Message
bmv_bmvmarketdata_product19_intra_v1_1.weighted_average_price_settlement_prices_message = {}

-- Size: Weighted Average Price Settlement Prices Message
bmv_bmvmarketdata_product19_intra_v1_1.weighted_average_price_settlement_prices_message.size =
  bmv_bmvmarketdata_product19_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.weighted_average_price.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.volatility.size

-- Display: Weighted Average Price Settlement Prices Message
bmv_bmvmarketdata_product19_intra_v1_1.weighted_average_price_settlement_prices_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Weighted Average Price Settlement Prices Message
bmv_bmvmarketdata_product19_intra_v1_1.weighted_average_price_settlement_prices_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product19_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Weighted Average Price: Price (8)
  index, weighted_average_price = bmv_bmvmarketdata_product19_intra_v1_1.weighted_average_price.dissect(buffer, index, packet, parent)

  -- Volatility: Price (8)
  index, volatility = bmv_bmvmarketdata_product19_intra_v1_1.volatility.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Weighted Average Price Settlement Prices Message
bmv_bmvmarketdata_product19_intra_v1_1.weighted_average_price_settlement_prices_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.weighted_average_price_settlement_prices_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product19_intra_v1_1.weighted_average_price_settlement_prices_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product19_intra_v1_1.weighted_average_price_settlement_prices_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product19_intra_v1_1.weighted_average_price_settlement_prices_message.fields(buffer, offset, packet, parent)
  end
end

-- Status Changes Message
bmv_bmvmarketdata_product19_intra_v1_1.status_changes_message = {}

-- Size: Status Changes Message
bmv_bmvmarketdata_product19_intra_v1_1.status_changes_message.size =
  bmv_bmvmarketdata_product19_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.instrument_status.size

-- Display: Status Changes Message
bmv_bmvmarketdata_product19_intra_v1_1.status_changes_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Status Changes Message
bmv_bmvmarketdata_product19_intra_v1_1.status_changes_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product19_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Instrument Status: ALPHA
  index, instrument_status = bmv_bmvmarketdata_product19_intra_v1_1.instrument_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Status Changes Message
bmv_bmvmarketdata_product19_intra_v1_1.status_changes_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.status_changes_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product19_intra_v1_1.status_changes_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product19_intra_v1_1.status_changes_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product19_intra_v1_1.status_changes_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancellation Message
bmv_bmvmarketdata_product19_intra_v1_1.trade_cancellation_message = {}

-- Size: Trade Cancellation Message
bmv_bmvmarketdata_product19_intra_v1_1.trade_cancellation_message.size =
  bmv_bmvmarketdata_product19_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.trade_number.size

-- Display: Trade Cancellation Message
bmv_bmvmarketdata_product19_intra_v1_1.trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancellation Message
bmv_bmvmarketdata_product19_intra_v1_1.trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product19_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Trade Number: Int32
  index, trade_number = bmv_bmvmarketdata_product19_intra_v1_1.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancellation Message
bmv_bmvmarketdata_product19_intra_v1_1.trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.trade_cancellation_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product19_intra_v1_1.trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product19_intra_v1_1.trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product19_intra_v1_1.trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Events System Message
bmv_bmvmarketdata_product19_intra_v1_1.events_system_message = {}

-- Size: Events System Message
bmv_bmvmarketdata_product19_intra_v1_1.events_system_message.size =
  bmv_bmvmarketdata_product19_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.event_code.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.market.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.sending_time.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.ending_time.size

-- Display: Events System Message
bmv_bmvmarketdata_product19_intra_v1_1.events_system_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Events System Message
bmv_bmvmarketdata_product19_intra_v1_1.events_system_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product19_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Event Code: ALPHA
  index, event_code = bmv_bmvmarketdata_product19_intra_v1_1.event_code.dissect(buffer, index, packet, parent)

  -- Market: ALPHA
  index, market = bmv_bmvmarketdata_product19_intra_v1_1.market.dissect(buffer, index, packet, parent)

  -- Sending Time: Timestamp(2)
  index, sending_time = bmv_bmvmarketdata_product19_intra_v1_1.sending_time.dissect(buffer, index, packet, parent)

  -- Ending Time: Timestamp(2)
  index, ending_time = bmv_bmvmarketdata_product19_intra_v1_1.ending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Events System Message
bmv_bmvmarketdata_product19_intra_v1_1.events_system_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.events_system_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product19_intra_v1_1.events_system_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product19_intra_v1_1.events_system_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product19_intra_v1_1.events_system_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
bmv_bmvmarketdata_product19_intra_v1_1.payload = {}

-- Dissect: Payload
bmv_bmvmarketdata_product19_intra_v1_1.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Events System Message
  if message_type == 0x53 then
    return bmv_bmvmarketdata_product19_intra_v1_1.events_system_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancellation Message
  if message_type == 0x48 then
    return bmv_bmvmarketdata_product19_intra_v1_1.trade_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Status Changes Message
  if message_type == 0x34 then
    return bmv_bmvmarketdata_product19_intra_v1_1.status_changes_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Weighted Average Price Settlement Prices Message
  if message_type == 0x4D then
    return bmv_bmvmarketdata_product19_intra_v1_1.weighted_average_price_settlement_prices_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Depth Message
  if message_type == 0x31 then
    return bmv_bmvmarketdata_product19_intra_v1_1.depth_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open Interest Message
  if message_type == 0x49 then
    return bmv_bmvmarketdata_product19_intra_v1_1.open_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Trades Message
  if message_type == 0x51 then
    return bmv_bmvmarketdata_product19_intra_v1_1.derivatives_market_trades_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Of Instruments Message
  if message_type == 0x52 then
    return bmv_bmvmarketdata_product19_intra_v1_1.statistics_of_instruments_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
bmv_bmvmarketdata_product19_intra_v1_1.message_header = {}

-- Size: Message Header
bmv_bmvmarketdata_product19_intra_v1_1.message_header.size =
  bmv_bmvmarketdata_product19_intra_v1_1.message_length.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.message_type.size

-- Display: Message Header
bmv_bmvmarketdata_product19_intra_v1_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
bmv_bmvmarketdata_product19_intra_v1_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: Int16
  index, message_length = bmv_bmvmarketdata_product19_intra_v1_1.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: ALPHA
  index, message_type = bmv_bmvmarketdata_product19_intra_v1_1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
bmv_bmvmarketdata_product19_intra_v1_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.message_header, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product19_intra_v1_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product19_intra_v1_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product19_intra_v1_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message Block
bmv_bmvmarketdata_product19_intra_v1_1.message_block = {}

-- Display: Message Block
bmv_bmvmarketdata_product19_intra_v1_1.message_block.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Block
bmv_bmvmarketdata_product19_intra_v1_1.message_block.fields = function(buffer, offset, packet, parent, size_of_message_block, message_block_index)
  local index = offset

  -- Implicit Message Block Index
  if message_block_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.message_block_index, message_block_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = bmv_bmvmarketdata_product19_intra_v1_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 8 branches
  index = bmv_bmvmarketdata_product19_intra_v1_1.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message Block
bmv_bmvmarketdata_product19_intra_v1_1.message_block.dissect = function(buffer, offset, packet, parent, size_of_message_block, message_block_index)
  local index = offset + size_of_message_block

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.message_block, buffer(offset, 0))
    local current = bmv_bmvmarketdata_product19_intra_v1_1.message_block.fields(buffer, offset, packet, parent, size_of_message_block, message_block_index)
    parent:set_len(size_of_message_block)
    local display = bmv_bmvmarketdata_product19_intra_v1_1.message_block.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bmv_bmvmarketdata_product19_intra_v1_1.message_block.fields(buffer, offset, packet, parent, size_of_message_block, message_block_index)

    return index
  end
end

-- INTRA Multicast Header
bmv_bmvmarketdata_product19_intra_v1_1.intra_multicast_header = {}

-- Size: INTRA Multicast Header
bmv_bmvmarketdata_product19_intra_v1_1.intra_multicast_header.size =
  bmv_bmvmarketdata_product19_intra_v1_1.length.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.total_messages.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.market_data_group.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.session.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.sequence_number.size + 
  bmv_bmvmarketdata_product19_intra_v1_1.datetime.size

-- Display: INTRA Multicast Header
bmv_bmvmarketdata_product19_intra_v1_1.intra_multicast_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: INTRA Multicast Header
bmv_bmvmarketdata_product19_intra_v1_1.intra_multicast_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: Int16
  index, length = bmv_bmvmarketdata_product19_intra_v1_1.length.dissect(buffer, index, packet, parent)

  -- Total Messages: Int8
  index, total_messages = bmv_bmvmarketdata_product19_intra_v1_1.total_messages.dissect(buffer, index, packet, parent)

  -- Market Data Group: Int8
  index, market_data_group = bmv_bmvmarketdata_product19_intra_v1_1.market_data_group.dissect(buffer, index, packet, parent)

  -- Session: Int8
  index, session = bmv_bmvmarketdata_product19_intra_v1_1.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: Int32
  index, sequence_number = bmv_bmvmarketdata_product19_intra_v1_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Datetime: Timestamp(3)
  index, datetime = bmv_bmvmarketdata_product19_intra_v1_1.datetime.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: INTRA Multicast Header
bmv_bmvmarketdata_product19_intra_v1_1.intra_multicast_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1.fields.intra_multicast_header, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product19_intra_v1_1.intra_multicast_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product19_intra_v1_1.intra_multicast_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product19_intra_v1_1.intra_multicast_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
bmv_bmvmarketdata_product19_intra_v1_1.packet = {}

-- Verify required size of Udp packet
bmv_bmvmarketdata_product19_intra_v1_1.packet.requiredsize = function(buffer)
  return buffer:len() >= bmv_bmvmarketdata_product19_intra_v1_1.intra_multicast_header.size
end

-- Dissect Packet
bmv_bmvmarketdata_product19_intra_v1_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- INTRA Multicast Header: Struct of 6 fields
  index, intra_multicast_header = bmv_bmvmarketdata_product19_intra_v1_1.intra_multicast_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message Block
  local end_of_payload = buffer:len()

  -- Message Block: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):int()

    -- Runtime Size Of: Message Block
    local size_of_message_block = message_length + 2

    -- Message Block: Struct of 2 fields
    index, message_block = bmv_bmvmarketdata_product19_intra_v1_1.message_block.dissect(buffer, index, packet, parent, size_of_message_block, message_block_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_bmv_bmvmarketdata_product19_intra_v1_1.init()
end

-- Dissector for Bmv BmvMarketData Product19 Intra 1.1
function omi_bmv_bmvmarketdata_product19_intra_v1_1.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_bmv_bmvmarketdata_product19_intra_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_bmv_bmvmarketdata_product19_intra_v1_1, buffer(), omi_bmv_bmvmarketdata_product19_intra_v1_1.description, "("..buffer:len().." Bytes)")
  return bmv_bmvmarketdata_product19_intra_v1_1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
bmv_bmvmarketdata_product19_intra_v1_1.packet.fingerprint = function(buffer)
  if buffer:len() < 20 then
    return false
  end

  local message_type = buffer(19, 1):uint()

  -- Events System Message
  if message_type == 0x53 then
    return true
  end

  -- Trade Cancellation Message
  if message_type == 0x48 then
    return true
  end

  -- Status Changes Message
  if message_type == 0x34 then
    return true
  end

  -- Weighted Average Price Settlement Prices Message
  if message_type == 0x4D then
    return true
  end

  -- Depth Message
  if message_type == 0x31 then
    return true
  end

  -- Open Interest Message
  if message_type == 0x49 then
    return true
  end

  -- Derivatives Market Trades Message
  if message_type == 0x51 then
    return true
  end

  -- Statistics Of Instruments Message
  if message_type == 0x52 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Bmv BmvMarketData Product19 Intra 1.1 (Udp)
local function omi_bmv_bmvmarketdata_product19_intra_v1_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not bmv_bmvmarketdata_product19_intra_v1_1.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not bmv_bmvmarketdata_product19_intra_v1_1.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_bmv_bmvmarketdata_product19_intra_v1_1
  omi_bmv_bmvmarketdata_product19_intra_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Bmv BmvMarketData Product19 Intra 1.1
omi_bmv_bmvmarketdata_product19_intra_v1_1:register_heuristic("udp", omi_bmv_bmvmarketdata_product19_intra_v1_1_udp_heuristic)

-- Register Bmv BmvMarketData Product19 Intra 1.1 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_bmv_bmvmarketdata_product19_intra_v1_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Bolsa Mexicana de Valores
--   Version: 1.1
--   Specification: Market Data Multicast_P19_1_ENG.pdf
--   Specification: Connection_Appendix_6.pdf
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
