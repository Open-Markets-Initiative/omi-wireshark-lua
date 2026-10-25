-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe CfeFutures OofMulticastDepthOfBook Pitch 1.0.8 Protocol
local omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8 = Proto("Omi.Cboe.CfeFutures.OofMulticastDepthOfBook.Pitch.v1.0.8", "Cboe CfeFutures OofMulticastDepthOfBook Pitch 1.0.8")

-- Protocol table
local cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe CfeFutures OofMulticastDepthOfBook Pitch 1.0.8 Fields
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.block_volume = ProtoField.new("Block Volume", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.blockvolume", ftypes.UINT32, nil, nil, nil, "Total number of block contracts traded for the day.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.call_put_indicator = ProtoField.new("Call Put Indicator", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.callputindicator", ftypes.STRING, nil, nil, nil, "C = Call P = Put")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.canceled_quantity_long = ProtoField.new("Canceled Quantity Long", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.canceledquantitylong", ftypes.UINT32, nil, nil, nil, "Number of contracts canceled.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.canceled_quantity_short = ProtoField.new("Canceled Quantity Short", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.canceledquantityshort", ftypes.UINT16, nil, nil, nil, "Number of contracts canceled.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.close_price = ProtoField.new("Close Price", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.closeprice", ftypes.DOUBLE, nil, nil, nil, "The last trade on the day (in any session) will set the Close Price for the day (valid only if Total Volume > 0). Block trades (Trade Condition = B or E) do not update Close Price.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.complex_instrument_id = ProtoField.new("Complex Instrument Id", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.complexinstrumentid", ftypes.STRING, nil, nil, nil, "Complex Instrument Id. Six character, base 62.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.complex_instrument_type = ProtoField.new("Complex Instrument Type", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.complexinstrumenttype", ftypes.STRING, nil, nil, nil, "4 character field; each field describes a characteristic. Character 1: Complex Option Type O = All legs are options Characters 2-4: Reserved")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.complex_instrument_underlying = ProtoField.new("Complex Instrument Underlying", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.complexinstrumentunderlying", ftypes.STRING, nil, nil, nil, "Complex Instrument Underlying right padded with spaces.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.ecrp_volume = ProtoField.new("Ecrp Volume", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.ecrpvolume", ftypes.UINT32, nil, nil, nil, "Always zero.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.epoch_time = ProtoField.new("Epoch Time", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.epochtime", ftypes.UINT32, nil, nil, nil, "Number of whole seconds since the Epoch (Midnight January 1, 1970 UTC).")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.executed_quantity = ProtoField.new("Executed Quantity", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.executedquantity", ftypes.UINT32, nil, nil, nil, "Number of contracts executed.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.execution_id = ProtoField.new("Execution Id", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.executionid", ftypes.UINT64, nil, nil, nil, "CFE generated day-unique execution identifier of this execution. Execution Id is also referenced in the Trade Break message.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.feedsymbol", ftypes.STRING, nil, nil, nil, "Option symbol. Six character, base 62.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.futures_expiration = ProtoField.new("Futures Expiration", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.futuresexpiration", ftypes.UINT32, nil, nil, nil, "Underlying futures contract expiration date.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.futures_product = ProtoField.new("Futures Product", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.futuresproduct", ftypes.STRING, nil, nil, nil, "Underlying futures contract product name.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.futures_symbol = ProtoField.new("Futures Symbol", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.futuressymbol", ftypes.STRING, nil, nil, nil, "Underlying Cboe-formatted futures contract symbol. Six character, base 62.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.high_price = ProtoField.new("High Price", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.highprice", ftypes.DOUBLE, nil, nil, nil, "The higher of highest bid price and highest trade price for the day. Block trades (Trade Condition = B or E) do not update High Price.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.high_price_is_bid = ProtoField.new("High Price Is Bid", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.highpriceisbid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02, "Set if High Price was set by the highest bid (rather than a trade).")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.high_price_valid = ProtoField.new("High Price Valid", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.highpricevalid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01, "Set if High Price is a valid value.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.issue = ProtoField.new("Issue", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.issue", ftypes.STRING, nil, nil, nil, "I = Indicative Settlement S = Initial Settlement R = Re-issued Settlement")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.leg_count = ProtoField.new("Leg Count", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.legcount", ftypes.UINT8, nil, nil, nil, "The number of legs in the complex instrument. The maximum number of legs is 16.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.leg_ratio = ProtoField.new("Leg Ratio", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.legratio", ftypes.INT32, nil, nil, nil, "Leg ratio (positive for buy-side, negative for sell-side). For options this is the number of contracts, for equities this is the number of shares.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.leg_security_type = ProtoField.new("Leg Security Type", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.legsecuritytype", ftypes.STRING, nil, nil, nil, "O = Leg is an Option instrument")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.leg_symbol = ProtoField.new("Leg Symbol", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.legsymbol", ftypes.STRING, nil, nil, nil, "Option Symbol of leg. Six character, base 62.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.length = ProtoField.new("Length", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.length", ftypes.UINT16, nil, nil, nil, "Length of entire block of messages. Includes this header and Message Count messages to follow")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.low_price = ProtoField.new("Low Price", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.lowprice", ftypes.DOUBLE, nil, nil, nil, "The lower of lowest offer price and lowest trade price for the day. Block trades (Trade Condition = B or E) do not update Low Price.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.low_price_is_offer = ProtoField.new("Low Price Is Offer", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.lowpriceisoffer", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08, "Set if Low Price was set by the lowest offer (rather than a trade).")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.low_price_valid = ProtoField.new("Low Price Valid", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.lowpricevalid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04, "Set if Low Price is a valid value.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.message_count = ProtoField.new("Message Count", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.messagecount", ftypes.UINT8, nil, nil, nil, "Number of messages to follow this header")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.message_length = ProtoField.new("Message Length", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.messagelength", ftypes.UINT8, nil, nil, nil, "Current Pitch message length")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.message_type = ProtoField.new("Message Type", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying this message type")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.midnight_reference = ProtoField.new("Midnight Reference", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.midnightreference", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Midnight Central Time reference time for subsequent Time messages, expressed as number of whole seconds since the Epoch (Midnight January 1, 1970 UTC).")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.midnight_reference_utc = ProtoField.new("Midnight Reference", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.midnightreference.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Midnight Central Time reference time for subsequent Time messages, expressed as number of whole seconds since the Epoch (Midnight January 1, 1970 UTC).")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.open_close_valid = ProtoField.new("Open Close Valid", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.openclosevalid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10, "Set if both Open Price and Close Price fields contain valid values.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.open_interest = ProtoField.new("Open Interest", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.openinterest", ftypes.UINT32, nil, nil, nil, "Prior Trade Date Open Interest for this symbol.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.open_price = ProtoField.new("Open Price", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.openprice", ftypes.DOUBLE, nil, nil, nil, "The first trade on the day (in any session) will set the Open Price for the day (valid only if Total Volume > 0). Block trades (Trade Condition = B or E) do not update Open Price.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.option_leg = ProtoField.new("Option Leg", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.optionleg", ftypes.STRING, nil, nil, nil, "The following fields repeat Leg Count times for multi-leg strategies. Leg Index is zero-based.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.options_expiration = ProtoField.new("Options Expiration", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.optionsexpiration", ftypes.UINT32, nil, nil, nil, "Options contract expiration date.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.options_on_futures_name = ProtoField.new("Options On Futures Name", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.optionsonfuturesname", ftypes.STRING, nil, nil, nil, "Textual symbol description comprising options product symbol, underlying futures expiration, put/call and the option strike price with two digits to the right of the decimal point. For example \"UX1A/X4 C2000\" represents the 20.00 strike Call option on the UX1A product with underlying futures expiration X4\".")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.order_id = ProtoField.new("Order Id", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.orderid", ftypes.UINT64, nil, nil, nil, "Day-specific identifier assigned to this order.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.price_long = ProtoField.new("Price Long", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.pricelong", ftypes.DOUBLE, nil, nil, nil, "The limit order price.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.price_short = ProtoField.new("Price Short", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.priceshort", ftypes.DOUBLE, nil, nil, nil, "The limit order price.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.quantity_long = ProtoField.new("Quantity Long", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.quantitylong", ftypes.UINT32, nil, nil, nil, "Number of contracts being added to the book (may be less than the number entered).")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.quantityshort", ftypes.UINT16, nil, nil, nil, "Number of contracts being added to the book (may be less than the number entered).")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.reserved = ProtoField.new("Reserved", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.reserved", ftypes.UINT8, nil, base.DEC, 0xE0)
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.reserved2", ftypes.UINT16, nil, nil, nil, "Reserved")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.reserved_3 = ProtoField.new("Reserved 3", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.reserved3", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.sequence = ProtoField.new("Sequence", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.sequence", ftypes.UINT32, nil, nil, nil, "Sequence Number of the first message to follow this header")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.settlement_price = ProtoField.new("Settlement Price", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.settlementprice", ftypes.DOUBLE)
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.sideindicator", ftypes.STRING, nil, nil, nil, "B = Buy Order S = Sell Order")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.strike_price = ProtoField.new("Strike Price", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.strikeprice", ftypes.DOUBLE, nil, nil, nil, "Option contract strike price.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.summary_flags = ProtoField.new("Summary Flags", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.summaryflags", ftypes.STRING, nil, nil, nil, "Summary Flags bitfields")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.symbol = ProtoField.new("Symbol", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.symbol", ftypes.STRING, nil, nil, nil, "Six character, base 62.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.symbolcondition", ftypes.STRING, nil, nil, nil, "N = Normal C = Closing Only")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.time_offset = ProtoField.new("Time Offset", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.timeoffset", ftypes.UINT32, nil, nil, nil, "Nanosecond offset from last unit timestamp.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.time_reference = ProtoField.new("Time Reference", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.timereference", ftypes.UINT32, nil, nil, nil, "Number of whole seconds elapsed since the start of the current Central Time calendar day, derived by converting the current Central wall clock time (HH:MM:SS) to seconds. On Daylight Saving Time transition days, Time reflects wall clock seconds and does not adjust for the UTC offset change. On a DST spring- forward day, the maximum value will be 82,799 (23 hours). On a DST fall-back day, values between 3,600 and 7,199 will appear twice. Recipients requiring unambiguous absolute timestamps should use Epoch Time (where available) or Midnight Reference in the Time Reference message.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.total_volume = ProtoField.new("Total Volume", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.totalvolume", ftypes.UINT32, nil, nil, nil, "Total number of contracts traded for the day, including block trades.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.tradecondition", ftypes.STRING, nil, nil, nil, "(Space) = Normal trade O = Opening trade1 S = Spread trade1 1Sent for simple (non-spread) symbols only.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.trade_date = ProtoField.new("Trade Date", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.tradedate", ftypes.UINT32, nil, nil, nil, "Current Trade Date")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.trading_status = ProtoField.new("Trading Status", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.tradingstatus", ftypes.STRING, nil, nil, nil, "H = Halted Q = Queuing T = Trading")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.unit = ProtoField.new("Unit", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.unit", ftypes.UINT8, nil, nil, nil, "Unit that applies to messages included in this header")

-- Cboe CfeFutures OofMulticastDepthOfBook Pitch 1.0.8 Framing
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.message = ProtoField.new("Message", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.message", ftypes.STRING)
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.message_header = ProtoField.new("Message Header", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.messageheader", ftypes.STRING)
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.packet = ProtoField.new("Packet", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.packet", ftypes.STRING, nil, nil, nil, "Pitch Udp Packet")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.packet_header = ProtoField.new("Packet Header", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.packetheader", ftypes.STRING)

-- Cboe CfeFutures OofMulticastDepthOfBook 1.0.8 Application Messages
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.addorderlongmessage", ftypes.STRING, nil, nil, nil, "An Add Order message represents a newly accepted visible order on the CFE book. It includes a day- specific Order Id assigned by CFE to the order.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.addordershortmessage", ftypes.STRING, nil, nil, nil, "An Add Order message represents a newly accepted visible order on the CFE book. It includes a day- specific Order Id assigned by CFE to the order.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.complex_instrument_definition_expanded_message = ProtoField.new("Complex Instrument Definition Expanded Message", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.complexinstrumentdefinitionexpandedmessage", ftypes.STRING, nil, nil, nil, "A Complex Instrument Definition Expanded message represents a complex instrument that is available to place orders. This message can be sent either as a sequenced message or as an unsequenced message. It is sent as a sequenced message at system startup upon the beginning of a trading session or if an instrument is created or modified during a trading day. A new sequenced message may also be sent for a symbol that does not visibly change any attribute. A continuous loop of unsequenced symbol mapping messages (sequence = 0) is sent throughout the day at variable rates as bandwidth allows. The Time Offset field should be ignored on unsequenced messages. The Complex Instrument Definition Expanded message will contain two or more repeating groups of leg definitions. There is a limit of 16 leg definitions. Complex Instrument Definition Expanded messages are included in a spin response.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.delete_order_message = ProtoField.new("Delete Order Message", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.deleteordermessage", ftypes.STRING, nil, nil, nil, "The Delete Order message is sent whenever a booked order is cancelled or leaves the order book. The Order Id refers to the Order Id of the original Add Order message. An order that is deleted from the book may return to the book later under certain circumstances. Therefore, a Delete Order message does not indicate that a given Order Id will not be sent again on a subsequent Add Order message.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.end_of_day_summary_message = ProtoField.new("End Of Day Summary Message", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.endofdaysummarymessage", ftypes.STRING, nil, nil, nil, "The End of Day Summary message is sent out right after trading ends for a symbol. No more markdate data update messages will follow an End of Day Summary message for a particular symbol. A value of zero in the Total Volume field means that no volume traded on that symbol for the day. The Total Volume field reflects all contracts traded during the day. Block trades are included in the Total Volume field, but they are also reported separately to provide more detail. The Summary Flags field provides additional information on how to interpret the High Price and Low Price fields, especially in instruments that had no volume for the day and/or where 0 is a valid price (e.g. complex instruments). There are flags that indicate whether or not the High Price and Low Price fields are valid. If they are not valid, then there was no High (and/or Low) Price for the day. There are also flags that indicate whether the High Price was set by the highest bid and the Low Price was set by the lowest offer rather than a trade. All End of Day Summary message values will span the full trading day, including all extended hours trading and all trading segments.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.endofsessionmessage", ftypes.STRING, nil, nil, nil, "The End of Session message is sent for each unit when the unit shuts down. No more sequenced messages will be delivered for this unit, but heartbeats from the unit may be received.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.modify_order_long_message = ProtoField.new("Modify Order Long Message", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.modifyorderlongmessage", ftypes.STRING, nil, nil, nil, "The Modify Order message is sent whenever an open order is visibly modified. The Order Id refers to the Order Id of the original Add Order message. Note that Modify Order messages that appear to be \"no ops\" (i.e. they do not appear to modify any relevant fields) will still lose priority.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.modify_order_short_message = ProtoField.new("Modify Order Short Message", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.modifyordershortmessage", ftypes.STRING, nil, nil, nil, "The Modify Order message is sent whenever an open order is visibly modified. The Order Id refers to the Order Id of the original Add Order message. Note that Modify Order messages that appear to be \"no ops\" (i.e. they do not appear to modify any relevant fields) will still lose priority.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.oof_symbol_mapping_message = ProtoField.new("Oof Symbol Mapping Message", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.oofsymbolmappingmessage", ftypes.STRING, nil, nil, nil, "An OOF Symbol Mapping message is used to map the 6 character multicast feed symbol field and options on futures name to the option contract and future underlying. The option contract is comprised of the strike price, put/call flag, options expiration date, and future underlying. The future underlying is comprised of the futures product and futures expiration date, which map to a futures symbol. This message can be sent either as a sequenced message or as an unsequenced message. It is sent as a sequenced message at system startup upon the beginning of a trading session or if an instrument is created or modified during a trading day. A new sequenced message may also be sent for a symbol that does not visibly change any attribute. A continuous loop of unsequenced symbol mapping messages (sequence = 0) is sent throughout the day at variable rates as bandwidth allows. The Time Offset field should be ignored on unsequenced messages. OOF Symbol Mapping messages are included in a spin response and will be disseminated before Complex Instrument Definition Expanded messages.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.orderexecutedmessage", ftypes.STRING, nil, nil, nil, "Order Executed messages are sent when an order on the CFE book is executed in whole or in part. The execution price equals the limit order price found in the original Add Order message or the limit order price in the latest Modify Order message referencing the Order Id.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.reduce_size_long_message = ProtoField.new("Reduce Size Long Message", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.reducesizelongmessage", ftypes.STRING, nil, nil, nil, "Reduce Size messages are sent when a visible order on the CFE book is partially reduced.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.reduce_size_short_message = ProtoField.new("Reduce Size Short Message", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.reducesizeshortmessage", ftypes.STRING, nil, nil, nil, "Reduce Size messages are sent when a visible order on the CFE book is partially reduced.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.settlement_message = ProtoField.new("Settlement Message", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.settlementmessage", ftypes.STRING, nil, nil, nil, "Settlement messages are used to provide information concerning indicative, approved, or corrected daily and final settlement prices for CFE products. An indicative daily settlement price (Issue = I) is calculated by the system and sent immediately after an instrument closes trading but before the settlement price is approved. An approved settlement price (Issue = S) is sent once the CFE Trade Desk approves a settlement price for an instrument. If there is an error in the approved settlement price, then it may be re-issued (Issue = R).")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.time_message = ProtoField.new("Time Message", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.timemessage", ftypes.STRING, nil, nil, nil, "A Time message is immediately generated and sent when there is a PITCH event for a given clock second. If there is no PITCH event for a given clock second, then no Time message is sent for that second. All subsequent Time Offset fields for the same unit will use the new Time message value as the base until another Time message is received for the same unit. The Time field is the number of seconds relative to midnight Central Time, which is provided in the Time Reference message. The Time message also includes the Epoch Time field, which is the current time represented as the number of whole seconds since the Epoch (Midnight January 1, 1970).")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.time_reference_message = ProtoField.new("Time Reference Message", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.timereferencemessage", ftypes.STRING, nil, nil, nil, "The Time Reference message is used to provide a midnight reference point for recipients of the feed. It is sent whenever the system starts up and when the system crosses a midnight boundary. All subsequent Time messages for the same unit will the use the last Midnight Reference until another Time Reference message is received for that unit. The Time Reference message includes the Trade Date, so most other sequenced messages will not include that information. Time Reference messages will be included in a spin response.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.tradebreakmessage", ftypes.STRING, nil, nil, nil, "The Trade Break message is sent whenever an execution on CFE is broken. Trade breaks are rare and only affect applications that rely upon CFE execution-based data. A Trade Break message followed immediately be a new Trade message with the same Execution Id indicates that a trade correction has occurred. Applications that simply build a CFE book can ignore Trade Break messages.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.tradelongmessage", ftypes.STRING, nil, nil, nil, "The Trade message provides information about executions that occur off of the CFE book (such as Block trades). Trade messages are necessary to calculate CFE execution data. Trade messages do not alter the book and can be ignored if messages are being used solely to build a book. The Order Id sent in a Trade message is obfuscated and will not tie back to any real Order Id sent back via a FIX or BOE order entry session.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.tradeshortmessage", ftypes.STRING, nil, nil, nil, "The Trade message provides information about executions that occur off of the CFE book (such as Block trades). Trade messages are necessary to calculate CFE execution data. Trade messages do not alter the book and can be ignored if messages are being used solely to build a book. The Order Id sent in a Trade message is obfuscated and will not tie back to any real Order Id sent back via a FIX or BOE order entry session.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.tradingstatusmessage", ftypes.STRING, nil, nil, nil, "The Trading Status message is used to indicate the current trading status of a symbol. A Trading Status message will be sent for all symbols as they transition through various trading states. If a Trading Status message has not been received for a symbol, then the Trading Status for the symbol should be assumed to be H = Halted. The following summarizes the Trading Status values for options in the CFE system: H = Halted state. This state is used for Supervisory Halts initiated by the Trade Desk. Orders are not being accepted in this state. Q = Queuing state. This state is used when orders are being accepted for queuing. The Queuing state is used during the pre-open for all symbols. It is also used for spread instruments that may not be tradeable due to Threshold Width. T = Trading state. This state is used when the symbol is available for trading. CFE will send a Trading Status of Q once orders can be accepted for queuing in preparation for the open. At or after the opening time, CFE will send a Trading Status of T as symbols are opened for trading. Once trading is done for the day CFE will send a Trading Status of H indicating the symbol is Halted.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.transaction_begin_message = ProtoField.new("Transaction Begin Message", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.transactionbeginmessage", ftypes.STRING, nil, nil, nil, "The Transaction Begin message indicates any subsequent messages, up to the accompanying Transaction End message, are all part of the same transaction block. One example of where this might be used is when a single aggressive order executes against several resting orders. All PITCH messages corresponding to such an event would be included between a Transaction Begin message and Transaction End message. It is important to note that any PITCH Message Type may be included in a transaction block and there is no guarantee that the messages apply to the same price level or even the same Symbol. Transaction Begin messages do not alter the book and can be ignored if messages are being used solely to build a book. Feed processors can use a transaction block as a trigger to postpone publishing a quote update until the end of the transaction block. In the prior example of a single aggressive order executing against multiple resting orders, a top of book feed would be able to publish a single trade message and quote update resulting from multiple Order Executed messages once it finished processing all of the messages within the transaction block.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.transaction_end_message = ProtoField.new("Transaction End Message", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.transactionendmessage", ftypes.STRING, nil, nil, nil, "The Transaction End message indicates that a transaction indicated by a previous Transaction Begin message has completed. Transaction End messages do not alter the book and can be ignored if messages are being used solely to build a book.")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.unitclearmessage", ftypes.STRING, nil, nil, nil, "The Unit Clear message instructs feed recipients to clear all orders for the CFE book in the unit specified in the Sequenced Unit Header message header. It would be distributed in rare recovery events such as a data center fail-over.")

-- Cboe CfeFutures OofMulticastDepthOfBook Pitch 1.0.8 Generated Fields
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.message_index = ProtoField.new("Message Index", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.messageindex", ftypes.UINT16)
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.option_leg_index = ProtoField.new("Option Leg Index", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.optionlegindex", ftypes.UINT16)
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.messagesequencenumber", ftypes.UINT64)
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.timestamp = ProtoField.new("Timestamp", "cboe.cfefutures.oofmulticastdepthofbook.pitch.v1.0.8.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Cboe CfeFutures OofMulticastDepthOfBook Pitch 1.0.8 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.absolute_time_base = 0

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.format_timestamp = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe CfeFutures OofMulticastDepthOfBook Pitch 1.0.8 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.repeating_groups = true
show.indexes = true
show.sequences = true

-- Register Cboe CfeFutures OofMulticastDepthOfBook Pitch 1.0.8 Show Options
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.prefs.show_application_messages then
    show.application_messages = omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.prefs.show_headers then
    show.headers = omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.prefs.show_headers
  end
  if show.repeating_groups ~= omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.prefs.show_repeating_groups then
    show.repeating_groups = omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.prefs.show_repeating_groups
  end
  if show.structs ~= omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.prefs.show_structs then
    show.structs = omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.prefs.show_indexes then
    show.indexes = omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.prefs.show_indexes
  end
  if show.sequences ~= omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.prefs.show_sequences then
    show.sequences = omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.prefs.show_sequences
  end
  if cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.format_timestamp ~= omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.prefs.format_timestamp then
    cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.format_timestamp = omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.prefs.format_timestamp
  end
  if cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.absolute_time_base ~= omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.prefs.absolute_time_base then
    cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.absolute_time_base = omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.conversation = {}
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.conversation.data = function(packet)
  local key = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.conversation.key(packet)
  local data = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.conversation.flows[key]
  if data == nil then
    data = { midnight_reference = { last = nil, frames = {} }, time_reference = { last = nil, frames = {} } }
    cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.conversation.current = nil


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
-- Cboe CfeFutures OofMulticastDepthOfBook Pitch 1.0.8 Fields
-----------------------------------------------------------------------

-- Block Volume
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.block_volume = {}

-- Size: Block Volume
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.block_volume.size = 4

-- Display: Block Volume
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.block_volume.display = function(value)
  return "Block Volume: "..value
end

-- Dissect: Block Volume
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.block_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.block_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.block_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.block_volume, range, value, display)

  return offset + length, value
end

-- Call Put Indicator
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.call_put_indicator = {}

-- Size: Call Put Indicator
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.call_put_indicator.size = 1

-- Display: Call Put Indicator
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.call_put_indicator.labels = {
  ["C"] = "Call Put Indicator: Call (C)",
  ["P"] = "Call Put Indicator: Put (P)",
}

cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.call_put_indicator.display = function(value)
  return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.call_put_indicator.labels[value] or "Call Put Indicator: Unknown("..value..")"
end

-- Dissect: Call Put Indicator
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.call_put_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.call_put_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.call_put_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.call_put_indicator, range, value, display)

  return offset + length, value
end

-- Canceled Quantity Long
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.canceled_quantity_long = {}

-- Size: Canceled Quantity Long
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.canceled_quantity_long.size = 4

-- Display: Canceled Quantity Long
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.canceled_quantity_long.display = function(value)
  return "Canceled Quantity Long: "..value
end

-- Dissect: Canceled Quantity Long
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.canceled_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.canceled_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.canceled_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.canceled_quantity_long, range, value, display)

  return offset + length, value
end

-- Canceled Quantity Short
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.canceled_quantity_short = {}

-- Size: Canceled Quantity Short
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.canceled_quantity_short.size = 2

-- Display: Canceled Quantity Short
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.canceled_quantity_short.display = function(value)
  return "Canceled Quantity Short: "..value
end

-- Dissect: Canceled Quantity Short
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.canceled_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.canceled_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.canceled_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.canceled_quantity_short, range, value, display)

  return offset + length, value
end

-- Close Price
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.close_price = {}

-- Size: Close Price
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.close_price.size = 8

-- Display: Close Price
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.close_price.display = function(value)
  return "Close Price: "..value
end

-- Translate: Close Price
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.close_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Close Price
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.close_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.close_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.close_price.translate(raw)
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.close_price, range, value, display)

  return offset + length, value
end

-- Complex Instrument Id
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_id = {}

-- Size: Complex Instrument Id
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_id.size = 6

-- Display: Complex Instrument Id
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_id.display = function(value)
  return "Complex Instrument Id: "..value
end

-- Dissect: Complex Instrument Id
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.complex_instrument_id, range, value, display)

  return offset + length, value
end

-- Complex Instrument Type
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_type = {}

-- Size: Complex Instrument Type
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_type.size = 4

-- Display: Complex Instrument Type
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_type.display = function(value)
  return "Complex Instrument Type: "..value
end

-- Dissect: Complex Instrument Type
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.complex_instrument_type, range, value, display)

  return offset + length, value
end

-- Complex Instrument Underlying
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_underlying = {}

-- Size: Complex Instrument Underlying
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_underlying.size = 8

-- Display: Complex Instrument Underlying
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_underlying.display = function(value)
  return "Complex Instrument Underlying: "..value
end

-- Dissect: Complex Instrument Underlying
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_underlying.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_underlying.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.complex_instrument_underlying, range, value, display)

  return offset + length, value
end

-- Ecrp Volume
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.ecrp_volume = {}

-- Size: Ecrp Volume
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.ecrp_volume.size = 4

-- Display: Ecrp Volume
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.ecrp_volume.display = function(value)
  return "Ecrp Volume: "..value
end

-- Dissect: Ecrp Volume
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.ecrp_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.ecrp_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.ecrp_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.ecrp_volume, range, value, display)

  return offset + length, value
end

-- Epoch Time
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.epoch_time = {}

-- Size: Epoch Time
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.epoch_time.size = 4

-- Display: Epoch Time
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.epoch_time.display = function(value)
  return "Epoch Time: "..value
end

-- Dissect: Epoch Time
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.epoch_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.epoch_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.epoch_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.epoch_time, range, value, display)

  return offset + length, value
end

-- Executed Quantity
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.executed_quantity = {}

-- Size: Executed Quantity
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.executed_quantity.size = 4

-- Display: Executed Quantity
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.execution_id = {}

-- Size: Execution Id
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.execution_id.size = 8

-- Display: Execution Id
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Feed Symbol
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.feed_symbol = {}

-- Size: Feed Symbol
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.feed_symbol.size = 6

-- Display: Feed Symbol
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.feed_symbol.display = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.feed_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.feed_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.feed_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Futures Expiration
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.futures_expiration = {}

-- Size: Futures Expiration
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.futures_expiration.size = 4

-- Display: Futures Expiration
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.futures_expiration.display = function(value)
  return "Futures Expiration: "..value
end

-- Dissect: Futures Expiration
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.futures_expiration.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.futures_expiration.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.futures_expiration.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.futures_expiration, range, value, display)

  return offset + length, value
end

-- Futures Product
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.futures_product = {}

-- Size: Futures Product
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.futures_product.size = 8

-- Display: Futures Product
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.futures_product.display = function(value)
  return "Futures Product: "..value
end

-- Dissect: Futures Product
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.futures_product.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.futures_product.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.futures_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.futures_product, range, value, display)

  return offset + length, value
end

-- Futures Symbol
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.futures_symbol = {}

-- Size: Futures Symbol
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.futures_symbol.size = 6

-- Display: Futures Symbol
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.futures_symbol.display = function(value)
  return "Futures Symbol: "..value
end

-- Dissect: Futures Symbol
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.futures_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.futures_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.futures_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.futures_symbol, range, value, display)

  return offset + length, value
end

-- High Price
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.high_price = {}

-- Size: High Price
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.high_price.size = 8

-- Display: High Price
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.high_price.display = function(value)
  return "High Price: "..value
end

-- Translate: High Price
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.high_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: High Price
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.high_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.high_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.high_price.translate(raw)
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.high_price, range, value, display)

  return offset + length, value
end

-- Issue
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.issue = {}

-- Size: Issue
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.issue.size = 1

-- Display: Issue
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.issue.labels = {
  ["I"] = "Issue: Indicative Settlement (I)",
  ["S"] = "Issue: Initial Settlement (S)",
  ["R"] = "Issue: Reissued Settlement (R)",
}

cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.issue.display = function(value)
  return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.issue.labels[value] or "Issue: Unknown("..value..")"
end

-- Dissect: Issue
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.issue.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.issue.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.issue.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.issue, range, value, display)

  return offset + length, value
end

-- Leg Count
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_count = {}

-- Size: Leg Count
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_count.size = 1

-- Display: Leg Count
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_count.display = function(value)
  return "Leg Count: "..value
end

-- Dissect: Leg Count
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.leg_count, range, value, display)

  return offset + length, value
end

-- Leg Ratio
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_ratio = {}

-- Size: Leg Ratio
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_ratio.size = 4

-- Display: Leg Ratio
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Security Type
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_security_type = {}

-- Size: Leg Security Type
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_security_type.size = 1

-- Display: Leg Security Type
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_security_type.labels = {
  ["O"] = "Leg Security Type: Leg Is An Option Instrument (O)",
}

cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_security_type.display = function(value)
  return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_security_type.labels[value] or "Leg Security Type: Unknown("..value..")"
end

-- Dissect: Leg Security Type
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_security_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Leg Symbol
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_symbol = {}

-- Size: Leg Symbol
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_symbol.size = 8

-- Display: Leg Symbol
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_symbol.display = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Length
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.length = {}

-- Size: Length
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.length.size = 2

-- Display: Length
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.length, range, value, display)

  return offset + length, value
end

-- Low Price
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.low_price = {}

-- Size: Low Price
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.low_price.size = 8

-- Display: Low Price
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.low_price.display = function(value)
  return "Low Price: "..value
end

-- Translate: Low Price
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.low_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Low Price
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.low_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.low_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.low_price.translate(raw)
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.low_price, range, value, display)

  return offset + length, value
end

-- Message Count
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_count = {}

-- Size: Message Count
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_count.size = 1

-- Display: Message Count
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_length = {}

-- Size: Message Length
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_length.size = 1

-- Display: Message Length
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_type = {}

-- Size: Message Type
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_type.size = 1

-- Display: Message Type
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_type.labels = {
  [0xB1] = "Message Type: Time Reference Message (0xB1)",
  [0x20] = "Message Type: Time Message (0x20)",
  [0x97] = "Message Type: Unit Clear Message (0x97)",
  [0xBC] = "Message Type: Transaction Begin Message (0xBC)",
  [0xBD] = "Message Type: Transaction End Message (0xBD)",
  [0xF9] = "Message Type: Oof Symbol Mapping Message (0xF9)",
  [0x9A] = "Message Type: Complex Instrument Definition Expanded Message (0x9A)",
  [0x31] = "Message Type: Trading Status Message (0x31)",
  [0x21] = "Message Type: Add Order Long Message (0x21)",
  [0x22] = "Message Type: Add Order Short Message (0x22)",
  [0x23] = "Message Type: Order Executed Message (0x23)",
  [0x25] = "Message Type: Reduce Size Long Message (0x25)",
  [0x26] = "Message Type: Reduce Size Short Message (0x26)",
  [0x27] = "Message Type: Modify Order Long Message (0x27)",
  [0x28] = "Message Type: Modify Order Short Message (0x28)",
  [0x29] = "Message Type: Delete Order Message (0x29)",
  [0x2A] = "Message Type: Trade Long Message (0x2A)",
  [0x2B] = "Message Type: Trade Short Message (0x2B)",
  [0x2C] = "Message Type: Trade Break Message (0x2C)",
  [0xB9] = "Message Type: Settlement Message (0xB9)",
  [0xBA] = "Message Type: End Of Day Summary Message (0xBA)",
  [0x2D] = "Message Type: End Of Session Message (0x2D)",
}

cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_type.display = function(value)
  return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_type.labels[value] or "Message Type: Unknown("..string.format("0x%02X", value)..")"
end

-- Dissect: Message Type
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.message_type, range, value, display)

  return offset + length, value
end

-- Midnight Reference
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.midnight_reference = {}

-- Size: Midnight Reference
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.midnight_reference.size = 4

-- Store: Midnight Reference
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.midnight_reference.current = nil

-- Generated: Midnight Reference
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.midnight_reference.generated = function(value, range, packet, parent)
  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.midnight_reference
  if cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.absolute_time_base == 1 then field = omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.midnight_reference_utc end
  local midnight_reference = parent:add(field, range, NSTime.new(value, 0))
  midnight_reference:set_generated()
end

-- Dissect: Midnight Reference
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.midnight_reference.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.midnight_reference.size
  local range = buffer(offset, length)
  local value = range:le_uint()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.midnight_reference
  if cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.absolute_time_base == 1 then field = omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.midnight_reference_utc end

  local seconds = value
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Open Interest
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.open_interest = {}

-- Size: Open Interest
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.open_interest.size = 4

-- Display: Open Interest
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.open_interest.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Open Price
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.open_price = {}

-- Size: Open Price
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.open_price.size = 8

-- Display: Open Price
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.open_price.display = function(value)
  return "Open Price: "..value
end

-- Translate: Open Price
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.open_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Open Price
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.open_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.open_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.open_price.translate(raw)
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.open_price, range, value, display)

  return offset + length, value
end

-- Options Expiration
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.options_expiration = {}

-- Size: Options Expiration
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.options_expiration.size = 4

-- Display: Options Expiration
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.options_expiration.display = function(value)
  return "Options Expiration: "..value
end

-- Dissect: Options Expiration
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.options_expiration.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.options_expiration.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.options_expiration.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.options_expiration, range, value, display)

  return offset + length, value
