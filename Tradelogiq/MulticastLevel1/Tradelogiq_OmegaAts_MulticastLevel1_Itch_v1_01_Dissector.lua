-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Tradelogiq OmegaAts MulticastLevel1 Itch 1.01 Protocol
local omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01 = Proto("Omi.Tradelogiq.OmegaAts.MulticastLevel1.Itch.v1.01", "Tradelogiq OmegaAts MulticastLevel1 Itch 1.01")

-- Protocol table
local tradelogiq_omegaats_multicastlevel1_itch_v1_01 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Tradelogiq OmegaAts MulticastLevel1 Itch 1.01 Fields
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.best_ask_price = ProtoField.new("Best Ask Price", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.bestaskprice", ftypes.DOUBLE, nil, nil, nil, "Denotes best ask price on Tradelogiq's order books either OMEGA or LYNX")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.best_ask_size = ProtoField.new("Best Ask Size", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.bestasksize", ftypes.UINT32, nil, nil, nil, "Denotes the total number of shares available for display on Tradelogiq's order books at the best ask price")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.best_bid_price = ProtoField.new("Best Bid Price", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.bestbidprice", ftypes.DOUBLE, nil, nil, nil, "Denotes best bid price on Tradelogiq's books either OMEGA or LYNX")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.best_bid_size = ProtoField.new("Best Bid Size", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.bestbidsize", ftypes.UINT32, nil, nil, nil, "Denotes the total number of shares available for display on Tradelogiq's order books at the best bid price")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.board_lot_size = ProtoField.new("Board Lot Size", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.boardlotsize", ftypes.UINT32, nil, nil, nil, "Indicates a board lot size")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.buy_broker = ProtoField.new("Buy Broker", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.buybroker", ftypes.UINT16, nil, nil, nil, "Buy Side Broker Number or 1 for Anonymous")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.conditions = ProtoField.new("Conditions", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.conditions", ftypes.STRING, nil, nil, nil, "Trade condition codes, W for Bypass, X for Internal Cross and E for Odd Lot. Note: Field may be blank")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.corrected_trade_price = ProtoField.new("Corrected Trade Price", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.correctedtradeprice", ftypes.DOUBLE, nil, nil, nil, "Price associated with the trade correction reported")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.corrected_trade_size = ProtoField.new("Corrected Trade Size", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.correctedtradesize", ftypes.UINT32, nil, nil, nil, "Number of shares with the trade correction")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.currency = ProtoField.new("Currency", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.currency", ftypes.STRING, nil, nil, nil, "Indicates currency for the symbol")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.description = ProtoField.new("Description", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.description", ftypes.STRING, nil, nil, nil, "Description of Security")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.dividend_indicator = ProtoField.new("Dividend Indicator", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.dividendindicator", ftypes.STRING, nil, nil, nil, "Dividend frequency of the security")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.event_code = ProtoField.new("Event Code", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.eventcode", ftypes.STRING, nil, nil, nil, "See Below For codes")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.expiry_date = ProtoField.new("Expiry Date", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.expirydate", ftypes.STRING, nil, nil, nil, "Date of expiry in the format YYYYMMDD")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.frequency = ProtoField.new("Frequency", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.frequency", ftypes.STRING, nil, nil, nil, "Dividend frequency of the security")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.instrument_id = ProtoField.new("Instrument Id", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.instrumentid", ftypes.UINT16, nil, nil, nil, "Internal instrument identifier for Omega ATS and Lynx ATS")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.market = ProtoField.new("Market", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.market", ftypes.STRING, nil, nil, nil, "Indicates the listing market of security")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.message_count = ProtoField.new("Message Count", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.messagecount", ftypes.UINT16, nil, nil, nil, "The count of messages contained in this packet")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.message_length = ProtoField.new("Message Length", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.messagelength", ftypes.UINT16, nil, nil, nil, "The length in bytes of the message contained in this message block")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.message_type = ProtoField.new("Message Type", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.messagetype", ftypes.STRING, nil, nil, nil, "Code identifying this message type")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.original_trade_id = ProtoField.new("Original Trade Id", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.originaltradeid", ftypes.UINT32, nil, nil, nil, "Original internal number of the given trade transaction")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.original_trade_price = ProtoField.new("Original Trade Price", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.originaltradeprice", ftypes.DOUBLE, nil, nil, nil, "Original price associated with the trade transaction")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.original_trade_size = ProtoField.new("Original Trade Size", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.originaltradesize", ftypes.UINT32, nil, nil, nil, "Trade Size reported on the original trade transaction")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.reason = ProtoField.new("Reason", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.reason", ftypes.STRING, nil, nil, nil, "Reason the security is halted. Note: Field may be blank")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.request_sequence_number = ProtoField.new("Request Sequence Number", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.requestsequencenumber", ftypes.UINT64, nil, nil, nil, "First requested sequence number")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.request_session = ProtoField.new("Request Session", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.requestsession", ftypes.STRING, nil, nil, nil, "Indicates the session to which this belongs")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.requested_message_count = ProtoField.new("Requested Message Count", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.requestedmessagecount", ftypes.UINT16, nil, nil, nil, "The number of messages requested for retransmission")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.reserved_1 = ProtoField.new("Reserved 1", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.reserved1", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.reserved_2 = ProtoField.new("Reserved 2", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.reserved2", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.reserved_3 = ProtoField.new("Reserved 3", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.reserved3", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.reserved_9 = ProtoField.new("Reserved 9", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.reserved9", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.security_type = ProtoField.new("Security Type", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.securitytype", ftypes.STRING, nil, nil, nil, "Instrument class of the security")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.sell_broker = ProtoField.new("Sell Broker", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.sellbroker", ftypes.UINT16, nil, nil, nil, "Sell Side Broker Number or 1 for Anonymous")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.sequence_number = ProtoField.new("Sequence Number", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.sequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the first message in the packet")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.session = ProtoField.new("Session", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.session", ftypes.STRING, nil, nil, nil, "Indicates the session to which the packet belongs")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.shortable = ProtoField.new("Shortable", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.shortable", ftypes.STRING, nil, nil, nil, "Indicates the short status of a security")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.stock = ProtoField.new("Stock", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.stock", ftypes.STRING, nil, nil, nil, "Denotes the security symbol on Omega ATS and Lynx ATS")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.stock_symbol = ProtoField.new("Stock Symbol", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.stocksymbol", ftypes.STRING, nil, nil, nil, "Stock Identifier for which BBO quotation message is being generated")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.timestamp = ProtoField.new("Timestamp", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.timestamp", ftypes.UINT64, nil, nil, nil, "Nanoseconds since midnight.")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.trade_id = ProtoField.new("Trade Id", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.tradeid", ftypes.UINT32, nil, nil, nil, "Indicates the internal number of the given trade transaction")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.trade_price = ProtoField.new("Trade Price", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.tradeprice", ftypes.DOUBLE, nil, nil, nil, "The price associated with the trade transaction being reported.")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.trade_size = ProtoField.new("Trade Size", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.tradesize", ftypes.UINT32, nil, nil, nil, "Number of shares on the trade transaction")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.trading_state = ProtoField.new("Trading State", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.tradingstate", ftypes.STRING, nil, nil, nil, "The current trading state for the issue")

-- Tradelogiq OmegaAts MulticastLevel1 Itch 1.01 Framing
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.message = ProtoField.new("Message", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.message", ftypes.STRING, nil, nil, nil, "Tradelogiq Qtp Message Block")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.message_header = ProtoField.new("Message Header", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.messageheader", ftypes.STRING, nil, nil, nil, "Tradelogiq Qtp Message Block Header")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.packet = ProtoField.new("Packet", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.packet", ftypes.STRING, nil, nil, nil, "Tradelogiq Qtp Downstream Packet")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.packet_header = ProtoField.new("Packet Header", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.packetheader", ftypes.STRING, nil, nil, nil, "Tradelogiq Qtp Downstream Packet Header")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.request_packet = ProtoField.new("Request Packet", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.requestpacket", ftypes.STRING, nil, nil, nil, "Sent to a Re-request server to request the retransmission of a particular message or group of messages")

-- Tradelogiq OmegaAts MulticastLevel1 1.01 Application Messages
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.extended_stock_directory_message = ProtoField.new("Extended Stock Directory Message", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.extendedstockdirectorymessage", ftypes.STRING, nil, nil, nil, "Extended Stock Directory are for Special stock symbols eg warrants debentures rights.")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.quote_message = ProtoField.new("Quote Message", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.quotemessage", ftypes.STRING, nil, nil, nil, "Tradelogiq's BBO will broadcast real-time updates every time Tradelogiq's top of book changes.")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.stockdirectorymessage", ftypes.STRING, nil, nil, nil, "At start of each trading day, OSI disseminates stock directory messages for supported securities.")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.stock_status_message = ProtoField.new("Stock Status Message", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.stockstatusmessage", ftypes.STRING, nil, nil, nil, "This message indicates the current trading status of a stock.")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.system_event_message = ProtoField.new("System Event Message", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.systemeventmessage", ftypes.STRING, nil, nil, nil, "The system event message is used to signal a market or a data feed handler event.")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.trade_bust_message = ProtoField.new("Trade Bust Message", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.tradebustmessage", ftypes.STRING, nil, nil, nil, "If trade is cancelled or busted during the day Trade Bust Message will be sent.")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.tradecorrectionmessage", ftypes.STRING, nil, nil, nil, "Trade amendments during the day will send this message.")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.trade_report_message = ProtoField.new("Trade Report Message", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.tradereportmessage", ftypes.STRING, nil, nil, nil, "Relays all transactions available from or reported by Tradelogiq's two trading books for the current business day.")

