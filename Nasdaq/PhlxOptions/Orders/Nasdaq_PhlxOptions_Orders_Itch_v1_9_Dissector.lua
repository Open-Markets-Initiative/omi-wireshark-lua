-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq PhlxOptions Orders Itch 1.9 Protocol
local omi_nasdaq_phlxoptions_orders_itch_v1_9 = Proto("Omi.Nasdaq.PhlxOptions.Orders.Itch.v1.9", "Nasdaq PhlxOptions Orders Itch 1.9")

-- Protocol table
local nasdaq_phlxoptions_orders_itch_v1_9 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq PhlxOptions Orders Itch 1.9 Fields
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.action = ProtoField.new("Action", "nasdaq.phlxoptions.orders.itch.v1.9.action", ftypes.STRING, nil, nil, nil, "Defines the state of the strategy")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.all_or_none = ProtoField.new("All Or None", "nasdaq.phlxoptions.orders.itch.v1.9.allornone", ftypes.STRING, nil, nil, nil, "Indicates if order is All or None Order:")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.auction_id = ProtoField.new("Auction Id", "nasdaq.phlxoptions.orders.itch.v1.9.auctionid", ftypes.UINT32, nil, nil, nil, "Uniquely identifies the Auction for the trading day. Presently the Auction ID will be zero for non-PIXL auctions.")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.auction_side = ProtoField.new("Auction Side", "nasdaq.phlxoptions.orders.itch.v1.9.auctionside", ftypes.STRING, nil, nil, nil, "Indicates the side of the auction:")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.auction_type = ProtoField.new("Auction Type", "nasdaq.phlxoptions.orders.itch.v1.9.auctiontype", ftypes.STRING, nil, nil, nil, "Type of Auction:")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_order_leg = ProtoField.new("Complex Order Leg", "nasdaq.phlxoptions.orders.itch.v1.9.complexorderleg", ftypes.STRING, nil, nil, nil, "Complex Order Leg Information")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_order_strategy_leg = ProtoField.new("Complex Order Strategy Leg", "nasdaq.phlxoptions.orders.itch.v1.9.complexorderstrategyleg", ftypes.STRING, nil, nil, nil, "Complex Order Strategy Leg Information")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.phlxoptions.orders.itch.v1.9.currenttradingstate", ftypes.STRING, nil, nil, nil, "Reflects the current trading state for the option on the PHLX market.")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.customer_firm_indicator = ProtoField.new("Customer Firm Indicator", "nasdaq.phlxoptions.orders.itch.v1.9.customerfirmindicator", ftypes.STRING, nil, nil, nil, "Indicates whether this is a Customer/Firm")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.day = ProtoField.new("Day", "nasdaq.phlxoptions.orders.itch.v1.9.day", ftypes.UINT16, nil, base.DEC, 0x001F, "Day bits")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.debit_or_credit = ProtoField.new("Debit Or Credit", "nasdaq.phlxoptions.orders.itch.v1.9.debitorcredit", ftypes.STRING, nil, nil, nil, "Price Debit or Credit value")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.event_code = ProtoField.new("Event Code", "nasdaq.phlxoptions.orders.itch.v1.9.eventcode", ftypes.STRING, nil, nil, nil, "Refer to System Event Codes below")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.executable_order_volume = ProtoField.new("Executable Order Volume", "nasdaq.phlxoptions.orders.itch.v1.9.executableordervolume", ftypes.UINT32, nil, nil, nil, "Volume available for execution at PHLX.")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.expiration = ProtoField.new("Expiration", "nasdaq.phlxoptions.orders.itch.v1.9.expiration", ftypes.STRING, nil, nil, nil, "Expiration Year, Month and Day Bitfield")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "nasdaq.phlxoptions.orders.itch.v1.9.explicitstrikeprice", ftypes.DOUBLE, nil, nil, nil, "Denotes the explicit strike price of the option. Refer to Data Types for field processing notes.")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.imbalance_volume = ProtoField.new("Imbalance Volume", "nasdaq.phlxoptions.orders.itch.v1.9.imbalancevolume", ftypes.UINT32, nil, nil, nil, "Total number of contracts better than Price (includes Orders that cannot be filled). The Exposed Order size.")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.leg_open_close_indicator = ProtoField.new("Leg Open Close Indicator", "nasdaq.phlxoptions.orders.itch.v1.9.legopencloseindicator", ftypes.STRING, nil, nil, nil, "Indicates whether this Order opens or closes a position for leg:")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.leg_ratio = ProtoField.new("Leg Ratio", "nasdaq.phlxoptions.orders.itch.v1.9.legratio", ftypes.UINT32, nil, nil, nil, "Strategy Leg Ratio")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.limit_price = ProtoField.new("Limit Price", "nasdaq.phlxoptions.orders.itch.v1.9.limitprice", ftypes.DOUBLE, nil, nil, nil, "Limit Price of Limit or Stop Order. Otherwise field is zero.")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.market_qualifier = ProtoField.new("Market Qualifier", "nasdaq.phlxoptions.orders.itch.v1.9.marketqualifier", ftypes.STRING, nil, nil, nil, "Market Qualifier value")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.matched_volume = ProtoField.new("Matched Volume", "nasdaq.phlxoptions.orders.itch.v1.9.matchedvolume", ftypes.UINT32, nil, nil, nil, "Volume that can be traded at Price. For Order Exposure, Matched Volume is zero")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.message_count = ProtoField.new("Message Count", "nasdaq.phlxoptions.orders.itch.v1.9.messagecount", ftypes.UINT16, nil, nil, nil, "Number of messages to follow this header")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.message_data = ProtoField.new("Message Data", "nasdaq.phlxoptions.orders.itch.v1.9.messagedata", ftypes.STRING, nil, nil, nil, "Mold Udp message data")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.message_length = ProtoField.new("Message Length", "nasdaq.phlxoptions.orders.itch.v1.9.messagelength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.message_type = ProtoField.new("Message Type", "nasdaq.phlxoptions.orders.itch.v1.9.messagetype", ftypes.STRING, nil, nil, nil, "Code identifying this message type")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.month = ProtoField.new("Month", "nasdaq.phlxoptions.orders.itch.v1.9.month", ftypes.UINT16, nil, base.DEC, 0x01E0, "Month bits")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.nanoseconds = ProtoField.new("Nanoseconds", "nasdaq.phlxoptions.orders.itch.v1.9.nanoseconds", ftypes.UINT32, nil, nil, nil, "Nanoseconds portion of the timestamp")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.number_of_legs = ProtoField.new("Number Of Legs", "nasdaq.phlxoptions.orders.itch.v1.9.numberoflegs", ftypes.UINT8, nil, nil, nil, "Number of legs in the strategy")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.open_close_indicator = ProtoField.new("Open Close Indicator", "nasdaq.phlxoptions.orders.itch.v1.9.opencloseindicator", ftypes.STRING, nil, nil, nil, "Indicates whether this Order opens or closes a position")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.open_state = ProtoField.new("Open State", "nasdaq.phlxoptions.orders.itch.v1.9.openstate", ftypes.STRING, nil, nil, nil, "Reflects the current eligibility for auto execution of the options security on the PHLX. The allowable values are:")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.option_closing_type = ProtoField.new("Option Closing Type", "nasdaq.phlxoptions.orders.itch.v1.9.optionclosingtype", ftypes.STRING, nil, nil, nil, "Denotes the closing of the option.")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.option_id = ProtoField.new("Option Id", "nasdaq.phlxoptions.orders.itch.v1.9.optionid", ftypes.UINT32, nil, nil, nil, "PHLX Option ID assigned daily, valid for the trading day")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.option_type = ProtoField.new("Option Type", "nasdaq.phlxoptions.orders.itch.v1.9.optiontype", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.order_id = ProtoField.new("Order Id", "nasdaq.phlxoptions.orders.itch.v1.9.orderid", ftypes.UINT32, nil, nil, nil, "PHLX assigned order id")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.order_status = ProtoField.new("Order Status", "nasdaq.phlxoptions.orders.itch.v1.9.orderstatus", ftypes.STRING, nil, nil, nil, "Indicates the current status of the order")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.order_type = ProtoField.new("Order Type", "nasdaq.phlxoptions.orders.itch.v1.9.ordertype", ftypes.STRING, nil, nil, nil, "Indicates the type of order")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.original_order_volume = ProtoField.new("Original Order Volume", "nasdaq.phlxoptions.orders.itch.v1.9.originalordervolume", ftypes.UINT32, nil, nil, nil, "Original Order Volume for this order")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.phlx_tradable = ProtoField.new("Phlx Tradable", "nasdaq.phlxoptions.orders.itch.v1.9.phlxtradable", ftypes.STRING, nil, nil, nil, "Denotes whether or not this option is tradable at the PHLX exchange.")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.price = ProtoField.new("Price", "nasdaq.phlxoptions.orders.itch.v1.9.price", ftypes.DOUBLE, nil, nil, nil, "Price at which auction is started. For PIXL auctions, price is zero. The price at which an exposed order is available for execution.")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.reserved_4 = ProtoField.new("Reserved 4", "nasdaq.phlxoptions.orders.itch.v1.9.reserved4", ftypes.UINT32, nil, nil, nil, "Reserved for future use")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.seconds = ProtoField.new("Seconds", "nasdaq.phlxoptions.orders.itch.v1.9.seconds", ftypes.UINT32, nil, nil, nil, "Seconds portion of the timestamp")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.phlxoptions.orders.itch.v1.9.securitysymbol", ftypes.STRING, nil, nil, nil, "Denotes the option symbol (security symbol) post-symbology rollout. Denotes the root portion of the OPRA symbol pre-symbology rollout")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.phlxoptions.orders.itch.v1.9.sequencenumber", ftypes.UINT32, nil, nil, nil, "Sequence Number of the first message to follow this header")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.session = ProtoField.new("Session", "nasdaq.phlxoptions.orders.itch.v1.9.session", ftypes.STRING, nil, nil, nil, "Identity of the multicast session the payload relates to")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.side = ProtoField.new("Side", "nasdaq.phlxoptions.orders.itch.v1.9.side", ftypes.STRING, nil, nil, nil, "Indicates the side of the order")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.source = ProtoField.new("Source", "nasdaq.phlxoptions.orders.itch.v1.9.source", ftypes.UINT8, nil, nil, nil, "Identifies the source of the Option, valid for the trading day")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.strategy_id = ProtoField.new("Strategy Id", "nasdaq.phlxoptions.orders.itch.v1.9.strategyid", ftypes.UINT32, nil, nil, nil, "PHLX Strategy ID assigned daily, valid while there are any open complex orders for the day")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.time_in_force = ProtoField.new("Time In Force", "nasdaq.phlxoptions.orders.itch.v1.9.timeinforce", ftypes.STRING, nil, nil, nil, "Indicates duration of the order")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.phlxoptions.orders.itch.v1.9.timestamp", ftypes.STRING, nil, nil, nil, "Time the message was sent: seconds after midnight and the nanosecond portion, U.S. Eastern Time")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.phlxoptions.orders.itch.v1.9.underlyingsymbol", ftypes.STRING, nil, nil, nil, "Underlying Symbol for the strategy. All legs in this strategy belong to this Underlying")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.version = ProtoField.new("Version", "nasdaq.phlxoptions.orders.itch.v1.9.version", ftypes.UINT8, nil, nil, nil, "Version of PHLX Orders. Currently set to 1")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.volume = ProtoField.new("Volume", "nasdaq.phlxoptions.orders.itch.v1.9.volume", ftypes.UINT32, nil, nil, nil, "Total volume available in COLA/PIXL/Solicitation. This field will be 0 under certain conditions for COLA when the strategy is opening.")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.year = ProtoField.new("Year", "nasdaq.phlxoptions.orders.itch.v1.9.year", ftypes.UINT16, nil, base.DEC, 0xFE00, "Year bits")

