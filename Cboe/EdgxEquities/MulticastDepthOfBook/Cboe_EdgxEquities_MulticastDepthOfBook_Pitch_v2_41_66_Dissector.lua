-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe EdgxEquities MulticastDepthOfBook Pitch 2.41.66 Protocol
local omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66 = Proto("Omi.Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.66", "Cboe EdgxEquities MulticastDepthOfBook Pitch 2.41.66")

-- Protocol table
local cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe EdgxEquities MulticastDepthOfBook Pitch 2.41.66 Fields
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.add_flags = ProtoField.new("Add Flags", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.addflags", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.aon = ProtoField.new("Aon", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.aon", ftypes.UINT8, {[0]="Order Is A Firm Quote", [1]="Order Is Aon All Or None"}, base.DEC, 0x08)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.auction_only_price = ProtoField.new("Auction Only Price", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.auctiononlyprice", ftypes.UINT64)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.auction_type = ProtoField.new("Auction Type", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.auctiontype", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.buy_shares = ProtoField.new("Buy Shares", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.buyshares", ftypes.UINT32)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.canceled_quantity_long = ProtoField.new("Canceled Quantity Long", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.canceledquantitylong", ftypes.UINT32)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.canceled_quantity_short = ProtoField.new("Canceled Quantity Short", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.canceledquantityshort", ftypes.UINT16)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.count = ProtoField.new("Count", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.count", ftypes.UINT8)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.customerindicator", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.display = ProtoField.new("Display", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.display", ftypes.UINT8, {[0]="Order Is Not Aggregated In The Cboe Sip Quote", [1]="Order Is Aggregated In The Cboe Sip Quote"}, base.DEC, 0x01)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.executed_quantity = ProtoField.new("Executed Quantity", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.executedquantity", ftypes.UINT32)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.execution_id = ProtoField.new("Execution Id", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.executionid", ftypes.UINT64)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.indicativeprice", ftypes.UINT64)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.length = ProtoField.new("Length", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.length", ftypes.UINT16)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.maintain_priority = ProtoField.new("Maintain Priority", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.maintainpriority", ftypes.UINT8, {[0]="Reset Priority", [1]="Maintain Priority"}, base.DEC, 0x02)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.message_length = ProtoField.new("Message Length", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.messagelength", ftypes.UINT8)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.message_type = ProtoField.new("Message Type", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.messagetype", ftypes.UINT8)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.modify_flags = ProtoField.new("Modify Flags", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.modifyflags", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.order_id = ProtoField.new("Order Id", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.orderid", ftypes.UINT64)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.participant_id = ProtoField.new("Participant Id", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.participantid", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.price_long = ProtoField.new("Price Long", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.pricelong", ftypes.DOUBLE)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.price_short = ProtoField.new("Price Short", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.priceshort", ftypes.DOUBLE)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.quantity_long = ProtoField.new("Quantity Long", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.quantitylong", ftypes.UINT32)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.quantityshort", ftypes.UINT16)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.reference_price = ProtoField.new("Reference Price", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.referenceprice", ftypes.UINT64)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.regshoaction", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.remaining_quantity = ProtoField.new("Remaining Quantity", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.remainingquantity", ftypes.UINT32)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.reserved1", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.retail_price_improvement = ProtoField.new("Retail Price Improvement", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.retailpriceimprovement", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.second_reserved_1 = ProtoField.new("Second Reserved 1", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.secondreserved1", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.sell_shares = ProtoField.new("Sell Shares", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.sellshares", ftypes.UINT32)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.sequence = ProtoField.new("Sequence", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.sequence", ftypes.UINT32)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.shares = ProtoField.new("Shares", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.shares", ftypes.UINT32)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.sideindicator", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.stock_symbol = ProtoField.new("Stock Symbol", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.stocksymbol", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.symbol_long = ProtoField.new("Symbol Long", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.symbollong", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.symbol_short = ProtoField.new("Symbol Short", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.symbolshort", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.time = ProtoField.new("Time", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.time", ftypes.UINT32)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.time_offset = ProtoField.new("Time Offset", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.timeoffset", ftypes.UINT32)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.trading_status = ProtoField.new("Trading Status", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.tradingstatus", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.unit = ProtoField.new("Unit", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.unit", ftypes.UINT8)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.unused_3 = ProtoField.new("Unused 3", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.unused3", ftypes.UINT8, nil, base.DEC, 0x07)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.unused_4 = ProtoField.new("Unused 4", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.unused4", ftypes.UINT8, nil, base.DEC, 0xF0)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.unused_6 = ProtoField.new("Unused 6", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.unused6", ftypes.UINT8, nil, base.DEC, 0xFC)

-- Cboe EdgxEquities MulticastDepthOfBook Pitch 2.41.66 Framing
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.message = ProtoField.new("Message", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.message", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.message_header = ProtoField.new("Message Header", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.messageheader", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.packet = ProtoField.new("Packet", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.packet", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.packet_header = ProtoField.new("Packet Header", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.packetheader", ftypes.STRING)

-- Cboe EdgxEquities MulticastDepthOfBook 2.41.66 Application Messages
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.add_order_expanded_message = ProtoField.new("Add Order Expanded Message", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.addorderexpandedmessage", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.addorderlongmessage", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.addordershortmessage", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.auctionsummarymessage", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.auction_update_message = ProtoField.new("Auction Update Message", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.auctionupdatemessage", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.delete_order_message = ProtoField.new("Delete Order Message", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.deleteordermessage", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.endofsessionmessage", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.modify_order_long_message = ProtoField.new("Modify Order Long Message", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.modifyorderlongmessage", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.modify_order_short_message = ProtoField.new("Modify Order Short Message", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.modifyordershortmessage", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.order_executed_at_price_size_message = ProtoField.new("Order Executed At Price Size Message", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.orderexecutedatpricesizemessage", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.orderexecutedmessage", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.reduce_size_long_message = ProtoField.new("Reduce Size Long Message", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.reducesizelongmessage", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.reduce_size_short_message = ProtoField.new("Reduce Size Short Message", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.reducesizeshortmessage", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.retail_price_improvement_message = ProtoField.new("Retail Price Improvement Message", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.retailpriceimprovementmessage", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.time_message = ProtoField.new("Time Message", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.timemessage", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.tradebreakmessage", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.trade_expanded_message = ProtoField.new("Trade Expanded Message", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.tradeexpandedmessage", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.tradelongmessage", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.tradeshortmessage", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.tradingstatusmessage", ftypes.STRING)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.unitclearmessage", ftypes.STRING)

-- Cboe EdgxEquities MulticastDepthOfBook Pitch 2.41.66 Generated Fields
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.message_index = ProtoField.new("Message Index", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.messageindex", ftypes.UINT16)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.timestamp = ProtoField.new("Timestamp", "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.66.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Cboe EdgxEquities MulticastDepthOfBook Pitch 2.41.66 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp_format = 2

-- Hours behind UTC (EST) for midnight calculation
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.utc_offset_hours = 5

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.format_timestamp = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe EdgxEquities MulticastDepthOfBook Pitch 2.41.66 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true
show.indexes = true

-- Register Cboe EdgxEquities MulticastDepthOfBook Pitch 2.41.66 Show Options
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.prefs.timestamp_format = Pref.enum("Time Offset Format", 2, "Time Offset display format", timestamp_format_enum, false)
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.prefs.show_application_messages then
    show.application_messages = omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.prefs.show_headers then
    show.headers = omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.prefs.show_headers
  end
  if show.structs ~= omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.prefs.show_structs then
    show.structs = omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.prefs.show_indexes then
    show.indexes = omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.prefs.show_indexes
  end
  if cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.format_timestamp ~= omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.prefs.format_timestamp then
    cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.format_timestamp = omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.prefs.format_timestamp
  end
  if cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp_format ~= omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.prefs.timestamp_format then
    cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp_format = omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.prefs.timestamp_format
  end
  if cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.utc_offset_hours ~= omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.prefs.utc_offset_hours then
    cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.utc_offset_hours = omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.prefs.utc_offset_hours
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.conversation = {}
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.conversation.data = function(packet)
  local key = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.conversation.key(packet)
  local data = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.conversation.flows[key]
  if data == nil then
    data = { time = { last = nil, frames = {} } }
    cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.conversation.current = nil


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
-- Cboe EdgxEquities MulticastDepthOfBook Pitch 2.41.66 Fields
-----------------------------------------------------------------------

-- Auction Only Price
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_only_price = {}

-- Size: Auction Only Price
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_only_price.size = 8

-- Display: Auction Only Price
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_only_price.display = function(value)
  return "Auction Only Price: "..value
end

-- Dissect: Auction Only Price
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_only_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_only_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_only_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.auction_only_price, range, value, display)

  return offset + length, value
end

-- Auction Type
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_type = {}

-- Size: Auction Type
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_type.size = 1

-- Display: Auction Type
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_type.display = function(value)
  if value == "O" then
    return "Auction Type: Opening Auction (O)"
  end
  if value == "C" then
    return "Auction Type: Closing Auction (C)"
  end
  if value == "H" then
    return "Auction Type: Halt Auction (H)"
  end
  if value == "I" then
    return "Auction Type: Ipo Auction (I)"
  end
  if value == "M" then
    return "Auction Type: Cboe Market Close (M)"
  end
  if value == "G" then
    return "Auction Type: Gth Opening C 1 Only (G)"
  end
  if value == "V" then
    return "Auction Type: Volatility Auction (V)"
  end
  if value == "P" then
    return "Auction Type: Periodic Auction Byx Only (P)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Buy Shares
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.buy_shares = {}

-- Size: Buy Shares
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.buy_shares.size = 4

-- Display: Buy Shares
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.buy_shares.display = function(value)
  return "Buy Shares: "..value
end

-- Dissect: Buy Shares
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.buy_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.buy_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.buy_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.buy_shares, range, value, display)

  return offset + length, value
end

-- Canceled Quantity Long
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.canceled_quantity_long = {}

-- Size: Canceled Quantity Long
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.canceled_quantity_long.size = 4

-- Display: Canceled Quantity Long
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.canceled_quantity_long.display = function(value)
  return "Canceled Quantity Long: "..value
end

-- Dissect: Canceled Quantity Long
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.canceled_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.canceled_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.canceled_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.canceled_quantity_long, range, value, display)

  return offset + length, value
end

-- Canceled Quantity Short
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.canceled_quantity_short = {}

-- Size: Canceled Quantity Short
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.canceled_quantity_short.size = 2

-- Display: Canceled Quantity Short
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.canceled_quantity_short.display = function(value)
  return "Canceled Quantity Short: "..value
end

-- Dissect: Canceled Quantity Short
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.canceled_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.canceled_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.canceled_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.canceled_quantity_short, range, value, display)

  return offset + length, value
end

-- Count
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.count = {}

-- Size: Count
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.count.size = 1

-- Display: Count
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.count, range, value, display)

  return offset + length, value
end

-- Customer Indicator
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.customer_indicator = {}

-- Size: Customer Indicator
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.customer_indicator.size = 1

-- Display: Customer Indicator
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.customer_indicator.display = function(value)
  if value == "N" then
    return "Customer Indicator: Non Customer (N)"
  end
  if value == "C" then
    return "Customer Indicator: Customer (C)"
  end
  if value == "R" then
    return "Customer Indicator: Retail Priority Order Edgx Equities Only (R)"
  end

  return "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.customer_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.customer_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.customer_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Executed Quantity
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.executed_quantity = {}

-- Size: Executed Quantity
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.executed_quantity.size = 4

-- Display: Executed Quantity
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.execution_id = {}

-- Size: Execution Id
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.execution_id.size = 8

-- Display: Execution Id
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Indicative Price
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.indicative_price = {}

-- Size: Indicative Price
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.indicative_price.size = 8

-- Display: Indicative Price
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Dissect: Indicative Price
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.indicative_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Length
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.length = {}

-- Size: Length
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.length.size = 2

-- Display: Length
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.length, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message_length = {}

-- Size: Message Length
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message_length.size = 1

-- Display: Message Length
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message_type = {}

-- Size: Message Type
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message_type.size = 1

-- Display: Message Type
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message_type.display = function(value)
  if value == 0x20 then
    return "Message Type: Time Message (0x20)"
  end
  if value == 0x97 then
    return "Message Type: Unit Clear Message (0x97)"
  end
  if value == 0x21 then
    return "Message Type: Add Order Long Message (0x21)"
  end
  if value == 0x22 then
    return "Message Type: Add Order Short Message (0x22)"
  end
  if value == 0x2F then
    return "Message Type: Add Order Expanded Message (0x2F)"
  end
  if value == 0x23 then
    return "Message Type: Order Executed Message (0x23)"
  end
  if value == 0x24 then
    return "Message Type: Order Executed At Price Size Message (0x24)"
  end
  if value == 0x25 then
    return "Message Type: Reduce Size Long Message (0x25)"
  end
  if value == 0x26 then
    return "Message Type: Reduce Size Short Message (0x26)"
  end
  if value == 0x27 then
    return "Message Type: Modify Order Long Message (0x27)"
  end
  if value == 0x28 then
    return "Message Type: Modify Order Short Message (0x28)"
  end
  if value == 0x29 then
    return "Message Type: Delete Order Message (0x29)"
  end
  if value == 0x2A then
    return "Message Type: Trade Long Message (0x2A)"
  end
  if value == 0x2B then
    return "Message Type: Trade Short Message (0x2B)"
  end
  if value == 0x30 then
    return "Message Type: Trade Expanded Message (0x30)"
  end
  if value == 0x2C then
    return "Message Type: Trade Break Message (0x2C)"
  end
  if value == 0x2D then
    return "Message Type: End Of Session Message (0x2D)"
  end
  if value == 0x31 then
    return "Message Type: Trading Status Message (0x31)"
  end
  if value == 0x95 then
    return "Message Type: Auction Update Message (0x95)"
  end
  if value == 0x96 then
    return "Message Type: Auction Summary Message (0x96)"
  end
  if value == 0x98 then
    return "Message Type: Retail Price Improvement Message (0x98)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.message_type, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id = {}

-- Size: Order Id
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.size = 8

-- Display: Order Id
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.order_id, range, value, display)

  return offset + length, value
end

-- Participant Id
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.participant_id = {}

-- Size: Participant Id
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.participant_id.size = 4

-- Display: Participant Id
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Price Long
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_long = {}

-- Size: Price Long
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_long.size = 8

-- Display: Price Long
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_long.display = function(value)
  return "Price Long: "..value
end

-- Translate: Price Long
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_long.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price Long
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_long.translate(raw)
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.price_long, range, value, display)

  return offset + length, value
end

-- Price Short
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_short = {}

-- Size: Price Short
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_short.size = 2

-- Display: Price Short
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_short.display = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Price Short
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_short.translate(raw)
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.price_short, range, value, display)

  return offset + length, value
end

-- Quantity Long
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.quantity_long = {}

-- Size: Quantity Long
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.quantity_long.size = 4

-- Display: Quantity Long
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.quantity_long.display = function(value)
  return "Quantity Long: "..value
end

-- Dissect: Quantity Long
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.quantity_long, range, value, display)

  return offset + length, value
end

-- Quantity Short
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.quantity_short = {}

-- Size: Quantity Short
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.quantity_short.size = 2

-- Display: Quantity Short
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.quantity_short.display = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Reference Price
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reference_price = {}

-- Size: Reference Price
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reference_price.size = 8

-- Display: Reference Price
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Dissect: Reference Price
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reference_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reg_sho_action = {}

-- Size: Reg Sho Action
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reg_sho_action.size = 1

-- Display: Reg Sho Action
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reg_sho_action.display = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price Test In Effect (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Reg Sho Price Test Restriction In Effect (1)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Remaining Quantity
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.remaining_quantity = {}

-- Size: Remaining Quantity
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.remaining_quantity.size = 4

-- Display: Remaining Quantity
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.remaining_quantity.display = function(value)
  return "Remaining Quantity: "..value
end

-- Dissect: Remaining Quantity
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.remaining_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.remaining_quantity, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reserved_1 = {}

-- Size: Reserved 1
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reserved_1.size = 1

-- Display: Reserved 1
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Retail Price Improvement
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.retail_price_improvement = {}

-- Size: Retail Price Improvement
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.retail_price_improvement.size = 1

-- Display: Retail Price Improvement
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.retail_price_improvement.display = function(value)
  if value == "B" then
    return "Retail Price Improvement: Buy Side Rpi (B)"
  end
  if value == "S" then
    return "Retail Price Improvement: Sell Side Rpi (S)"
  end
  if value == "A" then
    return "Retail Price Improvement: Buy And Sell Rpi (A)"
  end
  if value == "N" then
    return "Retail Price Improvement: No Rpi (N)"
  end

  return "Retail Price Improvement: Unknown("..value..")"
end

-- Dissect: Retail Price Improvement
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.retail_price_improvement.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.retail_price_improvement.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.retail_price_improvement.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.retail_price_improvement, range, value, display)

  return offset + length, value
end

-- Second Reserved 1
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.second_reserved_1 = {}

-- Size: Second Reserved 1
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.second_reserved_1.size = 1

-- Display: Second Reserved 1
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.second_reserved_1.display = function(value)
  return "Second Reserved 1: "..value
end

-- Dissect: Second Reserved 1
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.second_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.second_reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.second_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.second_reserved_1, range, value, display)

  return offset + length, value
end

-- Sell Shares
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.sell_shares = {}

-- Size: Sell Shares
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.sell_shares.size = 4

-- Display: Sell Shares
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.sell_shares.display = function(value)
  return "Sell Shares: "..value
end

-- Dissect: Sell Shares
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.sell_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.sell_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.sell_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.sell_shares, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.sequence = {}

-- Size: Sequence
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.sequence.size = 4

-- Display: Sequence
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.sequence, range, value, display)

  return offset + length, value
end

-- Shares
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.shares = {}

-- Size: Shares
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.shares.size = 4

-- Display: Shares
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.shares, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.side_indicator = {}

-- Size: Side Indicator
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.side_indicator.size = 1

-- Display: Side Indicator
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.side_indicator.display = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Stock Symbol
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.stock_symbol = {}

-- Size: Stock Symbol
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.stock_symbol.size = 8

-- Display: Stock Symbol
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.stock_symbol.display = function(value)
  return "Stock Symbol: "..value
end

-- Dissect: Stock Symbol
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.stock_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.stock_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.stock_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.stock_symbol, range, value, display)

  return offset + length, value
end

-- Symbol Long
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.symbol_long = {}

-- Size: Symbol Long
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.symbol_long.size = 8

-- Display: Symbol Long
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.symbol_long.display = function(value)
  return "Symbol Long: "..value
end

-- Dissect: Symbol Long
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.symbol_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.symbol_long.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.symbol_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.symbol_long, range, value, display)

  return offset + length, value
end

-- Symbol Short
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.symbol_short = {}

-- Size: Symbol Short
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.symbol_short.size = 6

-- Display: Symbol Short
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.symbol_short.display = function(value)
  return "Symbol Short: "..value
end

-- Dissect: Symbol Short
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.symbol_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.symbol_short.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.symbol_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.symbol_short, range, value, display)

  return offset + length, value
end

-- Time
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time = {}

-- Size: Time
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time.size = 4

-- Store: Time
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time.current = nil

-- Generated: Time
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time.generated = function(value, range, packet, parent)
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time.display(value)
  local time = parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.time, range, value, display)
  time:set_generated()