end

-- Options On Futures Name
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.options_on_futures_name = {}

-- Size: Options On Futures Name
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.options_on_futures_name.size = 16

-- Display: Options On Futures Name
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.options_on_futures_name.display = function(value)
  return "Options On Futures Name: "..value
end

-- Dissect: Options On Futures Name
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.options_on_futures_name.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.options_on_futures_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.options_on_futures_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.options_on_futures_name, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_id = {}

-- Size: Order Id
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_id.size = 8

-- Display: Order Id
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.order_id, range, value, display)

  return offset + length, value
end

-- Price Long
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.price_long = {}

-- Size: Price Long
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.price_long.size = 8

-- Display: Price Long
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.price_long.display = function(value)
  return "Price Long: "..value
end

-- Translate: Price Long
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.price_long.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price Long
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.price_long.translate(raw)
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.price_long, range, value, display)

  return offset + length, value
end

-- Price Short
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.price_short = {}

-- Size: Price Short
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.price_short.size = 2

-- Display: Price Short
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.price_short.display = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Price Short
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.price_short.translate(raw)
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.price_short, range, value, display)

  return offset + length, value
end

-- Quantity Long
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.quantity_long = {}

-- Size: Quantity Long
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.quantity_long.size = 4

-- Display: Quantity Long
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.quantity_long.display = function(value)
  return "Quantity Long: "..value