-- Nasdaq PhlxOptions Orders Itch 1.9 Framing
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.message = ProtoField.new("Message", "nasdaq.phlxoptions.orders.itch.v1.9.message", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.message_header = ProtoField.new("Message Header", "nasdaq.phlxoptions.orders.itch.v1.9.messageheader", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.packet = ProtoField.new("Packet", "nasdaq.phlxoptions.orders.itch.v1.9.packet", ftypes.STRING, nil, nil, nil, "Itch Udp Packet")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.phlxoptions.orders.itch.v1.9.packetheader", ftypes.STRING)

-- Nasdaq PhlxOptions Orders 1.9 Application Messages
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "nasdaq.phlxoptions.orders.itch.v1.9.auctionnotificationmessage", ftypes.STRING, nil, nil, nil, "When a symbol goes into an auction, an Auction Notification Message is sent. Also if any auction parameters change during the auction, size for example, a new Auction Notification message will be sent for that symbol.")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_auction_notification_message = ProtoField.new("Complex Auction Notification Message", "nasdaq.phlxoptions.orders.itch.v1.9.complexauctionnotificationmessage", ftypes.STRING, nil, nil, nil, "When a Complex Order Live Auction (COLA) or PIXL/Solicitation auction starts for a strategy of an underlying, a COLA/PIXL/Solicitation notification message containing the auction information will be sent.")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_order_message = ProtoField.new("Complex Order Message", "nasdaq.phlxoptions.orders.itch.v1.9.complexordermessage", ftypes.STRING, nil, nil, nil, "When a Complex Order is received or any change is made to a complex order for an underlying, a Complex Order Message containing the order information will be sent.")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_order_strategy_message = ProtoField.new("Complex Order Strategy Message", "nasdaq.phlxoptions.orders.itch.v1.9.complexorderstrategymessage", ftypes.STRING, nil, nil, nil, "Whenever a complex order is added in the system for an underlying, the order is normalized and results in either the creation of a new complex strategy or is added to an existing strategy. A Complex Order Strategy Message containing the strategy definition will be sent.")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_trading_action_message = ProtoField.new("Complex Trading Action Message", "nasdaq.phlxoptions.orders.itch.v1.9.complextradingactionmessage", ftypes.STRING, nil, nil, nil, "PHLX uses this administrative message to indicate the current trading status of a strategy within the PHLX Options Market.")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.options_directory_message = ProtoField.new("Options Directory Message", "nasdaq.phlxoptions.orders.itch.v1.9.optionsdirectorymessage", ftypes.STRING, nil, nil, nil, "At the start of each trading day, PHLX disseminates directory messages for all symbols trading on the PHLX option system.")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.security_open_closed_message = ProtoField.new("Security Open Closed Message", "nasdaq.phlxoptions.orders.itch.v1.9.securityopenclosedmessage", ftypes.STRING, nil, nil, nil, "PHLX uses this administrative message to indicate when an option has completed the opening process and is now available for auto execution or when the option has closed and is no longer available for auto execution.")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.security_trading_action_message = ProtoField.new("Security Trading Action Message", "nasdaq.phlxoptions.orders.itch.v1.9.securitytradingactionmessage", ftypes.STRING, nil, nil, nil, "PHLX uses this administrative message to indicate the current trading status of an index or equity option within the PHLX Options Market.")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.simple_order_message = ProtoField.new("Simple Order Message", "nasdaq.phlxoptions.orders.itch.v1.9.simpleordermessage", ftypes.STRING, nil, nil, nil, "When a Single Order is received or any change is made to an order, an Order message containing the current order status will be sent.")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.strategy_open_closed_message = ProtoField.new("Strategy Open Closed Message", "nasdaq.phlxoptions.orders.itch.v1.9.strategyopenclosedmessage", ftypes.STRING, nil, nil, nil, "PHLX uses this administrative message to indicate when a strategy has completed the opening process or when the strategy has closed and is no longer available for auto execution.")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.phlxoptions.orders.itch.v1.9.systemeventmessage", ftypes.STRING, nil, nil, nil, "The system event message type is used to signal a market or data feed handler event.")

-- Nasdaq PhlxOptions Orders 1.9 Session Messages
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.phlxoptions.orders.itch.v1.9.endofsession", ftypes.BYTES, nil, nil, nil, "Mold Udp end of session")
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.heartbeat = ProtoField.new("Heartbeat", "nasdaq.phlxoptions.orders.itch.v1.9.heartbeat", ftypes.BYTES, nil, nil, nil, "Mold Udp heartbeat")

-- Nasdaq PhlxOptions Orders Itch 1.9 Generated Fields
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_order_leg_index = ProtoField.new("Complex Order Leg Index", "nasdaq.phlxoptions.orders.itch.v1.9.complexorderlegindex", ftypes.UINT16)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_order_strategy_leg_index = ProtoField.new("Complex Order Strategy Leg Index", "nasdaq.phlxoptions.orders.itch.v1.9.complexorderstrategylegindex", ftypes.UINT16)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.message_index = ProtoField.new("Message Index", "nasdaq.phlxoptions.orders.itch.v1.9.messageindex", ftypes.UINT16)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nasdaq.phlxoptions.orders.itch.v1.9.messagesequencenumber", ftypes.UINT64)

-- Nasdaq PhlxOptions Orders Itch 1.9 Expert Info
nasdaq_phlxoptions_orders_itch_v1_9.experts = {}
nasdaq_phlxoptions_orders_itch_v1_9.experts.message_after_end_of_session = ProtoExpert.new("nasdaq.phlxoptions.orders.itch.v1.9.messageafterendofsession", "Message after the end of session, which must be the last block of its packet", expert.group.MALFORMED, expert.severity.ERROR)
omi_nasdaq_phlxoptions_orders_itch_v1_9.experts = { nasdaq_phlxoptions_orders_itch_v1_9.experts.message_after_end_of_session }

-----------------------------------------------------------------------
-- Nasdaq PhlxOptions Orders Itch 1.9 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_phlxoptions_orders_itch_v1_9.timestamp_format = 2

-- Hours behind UTC (America/New_York) for midnight calculation
nasdaq_phlxoptions_orders_itch_v1_9.utc_offset_hours = 5


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq PhlxOptions Orders Itch 1.9 Element Dissection Options
show.application_messages = true
show.repeating_groups = true
show.structs = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Nasdaq PhlxOptions Orders Itch 1.9 Show Options
omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (America/New_York) for midnight calculation")

-- Handle changed preferences
function omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_headers then
    show.headers = omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_headers
  end
  if show.repeating_groups ~= omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_repeating_groups then
    show.repeating_groups = omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_repeating_groups
  end
  if show.structs ~= omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_structs then
    show.structs = omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_indexes then
    show.indexes = omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_indexes
  end
  if show.sequences ~= omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_sequences then
    show.sequences = omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_sequences
  end
  if nasdaq_phlxoptions_orders_itch_v1_9.timestamp_format ~= omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.timestamp_format then
    nasdaq_phlxoptions_orders_itch_v1_9.timestamp_format = omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.timestamp_format
  end
  if nasdaq_phlxoptions_orders_itch_v1_9.utc_offset_hours ~= omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.utc_offset_hours then
    nasdaq_phlxoptions_orders_itch_v1_9.utc_offset_hours = omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.utc_offset_hours
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
-- Nasdaq PhlxOptions Orders Itch 1.9 Fields
-----------------------------------------------------------------------

-- Action
nasdaq_phlxoptions_orders_itch_v1_9.action = {}

-- Size: Action
nasdaq_phlxoptions_orders_itch_v1_9.action.size = 1

-- Display: Action
nasdaq_phlxoptions_orders_itch_v1_9.action.labels = {
  ["A"] = "Action: Add (A)",
  ["D"] = "Action: Delete (D)",
}

nasdaq_phlxoptions_orders_itch_v1_9.action.display = function(value)
  return nasdaq_phlxoptions_orders_itch_v1_9.action.labels[value] or "Action: Unknown("..value..")"
end

-- Dissect: Action
nasdaq_phlxoptions_orders_itch_v1_9.action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.action, range, value, display)

  return offset + length, value