end

-- Display: Time
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_offset = {}

-- Size: Time Offset
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_offset.size = 4

-- Display: Time Offset
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trading_status = {}

-- Size: Trading Status
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trading_status.size = 1

-- Display: Trading Status
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trading_status.display = function(value)
  if value == "A" then
    return "Trading Status: Accepting Orders For Queuing (A)"
  end
  if value == "H" then
    return "Trading Status: Halted (H)"
  end
  if value == "Q" then
    return "Trading Status: Quote Only (Q)"
  end
  if value == "S" then
    return "Trading Status: Exchange Specific Suspension (S)"
  end
  if value == "T" then
    return "Trading Status: Trading (T)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Unit
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.unit = {}

-- Size: Unit
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.unit.size = 1

-- Display: Unit
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.unit, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp = {}

-- Translate: Timestamp
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp.translate = function(time_offset, stored_time)
  return UInt64.new(stored_time * 1000000000 + time_offset)
end

-- Display: Timestamp
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp.display = function(time_offset, stored_time, packet)
  -- Raw display mode
  if cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp_format == 0 then
    return "Timestamp: "..(stored_time * 1000000000 + time_offset)
  end

  -- Full datetime mode (calculate from capture date + UTC offset)
  if cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400
    local full_seconds = local_midnight + stored_time

    return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", time_offset)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", stored_time)..string.format("%09d", time_offset)