end

-- Dissect: Quantity Long
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.quantity_long, range, value, display)

  return offset + length, value
end

-- Quantity Short
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.quantity_short = {}

-- Size: Quantity Short
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.quantity_short.size = 2

-- Display: Quantity Short
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.quantity_short.display = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Reserved 2
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reserved_2 = {}

-- Size: Reserved 2
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reserved_2.size = 2

-- Display: Reserved 2
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reserved_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 3
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reserved_3 = {}

-- Size: Reserved 3
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reserved_3.size = 3

-- Display: Reserved 3
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reserved_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.sequence = {}

-- Size: Sequence
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.sequence.size = 4

-- Display: Sequence
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.sequence, range, value, display)

  return offset + length, value
end

-- Settlement Price
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.settlement_price = {}

-- Size: Settlement Price
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.settlement_price.size = 8

-- Display: Settlement Price
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.settlement_price.display = function(value)
  return "Settlement Price: "..value
end

-- Translate: Settlement Price
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.settlement_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Settlement Price
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.settlement_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.settlement_price.translate(raw)
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.side_indicator = {}

-- Size: Side Indicator
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.side_indicator.size = 1

-- Display: Side Indicator
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.side_indicator.labels = {
  ["B"] = "Side Indicator: Buy Order (B)",
  ["S"] = "Side Indicator: Sell Order (S)",
}

cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.side_indicator.display = function(value)
  return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.side_indicator.labels[value] or "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Strike Price
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.strike_price = {}

-- Size: Strike Price
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.strike_price.size = 8

-- Display: Strike Price
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.strike_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Strike Price
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.strike_price.translate(raw)
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.symbol = {}

-- Size: Symbol
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.symbol.size = 6

-- Display: Symbol
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Condition
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.symbol_condition = {}

-- Size: Symbol Condition
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.symbol_condition.size = 1

-- Display: Symbol Condition
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.symbol_condition.labels = {
  ["N"] = "Symbol Condition: Normal (N)",
  ["C"] = "Symbol Condition: Closing Only (C)",
}

cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.symbol_condition.display = function(value)
  return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.symbol_condition.labels[value] or "Symbol Condition: Unknown("..value..")"
end

-- Dissect: Symbol Condition
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.symbol_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.symbol_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.symbol_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.symbol_condition, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_offset = {}

-- Size: Time Offset
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_offset.size = 4

-- Display: Time Offset
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Time Reference
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_reference = {}

-- Size: Time Reference
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_reference.size = 4

-- Store: Time Reference
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_reference.current = nil

-- Generated: Time Reference
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_reference.generated = function(value, range, packet, parent)
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_reference.display(value)
  local time_reference = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.time_reference, range, value, display)
  time_reference:set_generated()
