-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Pse PseEquities BasicWithLastSale Itch 2.3 Protocol
local omi_pse_pseequities_basicwithlastsale_itch_v2_3 = Proto("Omi.Pse.PseEquities.BasicWithLastSale.Itch.v2.3", "Pse PseEquities BasicWithLastSale Itch 2.3")

-- Protocol table
local pse_pseequities_basicwithlastsale_itch_v2_3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Pse PseEquities BasicWithLastSale Itch 2.3 Fields
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.best_bid_price = ProtoField.new("Best Bid Price", "pse.pseequities.basicwithlastsale.itch.v2.3.bestbidprice", ftypes.UINT32, nil, nil, nil, "Best Bid price for the orderbook, or reference price update.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.best_bid_size = ProtoField.new("Best Bid Size", "pse.pseequities.basicwithlastsale.itch.v2.3.bestbidsize", ftypes.UINT64, nil, nil, nil, "Aggregated number of visible shares at the best bid price.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.best_offer_price = ProtoField.new("Best Offer Price", "pse.pseequities.basicwithlastsale.itch.v2.3.bestofferprice", ftypes.UINT32, nil, nil, nil, "Best Offer price for the orderbook.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.best_offer_size = ProtoField.new("Best Offer Size", "pse.pseequities.basicwithlastsale.itch.v2.3.bestoffersize", ftypes.UINT64, nil, nil, nil, "Aggregated number of visible shares at the best offer price.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.buy_broker_id = ProtoField.new("Buy Broker Id", "pse.pseequities.basicwithlastsale.itch.v2.3.buybrokerid", ftypes.STRING, nil, nil, nil, "Broker identifier of the buy side of the trade.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.cb_limit_decimals = ProtoField.new("Cb Limit Decimals", "pse.pseequities.basicwithlastsale.itch.v2.3.cblimitdecimals", ftypes.UINT32, nil, nil, nil, "Decimals to apply to the CB Limit Up % and CB Limit Down % values.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.cb_limit_down = ProtoField.new("Cb Limit Down", "pse.pseequities.basicwithlastsale.itch.v2.3.cblimitdown", ftypes.UINT32, nil, nil, nil, "Circuit breaker maximum movement allowed down as a percentage from the Last Traded Price (dynamic limit).")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.cb_limit_up = ProtoField.new("Cb Limit Up", "pse.pseequities.basicwithlastsale.itch.v2.3.cblimitup", ftypes.UINT32, nil, nil, nil, "Circuit breaker maximum movement allowed up as a percentage from the Last Traded Price (dynamic limit).")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.currency = ProtoField.new("Currency", "pse.pseequities.basicwithlastsale.itch.v2.3.currency", ftypes.STRING, nil, nil, nil, "Trading currency.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.delisting_date = ProtoField.new("Delisting Date", "pse.pseequities.basicwithlastsale.itch.v2.3.delistingdate", ftypes.UINT32, nil, nil, nil, "YYYYMMDD.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.delisting_time = ProtoField.new("Delisting Time", "pse.pseequities.basicwithlastsale.itch.v2.3.delistingtime", ftypes.UINT32, nil, nil, nil, "HHMMSS.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.event_code = ProtoField.new("Event Code", "pse.pseequities.basicwithlastsale.itch.v2.3.eventcode", ftypes.STRING, nil, nil, nil, "Event Code.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.executed_quantity = ProtoField.new("Executed Quantity", "pse.pseequities.basicwithlastsale.itch.v2.3.executedquantity", ftypes.UINT64, nil, nil, nil, "The number of shares executed.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.execution_price = ProtoField.new("Execution Price", "pse.pseequities.basicwithlastsale.itch.v2.3.executionprice", ftypes.UINT32, nil, nil, nil, "The price at which the execution occurred.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.group = ProtoField.new("Group", "pse.pseequities.basicwithlastsale.itch.v2.3.group", ftypes.STRING, nil, nil, nil, "Id for symbol grouping (Board level only).")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.high_collar = ProtoField.new("High Collar", "pse.pseequities.basicwithlastsale.itch.v2.3.highcollar", ftypes.UINT32, nil, nil, nil, "Maximum allowed price via static limit.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.instrument_type = ProtoField.new("Instrument Type", "pse.pseequities.basicwithlastsale.itch.v2.3.instrumenttype", ftypes.STRING, nil, nil, nil, "Instrument Type.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.isin = ProtoField.new("Isin", "pse.pseequities.basicwithlastsale.itch.v2.3.isin", ftypes.STRING, nil, nil, nil, "ISIN code.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.lot_size = ProtoField.new("Lot Size", "pse.pseequities.basicwithlastsale.itch.v2.3.lotsize", ftypes.UINT64, nil, nil, nil, "Lot size for the orderbook.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.low_collar = ProtoField.new("Low Collar", "pse.pseequities.basicwithlastsale.itch.v2.3.lowcollar", ftypes.UINT32, nil, nil, nil, "Minimum allowed price via static limit.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.match_number = ProtoField.new("Match Number", "pse.pseequities.basicwithlastsale.itch.v2.3.matchnumber", ftypes.UINT64, nil, nil, nil, "The day unique match identifier.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.message_count = ProtoField.new("Message Count", "pse.pseequities.basicwithlastsale.itch.v2.3.messagecount", ftypes.UINT16, nil, nil, nil, "Number of messages to follow this header")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.message_length = ProtoField.new("Message Length", "pse.pseequities.basicwithlastsale.itch.v2.3.messagelength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.message_type = ProtoField.new("Message Type", "pse.pseequities.basicwithlastsale.itch.v2.3.messagetype", ftypes.STRING, nil, nil, nil, "Code identifying this message type")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.orderbook = ProtoField.new("Orderbook", "pse.pseequities.basicwithlastsale.itch.v2.3.orderbook", ftypes.UINT32, nil, nil, nil, "Used to identify if the event applies to a single orderbook within the Group.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.price_decimals = ProtoField.new("Price Decimals", "pse.pseequities.basicwithlastsale.itch.v2.3.pricedecimals", ftypes.UINT32, nil, nil, nil, "Decimals for price fields across all messages for this orderbook.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.price_start = ProtoField.new("Price Start", "pse.pseequities.basicwithlastsale.itch.v2.3.pricestart", ftypes.UINT32, nil, nil, nil, "Start of Price for this Tick Size.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.price_tick_size_table_id = ProtoField.new("Price Tick Size Table Id", "pse.pseequities.basicwithlastsale.itch.v2.3.priceticksizetableid", ftypes.UINT32, nil, nil, nil, "Price Tick Size Table Id.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.price_type = ProtoField.new("Price Type", "pse.pseequities.basicwithlastsale.itch.v2.3.pricetype", ftypes.STRING, nil, nil, nil, "Indicates 'per unit' price type or price as percentage.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.printable = ProtoField.new("Printable", "pse.pseequities.basicwithlastsale.itch.v2.3.printable", ftypes.STRING, nil, nil, nil, "Indicates if the execution should be reflected in volume calculations.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.product_code = ProtoField.new("Product Code", "pse.pseequities.basicwithlastsale.itch.v2.3.productcode", ftypes.STRING, nil, nil, nil, "The product code for the orderbook.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.quantity_start = ProtoField.new("Quantity Start", "pse.pseequities.basicwithlastsale.itch.v2.3.quantitystart", ftypes.UINT64, nil, nil, nil, "Start of Quantity for this Tick Size.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.quantity_tick_size_table_id = ProtoField.new("Quantity Tick Size Table Id", "pse.pseequities.basicwithlastsale.itch.v2.3.quantityticksizetableid", ftypes.UINT32, nil, nil, nil, "Quantity Tick Size Table.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.reason = ProtoField.new("Reason", "pse.pseequities.basicwithlastsale.itch.v2.3.reason", ftypes.STRING, nil, nil, nil, "Refer to reason in table below.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.scheduled_time = ProtoField.new("Scheduled Time", "pse.pseequities.basicwithlastsale.itch.v2.3.scheduledtime", ftypes.UINT32, nil, nil, nil, "Number of seconds past midnight that the event is scheduled.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.sec_code = ProtoField.new("Sec Code", "pse.pseequities.basicwithlastsale.itch.v2.3.seccode", ftypes.STRING, nil, nil, nil, "Security code.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.second = ProtoField.new("Second", "pse.pseequities.basicwithlastsale.itch.v2.3.second", ftypes.UINT32, nil, nil, nil, "Number of seconds since midnight.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.sell_broker_id = ProtoField.new("Sell Broker Id", "pse.pseequities.basicwithlastsale.itch.v2.3.sellbrokerid", ftypes.STRING, nil, nil, nil, "Broker identifier of the sell side of the trade.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.sequence_number = ProtoField.new("Sequence Number", "pse.pseequities.basicwithlastsale.itch.v2.3.sequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the first message to follow this header")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.session = ProtoField.new("Session", "pse.pseequities.basicwithlastsale.itch.v2.3.session", ftypes.STRING, nil, nil, nil, "Identity of the multicast session")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.shares = ProtoField.new("Shares", "pse.pseequities.basicwithlastsale.itch.v2.3.shares", ftypes.UINT64, nil, nil, nil, "The number of shares outstanding.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.short_sell_eligible = ProtoField.new("Short Sell Eligible", "pse.pseequities.basicwithlastsale.itch.v2.3.shortselleligible", ftypes.STRING, nil, nil, nil, "Short Sell Eligible.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.tick_size_integer_4 = ProtoField.new("Tick Size Integer 4", "pse.pseequities.basicwithlastsale.itch.v2.3.ticksizeinteger4", ftypes.UINT32, nil, nil, nil, "Price Tick Size.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.tick_size_integer_8 = ProtoField.new("Tick Size Integer 8", "pse.pseequities.basicwithlastsale.itch.v2.3.ticksizeinteger8", ftypes.UINT64, nil, nil, nil, "Quantity Tick Size.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.tick_size_table_id = ProtoField.new("Tick Size Table Id", "pse.pseequities.basicwithlastsale.itch.v2.3.ticksizetableid", ftypes.UINT32, nil, nil, nil, "Indicates the Tick Size Table id.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.timestamp = ProtoField.new("Timestamp", "pse.pseequities.basicwithlastsale.itch.v2.3.timestamp", ftypes.UINT32, nil, nil, nil, "Nanoseconds since last Time Stamp seconds message.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.trade_indicator = ProtoField.new("Trade Indicator", "pse.pseequities.basicwithlastsale.itch.v2.3.tradeindicator", ftypes.STRING, nil, nil, nil, "Indicates the type of trade.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.trading_state = ProtoField.new("Trading State", "pse.pseequities.basicwithlastsale.itch.v2.3.tradingstate", ftypes.STRING, nil, nil, nil, "Current trading state for orderbook.")

-- Pse PseEquities BasicWithLastSale Itch 2.3 Framing
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.message = ProtoField.new("Message", "pse.pseequities.basicwithlastsale.itch.v2.3.message", ftypes.STRING, nil, nil, nil, "Mold Udp64 Message")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.message_header = ProtoField.new("Message Header", "pse.pseequities.basicwithlastsale.itch.v2.3.messageheader", ftypes.STRING, nil, nil, nil, "Mold Udp 64 Message Header")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.packet = ProtoField.new("Packet", "pse.pseequities.basicwithlastsale.itch.v2.3.packet", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.packet_header = ProtoField.new("Packet Header", "pse.pseequities.basicwithlastsale.itch.v2.3.packetheader", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet Header")

-- Pse PseEquities BasicWithLastSale 2.3 Application Messages
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.bbo_quotation_message = ProtoField.new("Bbo Quotation Message", "pse.pseequities.basicwithlastsale.itch.v2.3.bboquotationmessage", ftypes.STRING, nil, nil, nil, "BBO Quotation Message.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.orderbook_directory_message = ProtoField.new("Orderbook Directory Message", "pse.pseequities.basicwithlastsale.itch.v2.3.orderbookdirectorymessage", ftypes.STRING, nil, nil, nil, "Orderbook Directory Message.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.orderbook_restrictions_message = ProtoField.new("Orderbook Restrictions Message", "pse.pseequities.basicwithlastsale.itch.v2.3.orderbookrestrictionsmessage", ftypes.STRING, nil, nil, nil, "Orderbook Restrictions Message.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.orderbook_trading_action_message = ProtoField.new("Orderbook Trading Action Message", "pse.pseequities.basicwithlastsale.itch.v2.3.orderbooktradingactionmessage", ftypes.STRING, nil, nil, nil, "Stock Trading Action Message.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.price_tick_size_message = ProtoField.new("Price Tick Size Message", "pse.pseequities.basicwithlastsale.itch.v2.3.priceticksizemessage", ftypes.STRING, nil, nil, nil, "Tick Size Table.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.quantity_tick_size_message = ProtoField.new("Quantity Tick Size Message", "pse.pseequities.basicwithlastsale.itch.v2.3.quantityticksizemessage", ftypes.STRING, nil, nil, nil, "Tick Size Table.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.system_event_message = ProtoField.new("System Event Message", "pse.pseequities.basicwithlastsale.itch.v2.3.systemeventmessage", ftypes.STRING, nil, nil, nil, "System Event Message.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.time_stamp_seconds_message = ProtoField.new("Time Stamp Seconds Message", "pse.pseequities.basicwithlastsale.itch.v2.3.timestampsecondsmessage", ftypes.STRING, nil, nil, nil, "Time Stamp - Seconds Message.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.trade_message = ProtoField.new("Trade Message", "pse.pseequities.basicwithlastsale.itch.v2.3.trademessage", ftypes.STRING, nil, nil, nil, "Trade Message.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.trade_with_broker_id_message = ProtoField.new("Trade With Broker Id Message", "pse.pseequities.basicwithlastsale.itch.v2.3.tradewithbrokeridmessage", ftypes.STRING, nil, nil, nil, "Trade (with Broker ID) Message.")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.trading_schedule_message = ProtoField.new("Trading Schedule Message", "pse.pseequities.basicwithlastsale.itch.v2.3.tradingschedulemessage", ftypes.STRING, nil, nil, nil, "Trading Schedule Message.")

-- Pse PseEquities BasicWithLastSale 2.3 Session Messages
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.end_of_session = ProtoField.new("End Of Session", "pse.pseequities.basicwithlastsale.itch.v2.3.endofsession", ftypes.BYTES, nil, nil, nil, "Mold Udp64 end of session")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.heartbeat = ProtoField.new("Heartbeat", "pse.pseequities.basicwithlastsale.itch.v2.3.heartbeat", ftypes.BYTES, nil, nil, nil, "Mold Udp64 heartbeat")

-- Pse PseEquities BasicWithLastSale Itch 2.3 Generated Fields
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.message_index = ProtoField.new("Message Index", "pse.pseequities.basicwithlastsale.itch.v2.3.messageindex", ftypes.UINT16)
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "pse.pseequities.basicwithlastsale.itch.v2.3.messagesequencenumber", ftypes.UINT64)
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.scaled_best_bid_price = ProtoField.new("Scaled Best Bid Price", "pse.pseequities.basicwithlastsale.itch.v2.3.scaledbestbidprice", ftypes.DOUBLE)
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.scaled_best_offer_price = ProtoField.new("Scaled Best Offer Price", "pse.pseequities.basicwithlastsale.itch.v2.3.scaledbestofferprice", ftypes.DOUBLE)
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.scaled_cb_limit_down = ProtoField.new("Scaled CB Limit Down", "pse.pseequities.basicwithlastsale.itch.v2.3.scaledcblimitdown", ftypes.DOUBLE)
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.scaled_cb_limit_up = ProtoField.new("Scaled CB Limit Up", "pse.pseequities.basicwithlastsale.itch.v2.3.scaledcblimitup", ftypes.DOUBLE)
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.scaled_execution_price = ProtoField.new("Scaled Execution Price", "pse.pseequities.basicwithlastsale.itch.v2.3.scaledexecutionprice", ftypes.DOUBLE)
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.scaled_high_collar = ProtoField.new("Scaled High Collar", "pse.pseequities.basicwithlastsale.itch.v2.3.scaledhighcollar", ftypes.DOUBLE)
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.scaled_low_collar = ProtoField.new("Scaled Low Collar", "pse.pseequities.basicwithlastsale.itch.v2.3.scaledlowcollar", ftypes.DOUBLE)
omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.event_time = ProtoField.new("Event Time", "pse.pseequities.basicwithlastsale.itch.v2.3.eventtime", ftypes.UINT64)

-----------------------------------------------------------------------
-- Pse PseEquities BasicWithLastSale Itch 2.3 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime Local", 2 },
  { 4, "Full DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=Full DateTime Local, 3=Full DateTime Utc
pse_pseequities_basicwithlastsale_itch_v2_3.timestamp_format = 2

-- Scaled High Collar format (true = decimal-scaled, false = raw mantissa)
pse_pseequities_basicwithlastsale_itch_v2_3.format_decimals = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Pse PseEquities BasicWithLastSale Itch 2.3 Element Dissection Options
show.records = true
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Pse PseEquities BasicWithLastSale Itch 2.3 Show Options
omi_pse_pseequities_basicwithlastsale_itch_v2_3.prefs.resolve_records = Pref.bool("Orderbook Directory Message", show.records, "Cache records and resolve cross-packet lookups")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")
omi_pse_pseequities_basicwithlastsale_itch_v2_3.prefs.format_decimals = Pref.bool("Format Decimals", true, "Format decimal-scaled fields as scaled values (off = raw mantissa)")

omi_pse_pseequities_basicwithlastsale_itch_v2_3.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_pse_pseequities_basicwithlastsale_itch_v2_3.prefs_changed()

  -- Check if preferences have changed
  if show.records ~= omi_pse_pseequities_basicwithlastsale_itch_v2_3.prefs.resolve_records then
    show.records = omi_pse_pseequities_basicwithlastsale_itch_v2_3.prefs.resolve_records
  end
  if show.application_messages ~= omi_pse_pseequities_basicwithlastsale_itch_v2_3.prefs.show_application_messages then
    show.application_messages = omi_pse_pseequities_basicwithlastsale_itch_v2_3.prefs.show_application_messages
  end
  if show.headers ~= omi_pse_pseequities_basicwithlastsale_itch_v2_3.prefs.show_headers then
    show.headers = omi_pse_pseequities_basicwithlastsale_itch_v2_3.prefs.show_headers
  end
  if show.structs ~= omi_pse_pseequities_basicwithlastsale_itch_v2_3.prefs.show_structs then
    show.structs = omi_pse_pseequities_basicwithlastsale_itch_v2_3.prefs.show_structs
  end
  if show.indexes ~= omi_pse_pseequities_basicwithlastsale_itch_v2_3.prefs.show_indexes then
    show.indexes = omi_pse_pseequities_basicwithlastsale_itch_v2_3.prefs.show_indexes
  end
  if show.sequences ~= omi_pse_pseequities_basicwithlastsale_itch_v2_3.prefs.show_sequences then
    show.sequences = omi_pse_pseequities_basicwithlastsale_itch_v2_3.prefs.show_sequences
  end
  if pse_pseequities_basicwithlastsale_itch_v2_3.format_decimals ~= omi_pse_pseequities_basicwithlastsale_itch_v2_3.prefs.format_decimals then
    pse_pseequities_basicwithlastsale_itch_v2_3.format_decimals = omi_pse_pseequities_basicwithlastsale_itch_v2_3.prefs.format_decimals
  end
  if pse_pseequities_basicwithlastsale_itch_v2_3.timestamp_format ~= omi_pse_pseequities_basicwithlastsale_itch_v2_3.prefs.timestamp_format then
    pse_pseequities_basicwithlastsale_itch_v2_3.timestamp_format = omi_pse_pseequities_basicwithlastsale_itch_v2_3.prefs.timestamp_format
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
pse_pseequities_basicwithlastsale_itch_v2_3.conversation = {}
pse_pseequities_basicwithlastsale_itch_v2_3.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
pse_pseequities_basicwithlastsale_itch_v2_3.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
pse_pseequities_basicwithlastsale_itch_v2_3.conversation.data = function(packet)
  local key = pse_pseequities_basicwithlastsale_itch_v2_3.conversation.key(packet)
  local data = pse_pseequities_basicwithlastsale_itch_v2_3.conversation.flows[key]
  if data == nil then
    data = { second = { last = nil, frames = {} }, orderbook_directory_message = {} }
    pse_pseequities_basicwithlastsale_itch_v2_3.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
pse_pseequities_basicwithlastsale_itch_v2_3.conversation.current = nil


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
-- Pse PseEquities BasicWithLastSale Itch 2.3 Fields
-----------------------------------------------------------------------

-- Best Bid Price
pse_pseequities_basicwithlastsale_itch_v2_3.best_bid_price = {}

-- Size: Best Bid Price
pse_pseequities_basicwithlastsale_itch_v2_3.best_bid_price.size = 4

-- Display: Best Bid Price
pse_pseequities_basicwithlastsale_itch_v2_3.best_bid_price.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Best Bid Price: No Value"
  end

  return "Best Bid Price: "..value
end

-- Dissect: Best Bid Price
pse_pseequities_basicwithlastsale_itch_v2_3.best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.best_bid_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.best_bid_price, range, value, display)

  return offset + length, value
end

-- Best Bid Size
pse_pseequities_basicwithlastsale_itch_v2_3.best_bid_size = {}

-- Size: Best Bid Size
pse_pseequities_basicwithlastsale_itch_v2_3.best_bid_size.size = 8

-- Display: Best Bid Size
pse_pseequities_basicwithlastsale_itch_v2_3.best_bid_size.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Best Bid Size: No Value"
  end

  return "Best Bid Size: "..value
end

-- Dissect: Best Bid Size
pse_pseequities_basicwithlastsale_itch_v2_3.best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.best_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.best_bid_size, range, value, display)

  return offset + length, value
end

-- Best Offer Price
pse_pseequities_basicwithlastsale_itch_v2_3.best_offer_price = {}

-- Size: Best Offer Price
pse_pseequities_basicwithlastsale_itch_v2_3.best_offer_price.size = 4

-- Display: Best Offer Price
pse_pseequities_basicwithlastsale_itch_v2_3.best_offer_price.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Best Offer Price: No Value"
  end

  return "Best Offer Price: "..value
end

-- Dissect: Best Offer Price
pse_pseequities_basicwithlastsale_itch_v2_3.best_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.best_offer_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.best_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.best_offer_price, range, value, display)

  return offset + length, value
end

-- Best Offer Size
pse_pseequities_basicwithlastsale_itch_v2_3.best_offer_size = {}

-- Size: Best Offer Size
pse_pseequities_basicwithlastsale_itch_v2_3.best_offer_size.size = 8

-- Display: Best Offer Size
pse_pseequities_basicwithlastsale_itch_v2_3.best_offer_size.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Best Offer Size: No Value"
  end

  return "Best Offer Size: "..value
end

-- Dissect: Best Offer Size
pse_pseequities_basicwithlastsale_itch_v2_3.best_offer_size.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.best_offer_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.best_offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.best_offer_size, range, value, display)

  return offset + length, value
end

-- Buy Broker Id
pse_pseequities_basicwithlastsale_itch_v2_3.buy_broker_id = {}

-- Size: Buy Broker Id
pse_pseequities_basicwithlastsale_itch_v2_3.buy_broker_id.size = 4

-- Display: Buy Broker Id
pse_pseequities_basicwithlastsale_itch_v2_3.buy_broker_id.display = function(value)
  return "Buy Broker Id: "..value
end

-- Dissect: Buy Broker Id
pse_pseequities_basicwithlastsale_itch_v2_3.buy_broker_id.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.buy_broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.buy_broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.buy_broker_id, range, value, display)

  return offset + length, value
end

-- Cb Limit Decimals
pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_decimals = {}

-- Size: Cb Limit Decimals
pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_decimals.size = 4

-- Display: Cb Limit Decimals
pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_decimals.labels = {
  [0] = "Cb Limit Decimals: Zero Decimals (0)",
  [1] = "Cb Limit Decimals: One Decimals (1)",
  [2] = "Cb Limit Decimals: Two Decimals (2)",
  [3] = "Cb Limit Decimals: Three Decimals (3)",
  [4] = "Cb Limit Decimals: Four Decimals (4)",
  [5] = "Cb Limit Decimals: Five Decimals (5)",
  [6] = "Cb Limit Decimals: Six Decimals (6)",
  [7] = "Cb Limit Decimals: Seven Decimals (7)",
  [8] = "Cb Limit Decimals: Eight Decimals (8)",
  [9] = "Cb Limit Decimals: Nine Decimals (9)",
}

pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_decimals.display = function(value)
  return pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_decimals.labels[value] or "Cb Limit Decimals: Unknown("..value..")"
end

-- Dissect: Cb Limit Decimals
pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_decimals.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_decimals.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.cb_limit_decimals, range, value, display)

  return offset + length, value
end

-- Cb Limit Down
pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_down = {}

-- Size: Cb Limit Down
pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_down.size = 4

-- Display: Cb Limit Down
pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_down.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Cb Limit Down: No Value"
  end

  return "Cb Limit Down: "..value
end

-- Dissect: Cb Limit Down
pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_down.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_down.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_down.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.cb_limit_down, range, value, display)

  return offset + length, value
end

-- Cb Limit Up
pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_up = {}

-- Size: Cb Limit Up
pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_up.size = 4

-- Display: Cb Limit Up
pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_up.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Cb Limit Up: No Value"
  end

  return "Cb Limit Up: "..value
end

-- Dissect: Cb Limit Up
pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_up.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_up.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_up.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.cb_limit_up, range, value, display)

  return offset + length, value
end

-- Currency
pse_pseequities_basicwithlastsale_itch_v2_3.currency = {}

-- Size: Currency
pse_pseequities_basicwithlastsale_itch_v2_3.currency.size = 3

-- Display: Currency
pse_pseequities_basicwithlastsale_itch_v2_3.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
pse_pseequities_basicwithlastsale_itch_v2_3.currency.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.currency, range, value, display)

  return offset + length, value
end

-- Delisting Date
pse_pseequities_basicwithlastsale_itch_v2_3.delisting_date = {}

-- Size: Delisting Date
pse_pseequities_basicwithlastsale_itch_v2_3.delisting_date.size = 4

-- Display: Delisting Date
pse_pseequities_basicwithlastsale_itch_v2_3.delisting_date.display = function(value)
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
pse_pseequities_basicwithlastsale_itch_v2_3.delisting_date.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.delisting_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.delisting_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.delisting_date, range, value, display)

  return offset + length, value
end

-- Delisting Time
pse_pseequities_basicwithlastsale_itch_v2_3.delisting_time = {}

-- Size: Delisting Time
pse_pseequities_basicwithlastsale_itch_v2_3.delisting_time.size = 4

-- Display: Delisting Time
pse_pseequities_basicwithlastsale_itch_v2_3.delisting_time.display = function(value)
  local hour = math.floor(value / 10000)
  local minute = math.floor(value / 100) % 100
  local second = value % 100

  return string.format("Delisting Time: %02d:%02d:%02d", hour, minute, second)
end

-- Dissect: Delisting Time
pse_pseequities_basicwithlastsale_itch_v2_3.delisting_time.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.delisting_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.delisting_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.delisting_time, range, value, display)

  return offset + length, value
end

-- Event Code
pse_pseequities_basicwithlastsale_itch_v2_3.event_code = {}

-- Size: Event Code
pse_pseequities_basicwithlastsale_itch_v2_3.event_code.size = 1

-- Display: Event Code
pse_pseequities_basicwithlastsale_itch_v2_3.event_code.labels = {
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

pse_pseequities_basicwithlastsale_itch_v2_3.event_code.display = function(value)
  return pse_pseequities_basicwithlastsale_itch_v2_3.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
pse_pseequities_basicwithlastsale_itch_v2_3.event_code.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executed Quantity
pse_pseequities_basicwithlastsale_itch_v2_3.executed_quantity = {}

-- Size: Executed Quantity
pse_pseequities_basicwithlastsale_itch_v2_3.executed_quantity.size = 8

-- Display: Executed Quantity
pse_pseequities_basicwithlastsale_itch_v2_3.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
pse_pseequities_basicwithlastsale_itch_v2_3.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Price
pse_pseequities_basicwithlastsale_itch_v2_3.execution_price = {}

-- Size: Execution Price
pse_pseequities_basicwithlastsale_itch_v2_3.execution_price.size = 4

-- Display: Execution Price
pse_pseequities_basicwithlastsale_itch_v2_3.execution_price.display = function(value)
  return "Execution Price: "..value
end

-- Dissect: Execution Price
pse_pseequities_basicwithlastsale_itch_v2_3.execution_price.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.execution_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.execution_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Group
pse_pseequities_basicwithlastsale_itch_v2_3.group = {}

-- Size: Group
pse_pseequities_basicwithlastsale_itch_v2_3.group.size = 8

-- Display: Group
pse_pseequities_basicwithlastsale_itch_v2_3.group.labels = {
  ["N"] = "Group: Normal (N)",
  ["O"] = "Group: Oddlot (O)",
  ["I"] = "Group: Index (I)",
}

pse_pseequities_basicwithlastsale_itch_v2_3.group.display = function(value)
  return pse_pseequities_basicwithlastsale_itch_v2_3.group.labels[value] or "Group: Unknown("..value..")"
end

-- Dissect: Group
pse_pseequities_basicwithlastsale_itch_v2_3.group.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.group.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.group.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.group, range, value, display)

  return offset + length, value
end

-- High Collar
pse_pseequities_basicwithlastsale_itch_v2_3.high_collar = {}

-- Size: High Collar
pse_pseequities_basicwithlastsale_itch_v2_3.high_collar.size = 4

-- Display: High Collar
pse_pseequities_basicwithlastsale_itch_v2_3.high_collar.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "High Collar: No Value"
  end

  return "High Collar: "..value
end

-- Dissect: High Collar
pse_pseequities_basicwithlastsale_itch_v2_3.high_collar.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.high_collar.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.high_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.high_collar, range, value, display)

  return offset + length, value
end

-- Instrument Type
pse_pseequities_basicwithlastsale_itch_v2_3.instrument_type = {}

-- Size: Instrument Type
pse_pseequities_basicwithlastsale_itch_v2_3.instrument_type.size = 1

-- Display: Instrument Type
pse_pseequities_basicwithlastsale_itch_v2_3.instrument_type.labels = {
  ["C"] = "Instrument Type: Common Stock (C)",
  ["P"] = "Instrument Type: Preferred Stock (P)",
  ["W"] = "Instrument Type: Warrant (W)",
  ["E"] = "Instrument Type: Etf (E)",
  ["D"] = "Instrument Type: Pdr (D)",
  ["I"] = "Instrument Type: Index (I)",
}

pse_pseequities_basicwithlastsale_itch_v2_3.instrument_type.display = function(value)
  return pse_pseequities_basicwithlastsale_itch_v2_3.instrument_type.labels[value] or "Instrument Type: Unknown("..value..")"
end

-- Dissect: Instrument Type
pse_pseequities_basicwithlastsale_itch_v2_3.instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.instrument_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Isin
pse_pseequities_basicwithlastsale_itch_v2_3.isin = {}

-- Size: Isin
pse_pseequities_basicwithlastsale_itch_v2_3.isin.size = 12

-- Display: Isin
pse_pseequities_basicwithlastsale_itch_v2_3.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
pse_pseequities_basicwithlastsale_itch_v2_3.isin.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.isin, range, value, display)

  return offset + length, value
end

-- Lot Size
pse_pseequities_basicwithlastsale_itch_v2_3.lot_size = {}

-- Size: Lot Size
pse_pseequities_basicwithlastsale_itch_v2_3.lot_size.size = 8

-- Display: Lot Size
pse_pseequities_basicwithlastsale_itch_v2_3.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
pse_pseequities_basicwithlastsale_itch_v2_3.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.lot_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Low Collar
pse_pseequities_basicwithlastsale_itch_v2_3.low_collar = {}

-- Size: Low Collar
pse_pseequities_basicwithlastsale_itch_v2_3.low_collar.size = 4

-- Display: Low Collar
pse_pseequities_basicwithlastsale_itch_v2_3.low_collar.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Low Collar: No Value"
  end

  return "Low Collar: "..value
end

-- Dissect: Low Collar
pse_pseequities_basicwithlastsale_itch_v2_3.low_collar.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.low_collar.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.low_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.low_collar, range, value, display)

  return offset + length, value
end

-- Match Number
pse_pseequities_basicwithlastsale_itch_v2_3.match_number = {}

-- Size: Match Number
pse_pseequities_basicwithlastsale_itch_v2_3.match_number.size = 8

-- Display: Match Number
pse_pseequities_basicwithlastsale_itch_v2_3.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
pse_pseequities_basicwithlastsale_itch_v2_3.match_number.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.match_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.match_number, range, value, display)

  return offset + length, value
end

-- Message Count
pse_pseequities_basicwithlastsale_itch_v2_3.message_count = {}

-- Size: Message Count
pse_pseequities_basicwithlastsale_itch_v2_3.message_count.size = 2

-- Display: Message Count
pse_pseequities_basicwithlastsale_itch_v2_3.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
pse_pseequities_basicwithlastsale_itch_v2_3.message_count.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
pse_pseequities_basicwithlastsale_itch_v2_3.message_length = {}

-- Size: Message Length
pse_pseequities_basicwithlastsale_itch_v2_3.message_length.size = 2

-- Display: Message Length
pse_pseequities_basicwithlastsale_itch_v2_3.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
pse_pseequities_basicwithlastsale_itch_v2_3.message_length.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
pse_pseequities_basicwithlastsale_itch_v2_3.message_type = {}

-- Size: Message Type
pse_pseequities_basicwithlastsale_itch_v2_3.message_type.size = 1

-- Display: Message Type
pse_pseequities_basicwithlastsale_itch_v2_3.message_type.labels = {
  ["T"] = "Message Type: Time Stamp Seconds Message (T)",
  ["S"] = "Message Type: System Event Message (S)",
  ["s"] = "Message Type: Trading Schedule Message (s)",
  ["L"] = "Message Type: Price Tick Size Message (L)",
  ["M"] = "Message Type: Quantity Tick Size Message (M)",
  ["R"] = "Message Type: Orderbook Directory Message (R)",
  ["k"] = "Message Type: Orderbook Restrictions Message (k)",
  ["H"] = "Message Type: Orderbook Trading Action Message (H)",
  ["P"] = "Message Type: Trade Message (P)",
  ["p"] = "Message Type: Trade With Broker Id Message (p)",
  ["O"] = "Message Type: Bbo Quotation Message (O)",
}

pse_pseequities_basicwithlastsale_itch_v2_3.message_type.display = function(value)
  return pse_pseequities_basicwithlastsale_itch_v2_3.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
pse_pseequities_basicwithlastsale_itch_v2_3.message_type.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.message_type, range, value, display)

  return offset + length, value
end

-- Orderbook
pse_pseequities_basicwithlastsale_itch_v2_3.orderbook = {}

-- Size: Orderbook
pse_pseequities_basicwithlastsale_itch_v2_3.orderbook.size = 4

-- Lookup: Orderbook
pse_pseequities_basicwithlastsale_itch_v2_3.orderbook.lookup = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.orderbook.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.orderbook.display(value, buffer, offset, packet, parent)

  if not show.records then
    pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_directory_message.current = nil
    parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.orderbook, range, value, display)

    return offset + length, value
  end

  -- Lookup Orderbook Directory Message record
  local record = pse_pseequities_basicwithlastsale_itch_v2_3.conversation.current.orderbook_directory_message[value]

  -- The record as it stood at this frame, however often it is dissected again
  while record ~= nil and record.record_frame > packet.number do
    record = record.record_previous
  end

  -- A key with no record clears the last one, so nothing reads another key's values
  pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_directory_message.current = record
  if record ~= nil and record.sec_code ~= nil then
    display = "Orderbook: " .. tostring(record.sec_code) .. " (" .. tostring(value) .. ")"
  end

  local field_tree = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.orderbook, range, value, display)

  if record ~= nil then
    if record.sec_code ~= nil then
      local entry_sec_code = field_tree:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.sec_code, record.sec_code)
      entry_sec_code:set_generated()
    end
    if record.price_decimals ~= nil then
      local entry_price_decimals = field_tree:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.price_decimals, record.price_decimals)
      entry_price_decimals:set_generated()
    end
  end

  return offset + length, value, record
end

-- Display: Orderbook
pse_pseequities_basicwithlastsale_itch_v2_3.orderbook.display = function(value)
  return "Orderbook: "..value
end

-- Dissect: Orderbook
pse_pseequities_basicwithlastsale_itch_v2_3.orderbook.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.orderbook.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.orderbook.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.orderbook, range, value, display)

  return offset + length, value
end

-- Price Decimals
pse_pseequities_basicwithlastsale_itch_v2_3.price_decimals = {}

-- Size: Price Decimals
pse_pseequities_basicwithlastsale_itch_v2_3.price_decimals.size = 4

-- Display: Price Decimals
pse_pseequities_basicwithlastsale_itch_v2_3.price_decimals.display = function(value)
  return "Price Decimals: "..value
end

-- Dissect: Price Decimals
pse_pseequities_basicwithlastsale_itch_v2_3.price_decimals.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.price_decimals.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.price_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.price_decimals, range, value, display)

  return offset + length, value
end

-- Price Start
pse_pseequities_basicwithlastsale_itch_v2_3.price_start = {}

-- Size: Price Start
pse_pseequities_basicwithlastsale_itch_v2_3.price_start.size = 4

-- Display: Price Start
pse_pseequities_basicwithlastsale_itch_v2_3.price_start.display = function(value)
  return "Price Start: "..value
end

-- Dissect: Price Start
pse_pseequities_basicwithlastsale_itch_v2_3.price_start.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.price_start.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.price_start.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.price_start, range, value, display)

  return offset + length, value
end

-- Price Tick Size Table Id
pse_pseequities_basicwithlastsale_itch_v2_3.price_tick_size_table_id = {}

-- Size: Price Tick Size Table Id
pse_pseequities_basicwithlastsale_itch_v2_3.price_tick_size_table_id.size = 4

-- Display: Price Tick Size Table Id
pse_pseequities_basicwithlastsale_itch_v2_3.price_tick_size_table_id.display = function(value)
  return "Price Tick Size Table Id: "..value
end

-- Dissect: Price Tick Size Table Id
pse_pseequities_basicwithlastsale_itch_v2_3.price_tick_size_table_id.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.price_tick_size_table_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.price_tick_size_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.price_tick_size_table_id, range, value, display)

  return offset + length, value
end

-- Price Type
pse_pseequities_basicwithlastsale_itch_v2_3.price_type = {}

-- Size: Price Type
pse_pseequities_basicwithlastsale_itch_v2_3.price_type.size = 1

-- Display: Price Type
pse_pseequities_basicwithlastsale_itch_v2_3.price_type.labels = {
  ["U"] = "Price Type: Per Unit (U)",
  ["P"] = "Price Type: Percentage (P)",
}

pse_pseequities_basicwithlastsale_itch_v2_3.price_type.display = function(value)
  return pse_pseequities_basicwithlastsale_itch_v2_3.price_type.labels[value] or "Price Type: Unknown("..value..")"
end

-- Dissect: Price Type
pse_pseequities_basicwithlastsale_itch_v2_3.price_type.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.price_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.price_type, range, value, display)

  return offset + length, value
end

-- Printable
pse_pseequities_basicwithlastsale_itch_v2_3.printable = {}

-- Size: Printable
pse_pseequities_basicwithlastsale_itch_v2_3.printable.size = 1

-- Display: Printable
pse_pseequities_basicwithlastsale_itch_v2_3.printable.labels = {
  ["N"] = "Printable: Non Printable (N)",
  ["Y"] = "Printable: Printable (Y)",
}

pse_pseequities_basicwithlastsale_itch_v2_3.printable.display = function(value)
  return pse_pseequities_basicwithlastsale_itch_v2_3.printable.labels[value] or "Printable: Unknown("..value..")"
end

-- Dissect: Printable
pse_pseequities_basicwithlastsale_itch_v2_3.printable.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.printable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.printable.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.printable, range, value, display)

  return offset + length, value
end

-- Product Code
pse_pseequities_basicwithlastsale_itch_v2_3.product_code = {}

-- Size: Product Code
pse_pseequities_basicwithlastsale_itch_v2_3.product_code.size = 8

-- Display: Product Code
pse_pseequities_basicwithlastsale_itch_v2_3.product_code.display = function(value)
  return "Product Code: "..value
end

-- Dissect: Product Code
pse_pseequities_basicwithlastsale_itch_v2_3.product_code.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.product_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.product_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.product_code, range, value, display)

  return offset + length, value