end

-- Composite: Timestamp
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp.composite = function(buffer, offset, stored_time, packet, parent)
  local length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_offset.size
  local range = buffer(offset, length)
  local time_offset = range:le_uint()
  local value = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp.translate(time_offset, stored_time)
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp.display(time_offset, stored_time, packet)
  parent = parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.timestamp, range, value, display)

  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time.generated(stored_time, range, packet, parent)

  display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_offset.display(time_offset)
  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.time_offset, range, time_offset, display)

  return offset + length, value
end

-- Dissect: Timestamp
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp.dissect = function(buffer, offset, packet, parent)
  if cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.format_timestamp then
    local stored_time = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time.current

    if stored_time ~= nil then
      return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp.composite(buffer, offset, stored_time, packet, parent)
    end
  end

  return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_offset.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Cboe EdgxEquities MulticastDepthOfBook Pitch 2.41.66
-----------------------------------------------------------------------

-- Retail Price Improvement Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.retail_price_improvement_message = {}

-- Size: Retail Price Improvement Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.retail_price_improvement_message.size =
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_offset.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.symbol_long.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.retail_price_improvement.size

-- Display: Retail Price Improvement Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.retail_price_improvement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retail Price Improvement Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.retail_price_improvement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Long: Printable ASCII
  index, symbol_long = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.symbol_long.dissect(buffer, index, packet, parent)

  -- Retail Price Improvement: Alpha
  index, retail_price_improvement = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.retail_price_improvement.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Price Improvement Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.retail_price_improvement_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.retail_price_improvement_message, buffer(offset, 0))
    local index = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.retail_price_improvement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.retail_price_improvement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.retail_price_improvement_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Summary Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_summary_message = {}

