-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Tradelogiq OmegaAts MulticastLevel2 Itch 2.01 Protocol
local omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01 = Proto("Omi.Tradelogiq.OmegaAts.MulticastLevel2.Itch.v2.01", "Tradelogiq OmegaAts MulticastLevel2 Itch 2.01")

-- Protocol table
local tradelogiq_omegaats_multicastlevel2_itch_v2_01 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Tradelogiq OmegaAts MulticastLevel2 Itch 2.01 Fields
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.board_lot_size = ProtoField.new("Board Lot Size", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.boardlotsize", ftypes.UINT32)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.buy_broker_id = ProtoField.new("Buy Broker Id", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.buybrokerid", ftypes.UINT16)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.buysellindicator", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.bypass = ProtoField.new("Bypass", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.bypass", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.cancelled_shares = ProtoField.new("Cancelled Shares", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.cancelledshares", ftypes.UINT32)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.contra_broker_id = ProtoField.new("Contra Broker Id", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.contrabrokerid", ftypes.UINT16)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.corrected_trade_price = ProtoField.new("Corrected Trade Price", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.correctedtradeprice", ftypes.DOUBLE)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.corrected_trade_size = ProtoField.new("Corrected Trade Size", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.correctedtradesize", ftypes.UINT32)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.cross_type = ProtoField.new("Cross Type", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.crosstype", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.currency = ProtoField.new("Currency", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.currency", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.description = ProtoField.new("Description", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.description", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.dividend_indicator = ProtoField.new("Dividend Indicator", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.dividendindicator", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.event_code = ProtoField.new("Event Code", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.eventcode", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.exec_broker_id = ProtoField.new("Exec Broker Id", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.execbrokerid", ftypes.UINT16)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.executed_shares = ProtoField.new("Executed Shares", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.executedshares", ftypes.UINT32)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.execution_price = ProtoField.new("Execution Price", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.executionprice", ftypes.DOUBLE)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.expiry_date = ProtoField.new("Expiry Date", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.expirydate", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.frequency = ProtoField.new("Frequency", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.frequency", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.instrument_id = ProtoField.new("Instrument Id", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.instrumentid", ftypes.UINT16)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.marker = ProtoField.new("Marker", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.marker", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.market = ProtoField.new("Market", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.market", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.match_number = ProtoField.new("Match Number", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.matchnumber", ftypes.UINT32)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.message_count = ProtoField.new("Message Count", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.messagecount", ftypes.UINT16)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.message_length = ProtoField.new("Message Length", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.messagelength", ftypes.UINT16)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.message_type = ProtoField.new("Message Type", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.messagetype", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.midpoint_book_trade = ProtoField.new("Midpoint Book Trade", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.midpointbooktrade", ftypes.UINT32)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.new_order_reference_number = ProtoField.new("New Order Reference Number", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.neworderreferencenumber", ftypes.UINT32)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.order_reference_number = ProtoField.new("Order Reference Number", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.orderreferencenumber", ftypes.UINT32)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.original_order_reference_number = ProtoField.new("Original Order Reference Number", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.originalorderreferencenumber", ftypes.UINT32)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.original_trade_id = ProtoField.new("Original Trade Id", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.originaltradeid", ftypes.UINT32)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.original_trade_price = ProtoField.new("Original Trade Price", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.originaltradeprice", ftypes.DOUBLE)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.original_trade_size = ProtoField.new("Original Trade Size", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.originaltradesize", ftypes.UINT32)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.price = ProtoField.new("Price", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.price", ftypes.DOUBLE)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.reason = ProtoField.new("Reason", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.reason", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.request_sequence_number = ProtoField.new("Request Sequence Number", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.requestsequencenumber", ftypes.UINT64)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.request_session = ProtoField.new("Request Session", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.requestsession", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.requested_message_count = ProtoField.new("Requested Message Count", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.requestedmessagecount", ftypes.UINT16)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.reserved_1 = ProtoField.new("Reserved 1", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.reserved1", ftypes.BYTES)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.reserved_2 = ProtoField.new("Reserved 2", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.reserved2", ftypes.BYTES)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.reserved_3 = ProtoField.new("Reserved 3", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.reserved3", ftypes.BYTES)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.reserved_9 = ProtoField.new("Reserved 9", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.reserved9", ftypes.BYTES)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.security_type = ProtoField.new("Security Type", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.securitytype", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.sell_broker_id = ProtoField.new("Sell Broker Id", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.sellbrokerid", ftypes.UINT16)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.sequence_number = ProtoField.new("Sequence Number", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.sequencenumber", ftypes.UINT64)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.session = ProtoField.new("Session", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.session", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.settlement_type = ProtoField.new("Settlement Type", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.settlementtype", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.shares = ProtoField.new("Shares", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.shares", ftypes.UINT32)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.shortable = ProtoField.new("Shortable", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.shortable", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.side = ProtoField.new("Side", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.side", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.stock = ProtoField.new("Stock", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.stock", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.timestamp = ProtoField.new("Timestamp", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.timestamp", ftypes.UINT64)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.trading_state = ProtoField.new("Trading State", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.tradingstate", ftypes.STRING)

-- Tradelogiq OmegaAts MulticastLevel2 Itch 2.01 Framing
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.message = ProtoField.new("Message", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.message", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.message_header = ProtoField.new("Message Header", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.messageheader", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.packet = ProtoField.new("Packet", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.packet", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.packet_header = ProtoField.new("Packet Header", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.packetheader", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.request_packet = ProtoField.new("Request Packet", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.requestpacket", ftypes.STRING)

-- Tradelogiq OmegaAts MulticastLevel2 2.01 Application Messages
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.add_order_message = ProtoField.new("Add Order Message", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.addordermessage", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.cross_trade_message = ProtoField.new("Cross Trade Message", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.crosstrademessage", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.extended_stock_directory_message = ProtoField.new("Extended Stock Directory Message", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.extendedstockdirectorymessage", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.ordercancelmessage", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.order_delete_message = ProtoField.new("Order Delete Message", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.orderdeletemessage", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.order_executed_message = ProtoField.new("Order Executed Message", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.orderexecutedmessage", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.order_executed_with_price_message = ProtoField.new("Order Executed With Price Message", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.orderexecutedwithpricemessage", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.order_replace_message = ProtoField.new("Order Replace Message", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.orderreplacemessage", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.stockdirectorymessage", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.stock_trading_action_message = ProtoField.new("Stock Trading Action Message", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.stocktradingactionmessage", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.system_event_message = ProtoField.new("System Event Message", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.systemeventmessage", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.trade_amend_message = ProtoField.new("Trade Amend Message", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.tradeamendmessage", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.trade_bust_message = ProtoField.new("Trade Bust Message", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.tradebustmessage", ftypes.STRING)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.trade_message = ProtoField.new("Trade Message", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.trademessage", ftypes.STRING)

-- Tradelogiq OmegaAts MulticastLevel2 2.01 Session Messages
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.heartbeat = ProtoField.new("Heartbeat", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.heartbeat", ftypes.BYTES)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.request_packet = ProtoField.new("Request Packet", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.requestpacket", ftypes.STRING)

-- Tradelogiq OmegaAts MulticastLevel2 Itch 2.01 Generated Fields
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.message_index = ProtoField.new("Message Index", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.messageindex", ftypes.UINT16)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "tradelogiq.omegaats.multicastlevel2.itch.v2.01.messagesequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Tradelogiq OmegaAts MulticastLevel2 Itch 2.01 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp_format = 2

-- Hours behind UTC (UTC) for midnight calculation
tradelogiq_omegaats_multicastlevel2_itch_v2_01.utc_offset_hours = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Tradelogiq OmegaAts MulticastLevel2 Itch 2.01 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.session_messages = true
show.indexes = true
show.sequences = true

-- Register Tradelogiq OmegaAts MulticastLevel2 Itch 2.01 Show Options
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 0, "Hours behind UTC (UTC) for midnight calculation")

-- Handle changed preferences
function omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.prefs.show_application_messages then
    show.application_messages = omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.prefs.show_application_messages
  end
  if show.headers ~= omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.prefs.show_headers then
    show.headers = omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.prefs.show_headers
  end
  if show.session_messages ~= omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.prefs.show_session_messages then
    show.session_messages = omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.prefs.show_session_messages
  end
  if show.structs ~= omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.prefs.show_structs then
    show.structs = omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.prefs.show_structs
  end
  if show.indexes ~= omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.prefs.show_indexes then
    show.indexes = omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.prefs.show_indexes
  end
  if show.sequences ~= omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.prefs.show_sequences then
    show.sequences = omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.prefs.show_sequences
  end
  if tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp_format ~= omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.prefs.timestamp_format then
    tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp_format = omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.prefs.timestamp_format
  end
  if tradelogiq_omegaats_multicastlevel2_itch_v2_01.utc_offset_hours ~= omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.prefs.utc_offset_hours then
    tradelogiq_omegaats_multicastlevel2_itch_v2_01.utc_offset_hours = omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.prefs.utc_offset_hours
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
-- Tradelogiq OmegaAts MulticastLevel2 Itch 2.01 Fields
-----------------------------------------------------------------------

-- Board Lot Size
tradelogiq_omegaats_multicastlevel2_itch_v2_01.board_lot_size = {}

-- Size: Board Lot Size
tradelogiq_omegaats_multicastlevel2_itch_v2_01.board_lot_size.size = 4

-- Display: Board Lot Size
tradelogiq_omegaats_multicastlevel2_itch_v2_01.board_lot_size.display = function(value)
  return "Board Lot Size: "..value
end

-- Dissect: Board Lot Size
tradelogiq_omegaats_multicastlevel2_itch_v2_01.board_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.board_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.board_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.board_lot_size, range, value, display)

  return offset + length, value
end

-- Buy Broker Id
tradelogiq_omegaats_multicastlevel2_itch_v2_01.buy_broker_id = {}

-- Size: Buy Broker Id
tradelogiq_omegaats_multicastlevel2_itch_v2_01.buy_broker_id.size = 2

-- Display: Buy Broker Id
tradelogiq_omegaats_multicastlevel2_itch_v2_01.buy_broker_id.display = function(value)
  return "Buy Broker Id: "..value
end

-- Dissect: Buy Broker Id
tradelogiq_omegaats_multicastlevel2_itch_v2_01.buy_broker_id.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.buy_broker_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.buy_broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.buy_broker_id, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
tradelogiq_omegaats_multicastlevel2_itch_v2_01.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
tradelogiq_omegaats_multicastlevel2_itch_v2_01.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
tradelogiq_omegaats_multicastlevel2_itch_v2_01.buy_sell_indicator.display = function(value)
  if value == "B" then
    return "Buy Sell Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Buy Sell Indicator: Sell Order (S)"
  end

  return "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
tradelogiq_omegaats_multicastlevel2_itch_v2_01.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Bypass
tradelogiq_omegaats_multicastlevel2_itch_v2_01.bypass = {}

-- Size: Bypass
tradelogiq_omegaats_multicastlevel2_itch_v2_01.bypass.size = 1

-- Display: Bypass
tradelogiq_omegaats_multicastlevel2_itch_v2_01.bypass.display = function(value)
  if value == "Y" then
    return "Bypass: Bypass (Y)"
  end
  if value == "N" then
    return "Bypass: Non Bypass (N)"
  end

  return "Bypass: Unknown("..value..")"
end

-- Dissect: Bypass
tradelogiq_omegaats_multicastlevel2_itch_v2_01.bypass.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.bypass.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.bypass.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.bypass, range, value, display)

  return offset + length, value
end

-- Cancelled Shares
tradelogiq_omegaats_multicastlevel2_itch_v2_01.cancelled_shares = {}

-- Size: Cancelled Shares
tradelogiq_omegaats_multicastlevel2_itch_v2_01.cancelled_shares.size = 4

-- Display: Cancelled Shares
tradelogiq_omegaats_multicastlevel2_itch_v2_01.cancelled_shares.display = function(value)
  return "Cancelled Shares: "..value
end

-- Dissect: Cancelled Shares
tradelogiq_omegaats_multicastlevel2_itch_v2_01.cancelled_shares.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.cancelled_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.cancelled_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.cancelled_shares, range, value, display)

  return offset + length, value
end

-- Contra Broker Id
tradelogiq_omegaats_multicastlevel2_itch_v2_01.contra_broker_id = {}

-- Size: Contra Broker Id
tradelogiq_omegaats_multicastlevel2_itch_v2_01.contra_broker_id.size = 2

-- Display: Contra Broker Id
tradelogiq_omegaats_multicastlevel2_itch_v2_01.contra_broker_id.display = function(value)
  return "Contra Broker Id: "..value
end

-- Dissect: Contra Broker Id
tradelogiq_omegaats_multicastlevel2_itch_v2_01.contra_broker_id.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.contra_broker_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.contra_broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.contra_broker_id, range, value, display)

  return offset + length, value
end

-- Corrected Trade Price
tradelogiq_omegaats_multicastlevel2_itch_v2_01.corrected_trade_price = {}

-- Size: Corrected Trade Price
tradelogiq_omegaats_multicastlevel2_itch_v2_01.corrected_trade_price.size = 8

-- Display: Corrected Trade Price
tradelogiq_omegaats_multicastlevel2_itch_v2_01.corrected_trade_price.display = function(value)
  return "Corrected Trade Price: "..value
end

-- Translate: Corrected Trade Price
tradelogiq_omegaats_multicastlevel2_itch_v2_01.corrected_trade_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Corrected Trade Price
tradelogiq_omegaats_multicastlevel2_itch_v2_01.corrected_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.corrected_trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = tradelogiq_omegaats_multicastlevel2_itch_v2_01.corrected_trade_price.translate(raw)
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.corrected_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.corrected_trade_price, range, value, display)

  return offset + length, value
end

-- Corrected Trade Size
tradelogiq_omegaats_multicastlevel2_itch_v2_01.corrected_trade_size = {}

-- Size: Corrected Trade Size
tradelogiq_omegaats_multicastlevel2_itch_v2_01.corrected_trade_size.size = 4

-- Display: Corrected Trade Size
tradelogiq_omegaats_multicastlevel2_itch_v2_01.corrected_trade_size.display = function(value)
  return "Corrected Trade Size: "..value
end

-- Dissect: Corrected Trade Size
tradelogiq_omegaats_multicastlevel2_itch_v2_01.corrected_trade_size.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.corrected_trade_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.corrected_trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.corrected_trade_size, range, value, display)

  return offset + length, value
end

-- Cross Type
tradelogiq_omegaats_multicastlevel2_itch_v2_01.cross_type = {}

-- Size: Cross Type
tradelogiq_omegaats_multicastlevel2_itch_v2_01.cross_type.size = 1

-- Display: Cross Type
tradelogiq_omegaats_multicastlevel2_itch_v2_01.cross_type.display = function(value)
  if value == "D" then
    return "Cross Type: Derivatives Cross (D)"
  end
  if value == "I" then
    return "Cross Type: Internal Cross (I)"
  end
  if value == "M" then
    return "Cross Type: Intentional Cross (M)"
  end
  if value == "N" then
    return "Cross Type: Net Asset Value Cross (N)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
tradelogiq_omegaats_multicastlevel2_itch_v2_01.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Currency
tradelogiq_omegaats_multicastlevel2_itch_v2_01.currency = {}

-- Size: Currency
tradelogiq_omegaats_multicastlevel2_itch_v2_01.currency.size = 3

-- Display: Currency
tradelogiq_omegaats_multicastlevel2_itch_v2_01.currency.display = function(value)
  if value == "CAD" then
    return "Currency: Canadian Dollars (CAD)"
  end
  if value == "USD" then
    return "Currency: Us Dollars (USD)"
  end

  return "Currency: Unknown("..value..")"
end

-- Dissect: Currency
tradelogiq_omegaats_multicastlevel2_itch_v2_01.currency.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.currency, range, value, display)

  return offset + length, value
end

-- Description
tradelogiq_omegaats_multicastlevel2_itch_v2_01.description = {}

-- Size: Description
tradelogiq_omegaats_multicastlevel2_itch_v2_01.description.size = 20

-- Display: Description
tradelogiq_omegaats_multicastlevel2_itch_v2_01.description.display = function(value)
  return "Description: "..value
end

-- Dissect: Description
tradelogiq_omegaats_multicastlevel2_itch_v2_01.description.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.description.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.description.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.description, range, value, display)

  return offset + length, value
end

-- Dividend Indicator
tradelogiq_omegaats_multicastlevel2_itch_v2_01.dividend_indicator = {}

-- Size: Dividend Indicator
tradelogiq_omegaats_multicastlevel2_itch_v2_01.dividend_indicator.size = 1

-- Display: Dividend Indicator
tradelogiq_omegaats_multicastlevel2_itch_v2_01.dividend_indicator.display = function(value)
  if value == "A" then
    return "Dividend Indicator: Annual (A)"
  end
  if value == "S" then
    return "Dividend Indicator: Semi Annual (S)"
  end
  if value == "Q" then
    return "Dividend Indicator: Quarterly (Q)"
  end
  if value == "M" then
    return "Dividend Indicator: Monthly (M)"
  end

  return "Dividend Indicator: Unknown("..value..")"
end

-- Dissect: Dividend Indicator
tradelogiq_omegaats_multicastlevel2_itch_v2_01.dividend_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.dividend_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.dividend_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.dividend_indicator, range, value, display)

  return offset + length, value
end

-- Event Code
tradelogiq_omegaats_multicastlevel2_itch_v2_01.event_code = {}

-- Size: Event Code
tradelogiq_omegaats_multicastlevel2_itch_v2_01.event_code.size = 1

-- Display: Event Code
tradelogiq_omegaats_multicastlevel2_itch_v2_01.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages (O)"
  end
  if value == "S" then
    return "Event Code: Start Of System Hours (S)"
  end
  if value == "Q" then
    return "Event Code: Start Of Market Hours (Q)"
  end
  if value == "M" then
    return "Event Code: End Of Market Hours (M)"
  end
  if value == "E" then
    return "Event Code: End Of System Hours (E)"
  end
  if value == "C" then
    return "Event Code: End Of Messages (C)"
  end
  if value == "B" then
    return "Event Code: Trading Halted (B)"
  end
  if value == "R" then
    return "Event Code: Trading Resumed (R)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
tradelogiq_omegaats_multicastlevel2_itch_v2_01.event_code.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.event_code, range, value, display)

  return offset + length, value
end

-- Exec Broker Id
tradelogiq_omegaats_multicastlevel2_itch_v2_01.exec_broker_id = {}

-- Size: Exec Broker Id
tradelogiq_omegaats_multicastlevel2_itch_v2_01.exec_broker_id.size = 2

-- Display: Exec Broker Id
tradelogiq_omegaats_multicastlevel2_itch_v2_01.exec_broker_id.display = function(value)
  return "Exec Broker Id: "..value
end

-- Dissect: Exec Broker Id
tradelogiq_omegaats_multicastlevel2_itch_v2_01.exec_broker_id.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.exec_broker_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.exec_broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.exec_broker_id, range, value, display)

  return offset + length, value
end

-- Executed Shares
tradelogiq_omegaats_multicastlevel2_itch_v2_01.executed_shares = {}

-- Size: Executed Shares
tradelogiq_omegaats_multicastlevel2_itch_v2_01.executed_shares.size = 4

-- Display: Executed Shares
tradelogiq_omegaats_multicastlevel2_itch_v2_01.executed_shares.display = function(value)
  return "Executed Shares: "..value
end

-- Dissect: Executed Shares
tradelogiq_omegaats_multicastlevel2_itch_v2_01.executed_shares.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.executed_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.executed_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.executed_shares, range, value, display)

  return offset + length, value
end

-- Execution Price
tradelogiq_omegaats_multicastlevel2_itch_v2_01.execution_price = {}

-- Size: Execution Price
tradelogiq_omegaats_multicastlevel2_itch_v2_01.execution_price.size = 4

-- Display: Execution Price
tradelogiq_omegaats_multicastlevel2_itch_v2_01.execution_price.display = function(value)
  return "Execution Price: "..value
end

-- Translate: Execution Price
tradelogiq_omegaats_multicastlevel2_itch_v2_01.execution_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Execution Price
tradelogiq_omegaats_multicastlevel2_itch_v2_01.execution_price.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.execution_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = tradelogiq_omegaats_multicastlevel2_itch_v2_01.execution_price.translate(raw)
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.execution_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Expiry Date
tradelogiq_omegaats_multicastlevel2_itch_v2_01.expiry_date = {}

-- Size: Expiry Date
tradelogiq_omegaats_multicastlevel2_itch_v2_01.expiry_date.size = 8

-- Display: Expiry Date
tradelogiq_omegaats_multicastlevel2_itch_v2_01.expiry_date.display = function(value)
  if #value < 8 then
    return "Expiry Date: "..value
  end

  return "Expiry Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Expiry Date
tradelogiq_omegaats_multicastlevel2_itch_v2_01.expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.expiry_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.expiry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.expiry_date, range, value, display)

  return offset + length, value
end

-- Frequency
tradelogiq_omegaats_multicastlevel2_itch_v2_01.frequency = {}

-- Size: Frequency
tradelogiq_omegaats_multicastlevel2_itch_v2_01.frequency.size = 1

-- Display: Frequency
tradelogiq_omegaats_multicastlevel2_itch_v2_01.frequency.display = function(value)
  if value == "A" then
    return "Frequency: Annual (A)"
  end
  if value == "S" then
    return "Frequency: Semi Annual (S)"
  end
  if value == "Q" then
    return "Frequency: Quarterly (Q)"
  end
  if value == "M" then
    return "Frequency: Monthly (M)"
  end

  return "Frequency: Unknown("..value..")"
end

-- Dissect: Frequency
tradelogiq_omegaats_multicastlevel2_itch_v2_01.frequency.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.frequency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.frequency.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.frequency, range, value, display)

  return offset + length, value
end

-- Instrument Id
tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id = {}

-- Size: Instrument Id
tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.size = 2

-- Display: Instrument Id
tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Marker
tradelogiq_omegaats_multicastlevel2_itch_v2_01.marker = {}

-- Size: Marker
tradelogiq_omegaats_multicastlevel2_itch_v2_01.marker.size = 1

-- Display: Marker
tradelogiq_omegaats_multicastlevel2_itch_v2_01.marker.display = function(value)
  return "Marker: "..value
end

-- Dissect: Marker
tradelogiq_omegaats_multicastlevel2_itch_v2_01.marker.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.marker.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.marker.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.marker, range, value, display)

  return offset + length, value
end

-- Market
tradelogiq_omegaats_multicastlevel2_itch_v2_01.market = {}

-- Size: Market
tradelogiq_omegaats_multicastlevel2_itch_v2_01.market.size = 1

-- Display: Market
tradelogiq_omegaats_multicastlevel2_itch_v2_01.market.display = function(value)
  if value == "t" then
    return "Market: Tsx (t)"
  end
  if value == "v" then
    return "Market: Tsx Venture (v)"
  end
  if value == "c" then
    return "Market: Cse (c)"
  end
  if value == "q" then
    return "Market: Nasdaq Canada (q)"
  end
  if value == "o" then
    return "Market: Omega Ats (o)"
  end
  if value == "z" then
    return "Market: Cboe Canada (z)"
  end

  return "Market: Unknown("..value..")"
end

-- Dissect: Market
tradelogiq_omegaats_multicastlevel2_itch_v2_01.market.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.market.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.market.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.market, range, value, display)

  return offset + length, value
end

-- Match Number
tradelogiq_omegaats_multicastlevel2_itch_v2_01.match_number = {}

-- Size: Match Number
tradelogiq_omegaats_multicastlevel2_itch_v2_01.match_number.size = 4

-- Display: Match Number
tradelogiq_omegaats_multicastlevel2_itch_v2_01.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
tradelogiq_omegaats_multicastlevel2_itch_v2_01.match_number.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.match_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.match_number, range, value, display)

  return offset + length, value
end

-- Message Count
tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_count = {}

-- Size: Message Count
tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_count.size = 2

-- Display: Message Count
tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_count.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_length = {}

-- Size: Message Length
tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_length.size = 2

-- Display: Message Length
tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_length.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_type = {}

-- Size: Message Type
tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_type.size = 1

-- Display: Message Type
tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_type.display = function(value)
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "R" then
    return "Message Type: Stock Directory Message (R)"
  end
  if value == "r" then
    return "Message Type: Extended Stock Directory Message (r)"
  end
  if value == "H" then
    return "Message Type: Stock Trading Action Message (H)"
  end
  if value == "A" then
    return "Message Type: Add Order Message (A)"
  end
  if value == "E" then
    return "Message Type: Order Executed Message (E)"
  end
  if value == "C" then
    return "Message Type: Order Executed With Price Message (C)"
  end
  if value == "D" then
    return "Message Type: Order Delete Message (D)"
  end
  if value == "U" then
    return "Message Type: Order Replace Message (U)"
  end
  if value == "X" then
    return "Message Type: Order Cancel Message (X)"
  end
  if value == "P" then
    return "Message Type: Trade Message (P)"
  end
  if value == "Q" then
    return "Message Type: Cross Trade Message (Q)"
  end
  if value == "B" then
    return "Message Type: Trade Bust Message (B)"
  end
  if value == "M" then
    return "Message Type: Trade Amend Message (M)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_type.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.message_type, range, value, display)

  return offset + length, value
end

-- Midpoint Book Trade
tradelogiq_omegaats_multicastlevel2_itch_v2_01.midpoint_book_trade = {}

-- Size: Midpoint Book Trade
tradelogiq_omegaats_multicastlevel2_itch_v2_01.midpoint_book_trade.size = 4

-- Display: Midpoint Book Trade
tradelogiq_omegaats_multicastlevel2_itch_v2_01.midpoint_book_trade.display = function(value)
  if value == 0 then
    return "Midpoint Book Trade: No (0)"
  end
  if value == 1 then
    return "Midpoint Book Trade: Yes (1)"
  end

  return "Midpoint Book Trade: Unknown("..value..")"
end

-- Dissect: Midpoint Book Trade
tradelogiq_omegaats_multicastlevel2_itch_v2_01.midpoint_book_trade.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.midpoint_book_trade.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.midpoint_book_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.midpoint_book_trade, range, value, display)

  return offset + length, value
