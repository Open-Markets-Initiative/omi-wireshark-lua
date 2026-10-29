-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NtxOptions TopOfMarket Itch 1.2 Protocol
local omi_nasdaq_ntxoptions_topofmarket_itch_v1_2 = Proto("Omi.Nasdaq.NtxOptions.TopOfMarket.Itch.v1.2", "Nasdaq NtxOptions TopOfMarket Itch 1.2")

-- Protocol table
local nasdaq_ntxoptions_topofmarket_itch_v1_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NtxOptions TopOfMarket Itch 1.2 Fields
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.ask_price = ProtoField.new("Ask Price", "nasdaq.ntxoptions.topofmarket.itch.v1.2.askprice", ftypes.DOUBLE, nil, nil, nil, "Best ask price. NOTE: When converted to a decimal format, this price is in fixed point format with 3 whole number places followed by 2 decimal digits.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.ask_price_long = ProtoField.new("Ask Price Long", "nasdaq.ntxoptions.topofmarket.itch.v1.2.askpricelong", ftypes.DOUBLE, nil, nil, nil, "Best ask price.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.ask_size = ProtoField.new("Ask Size", "nasdaq.ntxoptions.topofmarket.itch.v1.2.asksize", ftypes.UINT16, nil, nil, nil, "Aggregated number of contracts on the ask side being displayed in the options market at the current time.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.ask_size_long = ProtoField.new("Ask Size Long", "nasdaq.ntxoptions.topofmarket.itch.v1.2.asksizelong", ftypes.UINT32, nil, nil, nil, "Aggregated number of contracts on the ask side being displayed in the options market at the current time.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.bid_price = ProtoField.new("Bid Price", "nasdaq.ntxoptions.topofmarket.itch.v1.2.bidprice", ftypes.DOUBLE, nil, nil, nil, "Best bid price. NOTE: When converted to a decimal format, this price is in fixed point format with 3 whole number places followed by 2 decimal digits.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.bid_price_long = ProtoField.new("Bid Price Long", "nasdaq.ntxoptions.topofmarket.itch.v1.2.bidpricelong", ftypes.DOUBLE, nil, nil, nil, "Best bid price.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.bid_size = ProtoField.new("Bid Size", "nasdaq.ntxoptions.topofmarket.itch.v1.2.bidsize", ftypes.UINT16, nil, nil, nil, "Aggregated number of contracts on the bid side being displayed in the options market at the current time.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.bid_size_long = ProtoField.new("Bid Size Long", "nasdaq.ntxoptions.topofmarket.itch.v1.2.bidsizelong", ftypes.UINT32, nil, nil, nil, "Aggregated number of contracts on the bid side being displayed in the options market at the current time.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.cross_id = ProtoField.new("Cross Id", "nasdaq.ntxoptions.topofmarket.itch.v1.2.crossid", ftypes.UINT32, nil, nil, nil, "Indicates the internal control number (cross id) associated with the given options trade transaction.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.ntxoptions.topofmarket.itch.v1.2.currenttradingstate", ftypes.STRING, nil, nil, nil, "Reflects the current trading state for the options security in the options market. The allowable values are:")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.event_code = ProtoField.new("Event Code", "nasdaq.ntxoptions.topofmarket.itch.v1.2.eventcode", ftypes.STRING, nil, nil, nil, "Refer to System Event Codes below")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.expiration_day = ProtoField.new("Expiration Day", "nasdaq.ntxoptions.topofmarket.itch.v1.2.expirationday", ftypes.UINT8, nil, nil, nil, "Day of the Month of expiration (1-31)")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.ntxoptions.topofmarket.itch.v1.2.expirationmonth", ftypes.UINT8, nil, nil, nil, "Expiration Month of the option (1-12)")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.ntxoptions.topofmarket.itch.v1.2.expirationyear", ftypes.UINT8, nil, nil, nil, "Last two digits of the year of the option expiration")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.message_count = ProtoField.new("Message Count", "nasdaq.ntxoptions.topofmarket.itch.v1.2.messagecount", ftypes.UINT16, nil, nil, nil, "Number of messages to follow this header")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.message_length = ProtoField.new("Message Length", "nasdaq.ntxoptions.topofmarket.itch.v1.2.messagelength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.message_type = ProtoField.new("Message Type", "nasdaq.ntxoptions.topofmarket.itch.v1.2.messagetype", ftypes.STRING, nil, nil, nil, "Code identifying this message type")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.minimum_price_variation = ProtoField.new("Minimum Price Variation", "nasdaq.ntxoptions.topofmarket.itch.v1.2.minimumpricevariation", ftypes.STRING, nil, nil, nil, "Minimum Price Variation for this option:")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.nanoseconds = ProtoField.new("Nanoseconds", "nasdaq.ntxoptions.topofmarket.itch.v1.2.nanoseconds", ftypes.UINT32, nil, nil, nil, "The sub-second portion of the time, in nanoseconds (0-999999999). The second portion of the time is obtained from the most recent timestamp message.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.open_state = ProtoField.new("Open State", "nasdaq.ntxoptions.topofmarket.itch.v1.2.openstate", ftypes.STRING, nil, nil, nil, "Reflects the current eligibility for auto execution of the options security in the options market. The allowable values are:")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.option_closing_type = ProtoField.new("Option Closing Type", "nasdaq.ntxoptions.topofmarket.itch.v1.2.optionclosingtype", ftypes.STRING, nil, nil, nil, "Denotes which System Event is used to determine when trading ceases in this symbol.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.option_id = ProtoField.new("Option Id", "nasdaq.ntxoptions.topofmarket.itch.v1.2.optionid", ftypes.UINT32, nil, nil, nil, "Option ID for this option, assigned daily, valid for trading day.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.option_type = ProtoField.new("Option Type", "nasdaq.ntxoptions.topofmarket.itch.v1.2.optiontype", ftypes.STRING)
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.original_cross_id = ProtoField.new("Original Cross Id", "nasdaq.ntxoptions.topofmarket.itch.v1.2.originalcrossid", ftypes.UINT32, nil, nil, nil, "Indicates the original internal control number (cross id) associated with the given trade transaction in the options market system.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.original_price = ProtoField.new("Original Price", "nasdaq.ntxoptions.topofmarket.itch.v1.2.originalprice", ftypes.DOUBLE, nil, nil, nil, "Reported Premium Price of an option contract in the original trade report message on this feed.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.original_volume = ProtoField.new("Original Volume", "nasdaq.ntxoptions.topofmarket.itch.v1.2.originalvolume", ftypes.UINT32, nil, nil, nil, "Reported number of contracts in the original trade report message on this feed.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.price = ProtoField.new("Price", "nasdaq.ntxoptions.topofmarket.itch.v1.2.price", ftypes.DOUBLE, nil, nil, nil, "Best bid or ask price, the side determined by Message Type. NOTE: When converted to a decimal format, this price is in fixed point format with 3 whole number places followed by 2 decimal digits.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.price_long = ProtoField.new("Price Long", "nasdaq.ntxoptions.topofmarket.itch.v1.2.pricelong", ftypes.DOUBLE, nil, nil, nil, "Best bid or ask price, the side determined by Message Type.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.quote_condition = ProtoField.new("Quote Condition", "nasdaq.ntxoptions.topofmarket.itch.v1.2.quotecondition", ftypes.STRING)
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.second = ProtoField.new("Second", "nasdaq.ntxoptions.topofmarket.itch.v1.2.second", ftypes.UINT32, nil, nil, nil, "Number of seconds since midnight. All messages between this Timestamp Message and the next Timestamp Message will have this value of seconds in their timestamp.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.ntxoptions.topofmarket.itch.v1.2.securitysymbol", ftypes.STRING, nil, nil, nil, "Denotes the option root symbol (security symbol)")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.ntxoptions.topofmarket.itch.v1.2.sequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the first message to follow this header")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.session = ProtoField.new("Session", "nasdaq.ntxoptions.topofmarket.itch.v1.2.session", ftypes.STRING, nil, nil, nil, "Identity of the multicast session")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.size = ProtoField.new("Size", "nasdaq.ntxoptions.topofmarket.itch.v1.2.size", ftypes.UINT16, nil, nil, nil, "Aggregated number of contracts on the bid or ask side being displayed in the options market at the current time.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.size_long = ProtoField.new("Size Long", "nasdaq.ntxoptions.topofmarket.itch.v1.2.sizelong", ftypes.UINT32, nil, nil, nil, "Aggregated number of contracts on the bid or ask side being displayed in the options market at the current time.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.source = ProtoField.new("Source", "nasdaq.ntxoptions.topofmarket.itch.v1.2.source", ftypes.UINT8, nil, nil, nil, "Identifies the source of the option, valid for the trading day.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.strike_price = ProtoField.new("Strike Price", "nasdaq.ntxoptions.topofmarket.itch.v1.2.strikeprice", ftypes.DOUBLE, nil, nil, nil, "Explicit strike price. Refer to Data Types for field processing notes.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.sub_version = ProtoField.new("Sub Version", "nasdaq.ntxoptions.topofmarket.itch.v1.2.subversion", ftypes.UINT8, nil, nil, nil, "Sub-version of this interface. Currently set to 0.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.tradable = ProtoField.new("Tradable", "nasdaq.ntxoptions.topofmarket.itch.v1.2.tradable", ftypes.STRING, nil, nil, nil, "Denotes whether or not this option is tradable at the exchange:")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.trade_condition = ProtoField.new("Trade Condition", "nasdaq.ntxoptions.topofmarket.itch.v1.2.tradecondition", ftypes.STRING, nil, nil, nil, "The Trade Condition is the same as defined in the OPRA specification. Either “Last Sale” or “Transaction”")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.ntxoptions.topofmarket.itch.v1.2.underlyingsymbol", ftypes.STRING, nil, nil, nil, "Denotes the unique symbol assigned to the underlying security within the Exchange System.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.version = ProtoField.new("Version", "nasdaq.ntxoptions.topofmarket.itch.v1.2.version", ftypes.UINT8, nil, nil, nil, "Version of this interface. Currently set to 3.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.volume = ProtoField.new("Volume", "nasdaq.ntxoptions.topofmarket.itch.v1.2.volume", ftypes.UINT32, nil, nil, nil, "Current number of contracts traded for an option in one trade.")

-- Nasdaq NtxOptions TopOfMarket Itch 1.2 Framing
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.message = ProtoField.new("Message", "nasdaq.ntxoptions.topofmarket.itch.v1.2.message", ftypes.STRING, nil, nil, nil, "Mold Udp64 Message")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.message_header = ProtoField.new("Message Header", "nasdaq.ntxoptions.topofmarket.itch.v1.2.messageheader", ftypes.STRING, nil, nil, nil, "Mold Udp 64 Message Header")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.packet = ProtoField.new("Packet", "nasdaq.ntxoptions.topofmarket.itch.v1.2.packet", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.ntxoptions.topofmarket.itch.v1.2.packetheader", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet Header")

-- Nasdaq NtxOptions TopOfMarket 1.2 Application Messages
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.best_ask_update_long_form_message = ProtoField.new("Best Ask Update Long Form Message", "nasdaq.ntxoptions.topofmarket.itch.v1.2.bestaskupdatelongformmessage", ftypes.STRING, nil, nil, nil, "This message is the same as the Best Bid OR Ask Update Message – Short Form described above except that Prices and Sizes are 4 byte Integers, the price having 4 implied decimal places.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.best_ask_update_short_form_message = ProtoField.new("Best Ask Update Short Form Message", "nasdaq.ntxoptions.topofmarket.itch.v1.2.bestaskupdateshortformmessage", ftypes.STRING, nil, nil, nil, "The options system will continuously calculate its best bid and offer position for active options contracts on the options market during the trading day. Whenever the best bid or ask position changes on one side but not the other side, the options system will send its best bid or ask update via this feed for the affected security. A change in bid or ask implies a change in price and/or size. The quote will reflect the highest price displayable in the options system for buy orders/quotes and the lowest price displayable in the options system for sell orders/quotes.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.best_bid_and_ask_update_long_form_message = ProtoField.new("Best Bid And Ask Update Long Form Message", "nasdaq.ntxoptions.topofmarket.itch.v1.2.bestbidandaskupdatelongformmessage", ftypes.STRING, nil, nil, nil, "This message is the same as the Best Bid AND Ask Update Message – Short Form described above except that Prices and Sizes are 4 byte Integers, the price having 4 implied decimal places.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.best_bid_and_ask_update_short_form_message = ProtoField.new("Best Bid And Ask Update Short Form Message", "nasdaq.ntxoptions.topofmarket.itch.v1.2.bestbidandaskupdateshortformmessage", ftypes.STRING, nil, nil, nil, "The options system will continuously calculate its best bid and offer position for active options contracts on the options market during the trading day. Whenever the best bid and ask position changes on both sides, the options system will send its best bid and ask update via the data feed for the affected security. A change in bid or ask implies a change in price and/or size. The quote will reflect the highest price displayable in the options system for buy orders/quotes and the lowest price displayable in the options system for sell orders/quotes.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.best_bid_update_long_form_message = ProtoField.new("Best Bid Update Long Form Message", "nasdaq.ntxoptions.topofmarket.itch.v1.2.bestbidupdatelongformmessage", ftypes.STRING, nil, nil, nil, "This message is the same as the Best Bid OR Ask Update Message – Short Form described above except that Prices and Sizes are 4 byte Integers, the price having 4 implied decimal places.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.best_bid_update_short_form_message = ProtoField.new("Best Bid Update Short Form Message", "nasdaq.ntxoptions.topofmarket.itch.v1.2.bestbidupdateshortformmessage", ftypes.STRING, nil, nil, nil, "The options system will continuously calculate its best bid and offer position for active options contracts on the options market during the trading day. Whenever the best bid or ask position changes on one side but not the other side, the options system will send its best bid or ask update via this feed for the affected security. A change in bid or ask implies a change in price and/or size. The quote will reflect the highest price displayable in the options system for buy orders/quotes and the lowest price displayable in the options system for sell orders/quotes.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.broken_trade_report_message = ProtoField.new("Broken Trade Report Message", "nasdaq.ntxoptions.topofmarket.itch.v1.2.brokentradereportmessage", ftypes.STRING, nil, nil, nil, "The following message is used in the event that an options trade transaction is broken on the same business day that it is reported.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.options_directory_message = ProtoField.new("Options Directory Message", "nasdaq.ntxoptions.topofmarket.itch.v1.2.optionsdirectorymessage", ftypes.STRING, nil, nil, nil, "At the start of each trading day, the options system disseminates directory messages for all symbols eligible for the auction process in the options system.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.security_open_message = ProtoField.new("Security Open Message", "nasdaq.ntxoptions.topofmarket.itch.v1.2.securityopenmessage", ftypes.STRING, nil, nil, nil, "The options system uses this administrative message to indicate when an option has completed the opening process and is now available for auto execution or when the option has closed and is no longer available for auto execution.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.ntxoptions.topofmarket.itch.v1.2.systemeventmessage", ftypes.STRING, nil, nil, nil, "The system event message type is used to signal a market or data feed handler event. The format is as follows:")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.timestamp_message = ProtoField.new("Timestamp Message", "nasdaq.ntxoptions.topofmarket.itch.v1.2.timestampmessage", ftypes.STRING, nil, nil, nil, "For bandwidth efficiency reasons, the timestamp for a message is divided into two pieces: the seconds portion and sub-seconds portion. The seconds portion of the timestamp appears in the Timestamp Message, any message on the stream following this message has this seconds portion of time until the next timestamp message. The format is as follows:")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.trade_report_message = ProtoField.new("Trade Report Message", "nasdaq.ntxoptions.topofmarket.itch.v1.2.tradereportmessage", ftypes.STRING, nil, nil, nil, "The Trade Report message will be used to relay execution system transactions that are reported during the current business day. The options system only reports one-side of a trade execution on the feed and other data feed products.")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.trading_action_message = ProtoField.new("Trading Action Message", "nasdaq.ntxoptions.topofmarket.itch.v1.2.tradingactionmessage", ftypes.STRING, nil, nil, nil, "The options system uses this administrative message to indicate the current trading status of an index or equity option within the options market.")

-- Nasdaq NtxOptions TopOfMarket 1.2 Session Messages
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.ntxoptions.topofmarket.itch.v1.2.endofsession", ftypes.BYTES, nil, nil, nil, "Mold Udp64 end of session")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.heartbeat = ProtoField.new("Heartbeat", "nasdaq.ntxoptions.topofmarket.itch.v1.2.heartbeat", ftypes.BYTES, nil, nil, nil, "Mold Udp64 heartbeat")

-- Nasdaq NtxOptions TopOfMarket Itch 1.2 Generated Fields
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.message_index = ProtoField.new("Message Index", "nasdaq.ntxoptions.topofmarket.itch.v1.2.messageindex", ftypes.UINT16)
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nasdaq.ntxoptions.topofmarket.itch.v1.2.messagesequencenumber", ftypes.UINT64)
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.ntxoptions.topofmarket.itch.v1.2.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nasdaq NtxOptions TopOfMarket Itch 1.2 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp_format = 2

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
nasdaq_ntxoptions_topofmarket_itch_v1_2.format_timestamp = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq NtxOptions TopOfMarket Itch 1.2 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Nasdaq NtxOptions TopOfMarket Itch 1.2 Show Options
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.prefs.timestamp_format = Pref.enum("Nanoseconds Format", 2, "Nanoseconds display format", timestamp_format_enum, false)

-- Handle changed preferences
function omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.prefs.show_headers then
    show.headers = omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.prefs.show_headers
  end
  if show.structs ~= omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.prefs.show_structs then
    show.structs = omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.prefs.show_indexes then
    show.indexes = omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.prefs.show_indexes
  end
  if show.sequences ~= omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.prefs.show_sequences then
    show.sequences = omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.prefs.show_sequences
  end
  if nasdaq_ntxoptions_topofmarket_itch_v1_2.format_timestamp ~= omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.prefs.format_timestamp then
    nasdaq_ntxoptions_topofmarket_itch_v1_2.format_timestamp = omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.prefs.format_timestamp
  end
  if nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp_format ~= omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.prefs.timestamp_format then
    nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp_format = omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.prefs.timestamp_format
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nasdaq_ntxoptions_topofmarket_itch_v1_2.conversation = {}
nasdaq_ntxoptions_topofmarket_itch_v1_2.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
nasdaq_ntxoptions_topofmarket_itch_v1_2.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nasdaq_ntxoptions_topofmarket_itch_v1_2.conversation.data = function(packet)
  local key = nasdaq_ntxoptions_topofmarket_itch_v1_2.conversation.key(packet)
  local data = nasdaq_ntxoptions_topofmarket_itch_v1_2.conversation.flows[key]
  if data == nil then
    data = { second = { last = nil, frames = {} } }
    nasdaq_ntxoptions_topofmarket_itch_v1_2.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nasdaq_ntxoptions_topofmarket_itch_v1_2.conversation.current = nil


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
-- Nasdaq NtxOptions TopOfMarket Itch 1.2 Fields
-----------------------------------------------------------------------

-- Ask Price
nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_price = {}

-- Size: Ask Price
nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_price.size = 2

-- Display: Ask Price
nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_price.translate = function(raw)
  return raw/100
end

-- Dissect: Ask Price
nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_price.translate(raw)
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Price Long
nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_price_long = {}

-- Size: Ask Price Long
nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_price_long.size = 4

-- Display: Ask Price Long
nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_price_long.display = function(value)
  return "Ask Price Long: "..value
end

-- Translate: Ask Price Long
nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_price_long.translate = function(raw)
  return raw/10000
end

-- Dissect: Ask Price Long
nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_price_long.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_price_long.translate(raw)
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.ask_price_long, range, value, display)

  return offset + length, value
end

-- Ask Size
nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_size = {}

-- Size: Ask Size
nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_size.size = 2

-- Display: Ask Size
nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Ask Size Long
nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_size_long = {}

-- Size: Ask Size Long
nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_size_long.size = 4

-- Display: Ask Size Long
nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_size_long.display = function(value)
  return "Ask Size Long: "..value
end

-- Dissect: Ask Size Long
nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.ask_size_long, range, value, display)

  return offset + length, value
end

-- Bid Price
nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_price = {}

-- Size: Bid Price
nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_price.size = 2

-- Display: Bid Price
nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_price.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price
nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_price.translate(raw)
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Price Long
nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_price_long = {}

-- Size: Bid Price Long
nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_price_long.size = 4

-- Display: Bid Price Long
nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_price_long.display = function(value)
  return "Bid Price Long: "..value
end

-- Translate: Bid Price Long
nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_price_long.translate = function(raw)
  return raw/10000
end

-- Dissect: Bid Price Long
nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_price_long.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_price_long.translate(raw)
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.bid_price_long, range, value, display)

  return offset + length, value
end

-- Bid Size
nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_size = {}

-- Size: Bid Size
nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_size.size = 2

-- Display: Bid Size
nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Bid Size Long
nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_size_long = {}

-- Size: Bid Size Long
nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_size_long.size = 4

-- Display: Bid Size Long
nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_size_long.display = function(value)
  return "Bid Size Long: "..value
end

-- Dissect: Bid Size Long
nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.bid_size_long, range, value, display)

  return offset + length, value
end

-- Cross Id
nasdaq_ntxoptions_topofmarket_itch_v1_2.cross_id = {}

-- Size: Cross Id
nasdaq_ntxoptions_topofmarket_itch_v1_2.cross_id.size = 4

-- Display: Cross Id
nasdaq_ntxoptions_topofmarket_itch_v1_2.cross_id.display = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
nasdaq_ntxoptions_topofmarket_itch_v1_2.cross_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.cross_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Current Trading State
nasdaq_ntxoptions_topofmarket_itch_v1_2.current_trading_state = {}

-- Size: Current Trading State
nasdaq_ntxoptions_topofmarket_itch_v1_2.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_ntxoptions_topofmarket_itch_v1_2.current_trading_state.labels = {
  ["H"] = "Current Trading State: Halt (H)",
  ["T"] = "Current Trading State: Trading (T)",
}

nasdaq_ntxoptions_topofmarket_itch_v1_2.current_trading_state.display = function(value)
  return nasdaq_ntxoptions_topofmarket_itch_v1_2.current_trading_state.labels[value] or "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_ntxoptions_topofmarket_itch_v1_2.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_ntxoptions_topofmarket_itch_v1_2.event_code = {}

-- Size: Event Code
nasdaq_ntxoptions_topofmarket_itch_v1_2.event_code.size = 1

-- Display: Event Code
nasdaq_ntxoptions_topofmarket_itch_v1_2.event_code.labels = {
  ["O"] = "Event Code: Start Of Messages (O)",
  ["S"] = "Event Code: Start Of System Hours (S)",
  ["Q"] = "Event Code: Start Of Market Hours (Q)",
  ["M"] = "Event Code: End Of Market Hours (M)",
  ["E"] = "Event Code: End Of System Hours (E)",
  ["C"] = "Event Code: End Of Messages (C)",
}

nasdaq_ntxoptions_topofmarket_itch_v1_2.event_code.display = function(value)
  return nasdaq_ntxoptions_topofmarket_itch_v1_2.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_ntxoptions_topofmarket_itch_v1_2.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.event_code, range, value, display)

  return offset + length, value
end

-- Expiration Day
nasdaq_ntxoptions_topofmarket_itch_v1_2.expiration_day = {}

-- Size: Expiration Day
nasdaq_ntxoptions_topofmarket_itch_v1_2.expiration_day.size = 1

-- Display: Expiration Day
nasdaq_ntxoptions_topofmarket_itch_v1_2.expiration_day.display = function(value)
  return "Expiration Day: "..value
end

-- Dissect: Expiration Day
nasdaq_ntxoptions_topofmarket_itch_v1_2.expiration_day.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.expiration_day.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.expiration_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.expiration_day, range, value, display)

  return offset + length, value
end

-- Expiration Month
nasdaq_ntxoptions_topofmarket_itch_v1_2.expiration_month = {}

-- Size: Expiration Month
nasdaq_ntxoptions_topofmarket_itch_v1_2.expiration_month.size = 1

-- Display: Expiration Month
nasdaq_ntxoptions_topofmarket_itch_v1_2.expiration_month.display = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
nasdaq_ntxoptions_topofmarket_itch_v1_2.expiration_month.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.expiration_month.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.expiration_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Expiration Year
nasdaq_ntxoptions_topofmarket_itch_v1_2.expiration_year = {}

-- Size: Expiration Year
nasdaq_ntxoptions_topofmarket_itch_v1_2.expiration_year.size = 1

-- Display: Expiration Year
nasdaq_ntxoptions_topofmarket_itch_v1_2.expiration_year.display = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
nasdaq_ntxoptions_topofmarket_itch_v1_2.expiration_year.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.expiration_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.expiration_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_ntxoptions_topofmarket_itch_v1_2.message_count = {}

-- Size: Message Count
nasdaq_ntxoptions_topofmarket_itch_v1_2.message_count.size = 2

-- Display: Message Count
nasdaq_ntxoptions_topofmarket_itch_v1_2.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_ntxoptions_topofmarket_itch_v1_2.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_ntxoptions_topofmarket_itch_v1_2.message_length = {}

-- Size: Message Length
nasdaq_ntxoptions_topofmarket_itch_v1_2.message_length.size = 2

-- Display: Message Length
nasdaq_ntxoptions_topofmarket_itch_v1_2.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_ntxoptions_topofmarket_itch_v1_2.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_ntxoptions_topofmarket_itch_v1_2.message_type = {}

-- Size: Message Type
nasdaq_ntxoptions_topofmarket_itch_v1_2.message_type.size = 1

-- Display: Message Type
nasdaq_ntxoptions_topofmarket_itch_v1_2.message_type.labels = {
  ["T"] = "Message Type: Timestamp Message (T)",
  ["S"] = "Message Type: System Event Message (S)",
  ["D"] = "Message Type: Options Directory Message (D)",
  ["H"] = "Message Type: Trading Action Message (H)",
  ["O"] = "Message Type: Security Open Message (O)",
  ["q"] = "Message Type: Best Bid And Ask Update Short Form Message (q)",
  ["Q"] = "Message Type: Best Bid And Ask Update Long Form Message (Q)",
  ["b"] = "Message Type: Best Bid Update Short Form Message (b)",
  ["a"] = "Message Type: Best Ask Update Short Form Message (a)",
  ["B"] = "Message Type: Best Bid Update Long Form Message (B)",
  ["A"] = "Message Type: Best Ask Update Long Form Message (A)",
  ["R"] = "Message Type: Trade Report Message (R)",
  ["X"] = "Message Type: Broken Trade Report Message (X)",
}

nasdaq_ntxoptions_topofmarket_itch_v1_2.message_type.display = function(value)
  return nasdaq_ntxoptions_topofmarket_itch_v1_2.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_ntxoptions_topofmarket_itch_v1_2.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.message_type, range, value, display)

  return offset + length, value
end

-- Minimum Price Variation
nasdaq_ntxoptions_topofmarket_itch_v1_2.minimum_price_variation = {}

-- Size: Minimum Price Variation
nasdaq_ntxoptions_topofmarket_itch_v1_2.minimum_price_variation.size = 1

-- Display: Minimum Price Variation
nasdaq_ntxoptions_topofmarket_itch_v1_2.minimum_price_variation.labels = {
  ["E"] = "Minimum Price Variation: Penny Everywhere (E)",
  ["S"] = "Minimum Price Variation: Scaled (S)",
  ["P"] = "Minimum Price Variation: Penny Pilot (P)",
}

nasdaq_ntxoptions_topofmarket_itch_v1_2.minimum_price_variation.display = function(value)
  return nasdaq_ntxoptions_topofmarket_itch_v1_2.minimum_price_variation.labels[value] or "Minimum Price Variation: Unknown("..value..")"
end

-- Dissect: Minimum Price Variation
nasdaq_ntxoptions_topofmarket_itch_v1_2.minimum_price_variation.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.minimum_price_variation.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.minimum_price_variation.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.minimum_price_variation, range, value, display)

  return offset + length, value
end

-- Nanoseconds
nasdaq_ntxoptions_topofmarket_itch_v1_2.nanoseconds = {}

-- Size: Nanoseconds
nasdaq_ntxoptions_topofmarket_itch_v1_2.nanoseconds.size = 4

-- Display: Nanoseconds
nasdaq_ntxoptions_topofmarket_itch_v1_2.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nasdaq_ntxoptions_topofmarket_itch_v1_2.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Open State
nasdaq_ntxoptions_topofmarket_itch_v1_2.open_state = {}

-- Size: Open State
nasdaq_ntxoptions_topofmarket_itch_v1_2.open_state.size = 1

-- Display: Open State
nasdaq_ntxoptions_topofmarket_itch_v1_2.open_state.labels = {
  ["Y"] = "Open State: Open (Y)",
  ["N"] = "Open State: Closed (N)",
}

nasdaq_ntxoptions_topofmarket_itch_v1_2.open_state.display = function(value)
  return nasdaq_ntxoptions_topofmarket_itch_v1_2.open_state.labels[value] or "Open State: Unknown("..value..")"
end

-- Dissect: Open State
nasdaq_ntxoptions_topofmarket_itch_v1_2.open_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.open_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.open_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.open_state, range, value, display)

  return offset + length, value
end

-- Option Closing Type
nasdaq_ntxoptions_topofmarket_itch_v1_2.option_closing_type = {}

-- Size: Option Closing Type
nasdaq_ntxoptions_topofmarket_itch_v1_2.option_closing_type.size = 1

-- Display: Option Closing Type
nasdaq_ntxoptions_topofmarket_itch_v1_2.option_closing_type.display = function(value)
  return "Option Closing Type: "..value
end

-- Dissect: Option Closing Type
nasdaq_ntxoptions_topofmarket_itch_v1_2.option_closing_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.option_closing_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.option_closing_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.option_closing_type, range, value, display)

  return offset + length, value
end

-- Option Id
nasdaq_ntxoptions_topofmarket_itch_v1_2.option_id = {}

-- Size: Option Id
nasdaq_ntxoptions_topofmarket_itch_v1_2.option_id.size = 4

-- Display: Option Id
nasdaq_ntxoptions_topofmarket_itch_v1_2.option_id.display = function(value)
  return "Option Id: "..value
end

-- Dissect: Option Id
nasdaq_ntxoptions_topofmarket_itch_v1_2.option_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.option_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.option_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.option_id, range, value, display)

  return offset + length, value
end

-- Option Type
nasdaq_ntxoptions_topofmarket_itch_v1_2.option_type = {}

-- Size: Option Type
nasdaq_ntxoptions_topofmarket_itch_v1_2.option_type.size = 1

-- Display: Option Type
nasdaq_ntxoptions_topofmarket_itch_v1_2.option_type.labels = {
  ["C"] = "Option Type: Call (C)",
  ["P"] = "Option Type: Put (P)",
}

nasdaq_ntxoptions_topofmarket_itch_v1_2.option_type.display = function(value)
  return nasdaq_ntxoptions_topofmarket_itch_v1_2.option_type.labels[value] or "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nasdaq_ntxoptions_topofmarket_itch_v1_2.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.option_type, range, value, display)

  return offset + length, value
end

-- Original Cross Id
nasdaq_ntxoptions_topofmarket_itch_v1_2.original_cross_id = {}

-- Size: Original Cross Id
nasdaq_ntxoptions_topofmarket_itch_v1_2.original_cross_id.size = 4

-- Display: Original Cross Id
nasdaq_ntxoptions_topofmarket_itch_v1_2.original_cross_id.display = function(value)
  return "Original Cross Id: "..value
end

-- Dissect: Original Cross Id
nasdaq_ntxoptions_topofmarket_itch_v1_2.original_cross_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.original_cross_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.original_cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.original_cross_id, range, value, display)

  return offset + length, value
end

-- Original Price
nasdaq_ntxoptions_topofmarket_itch_v1_2.original_price = {}

-- Size: Original Price
nasdaq_ntxoptions_topofmarket_itch_v1_2.original_price.size = 4

-- Display: Original Price
nasdaq_ntxoptions_topofmarket_itch_v1_2.original_price.display = function(value)
  return "Original Price: "..value
end

-- Translate: Original Price
nasdaq_ntxoptions_topofmarket_itch_v1_2.original_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Original Price
nasdaq_ntxoptions_topofmarket_itch_v1_2.original_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.original_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_ntxoptions_topofmarket_itch_v1_2.original_price.translate(raw)
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.original_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.original_price, range, value, display)

  return offset + length, value
end

-- Original Volume
nasdaq_ntxoptions_topofmarket_itch_v1_2.original_volume = {}

-- Size: Original Volume
nasdaq_ntxoptions_topofmarket_itch_v1_2.original_volume.size = 4

-- Display: Original Volume
nasdaq_ntxoptions_topofmarket_itch_v1_2.original_volume.display = function(value)
  return "Original Volume: "..value
end

-- Dissect: Original Volume
nasdaq_ntxoptions_topofmarket_itch_v1_2.original_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.original_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.original_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.original_volume, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_ntxoptions_topofmarket_itch_v1_2.price = {}

-- Size: Price
nasdaq_ntxoptions_topofmarket_itch_v1_2.price.size = 2

-- Display: Price
nasdaq_ntxoptions_topofmarket_itch_v1_2.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nasdaq_ntxoptions_topofmarket_itch_v1_2.price.translate = function(raw)
  return raw/100
end

-- Dissect: Price
nasdaq_ntxoptions_topofmarket_itch_v1_2.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_ntxoptions_topofmarket_itch_v1_2.price.translate(raw)
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.price, range, value, display)

  return offset + length, value
end

-- Price Long
nasdaq_ntxoptions_topofmarket_itch_v1_2.price_long = {}

-- Size: Price Long
nasdaq_ntxoptions_topofmarket_itch_v1_2.price_long.size = 4

-- Display: Price Long
nasdaq_ntxoptions_topofmarket_itch_v1_2.price_long.display = function(value)
  return "Price Long: "..value
end

-- Translate: Price Long
nasdaq_ntxoptions_topofmarket_itch_v1_2.price_long.translate = function(raw)
  return raw/10000
end

-- Dissect: Price Long
nasdaq_ntxoptions_topofmarket_itch_v1_2.price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.price_long.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_ntxoptions_topofmarket_itch_v1_2.price_long.translate(raw)
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.price_long, range, value, display)

  return offset + length, value