end

-- Quantity Start
pse_pseequities_basicwithlastsale_itch_v2_3.quantity_start = {}

-- Size: Quantity Start
pse_pseequities_basicwithlastsale_itch_v2_3.quantity_start.size = 8

-- Display: Quantity Start
pse_pseequities_basicwithlastsale_itch_v2_3.quantity_start.display = function(value)
  return "Quantity Start: "..value
end

-- Dissect: Quantity Start
pse_pseequities_basicwithlastsale_itch_v2_3.quantity_start.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.quantity_start.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.quantity_start.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.quantity_start, range, value, display)

  return offset + length, value
end

-- Quantity Tick Size Table Id
pse_pseequities_basicwithlastsale_itch_v2_3.quantity_tick_size_table_id = {}

-- Size: Quantity Tick Size Table Id
pse_pseequities_basicwithlastsale_itch_v2_3.quantity_tick_size_table_id.size = 4

-- Display: Quantity Tick Size Table Id
pse_pseequities_basicwithlastsale_itch_v2_3.quantity_tick_size_table_id.display = function(value)
  return "Quantity Tick Size Table Id: "..value
end

-- Dissect: Quantity Tick Size Table Id
pse_pseequities_basicwithlastsale_itch_v2_3.quantity_tick_size_table_id.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.quantity_tick_size_table_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.quantity_tick_size_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.quantity_tick_size_table_id, range, value, display)

  return offset + length, value