end

-- Display: Time Reference
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_reference.display = function(value)
  return "Time Reference: "..value
end

-- Dissect: Time Reference
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_reference.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_reference.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.time_reference, range, value, display)

  return offset + length, value
end

-- Total Volume
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.total_volume = {}

-- Size: Total Volume
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.total_volume.size = 4

-- Display: Total Volume
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.total_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Trade Condition
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_condition = {}

-- Size: Trade Condition
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_condition.size = 1

-- Display: Trade Condition
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_condition.display = function(value)
  if value == " " then
    return "Trade Condition: Normal Trade (<whitespace>)"
  end
  if value == "O" then
    return "Trade Condition: Opening Trade (O)"
  end
  if value == "S" then
    return "Trade Condition: Spread Trade (S)"
  end
  if value == "B" then
    return "Trade Condition: Block Trade (B)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trade Date
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_date = {}

-- Size: Trade Date
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_date.size = 4

-- Display: Trade Date
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trading_status = {}

-- Size: Trading Status
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trading_status.size = 1

-- Display: Trading Status
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trading_status.labels = {
  ["H"] = "Trading Status: Halted (H)",
  ["Q"] = "Trading Status: Queuing (Q)",
  ["T"] = "Trading Status: Trading (T)",
}

cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trading_status.display = function(value)
  return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trading_status.labels[value] or "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Unit
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.unit = {}