end

-- Quote Condition
nasdaq_ntxoptions_topofmarket_itch_v1_2.quote_condition = {}

-- Size: Quote Condition
nasdaq_ntxoptions_topofmarket_itch_v1_2.quote_condition.size = 1

-- Display: Quote Condition
nasdaq_ntxoptions_topofmarket_itch_v1_2.quote_condition.display = function(value)
  if value == "F" then
    return "Quote Condition: Non Firm Quote (F)"
  end
  if value == "R" then
    return "Quote Condition: Rotational Quote (R)"
  end
  if value == "X" then
    return "Quote Condition: Bid Side Firm (X)"
  end
  if value == "Y" then
    return "Quote Condition: Ask Side Firm (Y)"
  end
  if value == " " then
    return "Quote Condition: Regular Quote (<whitespace>)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
nasdaq_ntxoptions_topofmarket_itch_v1_2.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Second
nasdaq_ntxoptions_topofmarket_itch_v1_2.second = {}

-- Size: Second
nasdaq_ntxoptions_topofmarket_itch_v1_2.second.size = 4

-- Store: Second
nasdaq_ntxoptions_topofmarket_itch_v1_2.second.current = nil

-- Generated: Second
nasdaq_ntxoptions_topofmarket_itch_v1_2.second.generated = function(value, range, packet, parent)
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.second.display(value)
  local second = parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.second, range, value, display)
  second:set_generated()
