-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe NeoEquities CrossingFacility Pitch 1.0.14 Protocol
local omi_cboe_neoequities_crossingfacility_pitch_v1_0_14 = Proto("Omi.Cboe.NeoEquities.CrossingFacility.Pitch.v1.0.14", "Cboe NeoEquities CrossingFacility Pitch 1.0.14")

-- Protocol table
local cboe_neoequities_crossingfacility_pitch_v1_0_14 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe NeoEquities CrossingFacility Pitch 1.0.14 Fields
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.active_market_maker = ProtoField.new("Active Market Maker", "cboe.neoequities.crossingfacility.pitch.v1.0.14.activemarketmaker", ftypes.UINT16, nil, nil, nil, "The active market maker broker id who will be carrying our market maker obligations for the instrument.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.allowed_book_types = ProtoField.new("Allowed Book Types", "cboe.neoequities.crossingfacility.pitch.v1.0.14.allowedbooktypes", ftypes.STRING, nil, nil, nil, "Defines the order book types allowed for the symbol. 0 means not allowed and 1 means allowed.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.auction = ProtoField.new("Auction", "cboe.neoequities.crossingfacility.pitch.v1.0.14.auction", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02, "0 = Not an Auction Trade, 1 = Auction Trade.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.buy_broker_id = ProtoField.new("Buy Broker Id", "cboe.neoequities.crossingfacility.pitch.v1.0.14.buybrokerid", ftypes.UINT16, nil, nil, nil, "Trading participant identity of the buyer of the trade (or 1 for anonymous).")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.bypass = ProtoField.new("Bypass", "cboe.neoequities.crossingfacility.pitch.v1.0.14.bypass", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01, "0 = No Bypass, 1 = Bypass (always 0 if Cross Type is 0).")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.closing_eligible = ProtoField.new("Closing Eligible", "cboe.neoequities.crossingfacility.pitch.v1.0.14.closingeligible", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02, "0 = Not eligible, 1 = Eligible.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.corrected_price = ProtoField.new("Corrected Price", "cboe.neoequities.crossingfacility.pitch.v1.0.14.correctedprice", ftypes.DOUBLE, nil, nil, nil, "Corrected price of the execution.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.corrected_quantity = ProtoField.new("Corrected Quantity", "cboe.neoequities.crossingfacility.pitch.v1.0.14.correctedquantity", ftypes.UINT32, nil, nil, nil, "Corrected number of shares executed or reported.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.corrected_settlement_date = ProtoField.new("Corrected Settlement Date", "cboe.neoequities.crossingfacility.pitch.v1.0.14.correctedsettlementdate", ftypes.UINT32, nil, nil, nil, "Corrected date the order would settle.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.corrected_settlement_type = ProtoField.new("Corrected Settlement Type", "cboe.neoequities.crossingfacility.pitch.v1.0.14.correctedsettlementtype", ftypes.UINT8, nil, nil, nil, "Corrected settlement terms of the order.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.cross_type = ProtoField.new("Cross Type", "cboe.neoequities.crossingfacility.pitch.v1.0.14.crosstype", ftypes.UINT8, nil, nil, nil, "The type of the Cross order.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.crossing_facility = ProtoField.new("Crossing Facility", "cboe.neoequities.crossingfacility.pitch.v1.0.14.crossingfacility", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40, "Crossing Facility allowed.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.currency = ProtoField.new("Currency", "cboe.neoequities.crossingfacility.pitch.v1.0.14.currency", ftypes.STRING, nil, nil, nil, "The possible values will be the ISO 4217 codes for currency.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.execution_id = ProtoField.new("Execution Id", "cboe.neoequities.crossingfacility.pitch.v1.0.14.executionid", ftypes.UINT64, nil, nil, nil, "Cboe Canada NEO generated day-unique execution identifier of this execution. Execution Id is also referenced in the Trade Break and Trade Correction messages.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.full_name = ProtoField.new("Full Name", "cboe.neoequities.crossingfacility.pitch.v1.0.14.fullname", ftypes.STRING, nil, nil, nil, "The unique long name assigned to the symbol.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.halt_reason = ProtoField.new("Halt Reason", "cboe.neoequities.crossingfacility.pitch.v1.0.14.haltreason", ftypes.STRING, nil, nil, nil, "Reason code for a halt condition.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.instrument_flags = ProtoField.new("Instrument Flags", "cboe.neoequities.crossingfacility.pitch.v1.0.14.instrumentflags", ftypes.STRING, nil, nil, nil, "Instrument flags.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.length = ProtoField.new("Length", "cboe.neoequities.crossingfacility.pitch.v1.0.14.length", ftypes.UINT16, nil, nil, nil, "Length of entire block of messages. Includes this header and Message Count messages to follow")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.lot_size = ProtoField.new("Lot Size", "cboe.neoequities.crossingfacility.pitch.v1.0.14.lotsize", ftypes.UINT32, nil, nil, nil, "Indicates the minimum quantity/nominal value tradable on the market for a security.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.message_count = ProtoField.new("Message Count", "cboe.neoequities.crossingfacility.pitch.v1.0.14.messagecount", ftypes.UINT8, nil, nil, nil, "Number of messages to follow this header")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.message_length = ProtoField.new("Message Length", "cboe.neoequities.crossingfacility.pitch.v1.0.14.messagelength", ftypes.UINT8, nil, nil, nil, "Current Pitch message length")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.message_type = ProtoField.new("Message Type", "cboe.neoequities.crossingfacility.pitch.v1.0.14.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying this message type")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.neod = ProtoField.new("Neod", "cboe.neoequities.crossingfacility.pitch.v1.0.14.neod", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20, "NEO-D book allowed.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.neol = ProtoField.new("Neol", "cboe.neoequities.crossingfacility.pitch.v1.0.14.neol", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08, "NEO-L book allowed.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.neon = ProtoField.new("Neon", "cboe.neoequities.crossingfacility.pitch.v1.0.14.neon", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10, "NEO-N book allowed.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.odd_lot_allowed = ProtoField.new("Odd Lot Allowed", "cboe.neoequities.crossingfacility.pitch.v1.0.14.oddlotallowed", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01, "0 = Not Allowed, 1 = Allowed.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.order_book_type = ProtoField.new("Order Book Type", "cboe.neoequities.crossingfacility.pitch.v1.0.14.orderbooktype", ftypes.UINT8, nil, nil, nil, "Order book to which the trading status applies.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.original_price = ProtoField.new("Original Price", "cboe.neoequities.crossingfacility.pitch.v1.0.14.originalprice", ftypes.DOUBLE, nil, nil, nil, "Original price of the execution.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.original_quantity = ProtoField.new("Original Quantity", "cboe.neoequities.crossingfacility.pitch.v1.0.14.originalquantity", ftypes.UINT32, nil, nil, nil, "Original number of shares executed or reported.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.original_settlement_date = ProtoField.new("Original Settlement Date", "cboe.neoequities.crossingfacility.pitch.v1.0.14.originalsettlementdate", ftypes.UINT32, nil, nil, nil, "Original date the order would settle.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.original_settlement_type = ProtoField.new("Original Settlement Type", "cboe.neoequities.crossingfacility.pitch.v1.0.14.originalsettlementtype", ftypes.UINT8, nil, nil, nil, "Original settlement terms of the order.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.previous_close = ProtoField.new("Previous Close", "cboe.neoequities.crossingfacility.pitch.v1.0.14.previousclose", ftypes.DOUBLE, nil, nil, nil, "The previous day's closing price.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.price = ProtoField.new("Price", "cboe.neoequities.crossingfacility.pitch.v1.0.14.price", ftypes.DOUBLE, nil, nil, nil, "The price of the trade.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.quantity = ProtoField.new("Quantity", "cboe.neoequities.crossingfacility.pitch.v1.0.14.quantity", ftypes.UINT32, nil, nil, nil, "Incremental number of shares executed or reported.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.neoequities.crossingfacility.pitch.v1.0.14.reserved1", ftypes.UINT8, nil, nil, nil, "Reserved (undefined).")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.reserved_4 = ProtoField.new("Reserved 4", "cboe.neoequities.crossingfacility.pitch.v1.0.14.reserved4", ftypes.UINT32, nil, nil, nil, "Reserved (undefined).")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.security_type = ProtoField.new("Security Type", "cboe.neoequities.crossingfacility.pitch.v1.0.14.securitytype", ftypes.UINT8, nil, nil, nil, "The security type of the instrument.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.segment = ProtoField.new("Segment", "cboe.neoequities.crossingfacility.pitch.v1.0.14.segment", ftypes.STRING, nil, nil, nil, "Segment the symbol is assigned to (right padded with spaces).")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.sell_broker_id = ProtoField.new("Sell Broker Id", "cboe.neoequities.crossingfacility.pitch.v1.0.14.sellbrokerid", ftypes.UINT16, nil, nil, nil, "Trading participant identity of the seller of the trade (or 1 for anonymous).")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.sequence = ProtoField.new("Sequence", "cboe.neoequities.crossingfacility.pitch.v1.0.14.sequence", ftypes.UINT32, nil, nil, nil, "Sequence Number of the first message to follow this header")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.settlement_date = ProtoField.new("Settlement Date", "cboe.neoequities.crossingfacility.pitch.v1.0.14.settlementdate", ftypes.UINT32, nil, nil, nil, "The date the order would settle.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.settlement_type = ProtoField.new("Settlement Type", "cboe.neoequities.crossingfacility.pitch.v1.0.14.settlementtype", ftypes.UINT8, nil, nil, nil, "Settlement terms of the order.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.sst = ProtoField.new("Sst", "cboe.neoequities.crossingfacility.pitch.v1.0.14.sst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80, "Special Settlement Term book allowed.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.symbol = ProtoField.new("Symbol", "cboe.neoequities.crossingfacility.pitch.v1.0.14.symbol", ftypes.STRING, nil, nil, nil, "Symbol (right padded with spaces).")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.timestamp = ProtoField.new("Timestamp", "cboe.neoequities.crossingfacility.pitch.v1.0.14.timestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the message was generated.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.timestamp_utc = ProtoField.new("Timestamp", "cboe.neoequities.crossingfacility.pitch.v1.0.14.timestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the message was generated.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.trade_flags = ProtoField.new("Trade Flags", "cboe.neoequities.crossingfacility.pitch.v1.0.14.tradeflags", ftypes.STRING, nil, nil, nil, "Trade flags.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.trading_status = ProtoField.new("Trading Status", "cboe.neoequities.crossingfacility.pitch.v1.0.14.tradingstatus", ftypes.STRING, nil, nil, nil, "Current trading status code.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.trading_sub_status = ProtoField.new("Trading Sub Status", "cboe.neoequities.crossingfacility.pitch.v1.0.14.tradingsubstatus", ftypes.STRING, nil, nil, nil, "Current trading sub-status code.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.unit = ProtoField.new("Unit", "cboe.neoequities.crossingfacility.pitch.v1.0.14.unit", ftypes.UINT8, nil, nil, nil, "Unit that applies to messages included in this header")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.unused_3 = ProtoField.new("Unused 3", "cboe.neoequities.crossingfacility.pitch.v1.0.14.unused3", ftypes.UINT8, nil, base.DEC, 0x07, "Reserved.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.unused_6 = ProtoField.new("Unused 6", "cboe.neoequities.crossingfacility.pitch.v1.0.14.unused6", ftypes.UINT8, nil, base.DEC, 0xFC, "Reserved.")

-- Cboe NeoEquities CrossingFacility Pitch 1.0.14 Framing
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.message = ProtoField.new("Message", "cboe.neoequities.crossingfacility.pitch.v1.0.14.message", ftypes.STRING)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.message_header = ProtoField.new("Message Header", "cboe.neoequities.crossingfacility.pitch.v1.0.14.messageheader", ftypes.STRING)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.packet = ProtoField.new("Packet", "cboe.neoequities.crossingfacility.pitch.v1.0.14.packet", ftypes.STRING, nil, nil, nil, "Pitch Udp Packet")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.packet_header = ProtoField.new("Packet Header", "cboe.neoequities.crossingfacility.pitch.v1.0.14.packetheader", ftypes.STRING)

-- Cboe NeoEquities CrossingFacility 1.0.14 Application Messages
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.neoequities.crossingfacility.pitch.v1.0.14.endofsessionmessage", ftypes.STRING, nil, nil, nil, "Sent for each unit when the unit shuts down. No additional sequenced messages will be delivered for this unit, but heartbeats from the unit may be received.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.instrument_directory_message = ProtoField.new("Instrument Directory Message", "cboe.neoequities.crossingfacility.pitch.v1.0.14.instrumentdirectorymessage", ftypes.STRING, nil, nil, nil, "Disseminates information for each symbol. A separate Trading Status message indicates the status of each symbol. If no Trading Status message is received for a symbol, it is assumed to be Suspended.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.neoequities.crossingfacility.pitch.v1.0.14.tradebreakmessage", ftypes.STRING, nil, nil, nil, "Sent whenever an execution on Cboe Canada NEO is cancelled. Applications that simply build a Cboe Canada NEO book can ignore Trade Break messages.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "cboe.neoequities.crossingfacility.pitch.v1.0.14.tradecorrectionmessage", ftypes.STRING, nil, nil, nil, "Sent whenever an execution on Cboe Canada NEO is corrected. Applications that simply build a Cboe Canada NEO book can ignore Trade Correction messages.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.trade_message = ProtoField.new("Trade Message", "cboe.neoequities.crossingfacility.pitch.v1.0.14.trademessage", ftypes.STRING, nil, nil, nil, "Provides information about executions of orders not displayed on any Cboe Canada trading book. Trade messages may also provide information about displayed orders that are traded at a price other than their displayed price. Trade messages do not alter the book and can be ignored if messages are being used solely to build a book.")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.neoequities.crossingfacility.pitch.v1.0.14.tradingstatusmessage", ftypes.STRING, nil, nil, nil, "Indicates the current trading status of a security on the Cboe Canada NEO system. Sequenced Trading Status messages are sent upon system startup for all active securities with Trading Status = S (suspended).")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.neoequities.crossingfacility.pitch.v1.0.14.unitclearmessage", ftypes.STRING, nil, nil, nil, "Instructs feed recipients to clear all orders for the Cboe Canada order book in the unit specified in the Sequenced Unit Header. Distributed in rare recovery events such as a data center fail-over.")

-- Cboe NeoEquities CrossingFacility Pitch 1.0.14 Generated Fields
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.message_index = ProtoField.new("Message Index", "cboe.neoequities.crossingfacility.pitch.v1.0.14.messageindex", ftypes.UINT16)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "cboe.neoequities.crossingfacility.pitch.v1.0.14.messagesequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Cboe NeoEquities CrossingFacility Pitch 1.0.14 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
cboe_neoequities_crossingfacility_pitch_v1_0_14.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe NeoEquities CrossingFacility Pitch 1.0.14 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Cboe NeoEquities CrossingFacility Pitch 1.0.14 Show Options
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_application_messages then
    show.application_messages = omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_headers then
    show.headers = omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_headers
  end
  if show.structs ~= omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_structs then
    show.structs = omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_indexes then
    show.indexes = omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_indexes
  end
  if show.sequences ~= omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_sequences then
    show.sequences = omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_sequences
  end
  if cboe_neoequities_crossingfacility_pitch_v1_0_14.absolute_time_base ~= omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.absolute_time_base then
    cboe_neoequities_crossingfacility_pitch_v1_0_14.absolute_time_base = omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.absolute_time_base
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
-- Cboe NeoEquities CrossingFacility Pitch 1.0.14 Fields
-----------------------------------------------------------------------

-- Active Market Maker
cboe_neoequities_crossingfacility_pitch_v1_0_14.active_market_maker = {}

-- Size: Active Market Maker
cboe_neoequities_crossingfacility_pitch_v1_0_14.active_market_maker.size = 2

-- Display: Active Market Maker
cboe_neoequities_crossingfacility_pitch_v1_0_14.active_market_maker.display = function(value)
  return "Active Market Maker: "..value
end

-- Dissect: Active Market Maker
cboe_neoequities_crossingfacility_pitch_v1_0_14.active_market_maker.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.active_market_maker.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.active_market_maker.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.active_market_maker, range, value, display)

  return offset + length, value
end

-- Buy Broker Id
cboe_neoequities_crossingfacility_pitch_v1_0_14.buy_broker_id = {}

-- Size: Buy Broker Id
cboe_neoequities_crossingfacility_pitch_v1_0_14.buy_broker_id.size = 2

-- Display: Buy Broker Id
cboe_neoequities_crossingfacility_pitch_v1_0_14.buy_broker_id.display = function(value)
  return "Buy Broker Id: "..value
end

-- Dissect: Buy Broker Id
cboe_neoequities_crossingfacility_pitch_v1_0_14.buy_broker_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.buy_broker_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.buy_broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.buy_broker_id, range, value, display)

  return offset + length, value
end

-- Corrected Price
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_price = {}

-- Size: Corrected Price
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_price.size = 8

-- Display: Corrected Price
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_price.display = function(value)
  return "Corrected Price: "..value
end

-- Translate: Corrected Price
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Corrected Price
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_price.translate(raw)
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.corrected_price, range, value, display)

  return offset + length, value
end

-- Corrected Quantity
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_quantity = {}

-- Size: Corrected Quantity
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_quantity.size = 4

-- Display: Corrected Quantity
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_quantity.display = function(value)
  return "Corrected Quantity: "..value
end

-- Dissect: Corrected Quantity
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.corrected_quantity, range, value, display)

  return offset + length, value
end

-- Corrected Settlement Date
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_date = {}

-- Size: Corrected Settlement Date
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_date.size = 4

-- Display: Corrected Settlement Date
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_date.display = function(value)
  return "Corrected Settlement Date: "..value
end

-- Dissect: Corrected Settlement Date
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.corrected_settlement_date, range, value, display)

  return offset + length, value
end

-- Corrected Settlement Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_type = {}

-- Size: Corrected Settlement Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_type.size = 1

-- Display: Corrected Settlement Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_type.display = function(value)
  return "Corrected Settlement Type: "..value
end

-- Dissect: Corrected Settlement Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.corrected_settlement_type, range, value, display)

  return offset + length, value
end

-- Cross Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.cross_type = {}

-- Size: Cross Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.cross_type.size = 1

-- Display: Cross Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.cross_type.labels = {
  [0] = "Cross Type: None (0)",
  [5] = "Cross Type: Internal Cross (5)",
  [11] = "Cross Type: Basis Cross (11)",
  [12] = "Cross Type: Contingent Cross (12)",
  [14] = "Cross Type: Vwap Cross (14)",
  [15] = "Cross Type: Regular Cross (15)",
  [18] = "Cross Type: Derivative Cross (18)",
  [19] = "Cross Type: Closing Price Publication (19)",
  [20] = "Cross Type: Net Asset Value Nav (20)",
}

cboe_neoequities_crossingfacility_pitch_v1_0_14.cross_type.display = function(value)
  return cboe_neoequities_crossingfacility_pitch_v1_0_14.cross_type.labels[value] or "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.cross_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Currency
cboe_neoequities_crossingfacility_pitch_v1_0_14.currency = {}

-- Size: Currency
cboe_neoequities_crossingfacility_pitch_v1_0_14.currency.size = 3

-- Display: Currency
cboe_neoequities_crossingfacility_pitch_v1_0_14.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
cboe_neoequities_crossingfacility_pitch_v1_0_14.currency.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.currency, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_neoequities_crossingfacility_pitch_v1_0_14.execution_id = {}

-- Size: Execution Id
cboe_neoequities_crossingfacility_pitch_v1_0_14.execution_id.size = 8

-- Display: Execution Id
cboe_neoequities_crossingfacility_pitch_v1_0_14.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_neoequities_crossingfacility_pitch_v1_0_14.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Full Name
cboe_neoequities_crossingfacility_pitch_v1_0_14.full_name = {}

-- Size: Full Name
cboe_neoequities_crossingfacility_pitch_v1_0_14.full_name.size = 120

-- Display: Full Name
cboe_neoequities_crossingfacility_pitch_v1_0_14.full_name.display = function(value)
  return "Full Name: "..value
end

-- Dissect: Full Name
cboe_neoequities_crossingfacility_pitch_v1_0_14.full_name.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.full_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.full_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.full_name, range, value, display)

  return offset + length, value
end

-- Halt Reason
cboe_neoequities_crossingfacility_pitch_v1_0_14.halt_reason = {}

-- Size: Halt Reason
cboe_neoequities_crossingfacility_pitch_v1_0_14.halt_reason.size = 1

-- Display: Halt Reason
cboe_neoequities_crossingfacility_pitch_v1_0_14.halt_reason.display = function(value)
  if value == " " then
    return "Halt Reason: None (<whitespace>)"
  end
  if value == "B" then
    return "Halt Reason: Business (B)"
  end
  if value == "C" then
    return "Halt Reason: Cease Trading Order (C)"
  end
  if value == "I" then
    return "Halt Reason: Ipo (I)"
  end
  if value == "R" then
    return "Halt Reason: Regulatory (R)"
  end
  if value == "S" then
    return "Halt Reason: Suspension (S)"
  end

  return "Halt Reason: Unknown("..value..")"
end

-- Dissect: Halt Reason
cboe_neoequities_crossingfacility_pitch_v1_0_14.halt_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.halt_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.halt_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.halt_reason, range, value, display)

  return offset + length, value
end

-- Length
cboe_neoequities_crossingfacility_pitch_v1_0_14.length = {}

-- Size: Length
cboe_neoequities_crossingfacility_pitch_v1_0_14.length.size = 2

-- Display: Length
cboe_neoequities_crossingfacility_pitch_v1_0_14.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_neoequities_crossingfacility_pitch_v1_0_14.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.length, range, value, display)

  return offset + length, value
end

-- Lot Size
cboe_neoequities_crossingfacility_pitch_v1_0_14.lot_size = {}

-- Size: Lot Size
cboe_neoequities_crossingfacility_pitch_v1_0_14.lot_size.size = 4

-- Display: Lot Size
cboe_neoequities_crossingfacility_pitch_v1_0_14.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
cboe_neoequities_crossingfacility_pitch_v1_0_14.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Message Count
cboe_neoequities_crossingfacility_pitch_v1_0_14.message_count = {}

-- Size: Message Count
cboe_neoequities_crossingfacility_pitch_v1_0_14.message_count.size = 1

-- Display: Message Count
cboe_neoequities_crossingfacility_pitch_v1_0_14.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
cboe_neoequities_crossingfacility_pitch_v1_0_14.message_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_neoequities_crossingfacility_pitch_v1_0_14.message_length = {}

-- Size: Message Length
cboe_neoequities_crossingfacility_pitch_v1_0_14.message_length.size = 1

-- Display: Message Length
cboe_neoequities_crossingfacility_pitch_v1_0_14.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_neoequities_crossingfacility_pitch_v1_0_14.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.message_type = {}

-- Size: Message Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.message_type.size = 1

-- Display: Message Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.message_type.display = function(value)
  if value == 0x97 then
    return "Message Type: Unit Clear Message (0x97)"
  end
  if value == 0x60 then
    return "Message Type: Instrument Directory Message (0x60)"
  end
  if value == 0x61 then
    return "Message Type: Trading Status Message (0x61)"
  end
  if value == 0x67 then
    return "Message Type: Trade Message (0x67)"
  end
  if value == 0x68 then
    return "Message Type: Trade Break Message (0x68)"
  end
  if value == 0x69 then
    return "Message Type: Trade Correction Message (0x69)"
  end
  if value == 0x2D then
    return "Message Type: End Of Session Message (0x2D)"
  end

  return "Message Type: Unknown("..string.format("0x%02X", value)..")"
end

-- Dissect: Message Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.message_type, range, value, display)

  return offset + length, value
end

-- Order Book Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.order_book_type = {}

-- Size: Order Book Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.order_book_type.size = 1

-- Display: Order Book Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.order_book_type.labels = {
  [0] = "Order Book Type: All Books (0)",
  [3] = "Order Book Type: Neol (3)",
  [4] = "Order Book Type: Neon (4)",
  [5] = "Order Book Type: Neod (5)",
  [6] = "Order Book Type: Crossing Facility (6)",
  [7] = "Order Book Type: Sst (7)",
}

cboe_neoequities_crossingfacility_pitch_v1_0_14.order_book_type.display = function(value)
  return cboe_neoequities_crossingfacility_pitch_v1_0_14.order_book_type.labels[value] or "Order Book Type: Unknown("..value..")"
end

-- Dissect: Order Book Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.order_book_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.order_book_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.order_book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.order_book_type, range, value, display)

  return offset + length, value
end

-- Original Price
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_price = {}

-- Size: Original Price
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_price.size = 8

-- Display: Original Price
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_price.display = function(value)
  return "Original Price: "..value
end

-- Translate: Original Price
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Original Price
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.original_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_neoequities_crossingfacility_pitch_v1_0_14.original_price.translate(raw)
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.original_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.original_price, range, value, display)

  return offset + length, value
end

-- Original Quantity
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_quantity = {}

-- Size: Original Quantity
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_quantity.size = 4

-- Display: Original Quantity
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_quantity.display = function(value)
  return "Original Quantity: "..value
end

-- Dissect: Original Quantity
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.original_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.original_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.original_quantity, range, value, display)

  return offset + length, value