-- Tradelogiq OmegaAts MulticastLevel1 1.01 Session Messages
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.heartbeat = ProtoField.new("Heartbeat", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.heartbeat", ftypes.BYTES, nil, nil, nil, "Sent periodically so receivers can sense packet loss during times of low traffic, carrying the next expected sequence number")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.request_packet = ProtoField.new("Request Packet", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.requestpacket", ftypes.STRING, nil, nil, nil, "Sent to a Re-request server to request the retransmission of a particular message or group of messages")

-- Tradelogiq OmegaAts MulticastLevel1 Itch 1.01 Generated Fields
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.message_index = ProtoField.new("Message Index", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.messageindex", ftypes.UINT16)
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "tradelogiq.omegaats.multicastlevel1.itch.v1.01.messagesequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Tradelogiq OmegaAts MulticastLevel1 Itch 1.01 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
tradelogiq_omegaats_multicastlevel1_itch_v1_01.timestamp_format = 2

-- Hours behind UTC (UTC) for midnight calculation
tradelogiq_omegaats_multicastlevel1_itch_v1_01.utc_offset_hours = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Tradelogiq OmegaAts MulticastLevel1 Itch 1.01 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.session_messages = true
show.indexes = true
show.sequences = true

-- Register Tradelogiq OmegaAts MulticastLevel1 Itch 1.01 Show Options
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 0, "Hours behind UTC (UTC) for midnight calculation")

-- Handle changed preferences
function omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.prefs.show_application_messages then
    show.application_messages = omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.prefs.show_application_messages
  end
  if show.headers ~= omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.prefs.show_headers then
    show.headers = omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.prefs.show_headers
  end
  if show.session_messages ~= omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.prefs.show_session_messages then
    show.session_messages = omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.prefs.show_session_messages
  end
  if show.structs ~= omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.prefs.show_structs then
    show.structs = omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.prefs.show_structs
  end
  if show.indexes ~= omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.prefs.show_indexes then
    show.indexes = omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.prefs.show_indexes
  end
  if show.sequences ~= omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.prefs.show_sequences then
    show.sequences = omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.prefs.show_sequences
  end
  if tradelogiq_omegaats_multicastlevel1_itch_v1_01.timestamp_format ~= omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.prefs.timestamp_format then
    tradelogiq_omegaats_multicastlevel1_itch_v1_01.timestamp_format = omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.prefs.timestamp_format
  end
  if tradelogiq_omegaats_multicastlevel1_itch_v1_01.utc_offset_hours ~= omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.prefs.utc_offset_hours then
    tradelogiq_omegaats_multicastlevel1_itch_v1_01.utc_offset_hours = omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.prefs.utc_offset_hours
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
-- Tradelogiq OmegaAts MulticastLevel1 Itch 1.01 Fields
-----------------------------------------------------------------------

-- Best Ask Price
tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_ask_price = {}

-- Size: Best Ask Price
tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_ask_price.size = 8

-- Display: Best Ask Price
tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_ask_price.display = function(value)
  return "Best Ask Price: "..value
end

-- Translate: Best Ask Price
tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_ask_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Best Ask Price
tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_ask_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_ask_price.translate(raw)
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.best_ask_price, range, value, display)

  return offset + length, value
end

-- Best Ask Size
tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_ask_size = {}

-- Size: Best Ask Size
tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_ask_size.size = 4

-- Display: Best Ask Size
tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_ask_size.display = function(value)
  return "Best Ask Size: "..value
end