end

-- New Order Reference Number
tradelogiq_omegaats_multicastlevel2_itch_v2_01.new_order_reference_number = {}

-- Size: New Order Reference Number
tradelogiq_omegaats_multicastlevel2_itch_v2_01.new_order_reference_number.size = 4

-- Display: New Order Reference Number
tradelogiq_omegaats_multicastlevel2_itch_v2_01.new_order_reference_number.display = function(value)
  return "New Order Reference Number: "..value
end

-- Dissect: New Order Reference Number
tradelogiq_omegaats_multicastlevel2_itch_v2_01.new_order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.new_order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.new_order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.new_order_reference_number, range, value, display)

  return offset + length, value
end

-- Order Reference Number
tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_reference_number = {}

-- Size: Order Reference Number
tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_reference_number.size = 4

-- Display: Order Reference Number
tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Original Order Reference Number
tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_order_reference_number = {}

-- Size: Original Order Reference Number
tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_order_reference_number.size = 4

-- Display: Original Order Reference Number
tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_order_reference_number.display = function(value)
  return "Original Order Reference Number: "..value
end

-- Dissect: Original Order Reference Number
tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.original_order_reference_number, range, value, display)

  return offset + length, value
end

-- Original Trade Id
tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_trade_id = {}

-- Size: Original Trade Id
tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_trade_id.size = 4