end

-- Display: Second
nasdaq_ntxoptions_topofmarket_itch_v1_2.second.display = function(value)
  return "Second: "..value
end

-- Dissect: Second
nasdaq_ntxoptions_topofmarket_itch_v1_2.second.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.second.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.second.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.second, range, value, display)

  return offset + length, value
end

-- Security Symbol
nasdaq_ntxoptions_topofmarket_itch_v1_2.security_symbol = {}

-- Size: Security Symbol
nasdaq_ntxoptions_topofmarket_itch_v1_2.security_symbol.size = 6

-- Display: Security Symbol
nasdaq_ntxoptions_topofmarket_itch_v1_2.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_ntxoptions_topofmarket_itch_v1_2.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_ntxoptions_topofmarket_itch_v1_2.sequence_number = {}

-- Size: Sequence Number
nasdaq_ntxoptions_topofmarket_itch_v1_2.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_ntxoptions_topofmarket_itch_v1_2.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_ntxoptions_topofmarket_itch_v1_2.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_ntxoptions_topofmarket_itch_v1_2.session = {}

-- Size: Session
nasdaq_ntxoptions_topofmarket_itch_v1_2.session.size = 10

-- Display: Session
nasdaq_ntxoptions_topofmarket_itch_v1_2.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_ntxoptions_topofmarket_itch_v1_2.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.session.size
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

  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.session, range, value, display)

  return offset + length, value