-- Dissect: Best Ask Size
tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_ask_size.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.best_ask_size, range, value, display)

  return offset + length, value
end

-- Best Bid Price
tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_bid_price = {}

-- Size: Best Bid Price
tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_bid_price.size = 8

-- Display: Best Bid Price
tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_bid_price.display = function(value)
  return "Best Bid Price: "..value
end

-- Translate: Best Bid Price
tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_bid_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Best Bid Price
tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_bid_price.translate(raw)
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.best_bid_price, range, value, display)

  return offset + length, value
end

-- Best Bid Size
tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_bid_size = {}

-- Size: Best Bid Size
tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_bid_size.size = 4

-- Display: Best Bid Size
tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_bid_size.display = function(value)
  return "Best Bid Size: "..value
end

-- Dissect: Best Bid Size
tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.best_bid_size, range, value, display)

  return offset + length, value
end

-- Board Lot Size
tradelogiq_omegaats_multicastlevel1_itch_v1_01.board_lot_size = {}

-- Size: Board Lot Size
tradelogiq_omegaats_multicastlevel1_itch_v1_01.board_lot_size.size = 4

-- Display: Board Lot Size
tradelogiq_omegaats_multicastlevel1_itch_v1_01.board_lot_size.display = function(value)
  return "Board Lot Size: "..value
end

-- Dissect: Board Lot Size
tradelogiq_omegaats_multicastlevel1_itch_v1_01.board_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.board_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.board_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.board_lot_size, range, value, display)

  return offset + length, value
end

-- Buy Broker
tradelogiq_omegaats_multicastlevel1_itch_v1_01.buy_broker = {}

-- Size: Buy Broker
tradelogiq_omegaats_multicastlevel1_itch_v1_01.buy_broker.size = 2

-- Display: Buy Broker
tradelogiq_omegaats_multicastlevel1_itch_v1_01.buy_broker.display = function(value)
  return "Buy Broker: "..value
end

-- Dissect: Buy Broker
tradelogiq_omegaats_multicastlevel1_itch_v1_01.buy_broker.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.buy_broker.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.buy_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.buy_broker, range, value, display)

  return offset + length, value
end

-- Conditions
tradelogiq_omegaats_multicastlevel1_itch_v1_01.conditions = {}

-- Size: Conditions
tradelogiq_omegaats_multicastlevel1_itch_v1_01.conditions.size = 5

-- Display: Conditions
tradelogiq_omegaats_multicastlevel1_itch_v1_01.conditions.display = function(value)
  return "Conditions: "..value
end

-- Dissect: Conditions
tradelogiq_omegaats_multicastlevel1_itch_v1_01.conditions.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.conditions.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.conditions.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.conditions, range, value, display)

  return offset + length, value
end

-- Corrected Trade Price
tradelogiq_omegaats_multicastlevel1_itch_v1_01.corrected_trade_price = {}

-- Size: Corrected Trade Price
tradelogiq_omegaats_multicastlevel1_itch_v1_01.corrected_trade_price.size = 8

-- Display: Corrected Trade Price
tradelogiq_omegaats_multicastlevel1_itch_v1_01.corrected_trade_price.display = function(value)
  return "Corrected Trade Price: "..value
end

-- Translate: Corrected Trade Price
tradelogiq_omegaats_multicastlevel1_itch_v1_01.corrected_trade_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Corrected Trade Price
tradelogiq_omegaats_multicastlevel1_itch_v1_01.corrected_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.corrected_trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = tradelogiq_omegaats_multicastlevel1_itch_v1_01.corrected_trade_price.translate(raw)
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.corrected_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.corrected_trade_price, range, value, display)

  return offset + length, value
end

-- Corrected Trade Size
tradelogiq_omegaats_multicastlevel1_itch_v1_01.corrected_trade_size = {}

-- Size: Corrected Trade Size
tradelogiq_omegaats_multicastlevel1_itch_v1_01.corrected_trade_size.size = 4

-- Display: Corrected Trade Size
tradelogiq_omegaats_multicastlevel1_itch_v1_01.corrected_trade_size.display = function(value)
  return "Corrected Trade Size: "..value
end

-- Dissect: Corrected Trade Size
tradelogiq_omegaats_multicastlevel1_itch_v1_01.corrected_trade_size.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.corrected_trade_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.corrected_trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.corrected_trade_size, range, value, display)

  return offset + length, value
end

-- Currency
tradelogiq_omegaats_multicastlevel1_itch_v1_01.currency = {}

-- Size: Currency
tradelogiq_omegaats_multicastlevel1_itch_v1_01.currency.size = 3

-- Display: Currency
tradelogiq_omegaats_multicastlevel1_itch_v1_01.currency.labels = {
  ["CAD"] = "Currency: Canadian Dollars (CAD)",
  ["USD"] = "Currency: Us Dollars (USD)",
}

tradelogiq_omegaats_multicastlevel1_itch_v1_01.currency.display = function(value)
  return tradelogiq_omegaats_multicastlevel1_itch_v1_01.currency.labels[value] or "Currency: Unknown("..value..")"
end

-- Dissect: Currency
tradelogiq_omegaats_multicastlevel1_itch_v1_01.currency.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.currency, range, value, display)

  return offset + length, value
end

-- Description
tradelogiq_omegaats_multicastlevel1_itch_v1_01.description = {}

-- Size: Description
tradelogiq_omegaats_multicastlevel1_itch_v1_01.description.size = 20

-- Display: Description
tradelogiq_omegaats_multicastlevel1_itch_v1_01.description.display = function(value)
  return "Description: "..value
end

-- Dissect: Description
tradelogiq_omegaats_multicastlevel1_itch_v1_01.description.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.description.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.description.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.description, range, value, display)

  return offset + length, value
end

-- Dividend Indicator
tradelogiq_omegaats_multicastlevel1_itch_v1_01.dividend_indicator = {}

-- Size: Dividend Indicator
tradelogiq_omegaats_multicastlevel1_itch_v1_01.dividend_indicator.size = 1

-- Display: Dividend Indicator
tradelogiq_omegaats_multicastlevel1_itch_v1_01.dividend_indicator.labels = {
  ["A"] = "Dividend Indicator: Annual (A)",
  ["S"] = "Dividend Indicator: Semi Annual (S)",
  ["Q"] = "Dividend Indicator: Quarterly (Q)",
  ["M"] = "Dividend Indicator: Monthly (M)",
}

tradelogiq_omegaats_multicastlevel1_itch_v1_01.dividend_indicator.display = function(value)
  return tradelogiq_omegaats_multicastlevel1_itch_v1_01.dividend_indicator.labels[value] or "Dividend Indicator: Unknown("..value..")"