-- Display: Original Trade Id
tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_trade_id.display = function(value)
  return "Original Trade Id: "..value
end

-- Dissect: Original Trade Id
tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_trade_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.original_trade_id, range, value, display)

  return offset + length, value
end

-- Original Trade Price
tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_trade_price = {}

-- Size: Original Trade Price
tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_trade_price.size = 8

-- Display: Original Trade Price
tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_trade_price.display = function(value)
  return "Original Trade Price: "..value
end

-- Translate: Original Trade Price
tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_trade_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Original Trade Price
tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_trade_price.translate(raw)
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.original_trade_price, range, value, display)

  return offset + length, value
end

-- Original Trade Size
tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_trade_size = {}

-- Size: Original Trade Size
tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_trade_size.size = 4

-- Display: Original Trade Size
tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_trade_size.display = function(value)
  return "Original Trade Size: "..value
end

-- Dissect: Original Trade Size
tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_trade_size.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_trade_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.original_trade_size, range, value, display)

  return offset + length, value
end

-- Price
tradelogiq_omegaats_multicastlevel2_itch_v2_01.price = {}

-- Size: Price
tradelogiq_omegaats_multicastlevel2_itch_v2_01.price.size = 4

-- Display: Price
tradelogiq_omegaats_multicastlevel2_itch_v2_01.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
tradelogiq_omegaats_multicastlevel2_itch_v2_01.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
tradelogiq_omegaats_multicastlevel2_itch_v2_01.price.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = tradelogiq_omegaats_multicastlevel2_itch_v2_01.price.translate(raw)
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.price, range, value, display)

  return offset + length, value