end

-- Size
nasdaq_ntxoptions_topofmarket_itch_v1_2.size = {}

-- Size: Size
nasdaq_ntxoptions_topofmarket_itch_v1_2.size.size = 2

-- Display: Size
nasdaq_ntxoptions_topofmarket_itch_v1_2.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
nasdaq_ntxoptions_topofmarket_itch_v1_2.size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.size, range, value, display)

  return offset + length, value
end

-- Size Long
nasdaq_ntxoptions_topofmarket_itch_v1_2.size_long = {}

-- Size: Size Long
nasdaq_ntxoptions_topofmarket_itch_v1_2.size_long.size = 4

-- Display: Size Long
nasdaq_ntxoptions_topofmarket_itch_v1_2.size_long.display = function(value)
  return "Size Long: "..value
end

-- Dissect: Size Long
nasdaq_ntxoptions_topofmarket_itch_v1_2.size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.size_long, range, value, display)

  return offset + length, value
end

-- Source
nasdaq_ntxoptions_topofmarket_itch_v1_2.source = {}

-- Size: Source
nasdaq_ntxoptions_topofmarket_itch_v1_2.source.size = 1

-- Display: Source
nasdaq_ntxoptions_topofmarket_itch_v1_2.source.display = function(value)
  return "Source: "..value