end

-- All Or None
nasdaq_phlxoptions_orders_itch_v1_9.all_or_none = {}

-- Size: All Or None
nasdaq_phlxoptions_orders_itch_v1_9.all_or_none.size = 1

-- Display: All Or None
nasdaq_phlxoptions_orders_itch_v1_9.all_or_none.labels = {
  ["Y"] = "All Or None: All Or None Order (Y)",
  ["N"] = "All Or None: Not All Or None Order (N)",
}

nasdaq_phlxoptions_orders_itch_v1_9.all_or_none.display = function(value)
  return nasdaq_phlxoptions_orders_itch_v1_9.all_or_none.labels[value] or "All Or None: Unknown("..value..")"
end

-- Dissect: All Or None
nasdaq_phlxoptions_orders_itch_v1_9.all_or_none.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.all_or_none.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.all_or_none.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.all_or_none, range, value, display)

  return offset + length, value
end

-- Auction Id
nasdaq_phlxoptions_orders_itch_v1_9.auction_id = {}

-- Size: Auction Id
nasdaq_phlxoptions_orders_itch_v1_9.auction_id.size = 4

-- Display: Auction Id
nasdaq_phlxoptions_orders_itch_v1_9.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
nasdaq_phlxoptions_orders_itch_v1_9.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.auction_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Side
nasdaq_phlxoptions_orders_itch_v1_9.auction_side = {}

-- Size: Auction Side
nasdaq_phlxoptions_orders_itch_v1_9.auction_side.size = 1

-- Display: Auction Side
nasdaq_phlxoptions_orders_itch_v1_9.auction_side.labels = {
  ["B"] = "Auction Side: Buy (B)",
  ["S"] = "Auction Side: Sell (S)",
  ["*"] = "Auction Side: Solicitation Auction (*)",
}

nasdaq_phlxoptions_orders_itch_v1_9.auction_side.display = function(value)
  return nasdaq_phlxoptions_orders_itch_v1_9.auction_side.labels[value] or "Auction Side: Unknown("..value..")"
end

-- Dissect: Auction Side
nasdaq_phlxoptions_orders_itch_v1_9.auction_side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.auction_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.auction_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.auction_side, range, value, display)

  return offset + length, value
end

-- Auction Type
nasdaq_phlxoptions_orders_itch_v1_9.auction_type = {}

-- Size: Auction Type
nasdaq_phlxoptions_orders_itch_v1_9.auction_type.size = 1

-- Display: Auction Type
nasdaq_phlxoptions_orders_itch_v1_9.auction_type.labels = {
  ["C"] = "Auction Type: Cola (C)",
  ["O"] = "Auction Type: Opening (O)",
  ["R"] = "Auction Type: Reopening (R)",
  ["P"] = "Auction Type: Pixl (P)",
  ["S"] = "Auction Type: Solicitation (S)",
  ["I"] = "Auction Type: Order Exposure (I)",
}

nasdaq_phlxoptions_orders_itch_v1_9.auction_type.display = function(value)
  return nasdaq_phlxoptions_orders_itch_v1_9.auction_type.labels[value] or "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nasdaq_phlxoptions_orders_itch_v1_9.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Current Trading State
nasdaq_phlxoptions_orders_itch_v1_9.current_trading_state = {}

-- Size: Current Trading State
nasdaq_phlxoptions_orders_itch_v1_9.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_phlxoptions_orders_itch_v1_9.current_trading_state.labels = {
  ["H"] = "Current Trading State: Halt In Effect (H)",
  ["T"] = "Current Trading State: Phlx Trading Resumed (T)",
}

nasdaq_phlxoptions_orders_itch_v1_9.current_trading_state.display = function(value)
  return nasdaq_phlxoptions_orders_itch_v1_9.current_trading_state.labels[value] or "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_phlxoptions_orders_itch_v1_9.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Customer Firm Indicator
nasdaq_phlxoptions_orders_itch_v1_9.customer_firm_indicator = {}

-- Size: Customer Firm Indicator
nasdaq_phlxoptions_orders_itch_v1_9.customer_firm_indicator.size = 1

-- Display: Customer Firm Indicator
nasdaq_phlxoptions_orders_itch_v1_9.customer_firm_indicator.display = function(value)
  if value == "C" then
    return "Customer Firm Indicator: Customer Order (C)"
  end
  if value == "F" then
    return "Customer Firm Indicator: Firm Order (F)"
  end
  if value == "M" then
    return "Customer Firm Indicator: Onfloor Market Maker (M)"
  end
  if value == "B" then
    return "Customer Firm Indicator: Broker Dealer Order (B)"
  end
  if value == "P" then
    return "Customer Firm Indicator: Professional Order (P)"
  end
  if value == " " then
    return "Customer Firm Indicator: Na For Implied Order (<whitespace>)"
  end

  return "Customer Firm Indicator: Unknown("..value..")"
end

-- Dissect: Customer Firm Indicator
nasdaq_phlxoptions_orders_itch_v1_9.customer_firm_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.customer_firm_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.customer_firm_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.customer_firm_indicator, range, value, display)

  return offset + length, value
end

-- Debit Or Credit
nasdaq_phlxoptions_orders_itch_v1_9.debit_or_credit = {}

-- Size: Debit Or Credit
nasdaq_phlxoptions_orders_itch_v1_9.debit_or_credit.size = 1

-- Display: Debit Or Credit
nasdaq_phlxoptions_orders_itch_v1_9.debit_or_credit.display = function(value)
  if value == "D" then
    return "Debit Or Credit: Net Debit (D)"
  end
  if value == "C" then
    return "Debit Or Credit: Net Credit (C)"
  end
  if value == " " then
    return "Debit Or Credit: Even Or Market Order (<whitespace>)"
  end
  if value == "*" then
    return "Debit Or Credit: Anonymous (*)"
  end

  return "Debit Or Credit: Unknown("..value..")"
end

-- Dissect: Debit Or Credit
nasdaq_phlxoptions_orders_itch_v1_9.debit_or_credit.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.debit_or_credit.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.debit_or_credit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.debit_or_credit, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_phlxoptions_orders_itch_v1_9.event_code = {}

-- Size: Event Code
nasdaq_phlxoptions_orders_itch_v1_9.event_code.size = 1

-- Display: Event Code
nasdaq_phlxoptions_orders_itch_v1_9.event_code.labels = {
  ["O"] = "Event Code: Start Of Messages (O)",
  ["S"] = "Event Code: Start Of System Hours (S)",
  ["Q"] = "Event Code: Start Of Opening Process (Q)",
  ["N"] = "Event Code: Start Of Normal Hours Closing Process (N)",
  ["L"] = "Event Code: Start Of Late Hours Closing Process (L)",
  ["E"] = "Event Code: End Of System Hours (E)",
  ["C"] = "Event Code: End Of Messages (C)",
  ["W"] = "Event Code: End Of Wco Early Closing (W)",
}

nasdaq_phlxoptions_orders_itch_v1_9.event_code.display = function(value)
  return nasdaq_phlxoptions_orders_itch_v1_9.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_phlxoptions_orders_itch_v1_9.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executable Order Volume
nasdaq_phlxoptions_orders_itch_v1_9.executable_order_volume = {}

-- Size: Executable Order Volume
nasdaq_phlxoptions_orders_itch_v1_9.executable_order_volume.size = 4

-- Display: Executable Order Volume
nasdaq_phlxoptions_orders_itch_v1_9.executable_order_volume.display = function(value)
  return "Executable Order Volume: "..value
end

-- Dissect: Executable Order Volume
nasdaq_phlxoptions_orders_itch_v1_9.executable_order_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.executable_order_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.executable_order_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.executable_order_volume, range, value, display)

  return offset + length, value
end

-- Explicit Strike Price
nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price = {}

-- Size: Explicit Strike Price
nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.size = 4

-- Display: Explicit Strike Price
nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.display = function(value)
  return "Explicit Strike Price: "..value
end

-- Translate: Explicit Strike Price
nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Explicit Strike Price
nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.translate(raw)
  local display = nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.explicit_strike_price, range, value, display)

  return offset + length, value
end

-- Imbalance Volume
nasdaq_phlxoptions_orders_itch_v1_9.imbalance_volume = {}

-- Size: Imbalance Volume
nasdaq_phlxoptions_orders_itch_v1_9.imbalance_volume.size = 4

-- Display: Imbalance Volume
nasdaq_phlxoptions_orders_itch_v1_9.imbalance_volume.display = function(value)
  return "Imbalance Volume: "..value
end

-- Dissect: Imbalance Volume
nasdaq_phlxoptions_orders_itch_v1_9.imbalance_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.imbalance_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.imbalance_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.imbalance_volume, range, value, display)

  return offset + length, value
end

-- Leg Open Close Indicator
nasdaq_phlxoptions_orders_itch_v1_9.leg_open_close_indicator = {}

-- Size: Leg Open Close Indicator
nasdaq_phlxoptions_orders_itch_v1_9.leg_open_close_indicator.size = 1

-- Display: Leg Open Close Indicator
nasdaq_phlxoptions_orders_itch_v1_9.leg_open_close_indicator.display = function(value)
  if value == "O" then
    return "Leg Open Close Indicator: Opens Position (O)"
  end
  if value == "C" then
    return "Leg Open Close Indicator: Closes Position (C)"
  end
  if value == " " then
    return "Leg Open Close Indicator: Stock Leg (<whitespace>)"
  end

  return "Leg Open Close Indicator: Unknown("..value..")"
end

-- Dissect: Leg Open Close Indicator
nasdaq_phlxoptions_orders_itch_v1_9.leg_open_close_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.leg_open_close_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.leg_open_close_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.leg_open_close_indicator, range, value, display)

  return offset + length, value
end

-- Leg Ratio
nasdaq_phlxoptions_orders_itch_v1_9.leg_ratio = {}