end

-- Reason
tradelogiq_omegaats_multicastlevel2_itch_v2_01.reason = {}

-- Size: Reason
tradelogiq_omegaats_multicastlevel2_itch_v2_01.reason.size = 4

-- Display: Reason
tradelogiq_omegaats_multicastlevel2_itch_v2_01.reason.display = function(value)
  if value == "R" then
    return "Reason: Regulatory Halt (R)"
  end
  if value == "B" then
    return "Reason: Business Halt (B)"
  end

  return "Reason: Unknown("..value..")"
end

-- Dissect: Reason
tradelogiq_omegaats_multicastlevel2_itch_v2_01.reason.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.reason, range, value, display)

  return offset + length, value
end

-- Request Sequence Number
tradelogiq_omegaats_multicastlevel2_itch_v2_01.request_sequence_number = {}

-- Size: Request Sequence Number
tradelogiq_omegaats_multicastlevel2_itch_v2_01.request_sequence_number.size = 8

-- Display: Request Sequence Number
tradelogiq_omegaats_multicastlevel2_itch_v2_01.request_sequence_number.display = function(value)
  return "Request Sequence Number: "..value
end

-- Dissect: Request Sequence Number
tradelogiq_omegaats_multicastlevel2_itch_v2_01.request_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.request_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.request_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.request_sequence_number, range, value, display)

  return offset + length, value