end

-- Dissect: Source
nasdaq_ntxoptions_topofmarket_itch_v1_2.source.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.source.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.source.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.source, range, value, display)

  return offset + length, value
end

-- Strike Price
nasdaq_ntxoptions_topofmarket_itch_v1_2.strike_price = {}

-- Size: Strike Price
nasdaq_ntxoptions_topofmarket_itch_v1_2.strike_price.size = 4

-- Display: Strike Price
nasdaq_ntxoptions_topofmarket_itch_v1_2.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
nasdaq_ntxoptions_topofmarket_itch_v1_2.strike_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Strike Price
nasdaq_ntxoptions_topofmarket_itch_v1_2.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.strike_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_ntxoptions_topofmarket_itch_v1_2.strike_price.translate(raw)
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Sub Version
nasdaq_ntxoptions_topofmarket_itch_v1_2.sub_version = {}

-- Size: Sub Version
nasdaq_ntxoptions_topofmarket_itch_v1_2.sub_version.size = 1

-- Display: Sub Version
nasdaq_ntxoptions_topofmarket_itch_v1_2.sub_version.display = function(value)
  return "Sub Version: "..value
end

-- Dissect: Sub Version
nasdaq_ntxoptions_topofmarket_itch_v1_2.sub_version.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.sub_version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.sub_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.sub_version, range, value, display)

  return offset + length, value
end

-- Tradable
nasdaq_ntxoptions_topofmarket_itch_v1_2.tradable = {}

-- Size: Tradable
nasdaq_ntxoptions_topofmarket_itch_v1_2.tradable.size = 1

-- Display: Tradable
nasdaq_ntxoptions_topofmarket_itch_v1_2.tradable.labels = {
  ["Y"] = "Tradable: Yes (Y)",
  ["N"] = "Tradable: No (N)",
}