end

-- Original Settlement Date
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_date = {}

-- Size: Original Settlement Date
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_date.size = 4

-- Display: Original Settlement Date
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_date.display = function(value)
  return "Original Settlement Date: "..value
end

-- Dissect: Original Settlement Date
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.original_settlement_date, range, value, display)

  return offset + length, value
end

-- Original Settlement Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_type = {}

-- Size: Original Settlement Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_type.size = 1

-- Display: Original Settlement Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_type.display = function(value)
  return "Original Settlement Type: "..value
end

-- Dissect: Original Settlement Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.original_settlement_type, range, value, display)

  return offset + length, value
end

-- Previous Close
cboe_neoequities_crossingfacility_pitch_v1_0_14.previous_close = {}

-- Size: Previous Close
cboe_neoequities_crossingfacility_pitch_v1_0_14.previous_close.size = 8

-- Display: Previous Close
cboe_neoequities_crossingfacility_pitch_v1_0_14.previous_close.display = function(value)
  return "Previous Close: "..value
end

-- Translate: Previous Close
cboe_neoequities_crossingfacility_pitch_v1_0_14.previous_close.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Previous Close
cboe_neoequities_crossingfacility_pitch_v1_0_14.previous_close.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.previous_close.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_neoequities_crossingfacility_pitch_v1_0_14.previous_close.translate(raw)
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.previous_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.previous_close, range, value, display)

  return offset + length, value