end

-- Reason
pse_pseequities_basicwithlastsale_itch_v2_3.reason = {}

-- Size: Reason
pse_pseequities_basicwithlastsale_itch_v2_3.reason.size = 1

-- Display: Reason
pse_pseequities_basicwithlastsale_itch_v2_3.reason.labels = {
  ["N"] = "Reason: Normal Trading (N)",
  ["S"] = "Reason: Suspended By Market Control (S)",
  ["F"] = "Reason: Frozen Due To Circuit Breaker (F)",
  ["H"] = "Reason: Halted (H)",
}

pse_pseequities_basicwithlastsale_itch_v2_3.reason.display = function(value)
  return pse_pseequities_basicwithlastsale_itch_v2_3.reason.labels[value] or "Reason: Unknown("..value..")"
end

-- Dissect: Reason
pse_pseequities_basicwithlastsale_itch_v2_3.reason.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.reason, range, value, display)

  return offset + length, value
end

-- Scheduled Time
pse_pseequities_basicwithlastsale_itch_v2_3.scheduled_time = {}

-- Size: Scheduled Time
pse_pseequities_basicwithlastsale_itch_v2_3.scheduled_time.size = 4

-- Display: Scheduled Time
pse_pseequities_basicwithlastsale_itch_v2_3.scheduled_time.display = function(value)
  return "Scheduled Time: "..value