end

-- Request Session
tradelogiq_omegaats_multicastlevel2_itch_v2_01.request_session = {}

-- Size: Request Session
tradelogiq_omegaats_multicastlevel2_itch_v2_01.request_session.size = 10

-- Display: Request Session
tradelogiq_omegaats_multicastlevel2_itch_v2_01.request_session.display = function(value)
  return "Request Session: "..value
end

-- Dissect: Request Session
tradelogiq_omegaats_multicastlevel2_itch_v2_01.request_session.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.request_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.request_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.request_session, range, value, display)

  return offset + length, value
end

-- Requested Message Count
tradelogiq_omegaats_multicastlevel2_itch_v2_01.requested_message_count = {}

-- Size: Requested Message Count
tradelogiq_omegaats_multicastlevel2_itch_v2_01.requested_message_count.size = 2

-- Display: Requested Message Count
tradelogiq_omegaats_multicastlevel2_itch_v2_01.requested_message_count.display = function(value)
  return "Requested Message Count: "..value
end

-- Dissect: Requested Message Count
tradelogiq_omegaats_multicastlevel2_itch_v2_01.requested_message_count.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.requested_message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.requested_message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.requested_message_count, range, value, display)

  return offset + length, value
end

-- Reserved 1
tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_1 = {}

-- Size: Reserved 1
tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_1.size = 1

-- Display: Reserved 1
tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_2 = {}

-- Size: Reserved 2
tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_2.size = 2

-- Display: Reserved 2
tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 3
tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_3 = {}

-- Size: Reserved 3
tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_3.size = 3

-- Display: Reserved 3
tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Reserved 9
tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_9 = {}

-- Size: Reserved 9
tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_9.size = 9

-- Display: Reserved 9
tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_9.display = function(value)
  return "Reserved 9: "..value
end

-- Dissect: Reserved 9
tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_9.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_9.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_9.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.reserved_9, range, value, display)

  return offset + length, value
end

-- Security Type
tradelogiq_omegaats_multicastlevel2_itch_v2_01.security_type = {}

-- Size: Security Type
tradelogiq_omegaats_multicastlevel2_itch_v2_01.security_type.size = 1

-- Display: Security Type
tradelogiq_omegaats_multicastlevel2_itch_v2_01.security_type.display = function(value)
  if value == "b" then
    return "Security Type: Bonds (b)"
  end
  if value == "d" then
    return "Security Type: Debentures (d)"
  end
  if value == "r" then
    return "Security Type: Rights (r)"
  end
  if value == "n" then
    return "Security Type: Notes (n)"
  end
  if value == "w" then
    return "Security Type: Warrants (w)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
tradelogiq_omegaats_multicastlevel2_itch_v2_01.security_type.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.security_type, range, value, display)

  return offset + length, value
end

-- Sell Broker Id
tradelogiq_omegaats_multicastlevel2_itch_v2_01.sell_broker_id = {}

-- Size: Sell Broker Id
tradelogiq_omegaats_multicastlevel2_itch_v2_01.sell_broker_id.size = 2

-- Display: Sell Broker Id
tradelogiq_omegaats_multicastlevel2_itch_v2_01.sell_broker_id.display = function(value)
  return "Sell Broker Id: "..value
end

-- Dissect: Sell Broker Id
tradelogiq_omegaats_multicastlevel2_itch_v2_01.sell_broker_id.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.sell_broker_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.sell_broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.sell_broker_id, range, value, display)

  return offset + length, value
end

-- Sequence Number
tradelogiq_omegaats_multicastlevel2_itch_v2_01.sequence_number = {}

-- Size: Sequence Number
tradelogiq_omegaats_multicastlevel2_itch_v2_01.sequence_number.size = 8

-- Display: Sequence Number
tradelogiq_omegaats_multicastlevel2_itch_v2_01.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
tradelogiq_omegaats_multicastlevel2_itch_v2_01.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
tradelogiq_omegaats_multicastlevel2_itch_v2_01.session = {}

-- Size: Session
tradelogiq_omegaats_multicastlevel2_itch_v2_01.session.size = 10

-- Display: Session
tradelogiq_omegaats_multicastlevel2_itch_v2_01.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
tradelogiq_omegaats_multicastlevel2_itch_v2_01.session.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.session, range, value, display)

  return offset + length, value
end

-- Settlement Type
tradelogiq_omegaats_multicastlevel2_itch_v2_01.settlement_type = {}

-- Size: Settlement Type
tradelogiq_omegaats_multicastlevel2_itch_v2_01.settlement_type.size = 1

-- Display: Settlement Type
tradelogiq_omegaats_multicastlevel2_itch_v2_01.settlement_type.display = function(value)
  if value == "0" then
    return "Settlement Type: Regular Settlement (0)"
  end
  if value == "1" then
    return "Settlement Type: Cash (1)"
  end
  if value == "2" then
    return "Settlement Type: Next Day (2)"
  end
  if value == "3" then
    return "Settlement Type: Delayed Delivery (3)"
  end

  return "Settlement Type: Unknown("..value..")"
end

-- Dissect: Settlement Type
tradelogiq_omegaats_multicastlevel2_itch_v2_01.settlement_type.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.settlement_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.settlement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.settlement_type, range, value, display)

  return offset + length, value
end

-- Shares
tradelogiq_omegaats_multicastlevel2_itch_v2_01.shares = {}

-- Size: Shares
tradelogiq_omegaats_multicastlevel2_itch_v2_01.shares.size = 4

-- Display: Shares
tradelogiq_omegaats_multicastlevel2_itch_v2_01.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
tradelogiq_omegaats_multicastlevel2_itch_v2_01.shares.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.shares, range, value, display)

  return offset + length, value
end

-- Shortable
tradelogiq_omegaats_multicastlevel2_itch_v2_01.shortable = {}

-- Size: Shortable
tradelogiq_omegaats_multicastlevel2_itch_v2_01.shortable.size = 1

-- Display: Shortable
tradelogiq_omegaats_multicastlevel2_itch_v2_01.shortable.display = function(value)
  if value == "E" then
    return "Shortable: Short Exempt (E)"
  end
  if value == "S" then
    return "Shortable: Shortable (S)"
  end
  if value == "N" then
    return "Shortable: Not Shortable (N)"
  end

  return "Shortable: Unknown("..value..")"
end

-- Dissect: Shortable
tradelogiq_omegaats_multicastlevel2_itch_v2_01.shortable.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.shortable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.shortable.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.shortable, range, value, display)

  return offset + length, value
end

-- Side
tradelogiq_omegaats_multicastlevel2_itch_v2_01.side = {}

-- Size: Side
tradelogiq_omegaats_multicastlevel2_itch_v2_01.side.size = 1

-- Display: Side
tradelogiq_omegaats_multicastlevel2_itch_v2_01.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
tradelogiq_omegaats_multicastlevel2_itch_v2_01.side.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.side, range, value, display)

  return offset + length, value
end

-- Stock
tradelogiq_omegaats_multicastlevel2_itch_v2_01.stock = {}