end

-- Dissect: Dividend Indicator
tradelogiq_omegaats_multicastlevel1_itch_v1_01.dividend_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.dividend_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.dividend_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.dividend_indicator, range, value, display)

  return offset + length, value
end

-- Event Code
tradelogiq_omegaats_multicastlevel1_itch_v1_01.event_code = {}

-- Size: Event Code
tradelogiq_omegaats_multicastlevel1_itch_v1_01.event_code.size = 1

-- Display: Event Code
tradelogiq_omegaats_multicastlevel1_itch_v1_01.event_code.labels = {
  ["O"] = "Event Code: Start Of Messages (O)",
  ["S"] = "Event Code: Start Of System Hours (S)",
  ["Q"] = "Event Code: Start Of Market Hours (Q)",
  ["M"] = "Event Code: End Of Market Hours (M)",
  ["E"] = "Event Code: End Of System Hours (E)",
  ["C"] = "Event Code: End Of Messages (C)",
  ["B"] = "Event Code: Trading Halted (B)",
  ["R"] = "Event Code: Trading Resumed (R)",
}

tradelogiq_omegaats_multicastlevel1_itch_v1_01.event_code.display = function(value)
  return tradelogiq_omegaats_multicastlevel1_itch_v1_01.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
tradelogiq_omegaats_multicastlevel1_itch_v1_01.event_code.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.event_code, range, value, display)

  return offset + length, value
end

-- Expiry Date
tradelogiq_omegaats_multicastlevel1_itch_v1_01.expiry_date = {}

-- Size: Expiry Date
tradelogiq_omegaats_multicastlevel1_itch_v1_01.expiry_date.size = 8

-- Display: Expiry Date
tradelogiq_omegaats_multicastlevel1_itch_v1_01.expiry_date.display = function(value)
  if #value < 8 then
    return "Expiry Date: "..value
  end

  return "Expiry Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Expiry Date
tradelogiq_omegaats_multicastlevel1_itch_v1_01.expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.expiry_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.expiry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.expiry_date, range, value, display)

  return offset + length, value
end

-- Frequency
tradelogiq_omegaats_multicastlevel1_itch_v1_01.frequency = {}

-- Size: Frequency
tradelogiq_omegaats_multicastlevel1_itch_v1_01.frequency.size = 1

-- Display: Frequency
tradelogiq_omegaats_multicastlevel1_itch_v1_01.frequency.labels = {
  ["A"] = "Frequency: Annual (A)",
  ["S"] = "Frequency: Semi Annual (S)",
  ["Q"] = "Frequency: Quarterly (Q)",
  ["M"] = "Frequency: Monthly (M)",
}

tradelogiq_omegaats_multicastlevel1_itch_v1_01.frequency.display = function(value)
  return tradelogiq_omegaats_multicastlevel1_itch_v1_01.frequency.labels[value] or "Frequency: Unknown("..value..")"
end

-- Dissect: Frequency
tradelogiq_omegaats_multicastlevel1_itch_v1_01.frequency.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.frequency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.frequency.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.frequency, range, value, display)

  return offset + length, value
end

-- Instrument Id
tradelogiq_omegaats_multicastlevel1_itch_v1_01.instrument_id = {}

-- Size: Instrument Id
tradelogiq_omegaats_multicastlevel1_itch_v1_01.instrument_id.size = 2

-- Display: Instrument Id
tradelogiq_omegaats_multicastlevel1_itch_v1_01.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
tradelogiq_omegaats_multicastlevel1_itch_v1_01.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.instrument_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Market
tradelogiq_omegaats_multicastlevel1_itch_v1_01.market = {}

-- Size: Market
tradelogiq_omegaats_multicastlevel1_itch_v1_01.market.size = 1

-- Display: Market
tradelogiq_omegaats_multicastlevel1_itch_v1_01.market.labels = {
  ["t"] = "Market: Tsx (t)",
  ["v"] = "Market: Venture (v)",
  ["c"] = "Market: Cnsx (c)",
  ["q"] = "Market: Nasdaq Canada (q)",
  ["o"] = "Market: Omega (o)",
  ["z"] = "Market: Aequitas (z)",
}

tradelogiq_omegaats_multicastlevel1_itch_v1_01.market.display = function(value)
  return tradelogiq_omegaats_multicastlevel1_itch_v1_01.market.labels[value] or "Market: Unknown("..value..")"
end

-- Dissect: Market
tradelogiq_omegaats_multicastlevel1_itch_v1_01.market.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.market.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.market.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.market, range, value, display)

  return offset + length, value
end

-- Message Count
tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_count = {}

-- Size: Message Count
tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_count.size = 2

-- Display: Message Count
tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_count.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_length = {}

-- Size: Message Length
tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_length.size = 2

-- Display: Message Length
tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_length.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_type = {}

-- Size: Message Type
tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_type.size = 1

-- Display: Message Type
tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_type.labels = {
  ["W"] = "Message Type: Quote Message (W)",
  ["T"] = "Message Type: Trade Report Message (T)",
  ["N"] = "Message Type: Trade Bust Message (N)",
  ["M"] = "Message Type: Trade Correction Message (M)",
  ["S"] = "Message Type: System Event Message (S)",
  ["R"] = "Message Type: Stock Directory Message (R)",
  ["r"] = "Message Type: Extended Stock Directory Message (r)",
  ["H"] = "Message Type: Stock Status Message (H)",
}

tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_type.display = function(value)
  return tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_type.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.message_type, range, value, display)

  return offset + length, value
end

-- Original Trade Id
tradelogiq_omegaats_multicastlevel1_itch_v1_01.original_trade_id = {}

-- Size: Original Trade Id
tradelogiq_omegaats_multicastlevel1_itch_v1_01.original_trade_id.size = 4

-- Display: Original Trade Id
tradelogiq_omegaats_multicastlevel1_itch_v1_01.original_trade_id.display = function(value)
  return "Original Trade Id: "..value
end

-- Dissect: Original Trade Id
tradelogiq_omegaats_multicastlevel1_itch_v1_01.original_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.original_trade_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.original_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.original_trade_id, range, value, display)

  return offset + length, value
end

-- Original Trade Price
tradelogiq_omegaats_multicastlevel1_itch_v1_01.original_trade_price = {}

-- Size: Original Trade Price
tradelogiq_omegaats_multicastlevel1_itch_v1_01.original_trade_price.size = 8

-- Display: Original Trade Price
tradelogiq_omegaats_multicastlevel1_itch_v1_01.original_trade_price.display = function(value)
  return "Original Trade Price: "..value