-- Size: Auction Summary Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_summary_message.size =
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_offset.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.stock_symbol.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_type.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_long.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.shares.size

-- Display: Auction Summary Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Printable ASCII
  index, stock_symbol = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.stock_symbol.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_type.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_long.dissect(buffer, index, packet, parent)

  -- Shares: Binary
  index, shares = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Update Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_update_message = {}

-- Size: Auction Update Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_update_message.size =
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.stock_symbol.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_type.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reference_price.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.buy_shares.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.sell_shares.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.indicative_price.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_only_price.size

-- Display: Auction Update Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Update Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Symbol: Printable ASCII
  index, stock_symbol = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.stock_symbol.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price: Binary
  index, reference_price = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reference_price.dissect(buffer, index, packet, parent)

  -- Buy Shares: Binary
  index, buy_shares = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.buy_shares.dissect(buffer, index, packet, parent)

  -- Sell Shares: Binary
  index, sell_shares = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.sell_shares.dissect(buffer, index, packet, parent)

  -- Indicative Price: Binary
  index, indicative_price = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.indicative_price.dissect(buffer, index, packet, parent)

  -- Auction Only Price: Binary
  index, auction_only_price = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_only_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Update Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.auction_update_message, buffer(offset, 0))
    local index = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trading_status_message = {}

-- Size: Trading Status Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trading_status_message.size =
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_offset.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.symbol_long.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trading_status.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reg_sho_action.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reserved_1.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.second_reserved_1.size