-- Size: Stock
tradelogiq_omegaats_multicastlevel2_itch_v2_01.stock.size = 10

-- Display: Stock
tradelogiq_omegaats_multicastlevel2_itch_v2_01.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
tradelogiq_omegaats_multicastlevel2_itch_v2_01.stock.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.stock, range, value, display)

  return offset + length, value
end

-- Timestamp
tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp = {}

-- Size: Timestamp
tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.size = 8

-- Display: Timestamp
tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = tradelogiq_omegaats_multicastlevel2_itch_v2_01.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trading State
tradelogiq_omegaats_multicastlevel2_itch_v2_01.trading_state = {}

-- Size: Trading State
tradelogiq_omegaats_multicastlevel2_itch_v2_01.trading_state.size = 1

-- Display: Trading State
tradelogiq_omegaats_multicastlevel2_itch_v2_01.trading_state.display = function(value)
  if value == "H" then
    return "Trading State: Halted (H)"
  end
  if value == "T" then
    return "Trading State: Trading (T)"
  end

  return "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
tradelogiq_omegaats_multicastlevel2_itch_v2_01.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.trading_state, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Tradelogiq OmegaAts MulticastLevel2 Itch 2.01
-----------------------------------------------------------------------

-- Request Packet
tradelogiq_omegaats_multicastlevel2_itch_v2_01.request_packet = {}

-- Verify required size of Udp packet
tradelogiq_omegaats_multicastlevel2_itch_v2_01.request_packet.requiredsize = function(buffer)
  return buffer:len() >= tradelogiq_omegaats_multicastlevel2_itch_v2_01.request_session.size + tradelogiq_omegaats_multicastlevel2_itch_v2_01.request_sequence_number.size + tradelogiq_omegaats_multicastlevel2_itch_v2_01.requested_message_count.size
end

-- Dissect Request Packet
tradelogiq_omegaats_multicastlevel2_itch_v2_01.request_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Request Session: 10 Byte Ascii String
  index, request_session = tradelogiq_omegaats_multicastlevel2_itch_v2_01.request_session.dissect(buffer, index, packet, parent)

  -- Request Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, request_sequence_number = tradelogiq_omegaats_multicastlevel2_itch_v2_01.request_sequence_number.dissect(buffer, index, packet, parent)

  -- Requested Message Count: 2 Byte Unsigned Fixed Width Integer
  index, requested_message_count = tradelogiq_omegaats_multicastlevel2_itch_v2_01.requested_message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Trade Amend Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.trade_amend_message = {}

-- Size: Trade Amend Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.trade_amend_message.size =
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_1.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_trade_id.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_trade_price.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_trade_size.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.corrected_trade_price.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.corrected_trade_size.size

-- Display: Trade Amend Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.trade_amend_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Amend Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.trade_amend_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 1: Alpha
  index, reserved_1 = tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_1.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.dissect(buffer, index, packet, parent)

  -- Original Trade Id: Integer
  index, original_trade_id = tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_trade_id.dissect(buffer, index, packet, parent)

  -- Original Trade Price: Price
  index, original_trade_price = tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Trade Size: Integer
  index, original_trade_size = tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_trade_size.dissect(buffer, index, packet, parent)

  -- Corrected Trade Price: Price
  index, corrected_trade_price = tradelogiq_omegaats_multicastlevel2_itch_v2_01.corrected_trade_price.dissect(buffer, index, packet, parent)

  -- Corrected Trade Size: Integer
  index, corrected_trade_size = tradelogiq_omegaats_multicastlevel2_itch_v2_01.corrected_trade_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Amend Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.trade_amend_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.trade_amend_message, buffer(offset, 0))
    local index = tradelogiq_omegaats_multicastlevel2_itch_v2_01.trade_amend_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.trade_amend_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.trade_amend_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Bust Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.trade_bust_message = {}

-- Size: Trade Bust Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.trade_bust_message.size =
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_1.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.match_number.size

-- Display: Trade Bust Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.trade_bust_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Bust Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.trade_bust_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 1: Alpha
  index, reserved_1 = tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_1.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = tradelogiq_omegaats_multicastlevel2_itch_v2_01.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Bust Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.trade_bust_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.trade_bust_message, buffer(offset, 0))
    local index = tradelogiq_omegaats_multicastlevel2_itch_v2_01.trade_bust_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.trade_bust_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.trade_bust_message.fields(buffer, offset, packet, parent)
  end
end

-- Cross Trade Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.cross_trade_message = {}

-- Size: Cross Trade Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.cross_trade_message.size =
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.cross_type.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.shares.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.price.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.match_number.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.buy_broker_id.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.sell_broker_id.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.bypass.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.settlement_type.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_2.size

-- Display: Cross Trade Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.cross_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Trade Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.cross_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cross Type: Alpha
  index, cross_type = tradelogiq_omegaats_multicastlevel2_itch_v2_01.cross_type.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.dissect(buffer, index, packet, parent)

  -- Shares: Integer
  index, shares = tradelogiq_omegaats_multicastlevel2_itch_v2_01.shares.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = tradelogiq_omegaats_multicastlevel2_itch_v2_01.price.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = tradelogiq_omegaats_multicastlevel2_itch_v2_01.match_number.dissect(buffer, index, packet, parent)

  -- Buy Broker Id: Integer
  index, buy_broker_id = tradelogiq_omegaats_multicastlevel2_itch_v2_01.buy_broker_id.dissect(buffer, index, packet, parent)

  -- Sell Broker Id: Integer
  index, sell_broker_id = tradelogiq_omegaats_multicastlevel2_itch_v2_01.sell_broker_id.dissect(buffer, index, packet, parent)

  -- Bypass: Alpha
  index, bypass = tradelogiq_omegaats_multicastlevel2_itch_v2_01.bypass.dissect(buffer, index, packet, parent)

  -- Settlement Type: ASCII
  index, settlement_type = tradelogiq_omegaats_multicastlevel2_itch_v2_01.settlement_type.dissect(buffer, index, packet, parent)

  -- Reserved 2: Alpha
  index, reserved_2 = tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Trade Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.cross_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.cross_trade_message, buffer(offset, 0))
    local index = tradelogiq_omegaats_multicastlevel2_itch_v2_01.cross_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.cross_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.cross_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.trade_message = {}

-- Size: Trade Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.trade_message.size =
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.side.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.midpoint_book_trade.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.shares.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.price.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.match_number.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.buy_broker_id.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.sell_broker_id.size

-- Display: Trade Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Side: Alpha
  index, side = tradelogiq_omegaats_multicastlevel2_itch_v2_01.side.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.dissect(buffer, index, packet, parent)

  -- Midpoint Book Trade: Integer
  index, midpoint_book_trade = tradelogiq_omegaats_multicastlevel2_itch_v2_01.midpoint_book_trade.dissect(buffer, index, packet, parent)

  -- Shares: Integer
  index, shares = tradelogiq_omegaats_multicastlevel2_itch_v2_01.shares.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = tradelogiq_omegaats_multicastlevel2_itch_v2_01.price.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = tradelogiq_omegaats_multicastlevel2_itch_v2_01.match_number.dissect(buffer, index, packet, parent)

  -- Buy Broker Id: Integer
  index, buy_broker_id = tradelogiq_omegaats_multicastlevel2_itch_v2_01.buy_broker_id.dissect(buffer, index, packet, parent)

  -- Sell Broker Id: Integer
  index, sell_broker_id = tradelogiq_omegaats_multicastlevel2_itch_v2_01.sell_broker_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.trade_message, buffer(offset, 0))
    local index = tradelogiq_omegaats_multicastlevel2_itch_v2_01.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_cancel_message = {}