end

-- Translate: Original Trade Price
tradelogiq_omegaats_multicastlevel1_itch_v1_01.original_trade_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Original Trade Price
tradelogiq_omegaats_multicastlevel1_itch_v1_01.original_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.original_trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = tradelogiq_omegaats_multicastlevel1_itch_v1_01.original_trade_price.translate(raw)
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.original_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.original_trade_price, range, value, display)

  return offset + length, value
end

-- Original Trade Size
tradelogiq_omegaats_multicastlevel1_itch_v1_01.original_trade_size = {}

-- Size: Original Trade Size
tradelogiq_omegaats_multicastlevel1_itch_v1_01.original_trade_size.size = 4

-- Display: Original Trade Size
tradelogiq_omegaats_multicastlevel1_itch_v1_01.original_trade_size.display = function(value)
  return "Original Trade Size: "..value
end

-- Dissect: Original Trade Size
tradelogiq_omegaats_multicastlevel1_itch_v1_01.original_trade_size.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.original_trade_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.original_trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.original_trade_size, range, value, display)

  return offset + length, value
end

-- Reason
tradelogiq_omegaats_multicastlevel1_itch_v1_01.reason = {}

-- Size: Reason
tradelogiq_omegaats_multicastlevel1_itch_v1_01.reason.size = 4

-- Display: Reason
tradelogiq_omegaats_multicastlevel1_itch_v1_01.reason.labels = {
  ["R"] = "Reason: Regulatory Halt (R)",
  ["B"] = "Reason: Business Halt (B)",
}

tradelogiq_omegaats_multicastlevel1_itch_v1_01.reason.display = function(value)
  return tradelogiq_omegaats_multicastlevel1_itch_v1_01.reason.labels[value] or "Reason: Unknown("..value..")"
end

-- Dissect: Reason
tradelogiq_omegaats_multicastlevel1_itch_v1_01.reason.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.reason, range, value, display)

  return offset + length, value
end

-- Request Sequence Number
tradelogiq_omegaats_multicastlevel1_itch_v1_01.request_sequence_number = {}

-- Size: Request Sequence Number
tradelogiq_omegaats_multicastlevel1_itch_v1_01.request_sequence_number.size = 8

-- Display: Request Sequence Number
tradelogiq_omegaats_multicastlevel1_itch_v1_01.request_sequence_number.display = function(value)
  return "Request Sequence Number: "..value
end

-- Dissect: Request Sequence Number
tradelogiq_omegaats_multicastlevel1_itch_v1_01.request_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.request_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.request_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.request_sequence_number, range, value, display)

  return offset + length, value
end

-- Request Session
tradelogiq_omegaats_multicastlevel1_itch_v1_01.request_session = {}

-- Size: Request Session
tradelogiq_omegaats_multicastlevel1_itch_v1_01.request_session.size = 10

-- Display: Request Session
tradelogiq_omegaats_multicastlevel1_itch_v1_01.request_session.display = function(value)
  return "Request Session: "..value
end

-- Dissect: Request Session
tradelogiq_omegaats_multicastlevel1_itch_v1_01.request_session.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.request_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.request_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.request_session, range, value, display)

  return offset + length, value
end

-- Requested Message Count
tradelogiq_omegaats_multicastlevel1_itch_v1_01.requested_message_count = {}

-- Size: Requested Message Count
tradelogiq_omegaats_multicastlevel1_itch_v1_01.requested_message_count.size = 2

-- Display: Requested Message Count
tradelogiq_omegaats_multicastlevel1_itch_v1_01.requested_message_count.display = function(value)
  return "Requested Message Count: "..value
end

-- Dissect: Requested Message Count
tradelogiq_omegaats_multicastlevel1_itch_v1_01.requested_message_count.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.requested_message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.requested_message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.requested_message_count, range, value, display)

  return offset + length, value
end

-- Reserved 1
tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_1 = {}

-- Size: Reserved 1
tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_1.size = 1

-- Display: Reserved 1
tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_2 = {}

-- Size: Reserved 2
tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_2.size = 2

-- Display: Reserved 2
tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 3
tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_3 = {}

-- Size: Reserved 3
tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_3.size = 3

-- Display: Reserved 3
tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Reserved 9
tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_9 = {}

-- Size: Reserved 9
tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_9.size = 9

-- Display: Reserved 9
tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_9.display = function(value)
  return "Reserved 9: "..value
end

-- Dissect: Reserved 9
tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_9.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_9.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_9.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.reserved_9, range, value, display)

  return offset + length, value
end

-- Security Type
tradelogiq_omegaats_multicastlevel1_itch_v1_01.security_type = {}

-- Size: Security Type
tradelogiq_omegaats_multicastlevel1_itch_v1_01.security_type.size = 1

-- Display: Security Type
tradelogiq_omegaats_multicastlevel1_itch_v1_01.security_type.labels = {
  ["d"] = "Security Type: Debentures (d)",
  ["r"] = "Security Type: Rights (r)",
  ["n"] = "Security Type: Notes (n)",
  ["w"] = "Security Type: Warrants (w)",
}

tradelogiq_omegaats_multicastlevel1_itch_v1_01.security_type.display = function(value)
  return tradelogiq_omegaats_multicastlevel1_itch_v1_01.security_type.labels[value] or "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
tradelogiq_omegaats_multicastlevel1_itch_v1_01.security_type.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.security_type, range, value, display)

  return offset + length, value
end

-- Sell Broker
tradelogiq_omegaats_multicastlevel1_itch_v1_01.sell_broker = {}

-- Size: Sell Broker
tradelogiq_omegaats_multicastlevel1_itch_v1_01.sell_broker.size = 2

-- Display: Sell Broker
tradelogiq_omegaats_multicastlevel1_itch_v1_01.sell_broker.display = function(value)
  return "Sell Broker: "..value
end

-- Dissect: Sell Broker
tradelogiq_omegaats_multicastlevel1_itch_v1_01.sell_broker.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.sell_broker.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.sell_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.sell_broker, range, value, display)

  return offset + length, value
end

-- Sequence Number
tradelogiq_omegaats_multicastlevel1_itch_v1_01.sequence_number = {}

-- Size: Sequence Number
tradelogiq_omegaats_multicastlevel1_itch_v1_01.sequence_number.size = 8

-- Display: Sequence Number
tradelogiq_omegaats_multicastlevel1_itch_v1_01.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
tradelogiq_omegaats_multicastlevel1_itch_v1_01.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
tradelogiq_omegaats_multicastlevel1_itch_v1_01.session = {}