nasdaq_ntxoptions_topofmarket_itch_v1_2.tradable.display = function(value)
  return nasdaq_ntxoptions_topofmarket_itch_v1_2.tradable.labels[value] or "Tradable: Unknown("..value..")"
end

-- Dissect: Tradable
nasdaq_ntxoptions_topofmarket_itch_v1_2.tradable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.tradable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.tradable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.tradable, range, value, display)

  return offset + length, value
end

-- Trade Condition
nasdaq_ntxoptions_topofmarket_itch_v1_2.trade_condition = {}

-- Size: Trade Condition
nasdaq_ntxoptions_topofmarket_itch_v1_2.trade_condition.size = 1

-- Display: Trade Condition
nasdaq_ntxoptions_topofmarket_itch_v1_2.trade_condition.display = function(value)
  return "Trade Condition: "..value
end

-- Dissect: Trade Condition
nasdaq_ntxoptions_topofmarket_itch_v1_2.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nasdaq_ntxoptions_topofmarket_itch_v1_2.underlying_symbol = {}

-- Size: Underlying Symbol
nasdaq_ntxoptions_topofmarket_itch_v1_2.underlying_symbol.size = 13

-- Display: Underlying Symbol
nasdaq_ntxoptions_topofmarket_itch_v1_2.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_ntxoptions_topofmarket_itch_v1_2.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Version
nasdaq_ntxoptions_topofmarket_itch_v1_2.version = {}

-- Size: Version
nasdaq_ntxoptions_topofmarket_itch_v1_2.version.size = 1

-- Display: Version
nasdaq_ntxoptions_topofmarket_itch_v1_2.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
nasdaq_ntxoptions_topofmarket_itch_v1_2.version.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.version, range, value, display)

  return offset + length, value
end

-- Volume
nasdaq_ntxoptions_topofmarket_itch_v1_2.volume = {}

-- Size: Volume
nasdaq_ntxoptions_topofmarket_itch_v1_2.volume.size = 4

-- Display: Volume
nasdaq_ntxoptions_topofmarket_itch_v1_2.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nasdaq_ntxoptions_topofmarket_itch_v1_2.volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.volume, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp = {}

-- Translate: Timestamp
nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp.translate = function(nanoseconds, stored_second)
  return UInt64.new(stored_second * 1000000000 + nanoseconds)
end

-- Display: Timestamp
nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp.display = function(nanoseconds, stored_second, packet)
  -- Raw display mode
  if nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp_format == 0 then
    return "Timestamp: "..(stored_second * 1000000000 + nanoseconds)
  end

  -- Full datetime mode (the day the frame that carried it settled on)
  if nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - stored_second) / 900 + 0.5) * 900

      local midnight = math.floor(settled / 86400 + 0.5) * 86400

      return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", midnight + stored_second)..string.format("%09d", nanoseconds)
    end
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", stored_second)..string.format("%09d", nanoseconds)
end

-- Composite: Timestamp
nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp.composite = function(buffer, offset, stored_second, packet, parent)
  local length = nasdaq_ntxoptions_topofmarket_itch_v1_2.nanoseconds.size
  local range = buffer(offset, length)
  local nanoseconds = range:uint()
  local value = nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp.translate(nanoseconds, stored_second)
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp.display(nanoseconds, stored_second, packet)
  parent = parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.timestamp, range, value, display)

  nasdaq_ntxoptions_topofmarket_itch_v1_2.second.generated(stored_second, range, packet, parent)

  display = nasdaq_ntxoptions_topofmarket_itch_v1_2.nanoseconds.display(nanoseconds)
  parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.nanoseconds, range, nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp.dissect = function(buffer, offset, packet, parent)
  if nasdaq_ntxoptions_topofmarket_itch_v1_2.format_timestamp then
    local stored_second = nasdaq_ntxoptions_topofmarket_itch_v1_2.second.current

    if stored_second ~= nil then
      return nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp.composite(buffer, offset, stored_second, packet, parent)
    end
  end

  return nasdaq_ntxoptions_topofmarket_itch_v1_2.nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NtxOptions TopOfMarket Itch 1.2
-----------------------------------------------------------------------

-- Broken Trade Report Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.broken_trade_report_message = {}

-- Size: Broken Trade Report Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.broken_trade_report_message.size =
  nasdaq_ntxoptions_topofmarket_itch_v1_2.nanoseconds.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.option_id.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.original_cross_id.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.original_price.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.original_volume.size

-- Display: Broken Trade Report Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.broken_trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Report Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.broken_trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_ntxoptions_topofmarket_itch_v1_2.option_id.dissect(buffer, index, packet, parent)

  -- Original Cross Id: Integer
  index, original_cross_id = nasdaq_ntxoptions_topofmarket_itch_v1_2.original_cross_id.dissect(buffer, index, packet, parent)

  -- Original Price: Integer
  index, original_price = nasdaq_ntxoptions_topofmarket_itch_v1_2.original_price.dissect(buffer, index, packet, parent)

  -- Original Volume: Integer
  index, original_volume = nasdaq_ntxoptions_topofmarket_itch_v1_2.original_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Report Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.broken_trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.broken_trade_report_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_topofmarket_itch_v1_2.broken_trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.broken_trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_topofmarket_itch_v1_2.broken_trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Report Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.trade_report_message = {}

-- Size: Trade Report Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.trade_report_message.size =
  nasdaq_ntxoptions_topofmarket_itch_v1_2.nanoseconds.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.option_id.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.cross_id.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.trade_condition.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.price_long.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.volume.size

-- Display: Trade Report Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_ntxoptions_topofmarket_itch_v1_2.option_id.dissect(buffer, index, packet, parent)

  -- Cross Id: Integer
  index, cross_id = nasdaq_ntxoptions_topofmarket_itch_v1_2.cross_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alpha
  index, trade_condition = nasdaq_ntxoptions_topofmarket_itch_v1_2.trade_condition.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_ntxoptions_topofmarket_itch_v1_2.price_long.dissect(buffer, index, packet, parent)

  -- Volume: Integer
  index, volume = nasdaq_ntxoptions_topofmarket_itch_v1_2.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.trade_report_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_topofmarket_itch_v1_2.trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_topofmarket_itch_v1_2.trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Ask Update Long Form Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.best_ask_update_long_form_message = {}

-- Size: Best Ask Update Long Form Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.best_ask_update_long_form_message.size =
  nasdaq_ntxoptions_topofmarket_itch_v1_2.nanoseconds.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.option_id.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.quote_condition.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.price_long.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.size_long.size

-- Display: Best Ask Update Long Form Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.best_ask_update_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Ask Update Long Form Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.best_ask_update_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_ntxoptions_topofmarket_itch_v1_2.option_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_ntxoptions_topofmarket_itch_v1_2.quote_condition.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_ntxoptions_topofmarket_itch_v1_2.price_long.dissect(buffer, index, packet, parent)

  -- Size Long: Integer
  index, size_long = nasdaq_ntxoptions_topofmarket_itch_v1_2.size_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Ask Update Long Form Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.best_ask_update_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.best_ask_update_long_form_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_topofmarket_itch_v1_2.best_ask_update_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.best_ask_update_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_topofmarket_itch_v1_2.best_ask_update_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Bid Update Long Form Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_update_long_form_message = {}

-- Size: Best Bid Update Long Form Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_update_long_form_message.size =
  nasdaq_ntxoptions_topofmarket_itch_v1_2.nanoseconds.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.option_id.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.quote_condition.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.price_long.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.size_long.size

-- Display: Best Bid Update Long Form Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_update_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid Update Long Form Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_update_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_ntxoptions_topofmarket_itch_v1_2.option_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_ntxoptions_topofmarket_itch_v1_2.quote_condition.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_ntxoptions_topofmarket_itch_v1_2.price_long.dissect(buffer, index, packet, parent)

  -- Size Long: Integer
  index, size_long = nasdaq_ntxoptions_topofmarket_itch_v1_2.size_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Update Long Form Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_update_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.best_bid_update_long_form_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_update_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_update_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_update_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Ask Update Short Form Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.best_ask_update_short_form_message = {}