-- Display: Trading Status Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Long: Printable ASCII
  index, symbol_long = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.symbol_long.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trading_status.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: Alphanumeric
  index, reg_sho_action = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reg_sho_action.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reserved_1.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: Alpha
  index, second_reserved_1 = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.second_reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Session Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.end_of_session_message = {}

-- Size: End Of Session Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.end_of_session_message.size =
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_offset.size

-- Display: End Of Session Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Break Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_break_message = {}

-- Size: Trade Break Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_break_message.size =
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_offset.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.execution_id.size

-- Display: Trade Break Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.trade_break_message, buffer(offset, 0))
    local index = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Expanded Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_expanded_message = {}

-- Size: Trade Expanded Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_expanded_message.size =
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_offset.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.side_indicator.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.quantity_long.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.symbol_long.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_long.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.execution_id.size

-- Display: Trade Expanded Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Expanded Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.quantity_long.dissect(buffer, index, packet, parent)

  -- Symbol Long: Printable ASCII
  index, symbol_long = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.symbol_long.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_long.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Expanded Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.trade_expanded_message, buffer(offset, 0))
    local index = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Short Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_short_message = {}

-- Size: Trade Short Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_short_message.size =
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_offset.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.side_indicator.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.quantity_short.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.symbol_short.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_short.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.execution_id.size

-- Display: Trade Short Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Short Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.quantity_short.dissect(buffer, index, packet, parent)

  -- Symbol Short: Printable ASCII
  index, symbol_short = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.symbol_short.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_short.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.trade_short_message, buffer(offset, 0))
    local index = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Long Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_long_message = {}