end

-- Dissect: Scheduled Time
pse_pseequities_basicwithlastsale_itch_v2_3.scheduled_time.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.scheduled_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.scheduled_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.scheduled_time, range, value, display)

  return offset + length, value
end

-- Sec Code
pse_pseequities_basicwithlastsale_itch_v2_3.sec_code = {}

-- Size: Sec Code
pse_pseequities_basicwithlastsale_itch_v2_3.sec_code.size = 12

-- Display: Sec Code
pse_pseequities_basicwithlastsale_itch_v2_3.sec_code.display = function(value)
  return "Sec Code: "..value
end

-- Dissect: Sec Code
pse_pseequities_basicwithlastsale_itch_v2_3.sec_code.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.sec_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.sec_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.sec_code, range, value, display)

  return offset + length, value
end

-- Second
pse_pseequities_basicwithlastsale_itch_v2_3.second = {}

-- Size: Second
pse_pseequities_basicwithlastsale_itch_v2_3.second.size = 4

-- Store: Second
pse_pseequities_basicwithlastsale_itch_v2_3.second.current = nil

-- Generated: Second
pse_pseequities_basicwithlastsale_itch_v2_3.second.generated = function(value, range, packet, parent)
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.second.display(value)
  local second = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.second, range, value, display)
  second:set_generated()
end

-- Display: Second
pse_pseequities_basicwithlastsale_itch_v2_3.second.display = function(value)
  return "Second: "..value
end

-- Dissect: Second
pse_pseequities_basicwithlastsale_itch_v2_3.second.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.second.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.second.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.second, range, value, display)

  return offset + length, value
end

-- Sell Broker Id
pse_pseequities_basicwithlastsale_itch_v2_3.sell_broker_id = {}

-- Size: Sell Broker Id
pse_pseequities_basicwithlastsale_itch_v2_3.sell_broker_id.size = 4

-- Display: Sell Broker Id
pse_pseequities_basicwithlastsale_itch_v2_3.sell_broker_id.display = function(value)
  return "Sell Broker Id: "..value
end

-- Dissect: Sell Broker Id
pse_pseequities_basicwithlastsale_itch_v2_3.sell_broker_id.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.sell_broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.sell_broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.sell_broker_id, range, value, display)

  return offset + length, value
end

-- Sequence Number
pse_pseequities_basicwithlastsale_itch_v2_3.sequence_number = {}

-- Size: Sequence Number
pse_pseequities_basicwithlastsale_itch_v2_3.sequence_number.size = 8

-- Display: Sequence Number
pse_pseequities_basicwithlastsale_itch_v2_3.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
pse_pseequities_basicwithlastsale_itch_v2_3.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
pse_pseequities_basicwithlastsale_itch_v2_3.session = {}

-- Size: Session
pse_pseequities_basicwithlastsale_itch_v2_3.session.size = 10

-- Display: Session
pse_pseequities_basicwithlastsale_itch_v2_3.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
pse_pseequities_basicwithlastsale_itch_v2_3.session.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.session.size
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

  local display = pse_pseequities_basicwithlastsale_itch_v2_3.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.session, range, value, display)

  return offset + length, value
end

-- Shares
pse_pseequities_basicwithlastsale_itch_v2_3.shares = {}

-- Size: Shares
pse_pseequities_basicwithlastsale_itch_v2_3.shares.size = 8

-- Display: Shares
pse_pseequities_basicwithlastsale_itch_v2_3.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
pse_pseequities_basicwithlastsale_itch_v2_3.shares.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.shares.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.shares, range, value, display)

  return offset + length, value
end

-- Short Sell Eligible
pse_pseequities_basicwithlastsale_itch_v2_3.short_sell_eligible = {}

-- Size: Short Sell Eligible
pse_pseequities_basicwithlastsale_itch_v2_3.short_sell_eligible.size = 1

-- Display: Short Sell Eligible
pse_pseequities_basicwithlastsale_itch_v2_3.short_sell_eligible.labels = {
  ["Y"] = "Short Sell Eligible: Yes (Y)",
  ["N"] = "Short Sell Eligible: No (N)",
}

pse_pseequities_basicwithlastsale_itch_v2_3.short_sell_eligible.display = function(value)
  return pse_pseequities_basicwithlastsale_itch_v2_3.short_sell_eligible.labels[value] or "Short Sell Eligible: Unknown("..value..")"
end

-- Dissect: Short Sell Eligible
pse_pseequities_basicwithlastsale_itch_v2_3.short_sell_eligible.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.short_sell_eligible.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.short_sell_eligible.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.short_sell_eligible, range, value, display)

  return offset + length, value
end

-- Tick Size Integer 4
pse_pseequities_basicwithlastsale_itch_v2_3.tick_size_integer_4 = {}

-- Size: Tick Size Integer 4
pse_pseequities_basicwithlastsale_itch_v2_3.tick_size_integer_4.size = 4

-- Display: Tick Size Integer 4
pse_pseequities_basicwithlastsale_itch_v2_3.tick_size_integer_4.display = function(value)
  return "Tick Size Integer 4: "..value
end

-- Dissect: Tick Size Integer 4
pse_pseequities_basicwithlastsale_itch_v2_3.tick_size_integer_4.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.tick_size_integer_4.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.tick_size_integer_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.tick_size_integer_4, range, value, display)

  return offset + length, value
end

-- Tick Size Integer 8
pse_pseequities_basicwithlastsale_itch_v2_3.tick_size_integer_8 = {}

-- Size: Tick Size Integer 8
pse_pseequities_basicwithlastsale_itch_v2_3.tick_size_integer_8.size = 8