-- Size: Unit
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.unit.size = 1

-- Display: Unit
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.unit, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.timestamp = {}

-- Translate: Timestamp
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.timestamp.translate = function(time_offset, stored_midnight_reference, stored_time_reference)
  return UInt64.new((stored_midnight_reference + stored_time_reference) * 1000000000 + time_offset)
end

-- Display: Timestamp
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.timestamp.display = function(time_offset, stored_midnight_reference, stored_time_reference)
  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", stored_midnight_reference + stored_time_reference)..string.format("%09d", time_offset)
end

-- Composite: Timestamp
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.timestamp.composite = function(buffer, offset, stored_midnight_reference, stored_time_reference, packet, parent)
  local length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_offset.size
  local range = buffer(offset, length)
  local time_offset = range:le_uint()
  local value = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.timestamp.translate(time_offset, stored_midnight_reference, stored_time_reference)
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.timestamp.display(time_offset, stored_midnight_reference, stored_time_reference)
  parent = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.timestamp, range, value, display)

  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_reference.generated(stored_time_reference, range, packet, parent)

  display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_offset.display(time_offset)
  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.time_offset, range, time_offset, display)

  return offset + length, value
end

-- Dissect: Timestamp
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.timestamp.dissect = function(buffer, offset, packet, parent)
  local stored_midnight_reference = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.midnight_reference.current
  local stored_time_reference = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_reference.current

  if stored_midnight_reference ~= nil and stored_time_reference ~= nil then
    return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.timestamp.composite(buffer, offset, stored_midnight_reference, stored_time_reference, packet, parent)
  end

  return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_offset.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Cboe CfeFutures OofMulticastDepthOfBook Pitch 1.0.8
-----------------------------------------------------------------------

-- End Of Session Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.end_of_session_message = {}

-- Size: End Of Session Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.end_of_session_message.size =
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_offset.size

-- Display: End Of Session Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Summary Flags
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.summary_flags = {}

-- Size: Summary Flags
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.summary_flags.size = 1

-- Display: Summary Flags
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.summary_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is High Price Valid flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "High Price Valid"
  end
  -- Is High Price Is Bid flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "High Price Is Bid"
  end
  -- Is Low Price Valid flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Low Price Valid"
  end
  -- Is Low Price Is Offer flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Low Price Is Offer"
  end
  -- Is Open Close Valid flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Open Close Valid"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Summary Flags
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.summary_flags.bits = function(range, value, packet, parent)

  -- High Price Valid: 1 Bit
  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.high_price_valid, range, value)

  -- High Price Is Bid: 1 Bit
  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.high_price_is_bid, range, value)

  -- Low Price Valid: 1 Bit
  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.low_price_valid, range, value)

  -- Low Price Is Offer: 1 Bit
  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.low_price_is_offer, range, value)

  -- Open Close Valid: 1 Bit
  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.open_close_valid, range, value)

  -- Reserved: 3 Bit
  parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.reserved, range, value)
end

-- Dissect: Summary Flags
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.summary_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.summary_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.summary_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.summary_flags, range, display)

  if show.structs then
    cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.summary_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- End Of Day Summary Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.end_of_day_summary_message = {}

-- Size: End Of Day Summary Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.end_of_day_summary_message.size =
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_offset.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.symbol.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_date.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.open_interest.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.high_price.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.low_price.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.open_price.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.close_price.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.total_volume.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.block_volume.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.ecrp_volume.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.summary_flags.size

-- Display: End Of Day Summary Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.end_of_day_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Day Summary Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.end_of_day_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.symbol.dissect(buffer, index, packet, parent)

  -- Trade Date: Binary Date
  index, trade_date = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_date.dissect(buffer, index, packet, parent)

  -- Open Interest: Binary
  index, open_interest = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.open_interest.dissect(buffer, index, packet, parent)

  -- High Price: Binary Price
  index, high_price = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: Binary Price
  index, low_price = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.low_price.dissect(buffer, index, packet, parent)

  -- Open Price: Binary Price
  index, open_price = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.open_price.dissect(buffer, index, packet, parent)

  -- Close Price: Binary Price
  index, close_price = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.close_price.dissect(buffer, index, packet, parent)

  -- Total Volume: Binary
  index, total_volume = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.total_volume.dissect(buffer, index, packet, parent)

  -- Block Volume: Binary
  index, block_volume = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.block_volume.dissect(buffer, index, packet, parent)

  -- Ecrp Volume: Binary
  index, ecrp_volume = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.ecrp_volume.dissect(buffer, index, packet, parent)

  -- Summary Flags: Struct of 6 fields
  index, summary_flags = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.summary_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Summary Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.end_of_day_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.end_of_day_summary_message, buffer(offset, 0))
    local index = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.end_of_day_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.end_of_day_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.end_of_day_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Settlement Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.settlement_message = {}

-- Size: Settlement Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.settlement_message.size =
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_offset.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.symbol.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_date.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.settlement_price.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.issue.size

-- Display: Settlement Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.settlement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Settlement Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.settlement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.symbol.dissect(buffer, index, packet, parent)

  -- Trade Date: Binary Date
  index, trade_date = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_date.dissect(buffer, index, packet, parent)

  -- Settlement Price: Binary Price
  index, settlement_price = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.settlement_price.dissect(buffer, index, packet, parent)

  -- Issue: Alphanumeric
  index, issue = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.issue.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Settlement Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.settlement_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.settlement_message, buffer(offset, 0))
    local index = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.settlement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.settlement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.settlement_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Break Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_break_message = {}

-- Size: Trade Break Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_break_message.size =
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_offset.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.execution_id.size

-- Display: Trade Break Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.trade_break_message, buffer(offset, 0))
    local index = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Short Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_short_message = {}

-- Size: Trade Short Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_short_message.size =
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_offset.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_id.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.side_indicator.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.quantity_short.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.symbol.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.price_short.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.execution_id.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_condition.size