end

-- Price
cboe_neoequities_crossingfacility_pitch_v1_0_14.price = {}

-- Size: Price
cboe_neoequities_crossingfacility_pitch_v1_0_14.price.size = 8

-- Display: Price
cboe_neoequities_crossingfacility_pitch_v1_0_14.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cboe_neoequities_crossingfacility_pitch_v1_0_14.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
cboe_neoequities_crossingfacility_pitch_v1_0_14.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_neoequities_crossingfacility_pitch_v1_0_14.price.translate(raw)
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
cboe_neoequities_crossingfacility_pitch_v1_0_14.quantity = {}

-- Size: Quantity
cboe_neoequities_crossingfacility_pitch_v1_0_14.quantity.size = 4

-- Display: Quantity
cboe_neoequities_crossingfacility_pitch_v1_0_14.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
cboe_neoequities_crossingfacility_pitch_v1_0_14.quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_1 = {}

-- Size: Reserved 1
cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_1.size = 1

-- Display: Reserved 1
cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 4
cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_4 = {}

-- Size: Reserved 4
cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_4.size = 4

-- Display: Reserved 4
cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Security Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.security_type = {}

-- Size: Security Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.security_type.size = 1

-- Display: Security Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.security_type.labels = {
  [1] = "Security Type: Equity (1)",
  [2] = "Security Type: Debt (2)",
  [3] = "Security Type: Closed End Fund (3)",
  [4] = "Security Type: Depositary Receipt (4)",
  [5] = "Security Type: Exchange Traded Fund (5)",
  [6] = "Security Type: Foreign Listed Security (6)",
  [7] = "Security Type: Structured Product (7)",
  [8] = "Security Type: Unit (8)",
  [9] = "Security Type: Warrant (9)",
  [52] = "Security Type: Unlisted Security (52)",
}