-- Display: Tick Size Integer 8
pse_pseequities_basicwithlastsale_itch_v2_3.tick_size_integer_8.display = function(value)
  return "Tick Size Integer 8: "..value
end

-- Dissect: Tick Size Integer 8
pse_pseequities_basicwithlastsale_itch_v2_3.tick_size_integer_8.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.tick_size_integer_8.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.tick_size_integer_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.tick_size_integer_8, range, value, display)

  return offset + length, value
end

-- Tick Size Table Id
pse_pseequities_basicwithlastsale_itch_v2_3.tick_size_table_id = {}

-- Size: Tick Size Table Id
pse_pseequities_basicwithlastsale_itch_v2_3.tick_size_table_id.size = 4

-- Display: Tick Size Table Id
pse_pseequities_basicwithlastsale_itch_v2_3.tick_size_table_id.display = function(value)
  return "Tick Size Table Id: "..value
end

-- Dissect: Tick Size Table Id
pse_pseequities_basicwithlastsale_itch_v2_3.tick_size_table_id.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.tick_size_table_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.tick_size_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.tick_size_table_id, range, value, display)

  return offset + length, value
end

-- Timestamp
pse_pseequities_basicwithlastsale_itch_v2_3.timestamp = {}

-- Size: Timestamp
pse_pseequities_basicwithlastsale_itch_v2_3.timestamp.size = 4

-- Display: Timestamp
pse_pseequities_basicwithlastsale_itch_v2_3.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
pse_pseequities_basicwithlastsale_itch_v2_3.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Indicator
pse_pseequities_basicwithlastsale_itch_v2_3.trade_indicator = {}

-- Size: Trade Indicator
pse_pseequities_basicwithlastsale_itch_v2_3.trade_indicator.size = 1

-- Display: Trade Indicator
pse_pseequities_basicwithlastsale_itch_v2_3.trade_indicator.display = function(value)
  if value == " " then
    return "Trade Indicator: Regular Trade (<whitespace>)"
  end
  if value == "C" then
    return "Trade Indicator: Intentional Cross Trade (C)"
  end
  if value == "B" then
    return "Trade Indicator: Block Sale (B)"
  end
  if value == "M" then
    return "Trade Indicator: Manual Trade (M)"
  end

  return "Trade Indicator: Unknown("..value..")"
end

-- Dissect: Trade Indicator
pse_pseequities_basicwithlastsale_itch_v2_3.trade_indicator.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.trade_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.trade_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.trade_indicator, range, value, display)

  return offset + length, value
end

-- Trading State
pse_pseequities_basicwithlastsale_itch_v2_3.trading_state = {}

-- Size: Trading State
pse_pseequities_basicwithlastsale_itch_v2_3.trading_state.size = 1

-- Display: Trading State
pse_pseequities_basicwithlastsale_itch_v2_3.trading_state.labels = {
  ["T"] = "Trading State: Trading (T)",
  ["V"] = "Trading State: Suspended (V)",
}

pse_pseequities_basicwithlastsale_itch_v2_3.trading_state.display = function(value)
  return pse_pseequities_basicwithlastsale_itch_v2_3.trading_state.labels[value] or "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
pse_pseequities_basicwithlastsale_itch_v2_3.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Scaled Best Bid Price
pse_pseequities_basicwithlastsale_itch_v2_3.scaled_best_bid_price = {}

-- Display: Scaled Best Bid Price
pse_pseequities_basicwithlastsale_itch_v2_3.scaled_best_bid_price.display = function(value)
  return "Scaled Best Bid Price: " .. string.format("%.15g", value)
end

-- Composite: Scaled Best Bid Price
pse_pseequities_basicwithlastsale_itch_v2_3.scaled_best_bid_price.composite = function(buffer, offset, record, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.best_bid_price.size
  local range = buffer(offset, length)
  local mantissa = range:uint()

  if mantissa == 2147483647 then
    local field_tree = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.scaled_best_bid_price, range, 0/0, "Scaled Best Bid Price: No Value")
    local mantissa_display = pse_pseequities_basicwithlastsale_itch_v2_3.best_bid_price.display(mantissa)

    field_tree:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.best_bid_price, range, mantissa, mantissa_display)

    return offset + length, 0/0
  end

  local value = mantissa / (10 ^ record.price_decimals)
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_best_bid_price.display(value)
  local field_tree = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.scaled_best_bid_price, range, value, display)
  local mantissa_display = pse_pseequities_basicwithlastsale_itch_v2_3.best_bid_price.display(mantissa)

  field_tree:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.best_bid_price, range, mantissa, mantissa_display)

  local price_decimals_entry = field_tree:add("Price Decimals: " .. tostring(record.price_decimals))
  price_decimals_entry:set_generated()

  return offset + length, value
end

-- Dissect: Scaled Best Bid Price
pse_pseequities_basicwithlastsale_itch_v2_3.scaled_best_bid_price.dissect = function(buffer, offset, packet, parent)
  if pse_pseequities_basicwithlastsale_itch_v2_3.format_decimals then
    local record = pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_directory_message.current
    if record ~= nil and record.price_decimals ~= nil then
      return pse_pseequities_basicwithlastsale_itch_v2_3.scaled_best_bid_price.composite(buffer, offset, record, packet, parent)
    end
  end

  return pse_pseequities_basicwithlastsale_itch_v2_3.best_bid_price.dissect(buffer, offset, packet, parent)
end

-- Scaled Best Offer Price
pse_pseequities_basicwithlastsale_itch_v2_3.scaled_best_offer_price = {}

-- Display: Scaled Best Offer Price
pse_pseequities_basicwithlastsale_itch_v2_3.scaled_best_offer_price.display = function(value)
  return "Scaled Best Offer Price: " .. string.format("%.15g", value)
end

-- Composite: Scaled Best Offer Price
pse_pseequities_basicwithlastsale_itch_v2_3.scaled_best_offer_price.composite = function(buffer, offset, record, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.best_offer_price.size
  local range = buffer(offset, length)
  local mantissa = range:uint()

  if mantissa == 2147483647 then
    local field_tree = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.scaled_best_offer_price, range, 0/0, "Scaled Best Offer Price: No Value")
    local mantissa_display = pse_pseequities_basicwithlastsale_itch_v2_3.best_offer_price.display(mantissa)

    field_tree:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.best_offer_price, range, mantissa, mantissa_display)

    return offset + length, 0/0
  end

  local value = mantissa / (10 ^ record.price_decimals)
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_best_offer_price.display(value)
  local field_tree = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.scaled_best_offer_price, range, value, display)
  local mantissa_display = pse_pseequities_basicwithlastsale_itch_v2_3.best_offer_price.display(mantissa)

  field_tree:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.best_offer_price, range, mantissa, mantissa_display)

  local price_decimals_entry = field_tree:add("Price Decimals: " .. tostring(record.price_decimals))
  price_decimals_entry:set_generated()

  return offset + length, value
end

-- Dissect: Scaled Best Offer Price
pse_pseequities_basicwithlastsale_itch_v2_3.scaled_best_offer_price.dissect = function(buffer, offset, packet, parent)
  if pse_pseequities_basicwithlastsale_itch_v2_3.format_decimals then
    local record = pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_directory_message.current
    if record ~= nil and record.price_decimals ~= nil then
      return pse_pseequities_basicwithlastsale_itch_v2_3.scaled_best_offer_price.composite(buffer, offset, record, packet, parent)
    end
  end

  return pse_pseequities_basicwithlastsale_itch_v2_3.best_offer_price.dissect(buffer, offset, packet, parent)
end

-- Scaled CB Limit Down
pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_down = {}

-- Display: Scaled CB Limit Down
pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_down.display = function(value)
  return "Scaled CB Limit Down: " .. string.format("%.15g", value)
end

-- Display: Scaled CB Limit Down with an unrecognised code
pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_down.display_uncoded = function(value)
  return "Scaled CB Limit Down: " .. string.format("%.15g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled CB Limit Down
pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_down.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_down.size
  local range = buffer(offset, length)
  local mantissa = range:uint()
  local cb_limit_decimals_range = buffer(offset + length, pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_decimals.size)
  local cb_limit_decimals = cb_limit_decimals_range:uint()

  local value
  local display
  if cb_limit_decimals == 0 then
    value = mantissa
    display = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_down.display(value)
  elseif cb_limit_decimals == 1 then
    value = mantissa / (10 ^ 1)
    display = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_down.display(value)
  elseif cb_limit_decimals == 2 then
    value = mantissa / (10 ^ 2)
    display = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_down.display(value)
  elseif cb_limit_decimals == 3 then
    value = mantissa / (10 ^ 3)
    display = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_down.display(value)
  elseif cb_limit_decimals == 4 then
    value = mantissa / (10 ^ 4)
    display = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_down.display(value)
  elseif cb_limit_decimals == 5 then
    value = mantissa / (10 ^ 5)
    display = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_down.display(value)
  elseif cb_limit_decimals == 6 then
    value = mantissa / (10 ^ 6)
    display = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_down.display(value)
  elseif cb_limit_decimals == 7 then
    value = mantissa / (10 ^ 7)
    display = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_down.display(value)
  elseif cb_limit_decimals == 8 then
    value = mantissa / (10 ^ 8)
    display = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_down.display(value)
  elseif cb_limit_decimals == 9 then
    value = mantissa / (10 ^ 9)
    display = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_down.display(value)
  else
    value = mantissa
    display = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_down.display_uncoded(value)
  end

  local field_tree = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.scaled_cb_limit_down, buffer(offset, length + pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_decimals.size), value, display)
  local mantissa_display = pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_down.display(mantissa)
  local cb_limit_decimals_display = pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_decimals.display(cb_limit_decimals)

  field_tree:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.cb_limit_down, range, mantissa, mantissa_display)
  field_tree:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.cb_limit_decimals, cb_limit_decimals_range, cb_limit_decimals, cb_limit_decimals_display)

  return offset + length + pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_decimals.size, value
end

-- Scaled CB Limit Up
pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_up = {}

-- Display: Scaled CB Limit Up
pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_up.display = function(value)
  return "Scaled CB Limit Up: " .. string.format("%.15g", value)
end

-- Display: Scaled CB Limit Up with an unrecognised code
pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_up.display_uncoded = function(value)
  return "Scaled CB Limit Up: " .. string.format("%.15g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled CB Limit Up
pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_up.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_up.size
  local range = buffer(offset, length)
  local mantissa = range:uint()
  local cb_limit_decimals = buffer(offset + length + pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_down.size, pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_decimals.size):uint()

  if mantissa == 0 then
    local field_tree = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.scaled_cb_limit_up, range, 0/0, "Scaled CB Limit Up: No Value")
    field_tree:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.cb_limit_up, range, mantissa, pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_up.display(mantissa))

    return offset + length, 0/0
  end

  local value
  local display
  if cb_limit_decimals == 0 then
    value = mantissa
    display = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_up.display(value)
  elseif cb_limit_decimals == 1 then
    value = mantissa / (10 ^ 1)
    display = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_up.display(value)
  elseif cb_limit_decimals == 2 then
    value = mantissa / (10 ^ 2)
    display = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_up.display(value)
  elseif cb_limit_decimals == 3 then
    value = mantissa / (10 ^ 3)
    display = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_up.display(value)
  elseif cb_limit_decimals == 4 then
    value = mantissa / (10 ^ 4)
    display = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_up.display(value)
  elseif cb_limit_decimals == 5 then
    value = mantissa / (10 ^ 5)
    display = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_up.display(value)
  elseif cb_limit_decimals == 6 then
    value = mantissa / (10 ^ 6)
    display = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_up.display(value)
  elseif cb_limit_decimals == 7 then
    value = mantissa / (10 ^ 7)
    display = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_up.display(value)
  elseif cb_limit_decimals == 8 then
    value = mantissa / (10 ^ 8)
    display = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_up.display(value)
  elseif cb_limit_decimals == 9 then
    value = mantissa / (10 ^ 9)
    display = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_up.display(value)
  else
    value = mantissa
    display = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_up.display_uncoded(value)
  end

  local field_tree = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.scaled_cb_limit_up, range, value, display)
  local mantissa_display = pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_up.display(mantissa)

  field_tree:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.cb_limit_up, range, mantissa, mantissa_display)

  local cb_limit_decimals_entry = field_tree:add("Cb Limit Decimals: " .. tostring(cb_limit_decimals))
  cb_limit_decimals_entry:set_generated()

  return offset + length, value
end