-- Display: Trade Short Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Short Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.quantity_short.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.symbol.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.price_short.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.trade_short_message, buffer(offset, 0))
    local index = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Long Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_long_message = {}

-- Size: Trade Long Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_long_message.size =
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_offset.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_id.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.side_indicator.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.quantity_long.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.symbol.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.price_long.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.execution_id.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_condition.size

-- Display: Trade Long Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Long Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.quantity_long.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.symbol.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Price
  index, price_long = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.price_long.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.trade_long_message, buffer(offset, 0))
    local index = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.delete_order_message = {}

-- Size: Delete Order Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.delete_order_message.size =
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_offset.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_id.size

-- Display: Delete Order Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.delete_order_message, buffer(offset, 0))
    local index = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Short Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.modify_order_short_message = {}

-- Size: Modify Order Short Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.modify_order_short_message.size =
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_offset.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_id.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.quantity_short.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.price_short.size

-- Display: Modify Order Short Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.modify_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Short Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.modify_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.quantity_short.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.price_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Short Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.modify_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.modify_order_short_message, buffer(offset, 0))
    local index = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.modify_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.modify_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.modify_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Long Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.modify_order_long_message = {}

-- Size: Modify Order Long Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.modify_order_long_message.size =
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_offset.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_id.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.quantity_long.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.price_long.size

-- Display: Modify Order Long Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.modify_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Long Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.modify_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.quantity_long.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Price
  index, price_long = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.price_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Long Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.modify_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.modify_order_long_message, buffer(offset, 0))
    local index = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.modify_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.modify_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.modify_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Short Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reduce_size_short_message = {}

-- Size: Reduce Size Short Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reduce_size_short_message.size =
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_offset.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_id.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.canceled_quantity_short.size

-- Display: Reduce Size Short Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reduce_size_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Short Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reduce_size_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Quantity Short: Binary
  index, canceled_quantity_short = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.canceled_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Short Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reduce_size_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.reduce_size_short_message, buffer(offset, 0))
    local index = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reduce_size_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reduce_size_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reduce_size_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Long Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reduce_size_long_message = {}

-- Size: Reduce Size Long Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reduce_size_long_message.size =
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_offset.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_id.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.canceled_quantity_long.size

-- Display: Reduce Size Long Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reduce_size_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Long Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reduce_size_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Quantity Long: Binary
  index, canceled_quantity_long = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.canceled_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Long Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reduce_size_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.reduce_size_long_message, buffer(offset, 0))
    local index = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reduce_size_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reduce_size_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reduce_size_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_executed_message = {}

-- Size: Order Executed Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_executed_message.size =
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_offset.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_id.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.executed_quantity.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.execution_id.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_condition.size

-- Display: Order Executed Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary
  index, executed_quantity = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.executed_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.order_executed_message, buffer(offset, 0))
    local index = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.add_order_short_message = {}

-- Size: Add Order Short Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.add_order_short_message.size =
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_offset.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_id.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.side_indicator.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.quantity_short.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.symbol.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.price_short.size

-- Display: Add Order Short Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.add_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.add_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.quantity_short.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.symbol.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.price_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.add_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.add_order_short_message, buffer(offset, 0))
    local index = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.add_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.add_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.add_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.add_order_long_message = {}

-- Size: Add Order Long Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.add_order_long_message.size =
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_offset.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_id.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.side_indicator.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.quantity_long.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.symbol.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.price_long.size

-- Display: Add Order Long Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.add_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.add_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.quantity_long.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.symbol.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Price
  index, price_long = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.price_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.add_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.add_order_long_message, buffer(offset, 0))
    local index = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.add_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.add_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.add_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trading_status_message = {}

-- Size: Trading Status Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trading_status_message.size =
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_offset.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.symbol.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reserved_2.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trading_status.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reserved_3.size

-- Display: Trading Status Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 2: Binary
  index, reserved_2 = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reserved_2.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 3: Binary
  index, reserved_3 = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Leg
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.option_leg = {}

-- Size: Option Leg
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.option_leg.size =
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_symbol.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_ratio.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_security_type.size

-- Display: Option Leg
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.option_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Leg
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.option_leg.fields = function(buffer, offset, packet, parent, option_leg_index)
  local index = offset

  -- Implicit Option Leg Index
  if option_leg_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.option_leg_index, option_leg_index)
    iteration:set_generated()
  end

  -- Leg Symbol: Printable ASCII
  index, leg_symbol = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_symbol.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Signed Binary
  index, leg_ratio = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_ratio.dissect(buffer, index, packet, parent)

  -- Leg Security Type: Alphanumeric
  index, leg_security_type = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_security_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Leg
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.option_leg.dissect = function(buffer, offset, packet, parent, option_leg_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.option_leg, buffer(offset, 0))
    local index = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.option_leg.fields(buffer, offset, packet, parent, option_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.option_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.option_leg.fields(buffer, offset, packet, parent, option_leg_index)
  end
end

-- Complex Instrument Definition Expanded Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_definition_expanded_message = {}

-- Calculate size of: Complex Instrument Definition Expanded Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_definition_expanded_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_offset.size

  index = index + cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_id.size

  index = index + cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_underlying.size

  index = index + cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_type.size

  index = index + cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_count.size

  -- Calculate field size from count
  local option_leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + option_leg_count * 13

  return index
end

-- Display: Complex Instrument Definition Expanded Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_definition_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Instrument Definition Expanded Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_definition_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Complex Instrument Underlying: Printable ASCII
  index, complex_instrument_underlying = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_underlying.dissect(buffer, index, packet, parent)

  -- Complex Instrument Type: Alphanumeric
  index, complex_instrument_type = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_type.dissect(buffer, index, packet, parent)

  -- Leg Count: Binary
  index, leg_count = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.leg_count.dissect(buffer, index, packet, parent)

  -- Repeating: Option Leg
  for option_leg_index = 1, leg_count do
    index, option_leg = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.option_leg.dissect(buffer, index, packet, parent, option_leg_index)
  end

  return index
end

-- Dissect: Complex Instrument Definition Expanded Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_definition_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.complex_instrument_definition_expanded_message, buffer(offset, 0))
    local index = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_definition_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_definition_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_definition_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Oof Symbol Mapping Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.oof_symbol_mapping_message = {}

-- Size: Oof Symbol Mapping Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.oof_symbol_mapping_message.size =
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_offset.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.feed_symbol.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.futures_product.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.futures_expiration.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.futures_symbol.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.strike_price.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.call_put_indicator.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.options_expiration.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.options_on_futures_name.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.symbol_condition.size

-- Display: Oof Symbol Mapping Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.oof_symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Oof Symbol Mapping Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.oof_symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  -- Feed Symbol: Printable ASCII
  index, feed_symbol = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.feed_symbol.dissect(buffer, index, packet, parent)

  -- Futures Product: Printable ASCII
  index, futures_product = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.futures_product.dissect(buffer, index, packet, parent)

  -- Futures Expiration: Binary Date
  index, futures_expiration = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.futures_expiration.dissect(buffer, index, packet, parent)

  -- Futures Symbol: Printable ASCII
  index, futures_symbol = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.futures_symbol.dissect(buffer, index, packet, parent)

  -- Strike Price: Binary Price
  index, strike_price = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.strike_price.dissect(buffer, index, packet, parent)

  -- Call Put Indicator: Alphanumeric
  index, call_put_indicator = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.call_put_indicator.dissect(buffer, index, packet, parent)

  -- Options Expiration: Binary Date
  index, options_expiration = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.options_expiration.dissect(buffer, index, packet, parent)

  -- Options On Futures Name: Alphanumeric
  index, options_on_futures_name = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.options_on_futures_name.dissect(buffer, index, packet, parent)

  -- Symbol Condition: Alphanumeric
  index, symbol_condition = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.symbol_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Oof Symbol Mapping Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.oof_symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.oof_symbol_mapping_message, buffer(offset, 0))
    local index = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.oof_symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.oof_symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.oof_symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Transaction End Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.transaction_end_message = {}