-- Size: Leg Ratio
nasdaq_phlxoptions_orders_itch_v1_9.leg_ratio.size = 4

-- Display: Leg Ratio
nasdaq_phlxoptions_orders_itch_v1_9.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
nasdaq_phlxoptions_orders_itch_v1_9.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Limit Price
nasdaq_phlxoptions_orders_itch_v1_9.limit_price = {}

-- Size: Limit Price
nasdaq_phlxoptions_orders_itch_v1_9.limit_price.size = 4

-- Display: Limit Price
nasdaq_phlxoptions_orders_itch_v1_9.limit_price.display = function(value)
  return "Limit Price: "..value
end

-- Translate: Limit Price
nasdaq_phlxoptions_orders_itch_v1_9.limit_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Limit Price
nasdaq_phlxoptions_orders_itch_v1_9.limit_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.limit_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_phlxoptions_orders_itch_v1_9.limit_price.translate(raw)
  local display = nasdaq_phlxoptions_orders_itch_v1_9.limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.limit_price, range, value, display)

  return offset + length, value
end

-- Market Qualifier
nasdaq_phlxoptions_orders_itch_v1_9.market_qualifier = {}

-- Size: Market Qualifier
nasdaq_phlxoptions_orders_itch_v1_9.market_qualifier.size = 1

-- Display: Market Qualifier
nasdaq_phlxoptions_orders_itch_v1_9.market_qualifier.display = function(value)
  if value == "O" then
    return "Market Qualifier: Opening Order (O)"
  end
  if value == "I" then
    return "Market Qualifier: Implied Order (I)"
  end
  if value == " " then
    return "Market Qualifier: Na (<whitespace>)"
  end

  return "Market Qualifier: Unknown("..value..")"
end

-- Dissect: Market Qualifier
nasdaq_phlxoptions_orders_itch_v1_9.market_qualifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.market_qualifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.market_qualifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.market_qualifier, range, value, display)

  return offset + length, value
end

-- Matched Volume
nasdaq_phlxoptions_orders_itch_v1_9.matched_volume = {}

-- Size: Matched Volume
nasdaq_phlxoptions_orders_itch_v1_9.matched_volume.size = 4

-- Display: Matched Volume
nasdaq_phlxoptions_orders_itch_v1_9.matched_volume.display = function(value)
  return "Matched Volume: "..value
end

-- Dissect: Matched Volume
nasdaq_phlxoptions_orders_itch_v1_9.matched_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.matched_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.matched_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.matched_volume, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_phlxoptions_orders_itch_v1_9.message_count = {}

-- Size: Message Count
nasdaq_phlxoptions_orders_itch_v1_9.message_count.size = 2

-- Display: Message Count
nasdaq_phlxoptions_orders_itch_v1_9.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_phlxoptions_orders_itch_v1_9.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_phlxoptions_orders_itch_v1_9.message_length = {}

-- Size: Message Length
nasdaq_phlxoptions_orders_itch_v1_9.message_length.size = 2

-- Display: Message Length
nasdaq_phlxoptions_orders_itch_v1_9.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_phlxoptions_orders_itch_v1_9.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_phlxoptions_orders_itch_v1_9.message_type = {}

-- Size: Message Type
nasdaq_phlxoptions_orders_itch_v1_9.message_type.size = 1

-- Display: Message Type
nasdaq_phlxoptions_orders_itch_v1_9.message_type.labels = {
  ["S"] = "Message Type: System Event Message (S)",
  ["D"] = "Message Type: Options Directory Message (D)",
  ["R"] = "Message Type: Complex Order Strategy Message (R)",
  ["H"] = "Message Type: Security Trading Action Message (H)",
  ["I"] = "Message Type: Complex Trading Action Message (I)",
  ["P"] = "Message Type: Security Open Closed Message (P)",
  ["Q"] = "Message Type: Strategy Open Closed Message (Q)",
  ["O"] = "Message Type: Simple Order Message (O)",
  ["X"] = "Message Type: Complex Order Message (X)",
  ["A"] = "Message Type: Auction Notification Message (A)",
  ["C"] = "Message Type: Complex Auction Notification Message (C)",
}

nasdaq_phlxoptions_orders_itch_v1_9.message_type.display = function(value)
  return nasdaq_phlxoptions_orders_itch_v1_9.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_phlxoptions_orders_itch_v1_9.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nanoseconds
nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds = {}

-- Size: Nanoseconds
nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.size = 4

-- Display: Nanoseconds
nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Number Of Legs
nasdaq_phlxoptions_orders_itch_v1_9.number_of_legs = {}

-- Size: Number Of Legs
nasdaq_phlxoptions_orders_itch_v1_9.number_of_legs.size = 1

-- Display: Number Of Legs
nasdaq_phlxoptions_orders_itch_v1_9.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
nasdaq_phlxoptions_orders_itch_v1_9.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Open Close Indicator
nasdaq_phlxoptions_orders_itch_v1_9.open_close_indicator = {}

-- Size: Open Close Indicator
nasdaq_phlxoptions_orders_itch_v1_9.open_close_indicator.size = 1

-- Display: Open Close Indicator
nasdaq_phlxoptions_orders_itch_v1_9.open_close_indicator.display = function(value)
  if value == "O" then
    return "Open Close Indicator: Opens Position (O)"
  end
  if value == "C" then
    return "Open Close Indicator: Closes Position (C)"
  end
  if value == " " then
    return "Open Close Indicator: Na (<whitespace>)"
  end

  return "Open Close Indicator: Unknown("..value..")"
end

-- Dissect: Open Close Indicator
nasdaq_phlxoptions_orders_itch_v1_9.open_close_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.open_close_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.open_close_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.open_close_indicator, range, value, display)

  return offset + length, value
end

-- Open State
nasdaq_phlxoptions_orders_itch_v1_9.open_state = {}

-- Size: Open State
nasdaq_phlxoptions_orders_itch_v1_9.open_state.size = 1

-- Display: Open State
nasdaq_phlxoptions_orders_itch_v1_9.open_state.labels = {
  ["Y"] = "Open State: Open For Auto Execution (Y)",
  ["N"] = "Open State: Closed For Auto Execution (N)",
}

nasdaq_phlxoptions_orders_itch_v1_9.open_state.display = function(value)
  return nasdaq_phlxoptions_orders_itch_v1_9.open_state.labels[value] or "Open State: Unknown("..value..")"
end

-- Dissect: Open State
nasdaq_phlxoptions_orders_itch_v1_9.open_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.open_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.open_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.open_state, range, value, display)

  return offset + length, value
end

-- Option Closing Type
nasdaq_phlxoptions_orders_itch_v1_9.option_closing_type = {}

-- Size: Option Closing Type
nasdaq_phlxoptions_orders_itch_v1_9.option_closing_type.size = 1

-- Display: Option Closing Type
nasdaq_phlxoptions_orders_itch_v1_9.option_closing_type.labels = {
  ["N"] = "Option Closing Type: Normal (N)",
  ["L"] = "Option Closing Type: Late (L)",
  ["W"] = "Option Closing Type: Wco Early Closing (W)",
}

nasdaq_phlxoptions_orders_itch_v1_9.option_closing_type.display = function(value)
  return nasdaq_phlxoptions_orders_itch_v1_9.option_closing_type.labels[value] or "Option Closing Type: Unknown("..value..")"
end

-- Dissect: Option Closing Type
nasdaq_phlxoptions_orders_itch_v1_9.option_closing_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.option_closing_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.option_closing_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.option_closing_type, range, value, display)

  return offset + length, value
end

-- Option Id
nasdaq_phlxoptions_orders_itch_v1_9.option_id = {}

-- Size: Option Id
nasdaq_phlxoptions_orders_itch_v1_9.option_id.size = 4

-- Display: Option Id
nasdaq_phlxoptions_orders_itch_v1_9.option_id.display = function(value)
  return "Option Id: "..value
end

-- Dissect: Option Id
nasdaq_phlxoptions_orders_itch_v1_9.option_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.option_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.option_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.option_id, range, value, display)

  return offset + length, value
end

-- Option Type
nasdaq_phlxoptions_orders_itch_v1_9.option_type = {}

-- Size: Option Type
nasdaq_phlxoptions_orders_itch_v1_9.option_type.size = 1

-- Display: Option Type
nasdaq_phlxoptions_orders_itch_v1_9.option_type.display = function(value)
  if value == "C" then
    return "Option Type: Call (C)"
  end
  if value == "P" then
    return "Option Type: Put (P)"
  end
  if value == " " then
    return "Option Type: Stock (<whitespace>)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nasdaq_phlxoptions_orders_itch_v1_9.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.option_type, range, value, display)

  return offset + length, value
end

-- Order Id
nasdaq_phlxoptions_orders_itch_v1_9.order_id = {}

-- Size: Order Id
nasdaq_phlxoptions_orders_itch_v1_9.order_id.size = 4

-- Display: Order Id
nasdaq_phlxoptions_orders_itch_v1_9.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
nasdaq_phlxoptions_orders_itch_v1_9.order_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.order_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Status
nasdaq_phlxoptions_orders_itch_v1_9.order_status = {}

-- Size: Order Status
nasdaq_phlxoptions_orders_itch_v1_9.order_status.size = 1

-- Display: Order Status
nasdaq_phlxoptions_orders_itch_v1_9.order_status.labels = {
  ["O"] = "Order Status: Open (O)",
  ["F"] = "Order Status: Filled (F)",
  ["C"] = "Order Status: Cancelled (C)",
  ["R"] = "Order Status: Renotification (R)",
}

nasdaq_phlxoptions_orders_itch_v1_9.order_status.display = function(value)
  return nasdaq_phlxoptions_orders_itch_v1_9.order_status.labels[value] or "Order Status: Unknown("..value..")"
end

-- Dissect: Order Status
nasdaq_phlxoptions_orders_itch_v1_9.order_status.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.order_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.order_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.order_status, range, value, display)

  return offset + length, value
end