-- Scaled Execution Price
pse_pseequities_basicwithlastsale_itch_v2_3.scaled_execution_price = {}

-- Display: Scaled Execution Price
pse_pseequities_basicwithlastsale_itch_v2_3.scaled_execution_price.display = function(value)
  return "Scaled Execution Price: " .. string.format("%.15g", value)
end

-- Composite: Scaled Execution Price
pse_pseequities_basicwithlastsale_itch_v2_3.scaled_execution_price.composite = function(buffer, offset, record, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.execution_price.size
  local range = buffer(offset, length)
  local mantissa = range:uint()
  local value = mantissa / (10 ^ record.price_decimals)
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_execution_price.display(value)
  local field_tree = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.scaled_execution_price, range, value, display)
  local mantissa_display = pse_pseequities_basicwithlastsale_itch_v2_3.execution_price.display(mantissa)

  field_tree:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.execution_price, range, mantissa, mantissa_display)

  local price_decimals_entry = field_tree:add("Price Decimals: " .. tostring(record.price_decimals))
  price_decimals_entry:set_generated()

  return offset + length, value
end

-- Dissect: Scaled Execution Price
pse_pseequities_basicwithlastsale_itch_v2_3.scaled_execution_price.dissect = function(buffer, offset, packet, parent)
  if pse_pseequities_basicwithlastsale_itch_v2_3.format_decimals then
    local record = pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_directory_message.current
    if record ~= nil and record.price_decimals ~= nil then
      return pse_pseequities_basicwithlastsale_itch_v2_3.scaled_execution_price.composite(buffer, offset, record, packet, parent)
    end
  end

  return pse_pseequities_basicwithlastsale_itch_v2_3.execution_price.dissect(buffer, offset, packet, parent)
end

-- Scaled High Collar
pse_pseequities_basicwithlastsale_itch_v2_3.scaled_high_collar = {}

-- Display: Scaled High Collar
pse_pseequities_basicwithlastsale_itch_v2_3.scaled_high_collar.display = function(value)
  return "Scaled High Collar: " .. string.format("%.15g", value)
end

-- Composite: Scaled High Collar
pse_pseequities_basicwithlastsale_itch_v2_3.scaled_high_collar.composite = function(buffer, offset, record, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.high_collar.size
  local range = buffer(offset, length)
  local mantissa = range:uint()

  if mantissa == 2147483647 then
    local field_tree = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.scaled_high_collar, range, 0/0, "Scaled High Collar: No Value")
    local mantissa_display = pse_pseequities_basicwithlastsale_itch_v2_3.high_collar.display(mantissa)

    field_tree:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.high_collar, range, mantissa, mantissa_display)

    return offset + length, 0/0
  end

  local value = mantissa / (10 ^ record.price_decimals)
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_high_collar.display(value)
  local field_tree = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.scaled_high_collar, range, value, display)
  local mantissa_display = pse_pseequities_basicwithlastsale_itch_v2_3.high_collar.display(mantissa)

  field_tree:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.high_collar, range, mantissa, mantissa_display)

  local price_decimals_entry = field_tree:add("Price Decimals: " .. tostring(record.price_decimals))
  price_decimals_entry:set_generated()

  return offset + length, value
end

-- Dissect: Scaled High Collar
pse_pseequities_basicwithlastsale_itch_v2_3.scaled_high_collar.dissect = function(buffer, offset, packet, parent)
  if pse_pseequities_basicwithlastsale_itch_v2_3.format_decimals then
    local record = pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_directory_message.current
    if record ~= nil and record.price_decimals ~= nil then
      return pse_pseequities_basicwithlastsale_itch_v2_3.scaled_high_collar.composite(buffer, offset, record, packet, parent)
    end
  end

  return pse_pseequities_basicwithlastsale_itch_v2_3.high_collar.dissect(buffer, offset, packet, parent)
end

-- Scaled Low Collar
pse_pseequities_basicwithlastsale_itch_v2_3.scaled_low_collar = {}

-- Display: Scaled Low Collar
pse_pseequities_basicwithlastsale_itch_v2_3.scaled_low_collar.display = function(value)
  return "Scaled Low Collar: " .. string.format("%.15g", value)
end

-- Composite: Scaled Low Collar
pse_pseequities_basicwithlastsale_itch_v2_3.scaled_low_collar.composite = function(buffer, offset, record, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.low_collar.size
  local range = buffer(offset, length)
  local mantissa = range:uint()

  if mantissa == 2147483647 then
    local field_tree = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.scaled_low_collar, range, 0/0, "Scaled Low Collar: No Value")
    local mantissa_display = pse_pseequities_basicwithlastsale_itch_v2_3.low_collar.display(mantissa)

    field_tree:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.low_collar, range, mantissa, mantissa_display)

    return offset + length, 0/0
  end

  local value = mantissa / (10 ^ record.price_decimals)
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_low_collar.display(value)
  local field_tree = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.scaled_low_collar, range, value, display)
  local mantissa_display = pse_pseequities_basicwithlastsale_itch_v2_3.low_collar.display(mantissa)

  field_tree:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.low_collar, range, mantissa, mantissa_display)

  local price_decimals_entry = field_tree:add("Price Decimals: " .. tostring(record.price_decimals))
  price_decimals_entry:set_generated()

  return offset + length, value
end

-- Dissect: Scaled Low Collar
pse_pseequities_basicwithlastsale_itch_v2_3.scaled_low_collar.dissect = function(buffer, offset, packet, parent)
  if pse_pseequities_basicwithlastsale_itch_v2_3.format_decimals then
    local record = pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_directory_message.current
    if record ~= nil and record.price_decimals ~= nil then
      return pse_pseequities_basicwithlastsale_itch_v2_3.scaled_low_collar.composite(buffer, offset, record, packet, parent)
    end
  end

  return pse_pseequities_basicwithlastsale_itch_v2_3.low_collar.dissect(buffer, offset, packet, parent)
end

-- Event Time
pse_pseequities_basicwithlastsale_itch_v2_3.event_time = {}

-- Translate: Event Time
pse_pseequities_basicwithlastsale_itch_v2_3.event_time.translate = function(timestamp, stored_second)
  return UInt64.new(stored_second) * 1000000000 + timestamp
end

-- Display: Event Time
pse_pseequities_basicwithlastsale_itch_v2_3.event_time.display = function(timestamp, stored_second, packet)
  -- Raw display mode
  if pse_pseequities_basicwithlastsale_itch_v2_3.timestamp_format == 0 then
    return "Event Time: "..(stored_second * 1000000000 + timestamp)
  end

  -- An offset the Field epoch leaves unbounded carries whole seconds of its own
  local seconds = stored_second + math.floor(timestamp / 1000000000)
  local fraction = timestamp % 1000000000

  -- Full datetime mode (the day the frame that carried it settled on)
  if pse_pseequities_basicwithlastsale_itch_v2_3.timestamp_format >= 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - seconds) / 900 + 0.5) * 900

      local midnight = math.floor(settled / 86400 + 0.5) * 86400

      local format = pse_pseequities_basicwithlastsale_itch_v2_3.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
      return "Event Time: "..os.date(format, midnight + seconds)..string.format("%09d", fraction)
    end
  end

  -- Time of day mode
  return "Event Time: "..os.date("!%H:%M:%S.", seconds)..string.format("%09d", fraction)
end

-- Composite: Event Time
pse_pseequities_basicwithlastsale_itch_v2_3.event_time.composite = function(buffer, offset, stored_second, packet, parent)
  local length = pse_pseequities_basicwithlastsale_itch_v2_3.timestamp.size
  local range = buffer(offset, length)
  local timestamp = range:uint()
  local value = pse_pseequities_basicwithlastsale_itch_v2_3.event_time.translate(timestamp, stored_second)
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.event_time.display(timestamp, stored_second, packet)
  parent = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.event_time, range, value, display)

  pse_pseequities_basicwithlastsale_itch_v2_3.second.generated(stored_second, range, packet, parent)

  display = pse_pseequities_basicwithlastsale_itch_v2_3.timestamp.display(timestamp)
  parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.timestamp, range, timestamp, display)

  return offset + length, value
end

-- Dissect: Event Time
pse_pseequities_basicwithlastsale_itch_v2_3.event_time.dissect = function(buffer, offset, packet, parent)
  if pse_pseequities_basicwithlastsale_itch_v2_3.timestamp_format ~= 0 then
    local stored_second = pse_pseequities_basicwithlastsale_itch_v2_3.second.current

    if stored_second ~= nil then
      return pse_pseequities_basicwithlastsale_itch_v2_3.event_time.composite(buffer, offset, stored_second, packet, parent)
    end
  end

  return pse_pseequities_basicwithlastsale_itch_v2_3.timestamp.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Pse PseEquities BasicWithLastSale Itch 2.3
-----------------------------------------------------------------------

-- Bbo Quotation Message
pse_pseequities_basicwithlastsale_itch_v2_3.bbo_quotation_message = {}

-- Size: Bbo Quotation Message
pse_pseequities_basicwithlastsale_itch_v2_3.bbo_quotation_message.size =
  pse_pseequities_basicwithlastsale_itch_v2_3.timestamp.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.orderbook.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.best_bid_price.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.best_bid_size.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.best_offer_price.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.best_offer_size.size

-- Display: Bbo Quotation Message
pse_pseequities_basicwithlastsale_itch_v2_3.bbo_quotation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bbo Quotation Message
pse_pseequities_basicwithlastsale_itch_v2_3.bbo_quotation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = pse_pseequities_basicwithlastsale_itch_v2_3.event_time.dissect(buffer, index, packet, parent)

  -- Orderbook: Integer (record lookup)
  index, orderbook, orderbook_record = pse_pseequities_basicwithlastsale_itch_v2_3.orderbook.lookup(buffer, index, packet, parent)

  -- Best Bid Price: Integer
  index, best_bid_price = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_best_bid_price.dissect(buffer, index, packet, parent)

  -- Best Bid Size: Integer
  index, best_bid_size = pse_pseequities_basicwithlastsale_itch_v2_3.best_bid_size.dissect(buffer, index, packet, parent)

  -- Best Offer Price: Integer
  index, best_offer_price = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_best_offer_price.dissect(buffer, index, packet, parent)

  -- Best Offer Size: Integer
  index, best_offer_size = pse_pseequities_basicwithlastsale_itch_v2_3.best_offer_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bbo Quotation Message
pse_pseequities_basicwithlastsale_itch_v2_3.bbo_quotation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.bbo_quotation_message, buffer(offset, 0))
    local index = pse_pseequities_basicwithlastsale_itch_v2_3.bbo_quotation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = pse_pseequities_basicwithlastsale_itch_v2_3.bbo_quotation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return pse_pseequities_basicwithlastsale_itch_v2_3.bbo_quotation_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade With Broker Id Message
pse_pseequities_basicwithlastsale_itch_v2_3.trade_with_broker_id_message = {}

-- Size: Trade With Broker Id Message
pse_pseequities_basicwithlastsale_itch_v2_3.trade_with_broker_id_message.size =
  pse_pseequities_basicwithlastsale_itch_v2_3.timestamp.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.executed_quantity.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.orderbook.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.printable.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.execution_price.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.match_number.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.trade_indicator.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.buy_broker_id.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.sell_broker_id.size

-- Display: Trade With Broker Id Message
pse_pseequities_basicwithlastsale_itch_v2_3.trade_with_broker_id_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade With Broker Id Message
pse_pseequities_basicwithlastsale_itch_v2_3.trade_with_broker_id_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = pse_pseequities_basicwithlastsale_itch_v2_3.event_time.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Integer
  index, executed_quantity = pse_pseequities_basicwithlastsale_itch_v2_3.executed_quantity.dissect(buffer, index, packet, parent)

  -- Orderbook: Integer (record lookup)
  index, orderbook, orderbook_record = pse_pseequities_basicwithlastsale_itch_v2_3.orderbook.lookup(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = pse_pseequities_basicwithlastsale_itch_v2_3.printable.dissect(buffer, index, packet, parent)

  -- Execution Price: Integer
  index, execution_price = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_execution_price.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = pse_pseequities_basicwithlastsale_itch_v2_3.match_number.dissect(buffer, index, packet, parent)

  -- Trade Indicator: Alpha
  index, trade_indicator = pse_pseequities_basicwithlastsale_itch_v2_3.trade_indicator.dissect(buffer, index, packet, parent)

  -- Buy Broker Id: Alpha
  index, buy_broker_id = pse_pseequities_basicwithlastsale_itch_v2_3.buy_broker_id.dissect(buffer, index, packet, parent)

  -- Sell Broker Id: Alpha
  index, sell_broker_id = pse_pseequities_basicwithlastsale_itch_v2_3.sell_broker_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade With Broker Id Message
pse_pseequities_basicwithlastsale_itch_v2_3.trade_with_broker_id_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.trade_with_broker_id_message, buffer(offset, 0))
    local index = pse_pseequities_basicwithlastsale_itch_v2_3.trade_with_broker_id_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = pse_pseequities_basicwithlastsale_itch_v2_3.trade_with_broker_id_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return pse_pseequities_basicwithlastsale_itch_v2_3.trade_with_broker_id_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