-- Size: Trade Long Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_long_message.size =
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_offset.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.side_indicator.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.quantity_long.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.symbol_short.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_long.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.execution_id.size

-- Display: Trade Long Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Long Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.quantity_long.dissect(buffer, index, packet, parent)

  -- Symbol Short: Printable ASCII
  index, symbol_short = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.symbol_short.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_long.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.trade_long_message, buffer(offset, 0))
    local index = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.delete_order_message = {}

-- Size: Delete Order Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.delete_order_message.size =
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_offset.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.size

-- Display: Delete Order Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.delete_order_message, buffer(offset, 0))
    local index = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Flags
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.modify_flags = {}

-- Size: Modify Flags
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.modify_flags.size = 1

-- Display: Modify Flags
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.modify_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Display flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Display"
  end
  -- Is Maintain Priority flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Maintain Priority"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Modify Flags
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.modify_flags.bits = function(range, value, packet, parent)

  -- Display: 1 Bit Enum with 2 values
  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.display, range, value)

  -- Maintain Priority: 1 Bit Enum with 2 values
  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.maintain_priority, range, value)

  -- Unused 6: 6 Bit
  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.unused_6, range, value)
end

-- Dissect: Modify Flags
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.modify_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.modify_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.modify_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.modify_flags, range, display)

  if show.structs then
    cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.modify_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Modify Order Short Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.modify_order_short_message = {}