-- Order Type
nasdaq_phlxoptions_orders_itch_v1_9.order_type = {}

-- Size: Order Type
nasdaq_phlxoptions_orders_itch_v1_9.order_type.size = 1

-- Display: Order Type
nasdaq_phlxoptions_orders_itch_v1_9.order_type.labels = {
  ["M"] = "Order Type: Market (M)",
  ["L"] = "Order Type: Limit (L)",
  ["*"] = "Order Type: Anonymous (*)",
}

nasdaq_phlxoptions_orders_itch_v1_9.order_type.display = function(value)
  return nasdaq_phlxoptions_orders_itch_v1_9.order_type.labels[value] or "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
nasdaq_phlxoptions_orders_itch_v1_9.order_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.order_type, range, value, display)

  return offset + length, value
end

-- Original Order Volume
nasdaq_phlxoptions_orders_itch_v1_9.original_order_volume = {}

-- Size: Original Order Volume
nasdaq_phlxoptions_orders_itch_v1_9.original_order_volume.size = 4

-- Display: Original Order Volume
nasdaq_phlxoptions_orders_itch_v1_9.original_order_volume.display = function(value)
  return "Original Order Volume: "..value
end

-- Dissect: Original Order Volume
nasdaq_phlxoptions_orders_itch_v1_9.original_order_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.original_order_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.original_order_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.original_order_volume, range, value, display)

  return offset + length, value
end

-- Phlx Tradable
nasdaq_phlxoptions_orders_itch_v1_9.phlx_tradable = {}

-- Size: Phlx Tradable
nasdaq_phlxoptions_orders_itch_v1_9.phlx_tradable.size = 1

-- Display: Phlx Tradable
nasdaq_phlxoptions_orders_itch_v1_9.phlx_tradable.labels = {
  ["Y"] = "Phlx Tradable: Tradable (Y)",
  ["N"] = "Phlx Tradable: Not Tradable (N)",
}

nasdaq_phlxoptions_orders_itch_v1_9.phlx_tradable.display = function(value)
  return nasdaq_phlxoptions_orders_itch_v1_9.phlx_tradable.labels[value] or "Phlx Tradable: Unknown("..value..")"
end

-- Dissect: Phlx Tradable
nasdaq_phlxoptions_orders_itch_v1_9.phlx_tradable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.phlx_tradable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.phlx_tradable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.phlx_tradable, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_phlxoptions_orders_itch_v1_9.price = {}

-- Size: Price
nasdaq_phlxoptions_orders_itch_v1_9.price.size = 4

-- Display: Price
nasdaq_phlxoptions_orders_itch_v1_9.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nasdaq_phlxoptions_orders_itch_v1_9.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
nasdaq_phlxoptions_orders_itch_v1_9.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_phlxoptions_orders_itch_v1_9.price.translate(raw)
  local display = nasdaq_phlxoptions_orders_itch_v1_9.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.price, range, value, display)

  return offset + length, value
end

-- Reserved 4
nasdaq_phlxoptions_orders_itch_v1_9.reserved_4 = {}

-- Size: Reserved 4
nasdaq_phlxoptions_orders_itch_v1_9.reserved_4.size = 4

-- Display: Reserved 4
nasdaq_phlxoptions_orders_itch_v1_9.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nasdaq_phlxoptions_orders_itch_v1_9.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.reserved_4.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Seconds
nasdaq_phlxoptions_orders_itch_v1_9.seconds = {}

-- Size: Seconds
nasdaq_phlxoptions_orders_itch_v1_9.seconds.size = 4

-- Display: Seconds
nasdaq_phlxoptions_orders_itch_v1_9.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
nasdaq_phlxoptions_orders_itch_v1_9.seconds.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.seconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.seconds, range, value, display)

  return offset + length, value
end

-- Security Symbol
nasdaq_phlxoptions_orders_itch_v1_9.security_symbol = {}

-- Size: Security Symbol
nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.size = 5

-- Display: Security Symbol
nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_phlxoptions_orders_itch_v1_9.sequence_number = {}

-- Size: Sequence Number
nasdaq_phlxoptions_orders_itch_v1_9.sequence_number.size = 4

-- Display: Sequence Number
nasdaq_phlxoptions_orders_itch_v1_9.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_phlxoptions_orders_itch_v1_9.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_phlxoptions_orders_itch_v1_9.session = {}

-- Size: Session
nasdaq_phlxoptions_orders_itch_v1_9.session.size = 10

-- Display: Session
nasdaq_phlxoptions_orders_itch_v1_9.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
nasdaq_phlxoptions_orders_itch_v1_9.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_orders_itch_v1_9.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.session, range, value, display)

  return offset + length, value
end

-- Side
nasdaq_phlxoptions_orders_itch_v1_9.side = {}

-- Size: Side
nasdaq_phlxoptions_orders_itch_v1_9.side.size = 1

-- Display: Side
nasdaq_phlxoptions_orders_itch_v1_9.side.labels = {
  ["B"] = "Side: Buy (B)",
  ["S"] = "Side: Sell (S)",
  ["*"] = "Side: Hidden (*)",
}

nasdaq_phlxoptions_orders_itch_v1_9.side.display = function(value)
  return nasdaq_phlxoptions_orders_itch_v1_9.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
nasdaq_phlxoptions_orders_itch_v1_9.side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.side, range, value, display)

  return offset + length, value
end

-- Source
nasdaq_phlxoptions_orders_itch_v1_9.source = {}

-- Size: Source
nasdaq_phlxoptions_orders_itch_v1_9.source.size = 1

-- Display: Source
nasdaq_phlxoptions_orders_itch_v1_9.source.display = function(value)
  return "Source: "..value
end

-- Dissect: Source
nasdaq_phlxoptions_orders_itch_v1_9.source.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.source.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.source.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.source, range, value, display)

  return offset + length, value
end

-- Strategy Id
nasdaq_phlxoptions_orders_itch_v1_9.strategy_id = {}

-- Size: Strategy Id
nasdaq_phlxoptions_orders_itch_v1_9.strategy_id.size = 4

-- Display: Strategy Id
nasdaq_phlxoptions_orders_itch_v1_9.strategy_id.display = function(value)
  return "Strategy Id: "..value
end

-- Dissect: Strategy Id
nasdaq_phlxoptions_orders_itch_v1_9.strategy_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.strategy_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.strategy_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.strategy_id, range, value, display)

  return offset + length, value
end

-- Time In Force
nasdaq_phlxoptions_orders_itch_v1_9.time_in_force = {}

-- Size: Time In Force
nasdaq_phlxoptions_orders_itch_v1_9.time_in_force.size = 1

-- Display: Time In Force
nasdaq_phlxoptions_orders_itch_v1_9.time_in_force.labels = {
  ["D"] = "Time In Force: Day Order (D)",
  ["G"] = "Time In Force: Gtc (G)",
  ["I"] = "Time In Force: Ioc (I)",
}

nasdaq_phlxoptions_orders_itch_v1_9.time_in_force.display = function(value)
  return nasdaq_phlxoptions_orders_itch_v1_9.time_in_force.labels[value] or "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
nasdaq_phlxoptions_orders_itch_v1_9.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.time_in_force.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nasdaq_phlxoptions_orders_itch_v1_9.underlying_symbol = {}

-- Size: Underlying Symbol
nasdaq_phlxoptions_orders_itch_v1_9.underlying_symbol.size = 13

-- Display: Underlying Symbol
nasdaq_phlxoptions_orders_itch_v1_9.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_phlxoptions_orders_itch_v1_9.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_orders_itch_v1_9.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Version
nasdaq_phlxoptions_orders_itch_v1_9.version = {}

-- Size: Version
nasdaq_phlxoptions_orders_itch_v1_9.version.size = 1

-- Display: Version
nasdaq_phlxoptions_orders_itch_v1_9.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
nasdaq_phlxoptions_orders_itch_v1_9.version.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.version, range, value, display)

  return offset + length, value
end

-- Volume
nasdaq_phlxoptions_orders_itch_v1_9.volume = {}

-- Size: Volume
nasdaq_phlxoptions_orders_itch_v1_9.volume.size = 4

-- Display: Volume
nasdaq_phlxoptions_orders_itch_v1_9.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nasdaq_phlxoptions_orders_itch_v1_9.volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.volume, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq PhlxOptions Orders Itch 1.9
-----------------------------------------------------------------------

-- Timestamp
nasdaq_phlxoptions_orders_itch_v1_9.timestamp = {}

-- Size: Timestamp
nasdaq_phlxoptions_orders_itch_v1_9.timestamp.size =
  nasdaq_phlxoptions_orders_itch_v1_9.seconds.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.size

-- Display: Timestamp
nasdaq_phlxoptions_orders_itch_v1_9.timestamp.display = function(packet, parent, value)
  -- Check null value
  if value == nil then
    return ": No Value"

  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return ": "..os.date("!%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect Fields: Timestamp
nasdaq_phlxoptions_orders_itch_v1_9.timestamp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = nasdaq_phlxoptions_orders_itch_v1_9.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local timestamp = UInt64.new(seconds * 1000000000 + nanoseconds)

  return index, timestamp
end

-- Dissect: Timestamp
nasdaq_phlxoptions_orders_itch_v1_9.timestamp.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.timestamp, buffer(offset, 0))
    local index, value = nasdaq_phlxoptions_orders_itch_v1_9.timestamp.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.timestamp.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_9.timestamp.fields(buffer, offset, packet, parent)
  end
end

-- Complex Auction Notification Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_auction_notification_message = {}

-- Size: Complex Auction Notification Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_auction_notification_message.size =
  nasdaq_phlxoptions_orders_itch_v1_9.timestamp.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.strategy_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.auction_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.auction_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.price.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.auction_side.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.debit_or_credit.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.volume.size