cboe_neoequities_crossingfacility_pitch_v1_0_14.security_type.display = function(value)
  return cboe_neoequities_crossingfacility_pitch_v1_0_14.security_type.labels[value] or "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.security_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.security_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.security_type, range, value, display)

  return offset + length, value
end

-- Segment
cboe_neoequities_crossingfacility_pitch_v1_0_14.segment = {}

-- Size: Segment
cboe_neoequities_crossingfacility_pitch_v1_0_14.segment.size = 6

-- Display: Segment
cboe_neoequities_crossingfacility_pitch_v1_0_14.segment.labels = {
  ["CBOECA"] = "Segment: Cboe Canada Securities (CBOECA)",
  ["TSX"] = "Segment: Tsx Securities (TSX)",
  ["TSXV"] = "Segment: Tsxv Securities (TSXV)",
  ["CSE"] = "Segment: Cse Securities (CSE)",
  ["NEOC"] = "Segment: Neo Connect Securities (NEOC)",
  ["FOTS"] = "Segment: Foreign Other Traded Securities (FOTS)",
}

cboe_neoequities_crossingfacility_pitch_v1_0_14.segment.display = function(value)
  return cboe_neoequities_crossingfacility_pitch_v1_0_14.segment.labels[value] or "Segment: Unknown("..value..")"