-- Size: Session
tradelogiq_omegaats_multicastlevel1_itch_v1_01.session.size = 10

-- Display: Session
tradelogiq_omegaats_multicastlevel1_itch_v1_01.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
tradelogiq_omegaats_multicastlevel1_itch_v1_01.session.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.session, range, value, display)

  return offset + length, value
end

-- Shortable
tradelogiq_omegaats_multicastlevel1_itch_v1_01.shortable = {}

-- Size: Shortable
tradelogiq_omegaats_multicastlevel1_itch_v1_01.shortable.size = 1

-- Display: Shortable
tradelogiq_omegaats_multicastlevel1_itch_v1_01.shortable.labels = {
  ["E"] = "Shortable: Short Exempt (E)",
  ["S"] = "Shortable: Shortable (S)",
  ["N"] = "Shortable: Not Shortable (N)",
}

tradelogiq_omegaats_multicastlevel1_itch_v1_01.shortable.display = function(value)
  return tradelogiq_omegaats_multicastlevel1_itch_v1_01.shortable.labels[value] or "Shortable: Unknown("..value..")"
end

-- Dissect: Shortable
tradelogiq_omegaats_multicastlevel1_itch_v1_01.shortable.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.shortable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.shortable.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.shortable, range, value, display)

  return offset + length, value
end

-- Stock
tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock = {}

-- Size: Stock
tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock.size = 10

-- Display: Stock
tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.stock, range, value, display)

  return offset + length, value
end

-- Stock Symbol
tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_symbol = {}

-- Size: Stock Symbol
tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_symbol.size = 10

-- Display: Stock Symbol
tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_symbol.display = function(value)
  return "Stock Symbol: "..value
end

-- Dissect: Stock Symbol
tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_symbol.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.stock_symbol, range, value, display)

  return offset + length, value
end

-- Timestamp
tradelogiq_omegaats_multicastlevel1_itch_v1_01.timestamp = {}

-- Size: Timestamp
tradelogiq_omegaats_multicastlevel1_itch_v1_01.timestamp.size = 8

-- Display: Timestamp
tradelogiq_omegaats_multicastlevel1_itch_v1_01.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if tradelogiq_omegaats_multicastlevel1_itch_v1_01.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if tradelogiq_omegaats_multicastlevel1_itch_v1_01.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = tradelogiq_omegaats_multicastlevel1_itch_v1_01.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
tradelogiq_omegaats_multicastlevel1_itch_v1_01.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Id
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_id = {}

-- Size: Trade Id
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_id.size = 4

-- Display: Trade Id
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Price
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_price = {}

-- Size: Trade Price
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_price.size = 8

-- Display: Trade Price
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Trade Price
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_price.translate(raw)
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Size
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_size = {}

-- Size: Trade Size
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_size.size = 4

-- Display: Trade Size
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_size.display = function(value)
  return "Trade Size: "..value
end

-- Dissect: Trade Size
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_size.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.trade_size, range, value, display)

  return offset + length, value
end

-- Trading State
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trading_state = {}

-- Size: Trading State
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trading_state.size = 1

-- Display: Trading State
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trading_state.labels = {
  ["H"] = "Trading State: Halted (H)",
  ["T"] = "Trading State: Trading (T)",
}

tradelogiq_omegaats_multicastlevel1_itch_v1_01.trading_state.display = function(value)
  return tradelogiq_omegaats_multicastlevel1_itch_v1_01.trading_state.labels[value] or "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.trading_state, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Tradelogiq OmegaAts MulticastLevel1 Itch 1.01
-----------------------------------------------------------------------

-- Request Packet
tradelogiq_omegaats_multicastlevel1_itch_v1_01.request_packet = {}

-- Verify required size of Udp packet
tradelogiq_omegaats_multicastlevel1_itch_v1_01.request_packet.requiredsize = function(buffer)
  return buffer:len() >= tradelogiq_omegaats_multicastlevel1_itch_v1_01.request_session.size + tradelogiq_omegaats_multicastlevel1_itch_v1_01.request_sequence_number.size + tradelogiq_omegaats_multicastlevel1_itch_v1_01.requested_message_count.size
end

-- Dissect Request Packet
tradelogiq_omegaats_multicastlevel1_itch_v1_01.request_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Request Session: 10 Byte Ascii String
  index, request_session = tradelogiq_omegaats_multicastlevel1_itch_v1_01.request_session.dissect(buffer, index, packet, parent)

  -- Request Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, request_sequence_number = tradelogiq_omegaats_multicastlevel1_itch_v1_01.request_sequence_number.dissect(buffer, index, packet, parent)

  -- Requested Message Count: 2 Byte Unsigned Fixed Width Integer
  index, requested_message_count = tradelogiq_omegaats_multicastlevel1_itch_v1_01.requested_message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Stock Status Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_status_message = {}

-- Size: Stock Status Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_status_message.size =
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.trading_state.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.timestamp.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.reason.size

-- Display: Stock Status Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Status Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading State: Alpha
  index, trading_state = tradelogiq_omegaats_multicastlevel1_itch_v1_01.trading_state.dissect(buffer, index, packet, parent)

  -- Stock: Alphanumeric & '.'
  index, stock = tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_omegaats_multicastlevel1_itch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Reason: Alphanumeric
  index, reason = tradelogiq_omegaats_multicastlevel1_itch_v1_01.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Status Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.stock_status_message, buffer(offset, 0))
    local index = tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Stock Directory Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.extended_stock_directory_message = {}

-- Size: Extended Stock Directory Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.extended_stock_directory_message.size =
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.market.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.timestamp.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.board_lot_size.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.instrument_id.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.shortable.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.frequency.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_9.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.currency.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.security_type.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.expiry_date.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.description.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_3.size