-- Size: Best Ask Update Short Form Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.best_ask_update_short_form_message.size =
  nasdaq_ntxoptions_topofmarket_itch_v1_2.nanoseconds.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.option_id.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.quote_condition.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.price.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.size.size

-- Display: Best Ask Update Short Form Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.best_ask_update_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Ask Update Short Form Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.best_ask_update_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_ntxoptions_topofmarket_itch_v1_2.option_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_ntxoptions_topofmarket_itch_v1_2.quote_condition.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nasdaq_ntxoptions_topofmarket_itch_v1_2.price.dissect(buffer, index, packet, parent)

  -- Size: Integer
  index, size = nasdaq_ntxoptions_topofmarket_itch_v1_2.size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Ask Update Short Form Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.best_ask_update_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.best_ask_update_short_form_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_topofmarket_itch_v1_2.best_ask_update_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.best_ask_update_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_topofmarket_itch_v1_2.best_ask_update_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Bid Update Short Form Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_update_short_form_message = {}

-- Size: Best Bid Update Short Form Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_update_short_form_message.size =
  nasdaq_ntxoptions_topofmarket_itch_v1_2.nanoseconds.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.option_id.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.quote_condition.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.price.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.size.size

-- Display: Best Bid Update Short Form Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_update_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid Update Short Form Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_update_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_ntxoptions_topofmarket_itch_v1_2.option_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_ntxoptions_topofmarket_itch_v1_2.quote_condition.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nasdaq_ntxoptions_topofmarket_itch_v1_2.price.dissect(buffer, index, packet, parent)

  -- Size: Integer
  index, size = nasdaq_ntxoptions_topofmarket_itch_v1_2.size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Update Short Form Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_update_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.best_bid_update_short_form_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_update_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_update_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_update_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Bid And Ask Update Long Form Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_and_ask_update_long_form_message = {}

-- Size: Best Bid And Ask Update Long Form Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_and_ask_update_long_form_message.size =
  nasdaq_ntxoptions_topofmarket_itch_v1_2.nanoseconds.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.option_id.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.quote_condition.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_price_long.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_size_long.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_price_long.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_size_long.size

-- Display: Best Bid And Ask Update Long Form Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_and_ask_update_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid And Ask Update Long Form Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_and_ask_update_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_ntxoptions_topofmarket_itch_v1_2.option_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_ntxoptions_topofmarket_itch_v1_2.quote_condition.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Integer
  index, bid_price_long = nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Size Long: Integer
  index, bid_size_long = nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_size_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Integer
  index, ask_price_long = nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Size Long: Integer
  index, ask_size_long = nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_size_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid And Ask Update Long Form Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_and_ask_update_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.best_bid_and_ask_update_long_form_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_and_ask_update_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_and_ask_update_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_and_ask_update_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Bid And Ask Update Short Form Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_and_ask_update_short_form_message = {}

-- Size: Best Bid And Ask Update Short Form Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_and_ask_update_short_form_message.size =
  nasdaq_ntxoptions_topofmarket_itch_v1_2.nanoseconds.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.option_id.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.quote_condition.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_price.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_size.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_price.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_size.size

-- Display: Best Bid And Ask Update Short Form Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_and_ask_update_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid And Ask Update Short Form Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_and_ask_update_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_ntxoptions_topofmarket_itch_v1_2.option_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_ntxoptions_topofmarket_itch_v1_2.quote_condition.dissect(buffer, index, packet, parent)

  -- Bid Price: Integer
  index, bid_price = nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: Integer
  index, bid_size = nasdaq_ntxoptions_topofmarket_itch_v1_2.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price: Integer
  index, ask_price = nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: Integer
  index, ask_size = nasdaq_ntxoptions_topofmarket_itch_v1_2.ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid And Ask Update Short Form Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_and_ask_update_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.best_bid_and_ask_update_short_form_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_and_ask_update_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_and_ask_update_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_and_ask_update_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Open Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.security_open_message = {}

-- Size: Security Open Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.security_open_message.size =
  nasdaq_ntxoptions_topofmarket_itch_v1_2.nanoseconds.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.option_id.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.open_state.size

-- Display: Security Open Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.security_open_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Open Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.security_open_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_ntxoptions_topofmarket_itch_v1_2.option_id.dissect(buffer, index, packet, parent)

  -- Open State: Alpha
  index, open_state = nasdaq_ntxoptions_topofmarket_itch_v1_2.open_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Open Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.security_open_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.security_open_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_topofmarket_itch_v1_2.security_open_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.security_open_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_topofmarket_itch_v1_2.security_open_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Action Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.trading_action_message = {}

-- Size: Trading Action Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.trading_action_message.size =
  nasdaq_ntxoptions_topofmarket_itch_v1_2.nanoseconds.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.option_id.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.current_trading_state.size

-- Display: Trading Action Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Action Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_ntxoptions_topofmarket_itch_v1_2.option_id.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alpha
  index, current_trading_state = nasdaq_ntxoptions_topofmarket_itch_v1_2.current_trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.trading_action_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_topofmarket_itch_v1_2.trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_topofmarket_itch_v1_2.trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Directory Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.options_directory_message = {}

-- Size: Options Directory Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.options_directory_message.size =
  nasdaq_ntxoptions_topofmarket_itch_v1_2.nanoseconds.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.option_id.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.security_symbol.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.expiration_year.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.expiration_month.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.expiration_day.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.strike_price.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.option_type.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.source.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.underlying_symbol.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.option_closing_type.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.tradable.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.minimum_price_variation.size

-- Display: Options Directory Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.options_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Directory Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.options_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_ntxoptions_topofmarket_itch_v1_2.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_ntxoptions_topofmarket_itch_v1_2.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Year: Integer
  index, expiration_year = nasdaq_ntxoptions_topofmarket_itch_v1_2.expiration_year.dissect(buffer, index, packet, parent)

  -- Expiration Month: Integer
  index, expiration_month = nasdaq_ntxoptions_topofmarket_itch_v1_2.expiration_month.dissect(buffer, index, packet, parent)

  -- Expiration Day: Integer
  index, expiration_day = nasdaq_ntxoptions_topofmarket_itch_v1_2.expiration_day.dissect(buffer, index, packet, parent)

  -- Strike Price: Integer
  index, strike_price = nasdaq_ntxoptions_topofmarket_itch_v1_2.strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_ntxoptions_topofmarket_itch_v1_2.option_type.dissect(buffer, index, packet, parent)

  -- Source: Integer
  index, source = nasdaq_ntxoptions_topofmarket_itch_v1_2.source.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alpha
  index, underlying_symbol = nasdaq_ntxoptions_topofmarket_itch_v1_2.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Option Closing Type: Alpha
  index, option_closing_type = nasdaq_ntxoptions_topofmarket_itch_v1_2.option_closing_type.dissect(buffer, index, packet, parent)

  -- Tradable: Alpha
  index, tradable = nasdaq_ntxoptions_topofmarket_itch_v1_2.tradable.dissect(buffer, index, packet, parent)

  -- Minimum Price Variation: Alpha
  index, minimum_price_variation = nasdaq_ntxoptions_topofmarket_itch_v1_2.minimum_price_variation.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Directory Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.options_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.options_directory_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_topofmarket_itch_v1_2.options_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.options_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_topofmarket_itch_v1_2.options_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.system_event_message = {}

-- Size: System Event Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.system_event_message.size =
  nasdaq_ntxoptions_topofmarket_itch_v1_2.nanoseconds.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.event_code.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.version.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.sub_version.size

-- Display: System Event Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_ntxoptions_topofmarket_itch_v1_2.event_code.dissect(buffer, index, packet, parent)

  -- Version: Integer
  index, version = nasdaq_ntxoptions_topofmarket_itch_v1_2.version.dissect(buffer, index, packet, parent)

  -- Sub Version: Integer
  index, sub_version = nasdaq_ntxoptions_topofmarket_itch_v1_2.sub_version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_topofmarket_itch_v1_2.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_topofmarket_itch_v1_2.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Timestamp Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp_message = {}

-- Size: Timestamp Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp_message.size =
  nasdaq_ntxoptions_topofmarket_itch_v1_2.second.size