-- Size: Order Cancel Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_cancel_message.size =
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_1.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_reference_number.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.cancelled_shares.size

-- Display: Order Cancel Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 1: Alpha
  index, reserved_1 = tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_1.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_reference_number.dissect(buffer, index, packet, parent)

  -- Cancelled Shares: Integer
  index, cancelled_shares = tradelogiq_omegaats_multicastlevel2_itch_v2_01.cancelled_shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.order_cancel_message, buffer(offset, 0))
    local index = tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Replace Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_replace_message = {}

-- Size: Order Replace Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_replace_message.size =
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_1.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_order_reference_number.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.new_order_reference_number.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.shares.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.price.size

-- Display: Order Replace Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_replace_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_replace_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 1: Alpha
  index, reserved_1 = tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_1.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.dissect(buffer, index, packet, parent)

  -- Original Order Reference Number: Integer
  index, original_order_reference_number = tradelogiq_omegaats_multicastlevel2_itch_v2_01.original_order_reference_number.dissect(buffer, index, packet, parent)

  -- New Order Reference Number: Integer
  index, new_order_reference_number = tradelogiq_omegaats_multicastlevel2_itch_v2_01.new_order_reference_number.dissect(buffer, index, packet, parent)

  -- Shares: Integer
  index, shares = tradelogiq_omegaats_multicastlevel2_itch_v2_01.shares.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = tradelogiq_omegaats_multicastlevel2_itch_v2_01.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_replace_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.order_replace_message, buffer(offset, 0))
    local index = tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_replace_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_replace_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_replace_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_delete_message = {}

-- Size: Order Delete Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_delete_message.size =
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_1.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_reference_number.size

-- Display: Order Delete Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 1: Alpha
  index, reserved_1 = tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_1.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.order_delete_message, buffer(offset, 0))
    local index = tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed With Price Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_executed_with_price_message = {}

-- Size: Order Executed With Price Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_executed_with_price_message.size =
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.marker.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_reference_number.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.executed_shares.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.execution_price.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.match_number.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.contra_broker_id.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_2.size

-- Display: Order Executed With Price Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed With Price Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Marker: Alphanumeric
  index, marker = tradelogiq_omegaats_multicastlevel2_itch_v2_01.marker.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_reference_number.dissect(buffer, index, packet, parent)

  -- Executed Shares: Integer
  index, executed_shares = tradelogiq_omegaats_multicastlevel2_itch_v2_01.executed_shares.dissect(buffer, index, packet, parent)

  -- Execution Price: Integer
  index, execution_price = tradelogiq_omegaats_multicastlevel2_itch_v2_01.execution_price.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = tradelogiq_omegaats_multicastlevel2_itch_v2_01.match_number.dissect(buffer, index, packet, parent)

  -- Contra Broker Id: Integer
  index, contra_broker_id = tradelogiq_omegaats_multicastlevel2_itch_v2_01.contra_broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: Alpha
  index, reserved_2 = tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.order_executed_with_price_message, buffer(offset, 0))
    local index = tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_executed_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_executed_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_executed_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_executed_message = {}

-- Size: Order Executed Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_executed_message.size =
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.marker.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_reference_number.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.executed_shares.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.match_number.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.contra_broker_id.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_2.size

-- Display: Order Executed Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Marker: Alphanumeric
  index, marker = tradelogiq_omegaats_multicastlevel2_itch_v2_01.marker.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_reference_number.dissect(buffer, index, packet, parent)

  -- Executed Shares: Integer
  index, executed_shares = tradelogiq_omegaats_multicastlevel2_itch_v2_01.executed_shares.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = tradelogiq_omegaats_multicastlevel2_itch_v2_01.match_number.dissect(buffer, index, packet, parent)

  -- Contra Broker Id: Integer
  index, contra_broker_id = tradelogiq_omegaats_multicastlevel2_itch_v2_01.contra_broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: Alpha
  index, reserved_2 = tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.order_executed_message, buffer(offset, 0))
    local index = tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.add_order_message = {}

-- Size: Add Order Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.add_order_message.size =
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.buy_sell_indicator.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_reference_number.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.shares.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.price.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.exec_broker_id.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_2.size

-- Display: Add Order Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Buy Sell Indicator: Alphabetic
  index, buy_sell_indicator = tradelogiq_omegaats_multicastlevel2_itch_v2_01.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_reference_number.dissect(buffer, index, packet, parent)

  -- Shares: Integer
  index, shares = tradelogiq_omegaats_multicastlevel2_itch_v2_01.shares.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = tradelogiq_omegaats_multicastlevel2_itch_v2_01.price.dissect(buffer, index, packet, parent)

  -- Exec Broker Id: Integer
  index, exec_broker_id = tradelogiq_omegaats_multicastlevel2_itch_v2_01.exec_broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: Alpha
  index, reserved_2 = tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.add_order_message, buffer(offset, 0))
    local index = tradelogiq_omegaats_multicastlevel2_itch_v2_01.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Trading Action Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.stock_trading_action_message = {}

-- Size: Stock Trading Action Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.stock_trading_action_message.size =
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.trading_state.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.reason.size

-- Display: Stock Trading Action Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.stock_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Trading Action Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.stock_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading State: Alpha
  index, trading_state = tradelogiq_omegaats_multicastlevel2_itch_v2_01.trading_state.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.dissect(buffer, index, packet, parent)

  -- Reason: Alphanumeric
  index, reason = tradelogiq_omegaats_multicastlevel2_itch_v2_01.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Trading Action Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.stock_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.stock_trading_action_message, buffer(offset, 0))
    local index = tradelogiq_omegaats_multicastlevel2_itch_v2_01.stock_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.stock_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.stock_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Stock Directory Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.extended_stock_directory_message = {}

-- Size: Extended Stock Directory Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.extended_stock_directory_message.size =
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.market.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.stock.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.board_lot_size.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.shortable.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.frequency.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_9.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.currency.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.security_type.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.expiry_date.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.description.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_3.size

-- Display: Extended Stock Directory Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.extended_stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Stock Directory Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.extended_stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market: Alphanumeric
  index, market = tradelogiq_omegaats_multicastlevel2_itch_v2_01.market.dissect(buffer, index, packet, parent)

  -- Stock: Alphanumeric & '.'
  index, stock = tradelogiq_omegaats_multicastlevel2_itch_v2_01.stock.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.dissect(buffer, index, packet, parent)

  -- Board Lot Size: Integer
  index, board_lot_size = tradelogiq_omegaats_multicastlevel2_itch_v2_01.board_lot_size.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.dissect(buffer, index, packet, parent)

  -- Shortable: Alpha
  index, shortable = tradelogiq_omegaats_multicastlevel2_itch_v2_01.shortable.dissect(buffer, index, packet, parent)

  -- Frequency: Alpha
  index, frequency = tradelogiq_omegaats_multicastlevel2_itch_v2_01.frequency.dissect(buffer, index, packet, parent)

  -- Reserved 9: Alphanumeric
  index, reserved_9 = tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_9.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = tradelogiq_omegaats_multicastlevel2_itch_v2_01.currency.dissect(buffer, index, packet, parent)

  -- Security Type: Alpha
  index, security_type = tradelogiq_omegaats_multicastlevel2_itch_v2_01.security_type.dissect(buffer, index, packet, parent)

  -- Expiry Date: Date
  index, expiry_date = tradelogiq_omegaats_multicastlevel2_itch_v2_01.expiry_date.dissect(buffer, index, packet, parent)

  -- Description: Alphanumeric
  index, description = tradelogiq_omegaats_multicastlevel2_itch_v2_01.description.dissect(buffer, index, packet, parent)

  -- Reserved 3: Alpha
  index, reserved_3 = tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Stock Directory Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.extended_stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.extended_stock_directory_message, buffer(offset, 0))
    local index = tradelogiq_omegaats_multicastlevel2_itch_v2_01.extended_stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.extended_stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.extended_stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Directory Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.stock_directory_message = {}