-- Size: Modify Order Short Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.modify_order_short_message.size =
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_offset.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.quantity_short.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_short.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.modify_flags.size

-- Display: Modify Order Short Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.modify_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Short Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.modify_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.quantity_short.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_short.dissect(buffer, index, packet, parent)

  -- Modify Flags: Struct of 3 fields
  index, modify_flags = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.modify_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Short Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.modify_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.modify_order_short_message, buffer(offset, 0))
    local index = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.modify_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.modify_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.modify_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Long Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.modify_order_long_message = {}

-- Size: Modify Order Long Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.modify_order_long_message.size =
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_offset.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.quantity_long.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_long.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.modify_flags.size

-- Display: Modify Order Long Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.modify_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Long Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.modify_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.quantity_long.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_long.dissect(buffer, index, packet, parent)

  -- Modify Flags: Struct of 3 fields
  index, modify_flags = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.modify_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Long Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.modify_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.modify_order_long_message, buffer(offset, 0))
    local index = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.modify_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.modify_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.modify_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Short Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reduce_size_short_message = {}

-- Size: Reduce Size Short Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reduce_size_short_message.size =
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_offset.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.canceled_quantity_short.size

-- Display: Reduce Size Short Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reduce_size_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Short Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reduce_size_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Quantity Short: Binary
  index, canceled_quantity_short = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.canceled_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Short Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reduce_size_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.reduce_size_short_message, buffer(offset, 0))
    local index = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reduce_size_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reduce_size_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reduce_size_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Long Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reduce_size_long_message = {}

-- Size: Reduce Size Long Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reduce_size_long_message.size =
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_offset.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.canceled_quantity_long.size

-- Display: Reduce Size Long Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reduce_size_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Long Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reduce_size_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Quantity Long: Binary
  index, canceled_quantity_long = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.canceled_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Long Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reduce_size_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.reduce_size_long_message, buffer(offset, 0))
    local index = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reduce_size_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reduce_size_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reduce_size_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed At Price Size Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_executed_at_price_size_message = {}

-- Size: Order Executed At Price Size Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_executed_at_price_size_message.size =
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_offset.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.executed_quantity.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.remaining_quantity.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.execution_id.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_long.size

-- Display: Order Executed At Price Size Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_executed_at_price_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed At Price Size Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_executed_at_price_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary
  index, executed_quantity = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.executed_quantity.dissect(buffer, index, packet, parent)

  -- Remaining Quantity: Binary
  index, remaining_quantity = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.remaining_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.execution_id.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed At Price Size Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_executed_at_price_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.order_executed_at_price_size_message, buffer(offset, 0))
    local index = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_executed_at_price_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_executed_message = {}

-- Size: Order Executed Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_executed_message.size =
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_offset.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.executed_quantity.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.execution_id.size

-- Display: Order Executed Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary
  index, executed_quantity = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.executed_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.order_executed_message, buffer(offset, 0))
    local index = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Flags
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_flags = {}

-- Size: Add Flags
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_flags.size = 1

-- Display: Add Flags
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Aon flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Aon"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Add Flags
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_flags.bits = function(range, value, packet, parent)

  -- Unused 3: 3 Bit
  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.unused_3, range, value)

  -- Aon: 1 Bit Enum with 2 values
  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.aon, range, value)

  -- Unused 4: 4 Bit
  parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.unused_4, range, value)
end

-- Dissect: Add Flags
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.add_flags, range, display)

  if show.structs then
    cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Add Order Expanded Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_order_expanded_message = {}

-- Size: Add Order Expanded Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_order_expanded_message.size =
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_offset.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.side_indicator.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.quantity_long.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.symbol_long.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_long.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_flags.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.participant_id.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.customer_indicator.size

-- Display: Add Order Expanded Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_order_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Expanded Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_order_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.quantity_long.dissect(buffer, index, packet, parent)

  -- Symbol Long: Printable ASCII
  index, symbol_long = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.symbol_long.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_long.dissect(buffer, index, packet, parent)

  -- Add Flags: Struct of 3 fields
  index, add_flags = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_flags.dissect(buffer, index, packet, parent)

  -- Participant Id: Alphanumeric
  index, participant_id = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.participant_id.dissect(buffer, index, packet, parent)

  -- Customer Indicator: Alphanumeric
  index, customer_indicator = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.customer_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Expanded Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_order_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.add_order_expanded_message, buffer(offset, 0))
    local index = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_order_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_order_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_order_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_order_short_message = {}