-- Display: Complex Auction Notification Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_auction_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Auction Notification Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_auction_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = nasdaq_phlxoptions_orders_itch_v1_9.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_phlxoptions_orders_itch_v1_9.strategy_id.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_phlxoptions_orders_itch_v1_9.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = nasdaq_phlxoptions_orders_itch_v1_9.auction_type.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nasdaq_phlxoptions_orders_itch_v1_9.price.dissect(buffer, index, packet, parent)

  -- Auction Side: Alpha
  index, auction_side = nasdaq_phlxoptions_orders_itch_v1_9.auction_side.dissect(buffer, index, packet, parent)

  -- Debit Or Credit: Alpha
  index, debit_or_credit = nasdaq_phlxoptions_orders_itch_v1_9.debit_or_credit.dissect(buffer, index, packet, parent)

  -- Volume: Integer
  index, volume = nasdaq_phlxoptions_orders_itch_v1_9.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Auction Notification Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_auction_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_auction_notification_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_9.complex_auction_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.complex_auction_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_9.complex_auction_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Expiration
nasdaq_phlxoptions_orders_itch_v1_9.expiration = {}

-- Size: Expiration
nasdaq_phlxoptions_orders_itch_v1_9.expiration.size = 2

-- Display: Expiration
nasdaq_phlxoptions_orders_itch_v1_9.expiration.display = function(range, value, packet, parent)
  local flags = {}

  -- Day: 5 Bits
  flags[#flags + 1] = "Day: "..bit.rshift(bit.band(value, 0x001F), 0)
  -- Month: 4 Bits
  flags[#flags + 1] = "Month: "..bit.rshift(bit.band(value, 0x01E0), 5)
  -- Year: 7 Bits
  flags[#flags + 1] = "Year: "..bit.rshift(bit.band(value, 0xFE00), 9)

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Expiration
nasdaq_phlxoptions_orders_itch_v1_9.expiration.bits = function(range, value, packet, parent)

  -- Day: 5 Bit Unsigned Fixed Width Integer
  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.day, range, value)

  -- Month: 4 Bit Unsigned Fixed Width Integer
  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.month, range, value)

  -- Year: 7 Bit Unsigned Fixed Width Integer
  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.year, range, value)
end

-- Dissect: Expiration
nasdaq_phlxoptions_orders_itch_v1_9.expiration.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_phlxoptions_orders_itch_v1_9.expiration.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.expiration.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.expiration, range, display)

  if show.structs then
    nasdaq_phlxoptions_orders_itch_v1_9.expiration.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Auction Notification Message
nasdaq_phlxoptions_orders_itch_v1_9.auction_notification_message = {}

-- Size: Auction Notification Message
nasdaq_phlxoptions_orders_itch_v1_9.auction_notification_message.size =
  nasdaq_phlxoptions_orders_itch_v1_9.timestamp.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.option_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.expiration.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.option_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.auction_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.auction_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.price.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.auction_side.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.matched_volume.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.imbalance_volume.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.reserved_4.size

-- Display: Auction Notification Message
nasdaq_phlxoptions_orders_itch_v1_9.auction_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Notification Message
nasdaq_phlxoptions_orders_itch_v1_9.auction_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = nasdaq_phlxoptions_orders_itch_v1_9.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_orders_itch_v1_9.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration: Struct of 3 fields
  index, expiration = nasdaq_phlxoptions_orders_itch_v1_9.expiration.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: Integer
  index, explicit_strike_price = nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_phlxoptions_orders_itch_v1_9.option_type.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_phlxoptions_orders_itch_v1_9.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = nasdaq_phlxoptions_orders_itch_v1_9.auction_type.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nasdaq_phlxoptions_orders_itch_v1_9.price.dissect(buffer, index, packet, parent)

  -- Auction Side: Alpha
  index, auction_side = nasdaq_phlxoptions_orders_itch_v1_9.auction_side.dissect(buffer, index, packet, parent)

  -- Matched Volume: Integer
  index, matched_volume = nasdaq_phlxoptions_orders_itch_v1_9.matched_volume.dissect(buffer, index, packet, parent)

  -- Imbalance Volume: Integer
  index, imbalance_volume = nasdaq_phlxoptions_orders_itch_v1_9.imbalance_volume.dissect(buffer, index, packet, parent)

  -- Reserved 4: N/A
  index, reserved_4 = nasdaq_phlxoptions_orders_itch_v1_9.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Notification Message
nasdaq_phlxoptions_orders_itch_v1_9.auction_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.auction_notification_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_9.auction_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.auction_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_9.auction_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Order Leg
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_leg = {}

-- Size: Complex Order Leg
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_leg.size =
  nasdaq_phlxoptions_orders_itch_v1_9.leg_open_close_indicator.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.option_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.expiration.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.option_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.side.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.leg_ratio.size