-- Display: Extended Stock Directory Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.extended_stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Stock Directory Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.extended_stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market: Alphanumeric
  index, market = tradelogiq_omegaats_multicastlevel1_itch_v1_01.market.dissect(buffer, index, packet, parent)

  -- Stock: Alphanumeric & '.'
  index, stock = tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_omegaats_multicastlevel1_itch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Board Lot Size: Integer
  index, board_lot_size = tradelogiq_omegaats_multicastlevel1_itch_v1_01.board_lot_size.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = tradelogiq_omegaats_multicastlevel1_itch_v1_01.instrument_id.dissect(buffer, index, packet, parent)

  -- Shortable: Alpha
  index, shortable = tradelogiq_omegaats_multicastlevel1_itch_v1_01.shortable.dissect(buffer, index, packet, parent)

  -- Frequency: Alpha
  index, frequency = tradelogiq_omegaats_multicastlevel1_itch_v1_01.frequency.dissect(buffer, index, packet, parent)

  -- Reserved 9: Alphanumeric
  index, reserved_9 = tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_9.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = tradelogiq_omegaats_multicastlevel1_itch_v1_01.currency.dissect(buffer, index, packet, parent)

  -- Security Type: Alpha
  index, security_type = tradelogiq_omegaats_multicastlevel1_itch_v1_01.security_type.dissect(buffer, index, packet, parent)

  -- Expiry Date: Date
  index, expiry_date = tradelogiq_omegaats_multicastlevel1_itch_v1_01.expiry_date.dissect(buffer, index, packet, parent)

  -- Description: Alphanumeric
  index, description = tradelogiq_omegaats_multicastlevel1_itch_v1_01.description.dissect(buffer, index, packet, parent)

  -- Reserved 3: Alpha
  index, reserved_3 = tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Stock Directory Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.extended_stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.extended_stock_directory_message, buffer(offset, 0))
    local index = tradelogiq_omegaats_multicastlevel1_itch_v1_01.extended_stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.extended_stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_omegaats_multicastlevel1_itch_v1_01.extended_stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Directory Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_directory_message = {}

-- Size: Stock Directory Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_directory_message.size =
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.market.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.timestamp.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.board_lot_size.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.instrument_id.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.shortable.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.dividend_indicator.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_9.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.currency.size

-- Display: Stock Directory Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market: Alphanumeric
  index, market = tradelogiq_omegaats_multicastlevel1_itch_v1_01.market.dissect(buffer, index, packet, parent)

  -- Stock: Alphanumeric & '.'
  index, stock = tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_omegaats_multicastlevel1_itch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Board Lot Size: Integer
  index, board_lot_size = tradelogiq_omegaats_multicastlevel1_itch_v1_01.board_lot_size.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = tradelogiq_omegaats_multicastlevel1_itch_v1_01.instrument_id.dissect(buffer, index, packet, parent)

  -- Shortable: Alpha
  index, shortable = tradelogiq_omegaats_multicastlevel1_itch_v1_01.shortable.dissect(buffer, index, packet, parent)

  -- Dividend Indicator: Alpha
  index, dividend_indicator = tradelogiq_omegaats_multicastlevel1_itch_v1_01.dividend_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 9: Alphanumeric
  index, reserved_9 = tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_9.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = tradelogiq_omegaats_multicastlevel1_itch_v1_01.currency.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.stock_directory_message, buffer(offset, 0))
    local index = tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.system_event_message = {}

-- Size: System Event Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.system_event_message.size =
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.event_code.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_2.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.timestamp.size

-- Display: System Event Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Code: Alphanumeric
  index, event_code = tradelogiq_omegaats_multicastlevel1_itch_v1_01.event_code.dissect(buffer, index, packet, parent)

  -- Reserved 2: Alpha
  index, reserved_2 = tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_2.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_omegaats_multicastlevel1_itch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.system_event_message, buffer(offset, 0))
    local index = tradelogiq_omegaats_multicastlevel1_itch_v1_01.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_omegaats_multicastlevel1_itch_v1_01.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Correction Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_correction_message = {}

-- Size: Trade Correction Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_correction_message.size =
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_1.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_symbol.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.timestamp.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.original_trade_id.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.original_trade_price.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.original_trade_size.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.corrected_trade_price.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.corrected_trade_size.size

-- Display: Trade Correction Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 1: Alpha
  index, reserved_1 = tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_1.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Alphanumeric & '.'
  index, stock_symbol = tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_symbol.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_omegaats_multicastlevel1_itch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Original Trade Id: Integer
  index, original_trade_id = tradelogiq_omegaats_multicastlevel1_itch_v1_01.original_trade_id.dissect(buffer, index, packet, parent)

  -- Original Trade Price: Price
  index, original_trade_price = tradelogiq_omegaats_multicastlevel1_itch_v1_01.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Trade Size: Integer
  index, original_trade_size = tradelogiq_omegaats_multicastlevel1_itch_v1_01.original_trade_size.dissect(buffer, index, packet, parent)

  -- Corrected Trade Price: Price
  index, corrected_trade_price = tradelogiq_omegaats_multicastlevel1_itch_v1_01.corrected_trade_price.dissect(buffer, index, packet, parent)

  -- Corrected Trade Size: Integer
  index, corrected_trade_size = tradelogiq_omegaats_multicastlevel1_itch_v1_01.corrected_trade_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.trade_correction_message, buffer(offset, 0))
    local index = tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Bust Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_bust_message = {}

-- Size: Trade Bust Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_bust_message.size =
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_1.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_symbol.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.timestamp.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_id.size

-- Display: Trade Bust Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_bust_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Bust Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_bust_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 1: Alpha
  index, reserved_1 = tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_1.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Alphanumeric & '.'
  index, stock_symbol = tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_symbol.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_omegaats_multicastlevel1_itch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Id: Integer
  index, trade_id = tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Bust Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_bust_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.trade_bust_message, buffer(offset, 0))
    local index = tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_bust_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_bust_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_bust_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Report Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_report_message = {}

-- Size: Trade Report Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_report_message.size =
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.conditions.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_symbol.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.timestamp.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_id.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_price.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_size.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.buy_broker.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.sell_broker.size

-- Display: Trade Report Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Conditions: Alpha
  index, conditions = tradelogiq_omegaats_multicastlevel1_itch_v1_01.conditions.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Alphanumeric & '.'
  index, stock_symbol = tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_symbol.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_omegaats_multicastlevel1_itch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Id: Integer
  index, trade_id = tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Price: Integer
  index, trade_price = tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Size: Integer
  index, trade_size = tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_size.dissect(buffer, index, packet, parent)

  -- Buy Broker: Integer
  index, buy_broker = tradelogiq_omegaats_multicastlevel1_itch_v1_01.buy_broker.dissect(buffer, index, packet, parent)

  -- Sell Broker: Integer
  index, sell_broker = tradelogiq_omegaats_multicastlevel1_itch_v1_01.sell_broker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.trade_report_message, buffer(offset, 0))
    local index = tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.quote_message = {}

-- Size: Quote Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.quote_message.size =
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_1.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_symbol.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.timestamp.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_bid_price.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_bid_size.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_ask_price.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_ask_size.size