pse_pseequities_basicwithlastsale_itch_v2_3.trade_message = {}

-- Size: Trade Message
pse_pseequities_basicwithlastsale_itch_v2_3.trade_message.size =
  pse_pseequities_basicwithlastsale_itch_v2_3.timestamp.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.executed_quantity.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.orderbook.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.printable.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.execution_price.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.match_number.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.trade_indicator.size

-- Display: Trade Message
pse_pseequities_basicwithlastsale_itch_v2_3.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
pse_pseequities_basicwithlastsale_itch_v2_3.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = pse_pseequities_basicwithlastsale_itch_v2_3.event_time.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Integer
  index, executed_quantity = pse_pseequities_basicwithlastsale_itch_v2_3.executed_quantity.dissect(buffer, index, packet, parent)

  -- Orderbook: Integer (record lookup)
  index, orderbook, orderbook_record = pse_pseequities_basicwithlastsale_itch_v2_3.orderbook.lookup(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = pse_pseequities_basicwithlastsale_itch_v2_3.printable.dissect(buffer, index, packet, parent)

  -- Execution Price: Integer
  index, execution_price = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_execution_price.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = pse_pseequities_basicwithlastsale_itch_v2_3.match_number.dissect(buffer, index, packet, parent)

  -- Trade Indicator: Alpha
  index, trade_indicator = pse_pseequities_basicwithlastsale_itch_v2_3.trade_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
pse_pseequities_basicwithlastsale_itch_v2_3.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.trade_message, buffer(offset, 0))
    local index = pse_pseequities_basicwithlastsale_itch_v2_3.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = pse_pseequities_basicwithlastsale_itch_v2_3.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return pse_pseequities_basicwithlastsale_itch_v2_3.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Orderbook Trading Action Message
pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_trading_action_message = {}

-- Size: Orderbook Trading Action Message
pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_trading_action_message.size =
  pse_pseequities_basicwithlastsale_itch_v2_3.timestamp.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.orderbook.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.trading_state.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.reason.size

-- Display: Orderbook Trading Action Message
pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orderbook Trading Action Message
pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = pse_pseequities_basicwithlastsale_itch_v2_3.event_time.dissect(buffer, index, packet, parent)

  -- Orderbook: Integer (record lookup)
  index, orderbook, orderbook_record = pse_pseequities_basicwithlastsale_itch_v2_3.orderbook.lookup(buffer, index, packet, parent)

  -- Trading State: Alpha
  index, trading_state = pse_pseequities_basicwithlastsale_itch_v2_3.trading_state.dissect(buffer, index, packet, parent)

  -- Reason: Alpha
  index, reason = pse_pseequities_basicwithlastsale_itch_v2_3.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Orderbook Trading Action Message
pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.orderbook_trading_action_message, buffer(offset, 0))
    local index = pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Orderbook Restrictions Message
pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_restrictions_message = {}

-- Size: Orderbook Restrictions Message
pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_restrictions_message.size =
  pse_pseequities_basicwithlastsale_itch_v2_3.timestamp.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.orderbook.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.short_sell_eligible.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.high_collar.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.low_collar.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_up.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_down.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.cb_limit_decimals.size

-- Display: Orderbook Restrictions Message
pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_restrictions_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orderbook Restrictions Message
pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_restrictions_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = pse_pseequities_basicwithlastsale_itch_v2_3.event_time.dissect(buffer, index, packet, parent)

  -- Orderbook: Integer (record lookup)
  index, orderbook, orderbook_record = pse_pseequities_basicwithlastsale_itch_v2_3.orderbook.lookup(buffer, index, packet, parent)

  -- Short Sell Eligible: Alpha
  index, short_sell_eligible = pse_pseequities_basicwithlastsale_itch_v2_3.short_sell_eligible.dissect(buffer, index, packet, parent)

  -- High Collar: Integer
  index, high_collar = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_high_collar.dissect(buffer, index, packet, parent)

  -- Low Collar: Integer
  index, low_collar = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_low_collar.dissect(buffer, index, packet, parent)

  -- Cb Limit Up: Integer
  index, cb_limit_up = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_up.dissect(buffer, index, packet, parent)

  -- Cb Limit Down: Integer
  index, cb_limit_down = pse_pseequities_basicwithlastsale_itch_v2_3.scaled_cb_limit_down.dissect(buffer, index, packet, parent)

  -- Cb Limit Decimals: Integer (read by Cb Limit Down)

  return index
end

-- Dissect: Orderbook Restrictions Message
pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_restrictions_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.orderbook_restrictions_message, buffer(offset, 0))
    local index = pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_restrictions_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_restrictions_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_restrictions_message.fields(buffer, offset, packet, parent)
  end
end

-- Orderbook Directory Message
pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_directory_message = {}

-- Size: Orderbook Directory Message
pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_directory_message.size =
  pse_pseequities_basicwithlastsale_itch_v2_3.timestamp.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.orderbook.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.price_type.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.isin.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.sec_code.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.currency.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.group.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.lot_size.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.quantity_tick_size_table_id.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.price_tick_size_table_id.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.price_decimals.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.delisting_date.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.delisting_time.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.instrument_type.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.shares.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.product_code.size

-- Display: Orderbook Directory Message
pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orderbook Directory Message
pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = pse_pseequities_basicwithlastsale_itch_v2_3.event_time.dissect(buffer, index, packet, parent)

  -- Orderbook: Integer
  index, orderbook = pse_pseequities_basicwithlastsale_itch_v2_3.orderbook.dissect(buffer, index, packet, parent)

  -- Price Type: Alpha
  index, price_type = pse_pseequities_basicwithlastsale_itch_v2_3.price_type.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = pse_pseequities_basicwithlastsale_itch_v2_3.isin.dissect(buffer, index, packet, parent)

  -- Sec Code: Alpha
  index, sec_code = pse_pseequities_basicwithlastsale_itch_v2_3.sec_code.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = pse_pseequities_basicwithlastsale_itch_v2_3.currency.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = pse_pseequities_basicwithlastsale_itch_v2_3.group.dissect(buffer, index, packet, parent)

  -- Lot Size: Integer
  index, lot_size = pse_pseequities_basicwithlastsale_itch_v2_3.lot_size.dissect(buffer, index, packet, parent)

  -- Quantity Tick Size Table Id: Integer
  index, quantity_tick_size_table_id = pse_pseequities_basicwithlastsale_itch_v2_3.quantity_tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Price Tick Size Table Id: Integer
  index, price_tick_size_table_id = pse_pseequities_basicwithlastsale_itch_v2_3.price_tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Price Decimals: Integer
  index, price_decimals = pse_pseequities_basicwithlastsale_itch_v2_3.price_decimals.dissect(buffer, index, packet, parent)

  -- Delisting Date: Integer
  index, delisting_date = pse_pseequities_basicwithlastsale_itch_v2_3.delisting_date.dissect(buffer, index, packet, parent)

  -- Delisting Time: Integer
  index, delisting_time = pse_pseequities_basicwithlastsale_itch_v2_3.delisting_time.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alpha
  index, instrument_type = pse_pseequities_basicwithlastsale_itch_v2_3.instrument_type.dissect(buffer, index, packet, parent)

  -- Shares: Integer
  index, shares = pse_pseequities_basicwithlastsale_itch_v2_3.shares.dissect(buffer, index, packet, parent)

  -- Product Code: Alpha
  index, product_code = pse_pseequities_basicwithlastsale_itch_v2_3.product_code.dissect(buffer, index, packet, parent)

  -- Cache Orderbook Directory Message record by orderbook
  if show.records and not packet.visited then
    pse_pseequities_basicwithlastsale_itch_v2_3.conversation.current.orderbook_directory_message[orderbook] = {
      record_frame = packet.number,
      record_previous = pse_pseequities_basicwithlastsale_itch_v2_3.conversation.current.orderbook_directory_message[orderbook],
      orderbook = orderbook,
      sec_code = sec_code,
      price_decimals = price_decimals,
    }
  end

  return index
end

-- Dissect: Orderbook Directory Message
pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.orderbook_directory_message, buffer(offset, 0))
    local index = pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Quantity Tick Size Message
pse_pseequities_basicwithlastsale_itch_v2_3.quantity_tick_size_message = {}

-- Size: Quantity Tick Size Message
pse_pseequities_basicwithlastsale_itch_v2_3.quantity_tick_size_message.size =
  pse_pseequities_basicwithlastsale_itch_v2_3.timestamp.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.tick_size_table_id.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.tick_size_integer_8.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.quantity_start.size

-- Display: Quantity Tick Size Message
pse_pseequities_basicwithlastsale_itch_v2_3.quantity_tick_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quantity Tick Size Message
pse_pseequities_basicwithlastsale_itch_v2_3.quantity_tick_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = pse_pseequities_basicwithlastsale_itch_v2_3.event_time.dissect(buffer, index, packet, parent)

  -- Tick Size Table Id: Integer
  index, tick_size_table_id = pse_pseequities_basicwithlastsale_itch_v2_3.tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Tick Size Integer 8: Integer
  index, tick_size_integer_8 = pse_pseequities_basicwithlastsale_itch_v2_3.tick_size_integer_8.dissect(buffer, index, packet, parent)

  -- Quantity Start: Integer
  index, quantity_start = pse_pseequities_basicwithlastsale_itch_v2_3.quantity_start.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quantity Tick Size Message
pse_pseequities_basicwithlastsale_itch_v2_3.quantity_tick_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.quantity_tick_size_message, buffer(offset, 0))
    local index = pse_pseequities_basicwithlastsale_itch_v2_3.quantity_tick_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = pse_pseequities_basicwithlastsale_itch_v2_3.quantity_tick_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return pse_pseequities_basicwithlastsale_itch_v2_3.quantity_tick_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Tick Size Message
pse_pseequities_basicwithlastsale_itch_v2_3.price_tick_size_message = {}

-- Size: Price Tick Size Message
pse_pseequities_basicwithlastsale_itch_v2_3.price_tick_size_message.size =
  pse_pseequities_basicwithlastsale_itch_v2_3.timestamp.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.tick_size_table_id.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.tick_size_integer_4.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.price_start.size

-- Display: Price Tick Size Message
pse_pseequities_basicwithlastsale_itch_v2_3.price_tick_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Tick Size Message
pse_pseequities_basicwithlastsale_itch_v2_3.price_tick_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = pse_pseequities_basicwithlastsale_itch_v2_3.event_time.dissect(buffer, index, packet, parent)

  -- Tick Size Table Id: Integer
  index, tick_size_table_id = pse_pseequities_basicwithlastsale_itch_v2_3.tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Tick Size Integer 4: Integer
  index, tick_size_integer_4 = pse_pseequities_basicwithlastsale_itch_v2_3.tick_size_integer_4.dissect(buffer, index, packet, parent)

  -- Price Start: Integer
  index, price_start = pse_pseequities_basicwithlastsale_itch_v2_3.price_start.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Tick Size Message
pse_pseequities_basicwithlastsale_itch_v2_3.price_tick_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.price_tick_size_message, buffer(offset, 0))
    local index = pse_pseequities_basicwithlastsale_itch_v2_3.price_tick_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = pse_pseequities_basicwithlastsale_itch_v2_3.price_tick_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return pse_pseequities_basicwithlastsale_itch_v2_3.price_tick_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Schedule Message
pse_pseequities_basicwithlastsale_itch_v2_3.trading_schedule_message = {}

-- Size: Trading Schedule Message
pse_pseequities_basicwithlastsale_itch_v2_3.trading_schedule_message.size =
  pse_pseequities_basicwithlastsale_itch_v2_3.timestamp.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.group.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.event_code.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.orderbook.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.scheduled_time.size