end

-- Dissect: Segment
cboe_neoequities_crossingfacility_pitch_v1_0_14.segment.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.segment.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.segment.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.segment, range, value, display)

  return offset + length, value
end

-- Sell Broker Id
cboe_neoequities_crossingfacility_pitch_v1_0_14.sell_broker_id = {}

-- Size: Sell Broker Id
cboe_neoequities_crossingfacility_pitch_v1_0_14.sell_broker_id.size = 2

-- Display: Sell Broker Id
cboe_neoequities_crossingfacility_pitch_v1_0_14.sell_broker_id.display = function(value)
  return "Sell Broker Id: "..value
end

-- Dissect: Sell Broker Id
cboe_neoequities_crossingfacility_pitch_v1_0_14.sell_broker_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.sell_broker_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.sell_broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.sell_broker_id, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_neoequities_crossingfacility_pitch_v1_0_14.sequence = {}

-- Size: Sequence
cboe_neoequities_crossingfacility_pitch_v1_0_14.sequence.size = 4

-- Display: Sequence
cboe_neoequities_crossingfacility_pitch_v1_0_14.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_neoequities_crossingfacility_pitch_v1_0_14.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.sequence, range, value, display)

  return offset + length, value
end

-- Settlement Date
cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_date = {}

-- Size: Settlement Date
cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_date.size = 4

-- Display: Settlement Date
cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_date.display = function(value)
  return "Settlement Date: "..value
end

-- Dissect: Settlement Date
cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.settlement_date, range, value, display)

  return offset + length, value
end

-- Settlement Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_type = {}

-- Size: Settlement Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_type.size = 1

-- Display: Settlement Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_type.labels = {
  [0] = "Settlement Type: No Special Settlement Terms Specified (0)",
  [1] = "Settlement Type: Cash (1)",
  [6] = "Settlement Type: Future (6)",
  [11] = "Settlement Type: Nonnet (11)",
}

cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_type.display = function(value)
  return cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_type.labels[value] or "Settlement Type: Unknown("..value..")"
end

-- Dissect: Settlement Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.settlement_type, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol = {}

-- Size: Symbol
cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol.size = 14

-- Display: Symbol
cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.symbol, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_neoequities_crossingfacility_pitch_v1_0_14.timestamp = {}

-- Size: Timestamp
cboe_neoequities_crossingfacility_pitch_v1_0_14.timestamp.size = 8