-- Size: Transaction End Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.transaction_end_message.size =
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_offset.size

-- Display: Transaction End Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.transaction_end_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction End Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.transaction_end_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction End Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.transaction_end_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.transaction_end_message, buffer(offset, 0))
    local index = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.transaction_end_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.transaction_end_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.transaction_end_message.fields(buffer, offset, packet, parent)
  end
end

-- Transaction Begin Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.transaction_begin_message = {}

-- Size: Transaction Begin Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.transaction_begin_message.size =
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_offset.size

-- Display: Transaction Begin Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.transaction_begin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction Begin Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.transaction_begin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction Begin Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.transaction_begin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.transaction_begin_message, buffer(offset, 0))
    local index = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.transaction_begin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.transaction_begin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.transaction_begin_message.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.unit_clear_message = {}

-- Size: Unit Clear Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.unit_clear_message.size =
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_offset.size

-- Display: Unit Clear Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_message = {}

-- Size: Time Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_message.size =
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_reference.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.epoch_time.size

-- Display: Time Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Reference: Binary
  index, time_reference = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_reference.dissect(buffer, index, packet, parent)

  -- Store Time Reference Value
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_reference.current = time_reference

  if not packet.visited then
    cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.conversation.current.time_reference.last = time_reference
  end

  -- Epoch Time: Binary
  index, epoch_time = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.epoch_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.time_message, buffer(offset, 0))
    local index = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Reference Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_reference_message = {}

-- Size: Time Reference Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_reference_message.size =
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.midnight_reference.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_reference.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_offset.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_date.size

-- Display: Time Reference Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Reference Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Midnight Reference: Binary
  index, midnight_reference = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.midnight_reference.dissect(buffer, index, packet, parent)

  -- Store Midnight Reference Value
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.midnight_reference.current = midnight_reference

  if not packet.visited then
    cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.conversation.current.midnight_reference.last = midnight_reference
  end

  -- Time Reference: Binary
  index, time_reference = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_reference.dissect(buffer, index, packet, parent)

  -- Store Time Reference Value
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_reference.current = time_reference

  if not packet.visited then
    cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.conversation.current.time_reference.last = time_reference
  end

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Binary Date
  index, trade_date = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Reference Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.time_reference_message, buffer(offset, 0))
    local index = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.payload = {}

-- Dissect: Payload
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.payload.dispatch = {
  [0xB1] = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_reference_message.dissect,
  [0x20] = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_message.dissect,
  [0x97] = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.unit_clear_message.dissect,
  [0xBC] = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.transaction_begin_message.dissect,
  [0xBD] = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.transaction_end_message.dissect,
  [0xF9] = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.oof_symbol_mapping_message.dissect,
  [0x9A] = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.complex_instrument_definition_expanded_message.dissect,
  [0x31] = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trading_status_message.dissect,
  [0x21] = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.add_order_long_message.dissect,
  [0x22] = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.add_order_short_message.dissect,
  [0x23] = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.order_executed_message.dissect,
  [0x25] = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reduce_size_long_message.dissect,
  [0x26] = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.reduce_size_short_message.dissect,
  [0x27] = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.modify_order_long_message.dissect,
  [0x28] = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.modify_order_short_message.dissect,
  [0x29] = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.delete_order_message.dissect,
  [0x2A] = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_long_message.dissect,
  [0x2B] = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_short_message.dissect,
  [0x2C] = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.trade_break_message.dissect,
  [0xB9] = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.settlement_message.dissect,
  [0xBA] = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.end_of_day_summary_message.dissect,
  [0x2D] = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.end_of_session_message.dissect,
}

cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_header = {}

-- Size: Message Header
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_header.size =
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_length.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_type.size

-- Display: Message Header
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 22 values
  index, message_type = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.message_header, buffer(offset, 0))
    local index = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message = {}

-- Read runtime size of: Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.packet_sequence ~= nil then
    local sequence = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.message_sequence_number, UInt64.new(cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 22 branches
  index = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.message, buffer(offset, 0))
    local current = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.heartbeat = {}

-- Display: Heartbeat
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.messages = {}

-- Dissect: Messages
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.messages.dispatch = {
  [0] = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.heartbeat.dissect,
}

cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.messages.dissect = function(buffer, offset, packet, parent, message_count)
  local dissect = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.messages.dispatch[message_count]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.packet_header = {}

-- Size: Packet Header
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.packet_header.size =
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.length.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_count.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.unit.size + 
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.sequence.size

-- Display: Packet Header
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.message_count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.sequence.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.packet_sequence = sequence

  return index
end

-- Dissect: Packet Header
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.fields.packet_header, buffer(offset, 0))
    local index = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.packet = {}

-- Verify required size of Udp packet
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.packet_header.size
end

-- Dissect Packet
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.conversation.data(packet)
  if not packet.visited then
    data.midnight_reference.frames[packet.number] = data.midnight_reference.last
    data.time_reference.frames[packet.number] = data.time_reference.last
    data.time_reference.frames[packet.number] = data.time_reference.last
  end
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.midnight_reference.current = data.midnight_reference.frames[packet.number]
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_reference.current = data.time_reference.frames[packet.number]
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_reference.current = data.time_reference.frames[packet.number]
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.init()
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.midnight_reference.current = nil
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.time_reference.current = nil
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.conversation.current = nil
  cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.conversation.flows = {}
end

-- Dissector for Cboe CfeFutures OofMulticastDepthOfBook Pitch 1.0.8
function omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8, buffer(), omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.description, "("..buffer:len().." Bytes)")
  return cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.packet.fingerprint = function(buffer)
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

  -- Time Reference Message
  if message_type == 0xB1 then
    return true
  end

  -- Time Message
  if message_type == 0x20 then
    return true
  end

  -- Unit Clear Message
  if message_type == 0x97 then
    return true
  end

  -- Transaction Begin Message
  if message_type == 0xBC then
    return true
  end

  -- Transaction End Message
  if message_type == 0xBD then
    return true
  end

  -- Oof Symbol Mapping Message
  if message_type == 0xF9 then
    return true
  end

  -- Complex Instrument Definition Expanded Message
  if message_type == 0x9A then
    return true
  end

  -- Trading Status Message
  if message_type == 0x31 then
    return true
  end

  -- Add Order Long Message
  if message_type == 0x21 then
    return true
  end

  -- Add Order Short Message
  if message_type == 0x22 then
    return true
  end

  -- Order Executed Message
  if message_type == 0x23 then
    return true
  end

  -- Reduce Size Long Message
  if message_type == 0x25 then
    return true
  end

  -- Reduce Size Short Message
  if message_type == 0x26 then
    return true
  end

  -- Modify Order Long Message
  if message_type == 0x27 then
    return true
  end

  -- Modify Order Short Message
  if message_type == 0x28 then
    return true
  end

  -- Delete Order Message
  if message_type == 0x29 then
    return true
  end

  -- Trade Long Message
  if message_type == 0x2A then
    return true
  end

  -- Trade Short Message
  if message_type == 0x2B then
    return true
  end

  -- Trade Break Message
  if message_type == 0x2C then
    return true
  end

  -- Settlement Message
  if message_type == 0xB9 then
    return true
  end

  -- End Of Day Summary Message
  if message_type == 0xBA then
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

-- Dissector Heuristic for Cboe CfeFutures OofMulticastDepthOfBook Pitch 1.0.8 (Udp)
local function omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8
  omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe CfeFutures OofMulticastDepthOfBook Pitch 1.0.8
omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8:register_heuristic("udp", omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8_udp_heuristic)

-- Register Cboe CfeFutures OofMulticastDepthOfBook Pitch 1.0.8 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_cboe_cfefutures_oofmulticastdepthofbook_pitch_v1_0_8)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.0.8
--   Date: Monday, January 5, 2026
--   Specification: technical-specifications-cboe-titanium-cboe-futures-exchange-oof-multicast-depth-of-book-pitch-specification.pdf
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