-- Display: Trading Schedule Message
pse_pseequities_basicwithlastsale_itch_v2_3.trading_schedule_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Schedule Message
pse_pseequities_basicwithlastsale_itch_v2_3.trading_schedule_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = pse_pseequities_basicwithlastsale_itch_v2_3.event_time.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = pse_pseequities_basicwithlastsale_itch_v2_3.group.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = pse_pseequities_basicwithlastsale_itch_v2_3.event_code.dissect(buffer, index, packet, parent)

  -- Orderbook: Integer (record lookup)
  index, orderbook, orderbook_record = pse_pseequities_basicwithlastsale_itch_v2_3.orderbook.lookup(buffer, index, packet, parent)

  -- Scheduled Time: Integer
  index, scheduled_time = pse_pseequities_basicwithlastsale_itch_v2_3.scheduled_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Schedule Message
pse_pseequities_basicwithlastsale_itch_v2_3.trading_schedule_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.trading_schedule_message, buffer(offset, 0))
    local index = pse_pseequities_basicwithlastsale_itch_v2_3.trading_schedule_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = pse_pseequities_basicwithlastsale_itch_v2_3.trading_schedule_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return pse_pseequities_basicwithlastsale_itch_v2_3.trading_schedule_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
pse_pseequities_basicwithlastsale_itch_v2_3.system_event_message = {}

-- Size: System Event Message
pse_pseequities_basicwithlastsale_itch_v2_3.system_event_message.size =
  pse_pseequities_basicwithlastsale_itch_v2_3.timestamp.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.group.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.event_code.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.orderbook.size

-- Display: System Event Message
pse_pseequities_basicwithlastsale_itch_v2_3.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
pse_pseequities_basicwithlastsale_itch_v2_3.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = pse_pseequities_basicwithlastsale_itch_v2_3.event_time.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = pse_pseequities_basicwithlastsale_itch_v2_3.group.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = pse_pseequities_basicwithlastsale_itch_v2_3.event_code.dissect(buffer, index, packet, parent)

  -- Orderbook: Integer (record lookup)
  index, orderbook, orderbook_record = pse_pseequities_basicwithlastsale_itch_v2_3.orderbook.lookup(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
pse_pseequities_basicwithlastsale_itch_v2_3.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.system_event_message, buffer(offset, 0))
    local index = pse_pseequities_basicwithlastsale_itch_v2_3.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = pse_pseequities_basicwithlastsale_itch_v2_3.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return pse_pseequities_basicwithlastsale_itch_v2_3.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Stamp Seconds Message
pse_pseequities_basicwithlastsale_itch_v2_3.time_stamp_seconds_message = {}

-- Size: Time Stamp Seconds Message
pse_pseequities_basicwithlastsale_itch_v2_3.time_stamp_seconds_message.size =
  pse_pseequities_basicwithlastsale_itch_v2_3.second.size

-- Display: Time Stamp Seconds Message
pse_pseequities_basicwithlastsale_itch_v2_3.time_stamp_seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Stamp Seconds Message
pse_pseequities_basicwithlastsale_itch_v2_3.time_stamp_seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: Integer
  index, second = pse_pseequities_basicwithlastsale_itch_v2_3.second.dissect(buffer, index, packet, parent)

  -- Store Second Value
  pse_pseequities_basicwithlastsale_itch_v2_3.second.current = second

  if not packet.visited then
    pse_pseequities_basicwithlastsale_itch_v2_3.conversation.current.second.last = second
  end

  return index
end

-- Dissect: Time Stamp Seconds Message
pse_pseequities_basicwithlastsale_itch_v2_3.time_stamp_seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.time_stamp_seconds_message, buffer(offset, 0))
    local index = pse_pseequities_basicwithlastsale_itch_v2_3.time_stamp_seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = pse_pseequities_basicwithlastsale_itch_v2_3.time_stamp_seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return pse_pseequities_basicwithlastsale_itch_v2_3.time_stamp_seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
pse_pseequities_basicwithlastsale_itch_v2_3.payload = {}

-- Dispatch: Payload
pse_pseequities_basicwithlastsale_itch_v2_3.payload.dispatch = {
  ["T"] = pse_pseequities_basicwithlastsale_itch_v2_3.time_stamp_seconds_message.dissect,
  ["S"] = pse_pseequities_basicwithlastsale_itch_v2_3.system_event_message.dissect,
  ["s"] = pse_pseequities_basicwithlastsale_itch_v2_3.trading_schedule_message.dissect,
  ["L"] = pse_pseequities_basicwithlastsale_itch_v2_3.price_tick_size_message.dissect,
  ["M"] = pse_pseequities_basicwithlastsale_itch_v2_3.quantity_tick_size_message.dissect,
  ["R"] = pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_directory_message.dissect,
  ["k"] = pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_restrictions_message.dissect,
  ["H"] = pse_pseequities_basicwithlastsale_itch_v2_3.orderbook_trading_action_message.dissect,
  ["P"] = pse_pseequities_basicwithlastsale_itch_v2_3.trade_message.dissect,
  ["p"] = pse_pseequities_basicwithlastsale_itch_v2_3.trade_with_broker_id_message.dissect,
  ["O"] = pse_pseequities_basicwithlastsale_itch_v2_3.bbo_quotation_message.dissect,
}

-- Dissect: Payload
pse_pseequities_basicwithlastsale_itch_v2_3.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = pse_pseequities_basicwithlastsale_itch_v2_3.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
pse_pseequities_basicwithlastsale_itch_v2_3.message_header = {}

-- Size: Message Header
pse_pseequities_basicwithlastsale_itch_v2_3.message_header.size =
  pse_pseequities_basicwithlastsale_itch_v2_3.message_length.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.message_type.size

-- Display: Message Header
pse_pseequities_basicwithlastsale_itch_v2_3.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
pse_pseequities_basicwithlastsale_itch_v2_3.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = pse_pseequities_basicwithlastsale_itch_v2_3.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 11 values
  index, message_type = pse_pseequities_basicwithlastsale_itch_v2_3.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
pse_pseequities_basicwithlastsale_itch_v2_3.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.message_header, buffer(offset, 0))
    local index = pse_pseequities_basicwithlastsale_itch_v2_3.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = pse_pseequities_basicwithlastsale_itch_v2_3.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return pse_pseequities_basicwithlastsale_itch_v2_3.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
pse_pseequities_basicwithlastsale_itch_v2_3.message = {}

-- Read runtime size of: Message
pse_pseequities_basicwithlastsale_itch_v2_3.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
pse_pseequities_basicwithlastsale_itch_v2_3.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
pse_pseequities_basicwithlastsale_itch_v2_3.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and pse_pseequities_basicwithlastsale_itch_v2_3.packet_sequence ~= nil then
    local sequence = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.message_sequence_number, UInt64.new(pse_pseequities_basicwithlastsale_itch_v2_3.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = pse_pseequities_basicwithlastsale_itch_v2_3.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 11 branches
  index = pse_pseequities_basicwithlastsale_itch_v2_3.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
pse_pseequities_basicwithlastsale_itch_v2_3.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = pse_pseequities_basicwithlastsale_itch_v2_3.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.message, buffer(offset, 0))
    local current = pse_pseequities_basicwithlastsale_itch_v2_3.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = pse_pseequities_basicwithlastsale_itch_v2_3.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    pse_pseequities_basicwithlastsale_itch_v2_3.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
pse_pseequities_basicwithlastsale_itch_v2_3.end_of_session = {}

-- Display: End Of Session
pse_pseequities_basicwithlastsale_itch_v2_3.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
pse_pseequities_basicwithlastsale_itch_v2_3.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
pse_pseequities_basicwithlastsale_itch_v2_3.heartbeat = {}

-- Display: Heartbeat
pse_pseequities_basicwithlastsale_itch_v2_3.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
pse_pseequities_basicwithlastsale_itch_v2_3.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = pse_pseequities_basicwithlastsale_itch_v2_3.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
pse_pseequities_basicwithlastsale_itch_v2_3.messages = {}

-- Dispatch: Messages
pse_pseequities_basicwithlastsale_itch_v2_3.messages.dispatch = {
  [0] = pse_pseequities_basicwithlastsale_itch_v2_3.heartbeat.dissect,
  [65535] = pse_pseequities_basicwithlastsale_itch_v2_3.end_of_session.dissect,
}

-- Dissect: Messages
pse_pseequities_basicwithlastsale_itch_v2_3.messages.dissect = function(buffer, offset, packet, parent, message_count)
  local dissect = pse_pseequities_basicwithlastsale_itch_v2_3.messages.dispatch[message_count]
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
    offset = pse_pseequities_basicwithlastsale_itch_v2_3.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
pse_pseequities_basicwithlastsale_itch_v2_3.packet_header = {}

-- Size: Packet Header
pse_pseequities_basicwithlastsale_itch_v2_3.packet_header.size =
  pse_pseequities_basicwithlastsale_itch_v2_3.session.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.sequence_number.size + 
  pse_pseequities_basicwithlastsale_itch_v2_3.message_count.size

-- Display: Packet Header
pse_pseequities_basicwithlastsale_itch_v2_3.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
pse_pseequities_basicwithlastsale_itch_v2_3.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = pse_pseequities_basicwithlastsale_itch_v2_3.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = pse_pseequities_basicwithlastsale_itch_v2_3.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = pse_pseequities_basicwithlastsale_itch_v2_3.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  pse_pseequities_basicwithlastsale_itch_v2_3.packet_sequence = sequence_number

  return index
end

-- Dissect: Packet Header
pse_pseequities_basicwithlastsale_itch_v2_3.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3.fields.packet_header, buffer(offset, 0))
    local index = pse_pseequities_basicwithlastsale_itch_v2_3.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = pse_pseequities_basicwithlastsale_itch_v2_3.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return pse_pseequities_basicwithlastsale_itch_v2_3.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
pse_pseequities_basicwithlastsale_itch_v2_3.packet = {}

-- Verify required size of Udp packet
pse_pseequities_basicwithlastsale_itch_v2_3.packet.requiredsize = function(buffer)
  return buffer:len() >= pse_pseequities_basicwithlastsale_itch_v2_3.packet_header.size
end

-- Dissect Packet
pse_pseequities_basicwithlastsale_itch_v2_3.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = pse_pseequities_basicwithlastsale_itch_v2_3.conversation.data(packet)
  if not packet.visited then
    data.second.frames[packet.number] = data.second.last
  end
  pse_pseequities_basicwithlastsale_itch_v2_3.second.current = data.second.frames[packet.number]
  pse_pseequities_basicwithlastsale_itch_v2_3.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = pse_pseequities_basicwithlastsale_itch_v2_3.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = pse_pseequities_basicwithlastsale_itch_v2_3.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_pse_pseequities_basicwithlastsale_itch_v2_3.init()
  pse_pseequities_basicwithlastsale_itch_v2_3.second.current = nil
  pse_pseequities_basicwithlastsale_itch_v2_3.conversation.current = nil
  pse_pseequities_basicwithlastsale_itch_v2_3.conversation.flows = {}
end

-- Dissector for Pse PseEquities BasicWithLastSale Itch 2.3
function omi_pse_pseequities_basicwithlastsale_itch_v2_3.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_pse_pseequities_basicwithlastsale_itch_v2_3.name

  -- Dissect protocol
  local protocol = parent:add(omi_pse_pseequities_basicwithlastsale_itch_v2_3, buffer(), omi_pse_pseequities_basicwithlastsale_itch_v2_3.description, "("..buffer:len().." Bytes)")
  return pse_pseequities_basicwithlastsale_itch_v2_3.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Pse PseEquities BasicWithLastSale Itch 2.3 (Udp)
local function omi_pse_pseequities_basicwithlastsale_itch_v2_3_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not pse_pseequities_basicwithlastsale_itch_v2_3.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_pse_pseequities_basicwithlastsale_itch_v2_3
  omi_pse_pseequities_basicwithlastsale_itch_v2_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Pse PseEquities BasicWithLastSale Itch 2.3
omi_pse_pseequities_basicwithlastsale_itch_v2_3:register_heuristic("udp", omi_pse_pseequities_basicwithlastsale_itch_v2_3_udp_heuristic)

-- Register Pse PseEquities BasicWithLastSale Itch 2.3 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_pse_pseequities_basicwithlastsale_itch_v2_3)

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