-- Dissect: Timestamp
cboe_neoequities_crossingfacility_pitch_v1_0_14.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.timestamp
  if cboe_neoequities_crossingfacility_pitch_v1_0_14.absolute_time_base == 1 then field = omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Trading Status
cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status = {}

-- Size: Trading Status
cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status.size = 1

-- Display: Trading Status
cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status.labels = {
  ["A"] = "Trading Status: Accepting (A)",
  ["F"] = "Trading Status: Halted Full (F)",
  ["H"] = "Trading Status: Halted (H)",
  ["M"] = "Trading Status: Delayed Closing (M)",
  ["O"] = "Trading Status: Preclose (O)",
  ["P"] = "Trading Status: Post Close (P)",
  ["S"] = "Trading Status: Trading Suspended (S)",
  ["T"] = "Trading Status: Trading (T)",
  ["X"] = "Trading Status: Extended Trading (X)",
}

cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status.display = function(value)
  return cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status.labels[value] or "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Trading Sub Status
cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_sub_status = {}

-- Size: Trading Sub Status
cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_sub_status.size = 1

-- Display: Trading Sub Status
cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_sub_status.display = function(value)
  if value == " " then
    return "Trading Sub Status: None (<whitespace>)"
  end
  if value == "C" then
    return "Trading Sub Status: Closing Offset (C)"
  end
  if value == "D" then
    return "Trading Sub Status: Delayed (D)"
  end
  if value == "I" then
    return "Trading Sub Status: Imbalance (I)"
  end
  if value == "O" then
    return "Trading Sub Status: Halt Lift Schedule For Opening (O)"
  end
  if value == "R" then
    return "Trading Sub Status: Halt Lift Schedule For Re Opening (R)"
  end

  return "Trading Sub Status: Unknown("..value..")"
end

-- Dissect: Trading Sub Status
cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_sub_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_sub_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_sub_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.trading_sub_status, range, value, display)

  return offset + length, value
end

-- Unit
cboe_neoequities_crossingfacility_pitch_v1_0_14.unit = {}

-- Size: Unit
cboe_neoequities_crossingfacility_pitch_v1_0_14.unit.size = 1

-- Display: Unit
cboe_neoequities_crossingfacility_pitch_v1_0_14.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_neoequities_crossingfacility_pitch_v1_0_14.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.unit, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe NeoEquities CrossingFacility Pitch 1.0.14
-----------------------------------------------------------------------

-- End Of Session Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.end_of_session_message = {}

-- Size: End Of Session Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.end_of_session_message.size =
  cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_4.size

-- Display: End Of Session Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 4: Binary
  index, reserved_4 = cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_neoequities_crossingfacility_pitch_v1_0_14.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Correction Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_correction_message = {}

-- Size: Trade Correction Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_correction_message.size =
  cboe_neoequities_crossingfacility_pitch_v1_0_14.timestamp.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.order_book_type.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.original_quantity.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.original_price.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_type.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_date.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_quantity.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_price.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_type.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_date.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.execution_id.size

-- Display: Trade Correction Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary Time
  index, timestamp = cboe_neoequities_crossingfacility_pitch_v1_0_14.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Type: Binary
  index, order_book_type = cboe_neoequities_crossingfacility_pitch_v1_0_14.order_book_type.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol.dissect(buffer, index, packet, parent)

  -- Original Quantity: Binary
  index, original_quantity = cboe_neoequities_crossingfacility_pitch_v1_0_14.original_quantity.dissect(buffer, index, packet, parent)

  -- Original Price: Binary Price
  index, original_price = cboe_neoequities_crossingfacility_pitch_v1_0_14.original_price.dissect(buffer, index, packet, parent)

  -- Original Settlement Type: Binary
  index, original_settlement_type = cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_type.dissect(buffer, index, packet, parent)

  -- Original Settlement Date: Binary Date
  index, original_settlement_date = cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_date.dissect(buffer, index, packet, parent)

  -- Corrected Quantity: Binary
  index, corrected_quantity = cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_quantity.dissect(buffer, index, packet, parent)

  -- Corrected Price: Binary Price
  index, corrected_price = cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_price.dissect(buffer, index, packet, parent)

  -- Corrected Settlement Type: Binary
  index, corrected_settlement_type = cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_type.dissect(buffer, index, packet, parent)

  -- Corrected Settlement Date: Binary Date
  index, corrected_settlement_date = cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_date.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_neoequities_crossingfacility_pitch_v1_0_14.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.trade_correction_message, buffer(offset, 0))
    local index = cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Break Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_break_message = {}

-- Size: Trade Break Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_break_message.size =
  cboe_neoequities_crossingfacility_pitch_v1_0_14.timestamp.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.order_book_type.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.original_quantity.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.original_price.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.execution_id.size

-- Display: Trade Break Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary Time
  index, timestamp = cboe_neoequities_crossingfacility_pitch_v1_0_14.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Type: Binary
  index, order_book_type = cboe_neoequities_crossingfacility_pitch_v1_0_14.order_book_type.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol.dissect(buffer, index, packet, parent)

  -- Original Quantity: Binary
  index, original_quantity = cboe_neoequities_crossingfacility_pitch_v1_0_14.original_quantity.dissect(buffer, index, packet, parent)

  -- Original Price: Binary Price
  index, original_price = cboe_neoequities_crossingfacility_pitch_v1_0_14.original_price.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_neoequities_crossingfacility_pitch_v1_0_14.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.trade_break_message, buffer(offset, 0))
    local index = cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Flags
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_flags = {}

-- Size: Trade Flags
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_flags.size = 1

-- Display: Trade Flags
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Bypass flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Bypass"
  end
  -- Is Auction flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Auction"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trade Flags
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_flags.bits = function(range, value, packet, parent)

  -- Bypass: 1 Bit
  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.bypass, range, value)

  -- Auction: 1 Bit
  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.auction, range, value)

  -- Unused 6: 6 Bit
  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.unused_6, range, value)
end

-- Dissect: Trade Flags
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.trade_flags, range, display)

  if show.structs then
    cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_message = {}

-- Size: Trade Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_message.size =
  cboe_neoequities_crossingfacility_pitch_v1_0_14.timestamp.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.order_book_type.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.quantity.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.price.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.execution_id.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.buy_broker_id.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.sell_broker_id.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.cross_type.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_flags.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_type.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_date.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_1.size