-- Display: Complex Order Leg
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Leg
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_leg.fields = function(buffer, offset, packet, parent, complex_order_leg_index)
  local index = offset

  -- Implicit Complex Order Leg Index
  if complex_order_leg_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_order_leg_index, complex_order_leg_index)
    iteration:set_generated()
  end

  -- Leg Open Close Indicator: Alpha
  index, leg_open_close_indicator = nasdaq_phlxoptions_orders_itch_v1_9.leg_open_close_indicator.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_orders_itch_v1_9.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration: Struct of 3 fields
  index, expiration = nasdaq_phlxoptions_orders_itch_v1_9.expiration.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: Integer
  index, explicit_strike_price = nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_phlxoptions_orders_itch_v1_9.option_type.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_phlxoptions_orders_itch_v1_9.side.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Integer
  index, leg_ratio = nasdaq_phlxoptions_orders_itch_v1_9.leg_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Leg
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_leg.dissect = function(buffer, offset, packet, parent, complex_order_leg_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_order_leg, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_9.complex_order_leg.fields(buffer, offset, packet, parent, complex_order_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.complex_order_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_9.complex_order_leg.fields(buffer, offset, packet, parent, complex_order_leg_index)
  end
end

-- Complex Order Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_message = {}

-- Calculate size of: Complex Order Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.timestamp.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.strategy_id.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.order_id.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.side.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.original_order_volume.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.executable_order_volume.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.order_status.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.order_type.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.limit_price.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.debit_or_credit.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.all_or_none.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.time_in_force.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.customer_firm_indicator.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.underlying_symbol.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.number_of_legs.size

  -- Calculate field size from count
  local complex_order_leg_count = buffer(offset + index - 1, 1):uint()
  index = index + complex_order_leg_count * 22

  return index
end

-- Display: Complex Order Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = nasdaq_phlxoptions_orders_itch_v1_9.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_phlxoptions_orders_itch_v1_9.strategy_id.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = nasdaq_phlxoptions_orders_itch_v1_9.order_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_phlxoptions_orders_itch_v1_9.side.dissect(buffer, index, packet, parent)

  -- Original Order Volume: Integer
  index, original_order_volume = nasdaq_phlxoptions_orders_itch_v1_9.original_order_volume.dissect(buffer, index, packet, parent)

  -- Executable Order Volume: Integer
  index, executable_order_volume = nasdaq_phlxoptions_orders_itch_v1_9.executable_order_volume.dissect(buffer, index, packet, parent)

  -- Order Status: Alpha
  index, order_status = nasdaq_phlxoptions_orders_itch_v1_9.order_status.dissect(buffer, index, packet, parent)

  -- Order Type: Alpha
  index, order_type = nasdaq_phlxoptions_orders_itch_v1_9.order_type.dissect(buffer, index, packet, parent)

  -- Limit Price: Integer
  index, limit_price = nasdaq_phlxoptions_orders_itch_v1_9.limit_price.dissect(buffer, index, packet, parent)

  -- Debit Or Credit: Alpha
  index, debit_or_credit = nasdaq_phlxoptions_orders_itch_v1_9.debit_or_credit.dissect(buffer, index, packet, parent)

  -- All Or None: Alpha
  index, all_or_none = nasdaq_phlxoptions_orders_itch_v1_9.all_or_none.dissect(buffer, index, packet, parent)

  -- Time In Force: Alpha
  index, time_in_force = nasdaq_phlxoptions_orders_itch_v1_9.time_in_force.dissect(buffer, index, packet, parent)

  -- Customer Firm Indicator: Alpha
  index, customer_firm_indicator = nasdaq_phlxoptions_orders_itch_v1_9.customer_firm_indicator.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = nasdaq_phlxoptions_orders_itch_v1_9.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Number Of Legs: Integer
  index, number_of_legs = nasdaq_phlxoptions_orders_itch_v1_9.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Order Leg
  for complex_order_leg_index = 1, number_of_legs do
    index, complex_order_leg = nasdaq_phlxoptions_orders_itch_v1_9.complex_order_leg.dissect(buffer, index, packet, parent, complex_order_leg_index)
  end

  return index
end

-- Dissect: Complex Order Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_order_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_9.complex_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.complex_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_9.complex_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Order Message
nasdaq_phlxoptions_orders_itch_v1_9.simple_order_message = {}

-- Size: Simple Order Message
nasdaq_phlxoptions_orders_itch_v1_9.simple_order_message.size =
  nasdaq_phlxoptions_orders_itch_v1_9.timestamp.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.option_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.expiration.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.option_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.order_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.side.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.original_order_volume.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.executable_order_volume.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.order_status.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.order_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.market_qualifier.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.limit_price.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.all_or_none.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.time_in_force.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.customer_firm_indicator.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.open_close_indicator.size

-- Display: Simple Order Message
nasdaq_phlxoptions_orders_itch_v1_9.simple_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Order Message
nasdaq_phlxoptions_orders_itch_v1_9.simple_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = nasdaq_phlxoptions_orders_itch_v1_9.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_orders_itch_v1_9.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration: Struct of 3 fields
  index, expiration = nasdaq_phlxoptions_orders_itch_v1_9.expiration.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: Integer
  index, explicit_strike_price = nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_phlxoptions_orders_itch_v1_9.option_type.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = nasdaq_phlxoptions_orders_itch_v1_9.order_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_phlxoptions_orders_itch_v1_9.side.dissect(buffer, index, packet, parent)

  -- Original Order Volume: Integer
  index, original_order_volume = nasdaq_phlxoptions_orders_itch_v1_9.original_order_volume.dissect(buffer, index, packet, parent)

  -- Executable Order Volume: Integer
  index, executable_order_volume = nasdaq_phlxoptions_orders_itch_v1_9.executable_order_volume.dissect(buffer, index, packet, parent)

  -- Order Status: Alpha
  index, order_status = nasdaq_phlxoptions_orders_itch_v1_9.order_status.dissect(buffer, index, packet, parent)

  -- Order Type: Alpha
  index, order_type = nasdaq_phlxoptions_orders_itch_v1_9.order_type.dissect(buffer, index, packet, parent)

  -- Market Qualifier: Alpha
  index, market_qualifier = nasdaq_phlxoptions_orders_itch_v1_9.market_qualifier.dissect(buffer, index, packet, parent)

  -- Limit Price: Integer
  index, limit_price = nasdaq_phlxoptions_orders_itch_v1_9.limit_price.dissect(buffer, index, packet, parent)

  -- All Or None: Alpha
  index, all_or_none = nasdaq_phlxoptions_orders_itch_v1_9.all_or_none.dissect(buffer, index, packet, parent)

  -- Time In Force: Alpha
  index, time_in_force = nasdaq_phlxoptions_orders_itch_v1_9.time_in_force.dissect(buffer, index, packet, parent)

  -- Customer Firm Indicator: Alpha
  index, customer_firm_indicator = nasdaq_phlxoptions_orders_itch_v1_9.customer_firm_indicator.dissect(buffer, index, packet, parent)

  -- Open Close Indicator: Alpha
  index, open_close_indicator = nasdaq_phlxoptions_orders_itch_v1_9.open_close_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Order Message
nasdaq_phlxoptions_orders_itch_v1_9.simple_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.simple_order_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_9.simple_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.simple_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_9.simple_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Open Closed Message
nasdaq_phlxoptions_orders_itch_v1_9.strategy_open_closed_message = {}

-- Size: Strategy Open Closed Message
nasdaq_phlxoptions_orders_itch_v1_9.strategy_open_closed_message.size =
  nasdaq_phlxoptions_orders_itch_v1_9.timestamp.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.strategy_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.open_state.size

-- Display: Strategy Open Closed Message
nasdaq_phlxoptions_orders_itch_v1_9.strategy_open_closed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Open Closed Message
nasdaq_phlxoptions_orders_itch_v1_9.strategy_open_closed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = nasdaq_phlxoptions_orders_itch_v1_9.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_phlxoptions_orders_itch_v1_9.strategy_id.dissect(buffer, index, packet, parent)

  -- Open State: Alpha
  index, open_state = nasdaq_phlxoptions_orders_itch_v1_9.open_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Open Closed Message
nasdaq_phlxoptions_orders_itch_v1_9.strategy_open_closed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.strategy_open_closed_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_9.strategy_open_closed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.strategy_open_closed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_9.strategy_open_closed_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Open Closed Message
nasdaq_phlxoptions_orders_itch_v1_9.security_open_closed_message = {}

-- Size: Security Open Closed Message
nasdaq_phlxoptions_orders_itch_v1_9.security_open_closed_message.size =
  nasdaq_phlxoptions_orders_itch_v1_9.timestamp.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.option_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.expiration.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.option_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.open_state.size

-- Display: Security Open Closed Message
nasdaq_phlxoptions_orders_itch_v1_9.security_open_closed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Open Closed Message
nasdaq_phlxoptions_orders_itch_v1_9.security_open_closed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = nasdaq_phlxoptions_orders_itch_v1_9.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_orders_itch_v1_9.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration: Struct of 3 fields
  index, expiration = nasdaq_phlxoptions_orders_itch_v1_9.expiration.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: Integer
  index, explicit_strike_price = nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_phlxoptions_orders_itch_v1_9.option_type.dissect(buffer, index, packet, parent)

  -- Open State: Alpha
  index, open_state = nasdaq_phlxoptions_orders_itch_v1_9.open_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Open Closed Message
nasdaq_phlxoptions_orders_itch_v1_9.security_open_closed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.security_open_closed_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_9.security_open_closed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.security_open_closed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_9.security_open_closed_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Trading Action Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_trading_action_message = {}

-- Size: Complex Trading Action Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_trading_action_message.size =
  nasdaq_phlxoptions_orders_itch_v1_9.timestamp.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.strategy_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.current_trading_state.size

-- Display: Complex Trading Action Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Trading Action Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = nasdaq_phlxoptions_orders_itch_v1_9.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_phlxoptions_orders_itch_v1_9.strategy_id.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alpha
  index, current_trading_state = nasdaq_phlxoptions_orders_itch_v1_9.current_trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Trading Action Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_trading_action_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_9.complex_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.complex_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_9.complex_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Trading Action Message
nasdaq_phlxoptions_orders_itch_v1_9.security_trading_action_message = {}

-- Size: Security Trading Action Message
nasdaq_phlxoptions_orders_itch_v1_9.security_trading_action_message.size =
  nasdaq_phlxoptions_orders_itch_v1_9.timestamp.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.option_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.expiration.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.option_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.current_trading_state.size

-- Display: Security Trading Action Message
nasdaq_phlxoptions_orders_itch_v1_9.security_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Trading Action Message
nasdaq_phlxoptions_orders_itch_v1_9.security_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = nasdaq_phlxoptions_orders_itch_v1_9.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_orders_itch_v1_9.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration: Struct of 3 fields
  index, expiration = nasdaq_phlxoptions_orders_itch_v1_9.expiration.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: Integer
  index, explicit_strike_price = nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_phlxoptions_orders_itch_v1_9.option_type.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alpha
  index, current_trading_state = nasdaq_phlxoptions_orders_itch_v1_9.current_trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Trading Action Message
nasdaq_phlxoptions_orders_itch_v1_9.security_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.security_trading_action_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_9.security_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.security_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_9.security_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Order Strategy Leg
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_leg = {}

-- Size: Complex Order Strategy Leg
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_leg.size =
  nasdaq_phlxoptions_orders_itch_v1_9.option_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.expiration.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.option_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.side.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.leg_ratio.size

-- Display: Complex Order Strategy Leg
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Strategy Leg
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_leg.fields = function(buffer, offset, packet, parent, complex_order_strategy_leg_index)
  local index = offset

  -- Implicit Complex Order Strategy Leg Index
  if complex_order_strategy_leg_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_order_strategy_leg_index, complex_order_strategy_leg_index)
    iteration:set_generated()
  end

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_orders_itch_v1_9.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration: Struct of 3 fields
  index, expiration = nasdaq_phlxoptions_orders_itch_v1_9.expiration.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: Integer
  index, explicit_strike_price = nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_phlxoptions_orders_itch_v1_9.option_type.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_phlxoptions_orders_itch_v1_9.side.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Integer
  index, leg_ratio = nasdaq_phlxoptions_orders_itch_v1_9.leg_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Strategy Leg
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_leg.dissect = function(buffer, offset, packet, parent, complex_order_strategy_leg_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_order_strategy_leg, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_leg.fields(buffer, offset, packet, parent, complex_order_strategy_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_leg.fields(buffer, offset, packet, parent, complex_order_strategy_leg_index)
  end
end

-- Complex Order Strategy Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_message = {}

-- Calculate size of: Complex Order Strategy Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.timestamp.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.strategy_id.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.source.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.underlying_symbol.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.action.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.number_of_legs.size

  -- Calculate field size from count
  local complex_order_strategy_leg_count = buffer(offset + index - 1, 1):uint()
  index = index + complex_order_strategy_leg_count * 21

  return index
end

-- Display: Complex Order Strategy Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Strategy Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = nasdaq_phlxoptions_orders_itch_v1_9.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_phlxoptions_orders_itch_v1_9.strategy_id.dissect(buffer, index, packet, parent)

  -- Source: Integer
  index, source = nasdaq_phlxoptions_orders_itch_v1_9.source.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = nasdaq_phlxoptions_orders_itch_v1_9.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Action: Alphanumeric
  index, action = nasdaq_phlxoptions_orders_itch_v1_9.action.dissect(buffer, index, packet, parent)

  -- Number Of Legs: Integer
  index, number_of_legs = nasdaq_phlxoptions_orders_itch_v1_9.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Order Strategy Leg
  for complex_order_strategy_leg_index = 1, number_of_legs do
    index, complex_order_strategy_leg = nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_leg.dissect(buffer, index, packet, parent, complex_order_strategy_leg_index)
  end

  return index
end

-- Dissect: Complex Order Strategy Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_order_strategy_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Directory Message
nasdaq_phlxoptions_orders_itch_v1_9.options_directory_message = {}

-- Size: Options Directory Message
nasdaq_phlxoptions_orders_itch_v1_9.options_directory_message.size =
  nasdaq_phlxoptions_orders_itch_v1_9.timestamp.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.option_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.expiration.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.option_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.source.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.underlying_symbol.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.option_closing_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.phlx_tradable.size

-- Display: Options Directory Message
nasdaq_phlxoptions_orders_itch_v1_9.options_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Directory Message
nasdaq_phlxoptions_orders_itch_v1_9.options_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = nasdaq_phlxoptions_orders_itch_v1_9.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_orders_itch_v1_9.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration: Struct of 3 fields
  index, expiration = nasdaq_phlxoptions_orders_itch_v1_9.expiration.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: Integer
  index, explicit_strike_price = nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_phlxoptions_orders_itch_v1_9.option_type.dissect(buffer, index, packet, parent)

  -- Source: Integer
  index, source = nasdaq_phlxoptions_orders_itch_v1_9.source.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = nasdaq_phlxoptions_orders_itch_v1_9.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Option Closing Type: Alpha
  index, option_closing_type = nasdaq_phlxoptions_orders_itch_v1_9.option_closing_type.dissect(buffer, index, packet, parent)

  -- Phlx Tradable: Alpha
  index, phlx_tradable = nasdaq_phlxoptions_orders_itch_v1_9.phlx_tradable.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Directory Message
nasdaq_phlxoptions_orders_itch_v1_9.options_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.options_directory_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_9.options_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.options_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_9.options_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_phlxoptions_orders_itch_v1_9.system_event_message = {}

-- Size: System Event Message
nasdaq_phlxoptions_orders_itch_v1_9.system_event_message.size =
  nasdaq_phlxoptions_orders_itch_v1_9.timestamp.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.event_code.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.version.size

-- Display: System Event Message
nasdaq_phlxoptions_orders_itch_v1_9.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_phlxoptions_orders_itch_v1_9.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = nasdaq_phlxoptions_orders_itch_v1_9.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_phlxoptions_orders_itch_v1_9.event_code.dissect(buffer, index, packet, parent)

  -- Version: Integer
  index, version = nasdaq_phlxoptions_orders_itch_v1_9.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_phlxoptions_orders_itch_v1_9.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_9.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_9.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_phlxoptions_orders_itch_v1_9.payload = {}

-- Dispatch: Payload
nasdaq_phlxoptions_orders_itch_v1_9.payload.dispatch = {
  ["S"] = nasdaq_phlxoptions_orders_itch_v1_9.system_event_message.dissect,
  ["D"] = nasdaq_phlxoptions_orders_itch_v1_9.options_directory_message.dissect,
  ["R"] = nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_message.dissect,
  ["H"] = nasdaq_phlxoptions_orders_itch_v1_9.security_trading_action_message.dissect,
  ["I"] = nasdaq_phlxoptions_orders_itch_v1_9.complex_trading_action_message.dissect,
  ["P"] = nasdaq_phlxoptions_orders_itch_v1_9.security_open_closed_message.dissect,
  ["Q"] = nasdaq_phlxoptions_orders_itch_v1_9.strategy_open_closed_message.dissect,
  ["O"] = nasdaq_phlxoptions_orders_itch_v1_9.simple_order_message.dissect,
  ["X"] = nasdaq_phlxoptions_orders_itch_v1_9.complex_order_message.dissect,
  ["A"] = nasdaq_phlxoptions_orders_itch_v1_9.auction_notification_message.dissect,
  ["C"] = nasdaq_phlxoptions_orders_itch_v1_9.complex_auction_notification_message.dissect,
}

-- Dissect: Payload
nasdaq_phlxoptions_orders_itch_v1_9.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = nasdaq_phlxoptions_orders_itch_v1_9.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_phlxoptions_orders_itch_v1_9.message_header = {}

-- Size: Message Header
nasdaq_phlxoptions_orders_itch_v1_9.message_header.size =
  nasdaq_phlxoptions_orders_itch_v1_9.message_type.size

-- Display: Message Header
nasdaq_phlxoptions_orders_itch_v1_9.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_phlxoptions_orders_itch_v1_9.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 11 values
  index, message_type = nasdaq_phlxoptions_orders_itch_v1_9.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_phlxoptions_orders_itch_v1_9.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.message_header, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_9.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_9.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message Data
nasdaq_phlxoptions_orders_itch_v1_9.message_data = {}

-- Calculate size of: Message Data
nasdaq_phlxoptions_orders_itch_v1_9.message_data.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.message_header.size

  -- Parse runtime size of: Payload
  index = index + buffer(offset + index - 3, 2):le_uint()

  return index
end

-- Display: Message Data
nasdaq_phlxoptions_orders_itch_v1_9.message_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Data
nasdaq_phlxoptions_orders_itch_v1_9.message_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 1 fields
  index, message_header = nasdaq_phlxoptions_orders_itch_v1_9.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 11 branches
  index = nasdaq_phlxoptions_orders_itch_v1_9.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message Data
nasdaq_phlxoptions_orders_itch_v1_9.message_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.message_data, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_9.message_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.message_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_9.message_data.fields(buffer, offset, packet, parent)
  end
end

-- End Of Session
nasdaq_phlxoptions_orders_itch_v1_9.end_of_session = {}

-- Display: End Of Session
nasdaq_phlxoptions_orders_itch_v1_9.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_phlxoptions_orders_itch_v1_9.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_phlxoptions_orders_itch_v1_9.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Message Body
nasdaq_phlxoptions_orders_itch_v1_9.message_body = {}

-- Dispatch: Message Body
nasdaq_phlxoptions_orders_itch_v1_9.message_body.dispatch = {
  [0] = nasdaq_phlxoptions_orders_itch_v1_9.end_of_session.dissect,
}

-- Dissect: Message Body
nasdaq_phlxoptions_orders_itch_v1_9.message_body.dissect = function(buffer, offset, packet, parent, message_length)
  local dissect = nasdaq_phlxoptions_orders_itch_v1_9.message_body.dispatch[message_length]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Dissect Message Data
  return nasdaq_phlxoptions_orders_itch_v1_9.message_data.dissect(buffer, offset, packet, parent)
end

-- Message
nasdaq_phlxoptions_orders_itch_v1_9.message = {}

-- Read runtime size of: Message
nasdaq_phlxoptions_orders_itch_v1_9.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):le_uint()

  return message_length + 2
end

-- Display: Message
nasdaq_phlxoptions_orders_itch_v1_9.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_phlxoptions_orders_itch_v1_9.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and nasdaq_phlxoptions_orders_itch_v1_9.packet_sequence ~= nil then
    local sequence = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.message_sequence_number, UInt64.new(nasdaq_phlxoptions_orders_itch_v1_9.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_phlxoptions_orders_itch_v1_9.message_length.dissect(buffer, index, packet, parent)

  -- Message Body: Runtime Type with 2 branches
  index = nasdaq_phlxoptions_orders_itch_v1_9.message_body.dissect(buffer, index, packet, parent, message_length)

  return index
end

-- Dissect: Message
nasdaq_phlxoptions_orders_itch_v1_9.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_phlxoptions_orders_itch_v1_9.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.message, buffer(offset, 0))
    local current = nasdaq_phlxoptions_orders_itch_v1_9.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_phlxoptions_orders_itch_v1_9.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
nasdaq_phlxoptions_orders_itch_v1_9.heartbeat = {}

-- Display: Heartbeat
nasdaq_phlxoptions_orders_itch_v1_9.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_phlxoptions_orders_itch_v1_9.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_phlxoptions_orders_itch_v1_9.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_phlxoptions_orders_itch_v1_9.messages = {}

-- Dispatch: Messages
nasdaq_phlxoptions_orders_itch_v1_9.messages.dispatch = {
  [0] = nasdaq_phlxoptions_orders_itch_v1_9.heartbeat.dissect,
}

-- Dissect: Messages
nasdaq_phlxoptions_orders_itch_v1_9.messages.dissect = function(buffer, offset, packet, parent, message_count)
  local dissect = nasdaq_phlxoptions_orders_itch_v1_9.messages.dispatch[message_count]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):le_uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_phlxoptions_orders_itch_v1_9.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)

    -- End Of Session: the session ends here, nothing in the packet may follow it
    if message_length == 0 then
      if offset < buffer:len() then
        parent:add_tvb_expert_info(nasdaq_phlxoptions_orders_itch_v1_9.experts.message_after_end_of_session, buffer(offset), "Message after the end of session: "..(buffer:len() - offset).." bytes follow it")
      elseif message_index < message_count then
        parent:add_proto_expert_info(nasdaq_phlxoptions_orders_itch_v1_9.experts.message_after_end_of_session, "Message after the end of session: count states "..(message_count - message_index).." more")
      end
      break
    end
  end