-- Size: Stock Directory Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.stock_directory_message.size =
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.market.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.stock.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.board_lot_size.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.shortable.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.dividend_indicator.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_9.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.currency.size

-- Display: Stock Directory Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market: Alphanumeric
  index, market = tradelogiq_omegaats_multicastlevel2_itch_v2_01.market.dissect(buffer, index, packet, parent)

  -- Stock: Alphanumeric & '.'
  index, stock = tradelogiq_omegaats_multicastlevel2_itch_v2_01.stock.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.dissect(buffer, index, packet, parent)

  -- Board Lot Size: Integer
  index, board_lot_size = tradelogiq_omegaats_multicastlevel2_itch_v2_01.board_lot_size.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = tradelogiq_omegaats_multicastlevel2_itch_v2_01.instrument_id.dissect(buffer, index, packet, parent)

  -- Shortable: Alpha
  index, shortable = tradelogiq_omegaats_multicastlevel2_itch_v2_01.shortable.dissect(buffer, index, packet, parent)

  -- Dividend Indicator: Alpha
  index, dividend_indicator = tradelogiq_omegaats_multicastlevel2_itch_v2_01.dividend_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 9: Alphanumeric
  index, reserved_9 = tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_9.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = tradelogiq_omegaats_multicastlevel2_itch_v2_01.currency.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.stock_directory_message, buffer(offset, 0))
    local index = tradelogiq_omegaats_multicastlevel2_itch_v2_01.stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.system_event_message = {}

-- Size: System Event Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.system_event_message.size =
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.event_code.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_2.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.size

-- Display: System Event Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Code: Alpha
  index, event_code = tradelogiq_omegaats_multicastlevel2_itch_v2_01.event_code.dissect(buffer, index, packet, parent)

  -- Reserved 2: Alpha
  index, reserved_2 = tradelogiq_omegaats_multicastlevel2_itch_v2_01.reserved_2.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_omegaats_multicastlevel2_itch_v2_01.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.system_event_message, buffer(offset, 0))
    local index = tradelogiq_omegaats_multicastlevel2_itch_v2_01.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
tradelogiq_omegaats_multicastlevel2_itch_v2_01.payload = {}

-- Dissect: Payload
tradelogiq_omegaats_multicastlevel2_itch_v2_01.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if message_type == "R" then
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.stock_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Extended Stock Directory Message
  if message_type == "r" then
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.extended_stock_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Trading Action Message
  if message_type == "H" then
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.stock_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == "A" then
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "E" then
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed With Price Message
  if message_type == "C" then
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_executed_with_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if message_type == "D" then
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replace Message
  if message_type == "U" then
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_replace_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Message
  if message_type == "X" then
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.order_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == "P" then
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Trade Message
  if message_type == "Q" then
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.cross_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Bust Message
  if message_type == "B" then
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.trade_bust_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Amend Message
  if message_type == "M" then
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.trade_amend_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_header = {}

-- Size: Message Header
tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_header.size =
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_length.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_type.size

-- Display: Message Header
tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 14 values
  index, message_type = tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.message_header, buffer(offset, 0))
    local index = tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.message = {}

-- Read runtime size of: Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and tradelogiq_omegaats_multicastlevel2_itch_v2_01.packet_sequence ~= nil then
    local sequence = parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.message_sequence_number, UInt64.new(tradelogiq_omegaats_multicastlevel2_itch_v2_01.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 14 branches
  index = tradelogiq_omegaats_multicastlevel2_itch_v2_01.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
tradelogiq_omegaats_multicastlevel2_itch_v2_01.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = tradelogiq_omegaats_multicastlevel2_itch_v2_01.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.message, buffer(offset, 0))
    local current = tradelogiq_omegaats_multicastlevel2_itch_v2_01.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tradelogiq_omegaats_multicastlevel2_itch_v2_01.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
tradelogiq_omegaats_multicastlevel2_itch_v2_01.heartbeat = {}

-- Display: Heartbeat
tradelogiq_omegaats_multicastlevel2_itch_v2_01.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
tradelogiq_omegaats_multicastlevel2_itch_v2_01.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
tradelogiq_omegaats_multicastlevel2_itch_v2_01.messages = {}

-- Dissect: Messages
tradelogiq_omegaats_multicastlevel2_itch_v2_01.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.heartbeat.dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = tradelogiq_omegaats_multicastlevel2_itch_v2_01.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
tradelogiq_omegaats_multicastlevel2_itch_v2_01.packet_header = {}

-- Size: Packet Header
tradelogiq_omegaats_multicastlevel2_itch_v2_01.packet_header.size =
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.session.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.sequence_number.size + 
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_count.size

-- Display: Packet Header
tradelogiq_omegaats_multicastlevel2_itch_v2_01.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
tradelogiq_omegaats_multicastlevel2_itch_v2_01.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = tradelogiq_omegaats_multicastlevel2_itch_v2_01.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = tradelogiq_omegaats_multicastlevel2_itch_v2_01.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = tradelogiq_omegaats_multicastlevel2_itch_v2_01.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  tradelogiq_omegaats_multicastlevel2_itch_v2_01.packet_sequence = sequence_number

  return index
end

-- Dissect: Packet Header
tradelogiq_omegaats_multicastlevel2_itch_v2_01.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.fields.packet_header, buffer(offset, 0))
    local index = tradelogiq_omegaats_multicastlevel2_itch_v2_01.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_omegaats_multicastlevel2_itch_v2_01.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_omegaats_multicastlevel2_itch_v2_01.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
tradelogiq_omegaats_multicastlevel2_itch_v2_01.packet = {}

-- Verify required size of Udp packet
tradelogiq_omegaats_multicastlevel2_itch_v2_01.packet.requiredsize = function(buffer)
  return buffer:len() >= tradelogiq_omegaats_multicastlevel2_itch_v2_01.packet_header.size
end

-- Dissect Packet
tradelogiq_omegaats_multicastlevel2_itch_v2_01.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = tradelogiq_omegaats_multicastlevel2_itch_v2_01.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 2 branches
  index = tradelogiq_omegaats_multicastlevel2_itch_v2_01.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.init()
end

-- Dissector for Tradelogiq OmegaAts MulticastLevel2 Itch 2.01
function omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.name

  -- Dissect protocol
  local protocol = parent:add(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01, buffer(), omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.description, "("..buffer:len().." Bytes)")
  return tradelogiq_omegaats_multicastlevel2_itch_v2_01.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Tradelogiq OmegaAts MulticastLevel2 Itch 2.01 (Udp)
local function omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not tradelogiq_omegaats_multicastlevel2_itch_v2_01.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01
  omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Tradelogiq OmegaAts MulticastLevel2 Itch 2.01 (Udp)
local function omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01_udp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not tradelogiq_omegaats_multicastlevel2_itch_v2_01.request_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01
  omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristics for Tradelogiq OmegaAts MulticastLevel2 Itch 2.01
omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01:register_heuristic("udp", omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01_udp_heuristic)

-- Register Tradelogiq OmegaAts MulticastLevel2 Itch 2.01 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_tradelogiq_omegaats_multicastlevel2_itch_v2_01)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Tradelogiq Markets Inc.
--   Version: 2.01
--   Date: Tuesday, January 13, 2026
--   Specification: TMI-Level-2-ITCH-5.0-Specification-v2.01.pdf
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