-- Display: Trade Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary Time
  index, timestamp = cboe_neoequities_crossingfacility_pitch_v1_0_14.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Type: Binary
  index, order_book_type = cboe_neoequities_crossingfacility_pitch_v1_0_14.order_book_type.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = cboe_neoequities_crossingfacility_pitch_v1_0_14.quantity.dissect(buffer, index, packet, parent)

  -- Price: Binary Price
  index, price = cboe_neoequities_crossingfacility_pitch_v1_0_14.price.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_neoequities_crossingfacility_pitch_v1_0_14.execution_id.dissect(buffer, index, packet, parent)

  -- Buy Broker Id: Binary
  index, buy_broker_id = cboe_neoequities_crossingfacility_pitch_v1_0_14.buy_broker_id.dissect(buffer, index, packet, parent)

  -- Sell Broker Id: Binary
  index, sell_broker_id = cboe_neoequities_crossingfacility_pitch_v1_0_14.sell_broker_id.dissect(buffer, index, packet, parent)

  -- Cross Type: Binary
  index, cross_type = cboe_neoequities_crossingfacility_pitch_v1_0_14.cross_type.dissect(buffer, index, packet, parent)

  -- Trade Flags: Struct of 3 fields
  index, trade_flags = cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_flags.dissect(buffer, index, packet, parent)

  -- Settlement Type: Binary
  index, settlement_type = cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_type.dissect(buffer, index, packet, parent)

  -- Settlement Date: Binary Date
  index, settlement_date = cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_date.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary
  index, reserved_1 = cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.trade_message, buffer(offset, 0))
    local index = cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status_message = {}

-- Size: Trading Status Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status_message.size =
  cboe_neoequities_crossingfacility_pitch_v1_0_14.timestamp.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.order_book_type.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_sub_status.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.halt_reason.size

-- Display: Trading Status Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary Time
  index, timestamp = cboe_neoequities_crossingfacility_pitch_v1_0_14.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Type: Binary
  index, order_book_type = cboe_neoequities_crossingfacility_pitch_v1_0_14.order_book_type.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol.dissect(buffer, index, packet, parent)

  -- Trading Status: Alphanumeric
  index, trading_status = cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status.dissect(buffer, index, packet, parent)

  -- Trading Sub Status: Alphanumeric
  index, trading_sub_status = cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_sub_status.dissect(buffer, index, packet, parent)

  -- Halt Reason: Alphanumeric
  index, halt_reason = cboe_neoequities_crossingfacility_pitch_v1_0_14.halt_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Flags
cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_flags = {}

-- Size: Instrument Flags
cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_flags.size = 1

-- Display: Instrument Flags
cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Odd Lot Allowed flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Odd Lot Allowed"
  end
  -- Is Closing Eligible flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Closing Eligible"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Instrument Flags
cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_flags.bits = function(range, value, packet, parent)

  -- Odd Lot Allowed: 1 Bit
  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.odd_lot_allowed, range, value)

  -- Closing Eligible: 1 Bit
  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.closing_eligible, range, value)

  -- Unused 6: 6 Bit
  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.unused_6, range, value)
end

-- Dissect: Instrument Flags
cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.instrument_flags, range, display)

  if show.structs then
    cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Allowed Book Types
cboe_neoequities_crossingfacility_pitch_v1_0_14.allowed_book_types = {}

-- Size: Allowed Book Types
cboe_neoequities_crossingfacility_pitch_v1_0_14.allowed_book_types.size = 1

-- Display: Allowed Book Types
cboe_neoequities_crossingfacility_pitch_v1_0_14.allowed_book_types.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Neol flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Neol"
  end
  -- Is Neon flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Neon"
  end
  -- Is Neod flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Neod"
  end
  -- Is Crossing Facility flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Crossing Facility"
  end
  -- Is Sst flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Sst"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Allowed Book Types
cboe_neoequities_crossingfacility_pitch_v1_0_14.allowed_book_types.bits = function(range, value, packet, parent)

  -- Unused 3: 3 Bit
  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.unused_3, range, value)

  -- Neol: 1 Bit
  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.neol, range, value)

  -- Neon: 1 Bit
  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.neon, range, value)

  -- Neod: 1 Bit
  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.neod, range, value)

  -- Crossing Facility: 1 Bit
  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.crossing_facility, range, value)

  -- Sst: 1 Bit
  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.sst, range, value)
end

-- Dissect: Allowed Book Types
cboe_neoequities_crossingfacility_pitch_v1_0_14.allowed_book_types.dissect = function(buffer, offset, packet, parent)
  local size = cboe_neoequities_crossingfacility_pitch_v1_0_14.allowed_book_types.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.allowed_book_types.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.allowed_book_types, range, display)

  if show.structs then
    cboe_neoequities_crossingfacility_pitch_v1_0_14.allowed_book_types.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Instrument Directory Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_directory_message = {}

-- Size: Instrument Directory Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_directory_message.size =
  cboe_neoequities_crossingfacility_pitch_v1_0_14.timestamp.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.allowed_book_types.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.segment.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.currency.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.lot_size.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.full_name.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.active_market_maker.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.security_type.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_flags.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.previous_close.size

-- Display: Instrument Directory Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Directory Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary Time
  index, timestamp = cboe_neoequities_crossingfacility_pitch_v1_0_14.timestamp.dissect(buffer, index, packet, parent)

  -- Allowed Book Types: Struct of 6 fields
  index, allowed_book_types = cboe_neoequities_crossingfacility_pitch_v1_0_14.allowed_book_types.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol.dissect(buffer, index, packet, parent)

  -- Segment: Alphanumeric
  index, segment = cboe_neoequities_crossingfacility_pitch_v1_0_14.segment.dissect(buffer, index, packet, parent)

  -- Currency: Alphanumeric
  index, currency = cboe_neoequities_crossingfacility_pitch_v1_0_14.currency.dissect(buffer, index, packet, parent)

  -- Lot Size: Binary
  index, lot_size = cboe_neoequities_crossingfacility_pitch_v1_0_14.lot_size.dissect(buffer, index, packet, parent)

  -- Full Name: Alphanumeric
  index, full_name = cboe_neoequities_crossingfacility_pitch_v1_0_14.full_name.dissect(buffer, index, packet, parent)

  -- Active Market Maker: Binary
  index, active_market_maker = cboe_neoequities_crossingfacility_pitch_v1_0_14.active_market_maker.dissect(buffer, index, packet, parent)

  -- Security Type: Binary
  index, security_type = cboe_neoequities_crossingfacility_pitch_v1_0_14.security_type.dissect(buffer, index, packet, parent)

  -- Instrument Flags: Struct of 3 fields
  index, instrument_flags = cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_flags.dissect(buffer, index, packet, parent)

  -- Previous Close: Binary Price
  index, previous_close = cboe_neoequities_crossingfacility_pitch_v1_0_14.previous_close.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.instrument_directory_message, buffer(offset, 0))
    local index = cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.unit_clear_message = {}