-- Display: Quote Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 1: Alpha
  index, reserved_1 = tradelogiq_omegaats_multicastlevel1_itch_v1_01.reserved_1.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Alphanumeric & '.'
  index, stock_symbol = tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_symbol.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_omegaats_multicastlevel1_itch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Best Bid Price: Price
  index, best_bid_price = tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_bid_price.dissect(buffer, index, packet, parent)

  -- Best Bid Size: Integer
  index, best_bid_size = tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_bid_size.dissect(buffer, index, packet, parent)

  -- Best Ask Price: Price
  index, best_ask_price = tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_ask_price.dissect(buffer, index, packet, parent)

  -- Best Ask Size: Integer
  index, best_ask_size = tradelogiq_omegaats_multicastlevel1_itch_v1_01.best_ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.quote_message, buffer(offset, 0))
    local index = tradelogiq_omegaats_multicastlevel1_itch_v1_01.quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_omegaats_multicastlevel1_itch_v1_01.quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
tradelogiq_omegaats_multicastlevel1_itch_v1_01.payload = {}

-- Dissect: Payload
tradelogiq_omegaats_multicastlevel1_itch_v1_01.payload.dispatch = {
  ["W"] = tradelogiq_omegaats_multicastlevel1_itch_v1_01.quote_message.dissect,
  ["T"] = tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_report_message.dissect,
  ["N"] = tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_bust_message.dissect,
  ["M"] = tradelogiq_omegaats_multicastlevel1_itch_v1_01.trade_correction_message.dissect,
  ["S"] = tradelogiq_omegaats_multicastlevel1_itch_v1_01.system_event_message.dissect,
  ["R"] = tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_directory_message.dissect,
  ["r"] = tradelogiq_omegaats_multicastlevel1_itch_v1_01.extended_stock_directory_message.dissect,
  ["H"] = tradelogiq_omegaats_multicastlevel1_itch_v1_01.stock_status_message.dissect,
}

tradelogiq_omegaats_multicastlevel1_itch_v1_01.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = tradelogiq_omegaats_multicastlevel1_itch_v1_01.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_header = {}

-- Size: Message Header
tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_header.size =
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_length.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_type.size

-- Display: Message Header
tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 8 values
  index, message_type = tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.message_header, buffer(offset, 0))
    local index = tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.message = {}

-- Read runtime size of: Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and tradelogiq_omegaats_multicastlevel1_itch_v1_01.packet_sequence ~= nil then
    local sequence = parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.message_sequence_number, UInt64.new(tradelogiq_omegaats_multicastlevel1_itch_v1_01.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 8 branches
  index = tradelogiq_omegaats_multicastlevel1_itch_v1_01.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
tradelogiq_omegaats_multicastlevel1_itch_v1_01.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = tradelogiq_omegaats_multicastlevel1_itch_v1_01.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.message, buffer(offset, 0))
    local current = tradelogiq_omegaats_multicastlevel1_itch_v1_01.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tradelogiq_omegaats_multicastlevel1_itch_v1_01.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
tradelogiq_omegaats_multicastlevel1_itch_v1_01.heartbeat = {}

-- Display: Heartbeat
tradelogiq_omegaats_multicastlevel1_itch_v1_01.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
tradelogiq_omegaats_multicastlevel1_itch_v1_01.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
tradelogiq_omegaats_multicastlevel1_itch_v1_01.messages = {}

-- Dissect: Messages
tradelogiq_omegaats_multicastlevel1_itch_v1_01.messages.dispatch = {
  [0] = tradelogiq_omegaats_multicastlevel1_itch_v1_01.heartbeat.dissect,
}

tradelogiq_omegaats_multicastlevel1_itch_v1_01.messages.dissect = function(buffer, offset, packet, parent, message_count)
  local dissect = tradelogiq_omegaats_multicastlevel1_itch_v1_01.messages.dispatch[message_count]
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
    offset = tradelogiq_omegaats_multicastlevel1_itch_v1_01.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
tradelogiq_omegaats_multicastlevel1_itch_v1_01.packet_header = {}

-- Size: Packet Header
tradelogiq_omegaats_multicastlevel1_itch_v1_01.packet_header.size =
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.session.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.sequence_number.size + 
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_count.size

-- Display: Packet Header
tradelogiq_omegaats_multicastlevel1_itch_v1_01.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
tradelogiq_omegaats_multicastlevel1_itch_v1_01.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = tradelogiq_omegaats_multicastlevel1_itch_v1_01.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = tradelogiq_omegaats_multicastlevel1_itch_v1_01.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = tradelogiq_omegaats_multicastlevel1_itch_v1_01.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  tradelogiq_omegaats_multicastlevel1_itch_v1_01.packet_sequence = sequence_number

  return index
end

-- Dissect: Packet Header
tradelogiq_omegaats_multicastlevel1_itch_v1_01.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.fields.packet_header, buffer(offset, 0))
    local index = tradelogiq_omegaats_multicastlevel1_itch_v1_01.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_omegaats_multicastlevel1_itch_v1_01.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_omegaats_multicastlevel1_itch_v1_01.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
tradelogiq_omegaats_multicastlevel1_itch_v1_01.packet = {}

-- Verify required size of Udp packet
tradelogiq_omegaats_multicastlevel1_itch_v1_01.packet.requiredsize = function(buffer)
  return buffer:len() >= tradelogiq_omegaats_multicastlevel1_itch_v1_01.packet_header.size
end

-- Dissect Packet
tradelogiq_omegaats_multicastlevel1_itch_v1_01.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = tradelogiq_omegaats_multicastlevel1_itch_v1_01.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 2 branches
  index = tradelogiq_omegaats_multicastlevel1_itch_v1_01.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.init()
end

-- Dissector for Tradelogiq OmegaAts MulticastLevel1 Itch 1.01
function omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.name

  -- Dissect protocol
  local protocol = parent:add(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01, buffer(), omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.description, "("..buffer:len().." Bytes)")
  return tradelogiq_omegaats_multicastlevel1_itch_v1_01.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Tradelogiq OmegaAts MulticastLevel1 Itch 1.01 (Udp)
local function omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not tradelogiq_omegaats_multicastlevel1_itch_v1_01.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01
  omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Tradelogiq OmegaAts MulticastLevel1 Itch 1.01 (Udp)
local function omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01_udp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not tradelogiq_omegaats_multicastlevel1_itch_v1_01.request_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01
  omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristics for Tradelogiq OmegaAts MulticastLevel1 Itch 1.01
omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01:register_heuristic("udp", omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01_udp_heuristic)

-- Register Tradelogiq OmegaAts MulticastLevel1 Itch 1.01 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_tradelogiq_omegaats_multicastlevel1_itch_v1_01)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Tradelogiq Markets Inc.
--   Version: 1.01
--   Date: Sunday, January 30, 2022
--   Specification: TradelogiQ-Level-1-ITCH-5.0-Specification-v1.01.pdf
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