-- Display: Timestamp Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Timestamp Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: Integer
  index, second = nasdaq_ntxoptions_topofmarket_itch_v1_2.second.dissect(buffer, index, packet, parent)

  -- Store Second Value
  nasdaq_ntxoptions_topofmarket_itch_v1_2.second.current = second

  if not packet.visited then
    nasdaq_ntxoptions_topofmarket_itch_v1_2.conversation.current.second.last = second
  end

  return index
end

-- Dissect: Timestamp Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.timestamp_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_ntxoptions_topofmarket_itch_v1_2.payload = {}

-- Dispatch: Payload
nasdaq_ntxoptions_topofmarket_itch_v1_2.payload.dispatch = {
  ["T"] = nasdaq_ntxoptions_topofmarket_itch_v1_2.timestamp_message.dissect,
  ["S"] = nasdaq_ntxoptions_topofmarket_itch_v1_2.system_event_message.dissect,
  ["D"] = nasdaq_ntxoptions_topofmarket_itch_v1_2.options_directory_message.dissect,
  ["H"] = nasdaq_ntxoptions_topofmarket_itch_v1_2.trading_action_message.dissect,
  ["O"] = nasdaq_ntxoptions_topofmarket_itch_v1_2.security_open_message.dissect,
  ["q"] = nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_and_ask_update_short_form_message.dissect,
  ["Q"] = nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_and_ask_update_long_form_message.dissect,
  ["b"] = nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_update_short_form_message.dissect,
  ["a"] = nasdaq_ntxoptions_topofmarket_itch_v1_2.best_ask_update_short_form_message.dissect,
  ["B"] = nasdaq_ntxoptions_topofmarket_itch_v1_2.best_bid_update_long_form_message.dissect,
  ["A"] = nasdaq_ntxoptions_topofmarket_itch_v1_2.best_ask_update_long_form_message.dissect,
  ["R"] = nasdaq_ntxoptions_topofmarket_itch_v1_2.trade_report_message.dissect,
  ["X"] = nasdaq_ntxoptions_topofmarket_itch_v1_2.broken_trade_report_message.dissect,
}

-- Dissect: Payload
nasdaq_ntxoptions_topofmarket_itch_v1_2.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = nasdaq_ntxoptions_topofmarket_itch_v1_2.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_ntxoptions_topofmarket_itch_v1_2.message_header = {}

-- Size: Message Header
nasdaq_ntxoptions_topofmarket_itch_v1_2.message_header.size =
  nasdaq_ntxoptions_topofmarket_itch_v1_2.message_length.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.message_type.size

-- Display: Message Header
nasdaq_ntxoptions_topofmarket_itch_v1_2.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_ntxoptions_topofmarket_itch_v1_2.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_ntxoptions_topofmarket_itch_v1_2.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 13 values
  index, message_type = nasdaq_ntxoptions_topofmarket_itch_v1_2.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_ntxoptions_topofmarket_itch_v1_2.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.message_header, buffer(offset, 0))
    local index = nasdaq_ntxoptions_topofmarket_itch_v1_2.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_topofmarket_itch_v1_2.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.message = {}

-- Read runtime size of: Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and nasdaq_ntxoptions_topofmarket_itch_v1_2.packet_sequence ~= nil then
    local sequence = parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.message_sequence_number, UInt64.new(nasdaq_ntxoptions_topofmarket_itch_v1_2.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_ntxoptions_topofmarket_itch_v1_2.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 13 branches
  index = nasdaq_ntxoptions_topofmarket_itch_v1_2.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_ntxoptions_topofmarket_itch_v1_2.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_ntxoptions_topofmarket_itch_v1_2.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.message, buffer(offset, 0))
    local current = nasdaq_ntxoptions_topofmarket_itch_v1_2.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_ntxoptions_topofmarket_itch_v1_2.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
nasdaq_ntxoptions_topofmarket_itch_v1_2.end_of_session = {}

-- Display: End Of Session
nasdaq_ntxoptions_topofmarket_itch_v1_2.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_ntxoptions_topofmarket_itch_v1_2.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_ntxoptions_topofmarket_itch_v1_2.heartbeat = {}

-- Display: Heartbeat
nasdaq_ntxoptions_topofmarket_itch_v1_2.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_ntxoptions_topofmarket_itch_v1_2.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_ntxoptions_topofmarket_itch_v1_2.messages = {}

-- Dispatch: Messages
nasdaq_ntxoptions_topofmarket_itch_v1_2.messages.dispatch = {
  [0] = nasdaq_ntxoptions_topofmarket_itch_v1_2.heartbeat.dissect,
  [65535] = nasdaq_ntxoptions_topofmarket_itch_v1_2.end_of_session.dissect,
}

-- Dissect: Messages
nasdaq_ntxoptions_topofmarket_itch_v1_2.messages.dissect = function(buffer, offset, packet, parent, message_count)
  local dissect = nasdaq_ntxoptions_topofmarket_itch_v1_2.messages.dispatch[message_count]
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
    offset = nasdaq_ntxoptions_topofmarket_itch_v1_2.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
nasdaq_ntxoptions_topofmarket_itch_v1_2.packet_header = {}

-- Size: Packet Header
nasdaq_ntxoptions_topofmarket_itch_v1_2.packet_header.size =
  nasdaq_ntxoptions_topofmarket_itch_v1_2.session.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.sequence_number.size + 
  nasdaq_ntxoptions_topofmarket_itch_v1_2.message_count.size

-- Display: Packet Header
nasdaq_ntxoptions_topofmarket_itch_v1_2.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_ntxoptions_topofmarket_itch_v1_2.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_ntxoptions_topofmarket_itch_v1_2.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_ntxoptions_topofmarket_itch_v1_2.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_ntxoptions_topofmarket_itch_v1_2.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  nasdaq_ntxoptions_topofmarket_itch_v1_2.packet_sequence = sequence_number

  return index
end

-- Dissect: Packet Header
nasdaq_ntxoptions_topofmarket_itch_v1_2.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_ntxoptions_topofmarket_itch_v1_2.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_topofmarket_itch_v1_2.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_topofmarket_itch_v1_2.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_ntxoptions_topofmarket_itch_v1_2.packet = {}

-- Verify required size of Udp packet
nasdaq_ntxoptions_topofmarket_itch_v1_2.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_ntxoptions_topofmarket_itch_v1_2.packet_header.size
end

-- Dissect Packet
nasdaq_ntxoptions_topofmarket_itch_v1_2.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nasdaq_ntxoptions_topofmarket_itch_v1_2.conversation.data(packet)
  if not packet.visited then
    data.second.frames[packet.number] = data.second.last
  end
  nasdaq_ntxoptions_topofmarket_itch_v1_2.second.current = data.second.frames[packet.number]
  nasdaq_ntxoptions_topofmarket_itch_v1_2.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_ntxoptions_topofmarket_itch_v1_2.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_ntxoptions_topofmarket_itch_v1_2.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.init()
  nasdaq_ntxoptions_topofmarket_itch_v1_2.second.current = nil
  nasdaq_ntxoptions_topofmarket_itch_v1_2.conversation.current = nil
  nasdaq_ntxoptions_topofmarket_itch_v1_2.conversation.flows = {}
end

-- Dissector for Nasdaq NtxOptions TopOfMarket Itch 1.2
function omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2, buffer(), omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.description, "("..buffer:len().." Bytes)")
  return nasdaq_ntxoptions_topofmarket_itch_v1_2.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq NtxOptions TopOfMarket Itch 1.2 (Udp)
local function omi_nasdaq_ntxoptions_topofmarket_itch_v1_2_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_ntxoptions_topofmarket_itch_v1_2.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_ntxoptions_topofmarket_itch_v1_2
  omi_nasdaq_ntxoptions_topofmarket_itch_v1_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NtxOptions TopOfMarket Itch 1.2
omi_nasdaq_ntxoptions_topofmarket_itch_v1_2:register_heuristic("udp", omi_nasdaq_ntxoptions_topofmarket_itch_v1_2_udp_heuristic)

-- Register Nasdaq NtxOptions TopOfMarket Itch 1.2 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_ntxoptions_topofmarket_itch_v1_2)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 1.2
--   Date: Thursday, November 2, 2017
--   Specification: BXOptions_TopofMarket.pdf
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