-- Size: Add Order Short Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_order_short_message.size =
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_offset.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.side_indicator.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.quantity_short.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.symbol_short.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_short.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_flags.size

-- Display: Add Order Short Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.quantity_short.dissect(buffer, index, packet, parent)

  -- Symbol Short: Printable ASCII
  index, symbol_short = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.symbol_short.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_short.dissect(buffer, index, packet, parent)

  -- Add Flags: Struct of 3 fields
  index, add_flags = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.add_order_short_message, buffer(offset, 0))
    local index = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_order_long_message = {}

-- Size: Add Order Long Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_order_long_message.size =
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_offset.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.side_indicator.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.quantity_long.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.symbol_short.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_long.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_flags.size

-- Display: Add Order Long Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.quantity_long.dissect(buffer, index, packet, parent)

  -- Symbol Short: Printable ASCII
  index, symbol_short = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.symbol_short.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.price_long.dissect(buffer, index, packet, parent)

  -- Add Flags: Struct of 3 fields
  index, add_flags = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.add_order_long_message, buffer(offset, 0))
    local index = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.unit_clear_message = {}

-- Size: Unit Clear Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.unit_clear_message.size =
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_offset.size

-- Display: Unit Clear Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_message = {}

-- Size: Time Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_message.size =
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time.size

-- Display: Time Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time.dissect(buffer, index, packet, parent)

  -- Store Time Value
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time.current = time

  if not packet.visited then
    cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.conversation.current.time.last = time
  end

  return index
end

-- Dissect: Time Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.time_message, buffer(offset, 0))
    local index = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.payload = {}

-- Dissect: Payload
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.unit_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Message
  if message_type == 0x21 then
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Message
  if message_type == 0x22 then
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Expanded Message
  if message_type == 0x2F then
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.add_order_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 0x23 then
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.order_executed_at_price_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reduce_size_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.reduce_size_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Long Message
  if message_type == 0x27 then
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.modify_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Short Message
  if message_type == 0x28 then
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.modify_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 0x29 then
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Long Message
  if message_type == 0x2A then
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Short Message
  if message_type == 0x2B then
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Expanded Message
  if message_type == 0x30 then
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == 0x2C then
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.end_of_session_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Update Message
  if message_type == 0x95 then
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if message_type == 0x96 then
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.auction_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retail Price Improvement Message
  if message_type == 0x98 then
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.retail_price_improvement_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message_header = {}

-- Size: Message Header
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message_header.size =
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message_length.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message_type.size

-- Display: Message Header
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 21 values
  index, message_type = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.message_header, buffer(offset, 0))
    local index = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message = {}

-- Read runtime size of: Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 21 branches
  index = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.message, buffer(offset, 0))
    local current = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.heartbeat = {}

-- Display: Heartbeat
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.messages = {}

-- Dissect: Messages
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.messages.dissect = function(buffer, offset, packet, parent, count)
  -- Dissect Heartbeat
  if count == 0 then
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.heartbeat.dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.packet_header = {}

-- Size: Packet Header
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.packet_header.size =
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.length.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.count.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.unit.size + 
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.sequence.size

-- Display: Packet Header
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.fields.packet_header, buffer(offset, 0))
    local index = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.packet = {}

-- Verify required size of Udp packet
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.packet_header.size
end

-- Dissect Packet
cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.conversation.data(packet)
  if not packet.visited then
    data.time.frames[packet.number] = data.time.last
  end
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time.current = data.time.frames[packet.number]
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Count
  local count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.messages.dissect(buffer, index, packet, parent, count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.init()
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.time.current = nil
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.conversation.current = nil
  cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.conversation.flows = {}
end

-- Dissector for Cboe EdgxEquities MulticastDepthOfBook Pitch 2.41.66
function omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66, buffer(), omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.description, "("..buffer:len().." Bytes)")
  return cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe EdgxEquities MulticastDepthOfBook Pitch 2.41.66 (Udp)
local function omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66
  omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe EdgxEquities MulticastDepthOfBook Pitch 2.41.66
omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66:register_heuristic("udp", omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66_udp_heuristic)

-- Register Cboe EdgxEquities MulticastDepthOfBook Pitch 2.41.66 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_cboe_edgxequities_multicastdepthofbook_pitch_v2_41_66)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 2.41.66
--   Date: Wednesday, April 1, 2026
--   Specification: US_EQUITIES_OPTIONS_MULTICAST_PITCH_SPECIFICATION.pdf
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