end

-- Packet Header
nasdaq_phlxoptions_orders_itch_v1_9.packet_header = {}

-- Size: Packet Header
nasdaq_phlxoptions_orders_itch_v1_9.packet_header.size =
  nasdaq_phlxoptions_orders_itch_v1_9.session.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.sequence_number.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.message_count.size

-- Display: Packet Header
nasdaq_phlxoptions_orders_itch_v1_9.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_phlxoptions_orders_itch_v1_9.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_phlxoptions_orders_itch_v1_9.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_phlxoptions_orders_itch_v1_9.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_phlxoptions_orders_itch_v1_9.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  nasdaq_phlxoptions_orders_itch_v1_9.packet_sequence = sequence_number

  return index
end

-- Dissect: Packet Header
nasdaq_phlxoptions_orders_itch_v1_9.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_9.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_9.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_phlxoptions_orders_itch_v1_9.packet = {}

-- Verify required size of Udp packet
nasdaq_phlxoptions_orders_itch_v1_9.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_phlxoptions_orders_itch_v1_9.packet_header.size
end

-- Dissect Packet
nasdaq_phlxoptions_orders_itch_v1_9.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_phlxoptions_orders_itch_v1_9.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = nasdaq_phlxoptions_orders_itch_v1_9.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_phlxoptions_orders_itch_v1_9.init()
end

-- Dissector for Nasdaq PhlxOptions Orders Itch 1.9
function omi_nasdaq_phlxoptions_orders_itch_v1_9.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_phlxoptions_orders_itch_v1_9.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9, buffer(), omi_nasdaq_phlxoptions_orders_itch_v1_9.description, "("..buffer:len().." Bytes)")
  return nasdaq_phlxoptions_orders_itch_v1_9.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq PhlxOptions Orders Itch 1.9 (Udp)
local function omi_nasdaq_phlxoptions_orders_itch_v1_9_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_phlxoptions_orders_itch_v1_9.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_phlxoptions_orders_itch_v1_9
  omi_nasdaq_phlxoptions_orders_itch_v1_9.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq PhlxOptions Orders Itch 1.9
omi_nasdaq_phlxoptions_orders_itch_v1_9:register_heuristic("udp", omi_nasdaq_phlxoptions_orders_itch_v1_9_udp_heuristic)

-- Register Nasdaq PhlxOptions Orders Itch 1.9 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_phlxoptions_orders_itch_v1_9)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 1.9
--   Date: Monday, August 10, 2015
--   Specification: topoplusorders.pdf
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