-- Size: Unit Clear Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.unit_clear_message.size =
  cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_4.size

-- Display: Unit Clear Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 4: Binary
  index, reserved_4 = cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_neoequities_crossingfacility_pitch_v1_0_14.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_neoequities_crossingfacility_pitch_v1_0_14.payload = {}

-- Dissect: Payload
cboe_neoequities_crossingfacility_pitch_v1_0_14.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.unit_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Directory Message
  if message_type == 0x60 then
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x61 then
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == 0x67 then
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == 0x68 then
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if message_type == 0x69 then
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.end_of_session_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_neoequities_crossingfacility_pitch_v1_0_14.message_header = {}

-- Size: Message Header
cboe_neoequities_crossingfacility_pitch_v1_0_14.message_header.size =
  cboe_neoequities_crossingfacility_pitch_v1_0_14.message_length.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.message_type.size

-- Display: Message Header
cboe_neoequities_crossingfacility_pitch_v1_0_14.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_neoequities_crossingfacility_pitch_v1_0_14.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_neoequities_crossingfacility_pitch_v1_0_14.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, message_type = cboe_neoequities_crossingfacility_pitch_v1_0_14.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_neoequities_crossingfacility_pitch_v1_0_14.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.message_header, buffer(offset, 0))
    local index = cboe_neoequities_crossingfacility_pitch_v1_0_14.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.message = {}

-- Read runtime size of: Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and cboe_neoequities_crossingfacility_pitch_v1_0_14.packet_sequence ~= nil then
    local sequence = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.message_sequence_number, UInt64.new(cboe_neoequities_crossingfacility_pitch_v1_0_14.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_neoequities_crossingfacility_pitch_v1_0_14.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 7 branches
  index = cboe_neoequities_crossingfacility_pitch_v1_0_14.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_neoequities_crossingfacility_pitch_v1_0_14.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.message, buffer(offset, 0))
    local current = cboe_neoequities_crossingfacility_pitch_v1_0_14.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_neoequities_crossingfacility_pitch_v1_0_14.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
cboe_neoequities_crossingfacility_pitch_v1_0_14.heartbeat = {}

-- Display: Heartbeat
cboe_neoequities_crossingfacility_pitch_v1_0_14.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
cboe_neoequities_crossingfacility_pitch_v1_0_14.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
cboe_neoequities_crossingfacility_pitch_v1_0_14.messages = {}

-- Dissect: Messages
cboe_neoequities_crossingfacility_pitch_v1_0_14.messages.dispatch = {
  [0] = cboe_neoequities_crossingfacility_pitch_v1_0_14.heartbeat.dissect,
}

cboe_neoequities_crossingfacility_pitch_v1_0_14.messages.dissect = function(buffer, offset, packet, parent, message_count)
  local dissect = cboe_neoequities_crossingfacility_pitch_v1_0_14.messages.dispatch[message_count]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_neoequities_crossingfacility_pitch_v1_0_14.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
cboe_neoequities_crossingfacility_pitch_v1_0_14.packet_header = {}

-- Size: Packet Header
cboe_neoequities_crossingfacility_pitch_v1_0_14.packet_header.size =
  cboe_neoequities_crossingfacility_pitch_v1_0_14.length.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.message_count.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.unit.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.sequence.size

-- Display: Packet Header
cboe_neoequities_crossingfacility_pitch_v1_0_14.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_neoequities_crossingfacility_pitch_v1_0_14.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_neoequities_crossingfacility_pitch_v1_0_14.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = cboe_neoequities_crossingfacility_pitch_v1_0_14.message_count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_neoequities_crossingfacility_pitch_v1_0_14.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_neoequities_crossingfacility_pitch_v1_0_14.sequence.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  cboe_neoequities_crossingfacility_pitch_v1_0_14.packet_sequence = sequence

  return index
end

-- Dissect: Packet Header
cboe_neoequities_crossingfacility_pitch_v1_0_14.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.packet_header, buffer(offset, 0))
    local index = cboe_neoequities_crossingfacility_pitch_v1_0_14.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_neoequities_crossingfacility_pitch_v1_0_14.packet = {}

-- Verify required size of Udp packet
cboe_neoequities_crossingfacility_pitch_v1_0_14.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_neoequities_crossingfacility_pitch_v1_0_14.packet_header.size
end

-- Dissect Packet
cboe_neoequities_crossingfacility_pitch_v1_0_14.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_neoequities_crossingfacility_pitch_v1_0_14.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_neoequities_crossingfacility_pitch_v1_0_14.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.init()
end

-- Dissector for Cboe NeoEquities CrossingFacility Pitch 1.0.14
function omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14, buffer(), omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.description, "("..buffer:len().." Bytes)")
  return cboe_neoequities_crossingfacility_pitch_v1_0_14.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
cboe_neoequities_crossingfacility_pitch_v1_0_14.packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end

  local message_count = buffer(2, 1):le_uint()

  -- Heartbeat
  if message_count == 0 then
    return true
  end

  -- Message: carries the application messages, which tell this protocol from others sharing the session framing
  if buffer:len() < 10 then
    return false
  end

  local message_type = buffer(9, 1):le_uint()

  -- Unit Clear Message
  if message_type == 0x97 then
    return true
  end

  -- Instrument Directory Message
  if message_type == 0x60 then
    return true
  end

  -- Trading Status Message
  if message_type == 0x61 then
    return true
  end

  -- Trade Message
  if message_type == 0x67 then
    return true
  end

  -- Trade Break Message
  if message_type == 0x68 then
    return true
  end

  -- Trade Correction Message
  if message_type == 0x69 then
    return true
  end

  -- End Of Session Message
  if message_type == 0x2D then
    return true
  end


  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe NeoEquities CrossingFacility Pitch 1.0.14 (Udp)
local function omi_cboe_neoequities_crossingfacility_pitch_v1_0_14_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_neoequities_crossingfacility_pitch_v1_0_14.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not cboe_neoequities_crossingfacility_pitch_v1_0_14.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_neoequities_crossingfacility_pitch_v1_0_14
  omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe NeoEquities CrossingFacility Pitch 1.0.14
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14:register_heuristic("udp", omi_cboe_neoequities_crossingfacility_pitch_v1_0_14_udp_heuristic)

-- Register Cboe NeoEquities CrossingFacility Pitch 1.0.14 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.0.14
--   Date: Monday, February 9, 2026
--   Specification: Cboe Canada Equities Multicast PITCH Specification.pdf
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
