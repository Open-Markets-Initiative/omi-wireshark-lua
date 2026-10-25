-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe C1Options ComplexOptionsFutures Pitch 1.0.0 Protocol
local omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0 = Proto("Omi.Cboe.C1Options.ComplexOptionsFutures.Pitch.v1.0.0", "Cboe C1Options ComplexOptionsFutures Pitch 1.0.0")

-- Protocol table
local cboe_c1options_complexoptionsfutures_pitch_v1_0_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe C1Options ComplexOptionsFutures Pitch 1.0.0 Fields
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.auction_end_offset = ProtoField.new("Auction End Offset", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.auctionendoffset", ftypes.UINT32, nil, nil, nil, "Nanosecond offset from last timestamp.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.auction_id = ProtoField.new("Auction Id", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.auctionid", ftypes.UINT64, nil, nil, nil, "Day specific identifier assigned to this auction.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.auction_only_price = ProtoField.new("Auction Only Price", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.auctiononlyprice", ftypes.DOUBLE, nil, nil, nil, "Not used for complex series. Will contain zero value.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.auction_type = ProtoField.new("Auction Type", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.auctiontype", ftypes.STRING, nil, nil, nil, "C=Complex Auction (COA) B=Complex AIM")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.buy_contracts = ProtoField.new("Buy Contracts", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.buycontracts", ftypes.UINT32, nil, nil, nil, "Cumulative Buy interest at the Indicative Price.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.canceled_quantity_long = ProtoField.new("Canceled Quantity Long", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.canceledquantitylong", ftypes.UINT32, nil, nil, nil, "Instrument quantity canceled")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.canceled_quantity_short = ProtoField.new("Canceled Quantity Short", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.canceledquantityshort", ftypes.UINT16, nil, nil, nil, "Instrument quantity canceled")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.client_id = ProtoField.new("Client Id", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.clientid", ftypes.STRING, nil, nil, nil, "Optional user specified value attributed to this quote. Space filled otherwise.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.complex_instrument_id_long = ProtoField.new("Complex Instrument Id Long", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.complexinstrumentidlong", ftypes.STRING, nil, nil, nil, "Complex Instrument Id right padded with spaces.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.complex_instrument_id_short = ProtoField.new("Complex Instrument Id Short", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.complexinstrumentidshort", ftypes.STRING, nil, nil, nil, "Complex Instrument Id right padded with spaces.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.complex_instrument_type = ProtoField.new("Complex Instrument Type", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.complexinstrumenttype", ftypes.STRING, nil, nil, nil, "Complex Option Type F = One leg is a futures leg")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.complex_instrument_underlying = ProtoField.new("Complex Instrument Underlying", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.complexinstrumentunderlying", ftypes.STRING, nil, nil, nil, "Complex Instrument Underlying right padded with spaces.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.complex_leg = ProtoField.new("Complex Leg", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.complexleg", ftypes.STRING, nil, nil, nil, "The following fields repeat Leg Count times for multi-leg strategies. Leg Index is zero-based.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.complex_symbol_id = ProtoField.new("Complex Symbol Id", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.complexsymbolid", ftypes.STRING, nil, nil, nil, "Complex Symbol right padded with spaces.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.composite_market_bid_price = ProtoField.new("Composite Market Bid Price", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.compositemarketbidprice", ftypes.DOUBLE, nil, nil, nil, "Not used for Complex series. Will contain zero value.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.composite_market_offer_price = ProtoField.new("Composite Market Offer Price", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.compositemarketofferprice", ftypes.DOUBLE, nil, nil, nil, "Not used for complex series. Will contain zero value.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.customerindicator", ftypes.STRING, nil, nil, nil, "N = Non-Customer C = Customer")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.epoch_time = ProtoField.new("Epoch Time", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.epochtime", ftypes.UINT32, nil, nil, nil, "Number of whole seconds since the Epoch (midnight January 1, 1970 UTC).")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.executed_quantity = ProtoField.new("Executed Quantity", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.executedquantity", ftypes.UINT32, nil, nil, nil, "Instrument quantity executed")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.execution_id = ProtoField.new("Execution Id", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.executionid", ftypes.UINT64, nil, nil, nil, "Cboe generated day-unique execution identifier of this execution.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.feedsymbol", ftypes.STRING, nil, nil, nil, "Symbol right padded with spaces.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.futures_leg_price = ProtoField.new("Futures Leg Price", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.futureslegprice", ftypes.DOUBLE)
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.futures_price_leg = ProtoField.new("Futures Price Leg", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.futurespriceleg", ftypes.STRING, nil, nil, nil, "The following fields repeat Futures Leg Price Count times. Futures Price Leg Index is zero-based.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.futures_price_leg_count = ProtoField.new("Futures Price Leg Count", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.futurespricelegcount", ftypes.UINT8, nil, nil, nil, "The number of futures leg prices. This must match the number of futures legs.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.gth_trading_status = ProtoField.new("Gth Trading Status", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.gthtradingstatus", ftypes.STRING, nil, nil, nil, "H=Halted Q=Quote-Only T=Trading")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.indicativeprice", ftypes.DOUBLE, nil, nil, nil, "SNBBO Collared Volume Maximizing Imbalance Minimizing Price computed on combined Auction-Only and Continuous Book (if any). This is the price of the option legs only and does not include the futures leg price.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.leg_count = ProtoField.new("Leg Count", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.legcount", ftypes.UINT8, nil, nil, nil, "The number of legs in the complex instrument. The maximum number of legs is 16.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.leg_index = ProtoField.new("Leg Index", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.legindex", ftypes.UINT8, nil, nil, nil, "The Leg Index the future price corresponds to. Leg Index is zero-based.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.leg_ratio = ProtoField.new("Leg Ratio", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.legratio", ftypes.INT32, nil, nil, nil, "Leg ratio (positive for buy-side, negative for sell-side). This is the number of contracts.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.leg_security_type = ProtoField.new("Leg Security Type", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.legsecuritytype", ftypes.STRING, nil, nil, nil, "O=Leg is an Option instrument F=Leg is an Futures instrument")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.leg_symbol = ProtoField.new("Leg Symbol", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.legsymbol", ftypes.STRING, nil, nil, nil, "Option or Futures Symbol of leg, right padded with spaces.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.length = ProtoField.new("Length", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.length", ftypes.UINT16, nil, nil, nil, "Length of entire block of messages. Includes this header and Message Count messages to follow")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.message_count = ProtoField.new("Message Count", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.messagecount", ftypes.UINT8, nil, nil, nil, "Number of messages to follow this header")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.message_length = ProtoField.new("Message Length", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.messagelength", ftypes.UINT8, nil, nil, nil, "Current Pitch message length")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.message_type = ProtoField.new("Message Type", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying this message type")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.opening_condition = ProtoField.new("Opening Condition", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.openingcondition", ftypes.STRING, nil, nil, nil, "Not used for Complex series. Will contain zero value.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.order_id = ProtoField.new("Order Id", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.orderid", ftypes.UINT64, nil, nil, nil, "Day-specific identifier assigned to this order")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.osi_symbol = ProtoField.new("Osi Symbol", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.osisymbol", ftypes.STRING)
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.participant_id = ProtoField.new("Participant Id", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.participantid", ftypes.STRING, nil, nil, nil, "Optionally specified.If specified the Executing Broker of firm attributed to this quote. Space filled otherwise.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.quantity_long = ProtoField.new("Quantity Long", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.quantitylong", ftypes.UINT32, nil, nil, nil, "Instrument quantity added to the complex book (may be less than the number entered).")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.quantityshort", ftypes.UINT16, nil, nil, nil, "Instrument quantity being added to the complex book (may be less than the number entered).")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.reference_price = ProtoField.new("Reference Price", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.referenceprice", ftypes.DOUBLE, nil, nil, nil, "Not used for complex series. Will contain zero value.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.remaining_quantity = ProtoField.new("Remaining Quantity", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.remainingquantity", ftypes.UINT32, nil, nil, nil, "Number of contracts remaining after the execution")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.reserved1", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.reserved2", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.reserved_3 = ProtoField.new("Reserved 3", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.reserved3", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.reserved_5 = ProtoField.new("Reserved 5", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.reserved5", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.second_reserved_1 = ProtoField.new("Second Reserved 1", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.secondreserved1", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.sell_contracts = ProtoField.new("Sell Contracts", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.sellcontracts", ftypes.UINT32, nil, nil, nil, "Cumulative Sell interest at the Indicative Price.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.sequence = ProtoField.new("Sequence", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.sequence", ftypes.UINT32, nil, nil, nil, "Sequence Number of the first message to follow this header")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.side = ProtoField.new("Side", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.side", ftypes.STRING, nil, nil, nil, "B=Buy S=Sell")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.sideindicator", ftypes.STRING, nil, nil, nil, "B = Buy Order S = Sell Order")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.signed_price_long = ProtoField.new("Signed Price Long", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.signedpricelong", ftypes.DOUBLE, nil, nil, nil, "The limit order price. This is the price of the option legs only and does not include the futures leg price.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.signed_price_short = ProtoField.new("Signed Price Short", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.signedpriceshort", ftypes.DOUBLE, nil, nil, nil, "The limit order price. This is the price of the option legs only and does not include the futures leg price.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.symbolcondition", ftypes.STRING, nil, nil, nil, "N = Normal C = Closing Only")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.time = ProtoField.new("Time", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.time", ftypes.UINT32, nil, nil, nil, "Number of whole seconds from midnight Eastern Time")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.time_offset = ProtoField.new("Time Offset", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.timeoffset", ftypes.UINT32, nil, nil, nil, "Nanosecond offset from last unit timestamp")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.timestamp = ProtoField.new("Timestamp", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.timestamp", ftypes.UINT32, nil, nil, nil, "Nanosecond offset from last unit timestamp")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.total_price = ProtoField.new("Total Price", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.totalprice", ftypes.DOUBLE, nil, nil, nil, "The total execution price of the order. This is the total execution price of the order including all the option legs and the futures leg.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.tradecondition", ftypes.STRING, nil, nil, nil, "N = Future Options auto electronic trade - Electronic execution of a multi leg future/options order traded on the complex book M = Future Options auction trade - Electronic execution of a multi leg future/options order traded in a two sided auction P = Future Options cross - Electronic execution of a multi leg future/options order traded in a two sided crossing mechanism that does not go through an exposure period")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.trading_status = ProtoField.new("Trading Status", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.tradingstatus", ftypes.STRING, nil, nil, nil, "H=Halted L=Curb Trading Q=Quote-Only T=RTH Trading")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.underlying = ProtoField.new("Underlying", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.underlying", ftypes.STRING, nil, nil, nil, "Symbol of underlying equity right padded with spaces. All spaces if not available or not applicable.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.unit = ProtoField.new("Unit", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.unit", ftypes.UINT8, nil, nil, nil, "Unit that applies to messages included in this header")

-- Cboe C1Options ComplexOptionsFutures Pitch 1.0.0 Framing
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.message = ProtoField.new("Message", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.message", ftypes.STRING)
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.message_header = ProtoField.new("Message Header", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.messageheader", ftypes.STRING)
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.packet = ProtoField.new("Packet", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.packet", ftypes.STRING, nil, nil, nil, "Pitch Udp Packet")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.packet_header = ProtoField.new("Packet Header", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.packetheader", ftypes.STRING)

-- Cboe C1Options ComplexOptionsFutures 1.0.0 Application Messages
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.add_order_expanded_message = ProtoField.new("Add Order Expanded Message", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.addorderexpandedmessage", ftypes.STRING, nil, nil, nil, "An Add Order message represents a newly accepted visible order on the Cboe complex book. It includes a day-specific Order Id assigned by Cboe to the complex order.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.addorderlongmessage", ftypes.STRING, nil, nil, nil, "An Add Order message represents a newly accepted visible order on the Cboe complex book. It includes a day-specific Order Id assigned by Cboe to the complex order.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.addordershortmessage", ftypes.STRING, nil, nil, nil, "An Add Order message represents a newly accepted visible order on the Cboe complex book. It includes a day-specific Order Id assigned by Cboe to the complex order.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.auction_cancel_message = ProtoField.new("Auction Cancel Message", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.auctioncancelmessage", ftypes.STRING, nil, nil, nil, "Auction Cancel messages are used to disseminate the cancellation of an earlier Auction Notification message as a result of a user cancellation of the original complex auction, a user modification request to change the complex auction price or increase the original complex auction quantity, a fading of the NBBO or to cancel any remaining complex auction quantity from the original Auction Notification following the complex auction termination. A user request to modify the complex auction price or to increase the original complex auction quantity will result in a cancellation of the complex auction followed by a new Auction Notification message. Auction Cancel messages will not be issued for complex auction quantity decrements.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.auctionnotificationmessage", ftypes.STRING, nil, nil, nil, "Auction Notification messages are used to disseminate order details of a complex auction. Auctions will be available for a defined period of time known as the exposure period.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.auctionsummarymessage", ftypes.STRING, nil, nil, nil, "Auction Summary messages are used to disseminate the results of an auction of a complex instrument. An Opening or Re-Opening Auction Summary message for each complex instrument is sent at the conclusion of its Opening or Re-Opening auction and represents Cboe opening price. Refer to the Cboe Options Complex Book Process specification for more information. The Auction Summary message has the following format:")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.auction_trade_message = ProtoField.new("Auction Trade Message", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.auctiontrademessage", ftypes.STRING, nil, nil, nil, "Auction Trade messages are used to disseminate executions resulting from a complex auction.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.complex_options_futures_instrument_definition_message = ProtoField.new("Complex Options Futures Instrument Definition Message", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.complexoptionsfuturesinstrumentdefinitionmessage", ftypes.STRING, nil, nil, nil, "A Complex Options Futures Instrument Definition message represents a complex instrument that is available to place orders. It is sent as a sequenced message the first time a Complex Options Futures Instrument Definition message is sent for a symbol. These messages will also be sent continuously through the day as an unsequenced message (sequence = 0) at variable rates as bandwidth allows. The Time offset field should be ignored on an unsequenced Complex Options Futures Instrument Definition message. The Complex Options Futures Instrument Definition message will contain two or more repeating groups of leg definitions. There is a limit of 16 leg definitions, one of which is a futures leg.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.delete_order_message = ProtoField.new("Delete Order Message", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.deleteordermessage", ftypes.STRING, nil, nil, nil, "The Delete Order message is sent whenever a booked order is cancelled or leaves the order book. The Order Id refers to the Order Id of the original Add Order message. An order that is deleted from the book may return to the book later under certain circumstances. Therefore, a Delete Order message does not indicate that a given Order Id will not be sent again on a subsequent Add Order message.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.endofsessionmessage", ftypes.STRING, nil, nil, nil, "The End of Session message is sent for each unit when the unit shuts down. No more sequenced messages will be delivered for this unit, but heartbeats from the unit may be received.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.modify_order_long_message = ProtoField.new("Modify Order Long Message", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.modifyorderlongmessage", ftypes.STRING, nil, nil, nil, "The Modify Order message is sent whenever an open complex order is visibly modified. The Order Id refers to the Order Id of the original Add Order message. Note that Modify Order messages that appear to be \"no ops\" (i.e. they do not appear to modify any relevant fields) will still lose priority.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.modify_order_short_message = ProtoField.new("Modify Order Short Message", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.modifyordershortmessage", ftypes.STRING, nil, nil, nil, "The Modify Order message is sent whenever an open complex order is visibly modified. The Order Id refers to the Order Id of the original Add Order message. Note that Modify Order messages that appear to be \"no ops\" (i.e. they do not appear to modify any relevant fields) will still lose priority.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.options_auction_update_message = ProtoField.new("Options Auction Update Message", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.optionsauctionupdatemessage", ftypes.STRING, nil, nil, nil, "Options Auction Update messages are used to disseminate price and size information during the Opening and Re-Opening (halt) process for complex instruments. The Options Auction Update messages are sent every 5 seconds during an opening period. Refer to the Cboe Options Complex Book Process specification for more information.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.order_executed_at_price_size_message = ProtoField.new("Order Executed At Price Size Message", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.orderexecutedatpricesizemessage", ftypes.STRING, nil, nil, nil, "Order Execution at Price/Size messages are sent when a complex order on the Cboe complex book is executed in whole or in part at a different price than the limit price on the original Add Order message or the limit order price in the latest Modify Order message referencing the Order Id. If the Remaining Quantity field contains a 0 the complex order should be completely removed from the complex book. Order Execution at Price/Size messages may also be sent in the event the existing size for Order Id is not equal to Executed Quantity + Remaining Quantity. In this case the complex order should be prioritized the same as a new complex order.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.orderexecutedmessage", ftypes.STRING, nil, nil, nil, "Order Executed messages are sent when a visible complex order on the Cboe complex book is executed in whole or in part. The execution price equals the limit order price found in the original Add Order message or the limit order price in the latest Modify Order message referencing the Order Id. Note even if there are single leg to complex order executions, this feed will only contain the order execution for the complex order. Any single leg execution information is available on the standard PITCH feed.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.reduce_size_long_message = ProtoField.new("Reduce Size Long Message", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.reducesizelongmessage", ftypes.STRING, nil, nil, nil, "Reduce Size messages are sent when a complex order on the Cboe complex book is partially reduced.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.reduce_size_short_message = ProtoField.new("Reduce Size Short Message", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.reducesizeshortmessage", ftypes.STRING, nil, nil, nil, "Reduce Size messages are sent when a complex order on the Cboe complex book is partially reduced.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.symbol_mapping_message = ProtoField.new("Symbol Mapping Message", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.symbolmappingmessage", ftypes.STRING, nil, nil, nil, "A Symbol Mapping message is used to map the 6 character multicast feed symbol field to an OSI symbol and Underlying. These messages are not sequenced (sequence = 0) and are sent continuously through the day at variable rates as bandwidth allows.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.time_message = ProtoField.new("Time Message", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.timemessage", ftypes.STRING, nil, nil, nil, "A Time message is immediately generated and sent when there is a PITCH event for a given clock second. If there is no PITCH event for a given clock second, then no Time message is sent for that second. The Time field is the number of seconds relative to midnight Eastern Time. All subsequent time offset fields for the same unit will use the new Time value as the base until another Time message is received for the same unit. The Time message will also include the Epoch Time field, which is the current time represented as the number of whole seconds since the Epoch (midnight January 1, 1970). A given trading day may span multiple calendar days. Market data recipients must prepare for a crossing of the midnight ET boundary. At such time, a new Time Reference message will be sent and the Time field in subsequent Time messages will reset to reflect the number of seconds from the most recent midnight ET time.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.trade_futures_options_message = ProtoField.new("Trade Futures Options Message", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.tradefuturesoptionsmessage", ftypes.STRING, nil, nil, nil, "The Trade message provides information about executions of complex order auctions on the Cboe complex book. A Trade message can also be sent when an auction executes against a non-displayed order, such as a contra response. Trade messages are necessary to calculate Cboe execution-based data. Trade messages do not alter the complex book and can be ignored if messages are being used solely to build a complex book. No Add Order message is sent for complex auction orders, and thus, no order modification messages may be sent when complex auctions are executed. Instead, a Trade message is sent whenever a complex auction is executed in whole or in part. A complete view of all Cboe complex executions can be built by combining all Order Executed messages and Trade messages.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.tradelongmessage", ftypes.STRING, nil, nil, nil, "The Trade message provides information about executions of complex order auctions on the Cboe complex book. A Trade message can also be sent when an auction executes against a non-displayed order, such as a contra response. Trade messages are necessary to calculate Cboe execution-based data. Trade messages do not alter the complex book and can be ignored if messages are being used solely to build a complex book. No Add Order message is sent for complex auction orders, and thus, no order modification messages may be sent when complex auctions are executed. Instead, a Trade message is sent whenever a complex auction is executed in whole or in part. A complete view of all Cboe complex executions can be built by combining all Order Executed messages and Trade messages.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.tradeshortmessage", ftypes.STRING, nil, nil, nil, "The Trade message provides information about executions of complex order auctions on the Cboe complex book. A Trade message can also be sent when an auction executes against a non-displayed order, such as a contra response. Trade messages are necessary to calculate Cboe execution-based data. Trade messages do not alter the complex book and can be ignored if messages are being used solely to build a complex book. No Add Order message is sent for complex auction orders, and thus, no order modification messages may be sent when complex auctions are executed. Instead, a Trade message is sent whenever a complex auction is executed in whole or in part. A complete view of all Cboe complex executions can be built by combining all Order Executed messages and Trade messages.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.tradingstatusmessage", ftypes.STRING, nil, nil, nil, "The Trading Status message is used to indicate the current trading status of a complex instrument. A Trading Status message will be sent whenever a complex instrument trading status changes. A Trading Status message will be sent for all complex instruments as they transition through various trading states. Starting at 7:30 a.m. ET, Cboe will send a Trading Status of Q once orders can be accepted for queuing in preparation for the RTH open. At or after 9:30 a.m. ET, Cboe will send a Trading Status of T as series are open for trading. Cboe will send a Trading Status of L as SPX or VIX series transition from RTH trading to Curb trading. A Trading Status message will also be sent: for a Regulatory Halt Q=Quotingperiod in any series where the underlying has experienced a Regulatory Halt as well as the T=Trading resumption for the same series. for instruments that are in a Q=Quoting period for auctions. The Trading Status field will be used to represent the status of the RTH (9:30 a.m. ET - 4:15 p.m. ET) and Curb sessions. The GTH Trading Status field will be used to represent the status of series that trade during the GTH session. The GTH session runs from 8:15 p.m. to 9:25 a.m. ET for SPX and VIX series.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.transaction_begin_message = ProtoField.new("Transaction Begin Message", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.transactionbeginmessage", ftypes.STRING, nil, nil, nil, "The Transaction Begin message indicates any subsequent messages, up to the accompanying Transaction End message, are all part of the same transaction block. All PITCH messages corresponding to such an event would be included between a Transaction Begin and Transaction End. It is important to note that any PITCH Message Type may be included in a transaction block and there is no guarantee that the messages apply to the same price level or even the same Symbol. Transaction Begin messages do not alter the book and can be ignored if messages are being used solely to build a book. Feed processors can use a transaction block as a trigger to postpone publishing a quote update until the end of the transaction block.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.transaction_end_message = ProtoField.new("Transaction End Message", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.transactionendmessage", ftypes.STRING, nil, nil, nil, "The Transaction End message indicates that a transaction indicated by a previous Transaction Begin message has completed. Transaction End messages do not alter the book and can be ignored if messages are being used solely to build a book.")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.unitclearmessage", ftypes.STRING, nil, nil, nil, "The Unit Clear message instructs feed recipients to clear all orders for the Cboe complex book in the unit specified in the Sequenced Unit Header.")

-- Cboe C1Options ComplexOptionsFutures Pitch 1.0.0 Generated Fields
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.complex_leg_index = ProtoField.new("Complex Leg Index", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.complexlegindex", ftypes.UINT16)
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.futures_price_leg_index = ProtoField.new("Futures Price Leg Index", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.futurespricelegindex", ftypes.UINT16)
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.message_index = ProtoField.new("Message Index", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.messageindex", ftypes.UINT16)
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.messagesequencenumber", ftypes.UINT64)
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.timestamp = ProtoField.new("Timestamp", "cboe.c1options.complexoptionsfutures.pitch.v1.0.0.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Cboe C1Options ComplexOptionsFutures Pitch 1.0.0 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp_format = 2

-- Hours behind UTC (America/New_York) for midnight calculation
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.utc_offset_hours = 5

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.format_timestamp = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe C1Options ComplexOptionsFutures Pitch 1.0.0 Element Dissection Options
show.application_messages = true
show.repeating_groups = true
show.structs = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Cboe C1Options ComplexOptionsFutures Pitch 1.0.0 Show Options
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.prefs.timestamp_format = Pref.enum("Time Offset Format", 2, "Time Offset display format", timestamp_format_enum, false)
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (America/New_York) for midnight calculation")

-- Handle changed preferences
function omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.prefs.show_application_messages then
    show.application_messages = omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.prefs.show_headers then
    show.headers = omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.prefs.show_headers
  end
  if show.repeating_groups ~= omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.prefs.show_repeating_groups then
    show.repeating_groups = omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.prefs.show_repeating_groups
  end
  if show.structs ~= omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.prefs.show_structs then
    show.structs = omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.prefs.show_indexes then
    show.indexes = omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.prefs.show_indexes
  end
  if show.sequences ~= omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.prefs.show_sequences then
    show.sequences = omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.prefs.show_sequences
  end
  if cboe_c1options_complexoptionsfutures_pitch_v1_0_0.format_timestamp ~= omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.prefs.format_timestamp then
    cboe_c1options_complexoptionsfutures_pitch_v1_0_0.format_timestamp = omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.prefs.format_timestamp
  end
  if cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp_format ~= omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.prefs.timestamp_format then
    cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp_format = omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.prefs.timestamp_format
  end
  if cboe_c1options_complexoptionsfutures_pitch_v1_0_0.utc_offset_hours ~= omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.prefs.utc_offset_hours then
    cboe_c1options_complexoptionsfutures_pitch_v1_0_0.utc_offset_hours = omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.prefs.utc_offset_hours
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.conversation = {}
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.conversation.data = function(packet)
  local key = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.conversation.key(packet)
  local data = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.conversation.flows[key]
  if data == nil then
    data = { time = { last = nil, frames = {} } }
    cboe_c1options_complexoptionsfutures_pitch_v1_0_0.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.conversation.current = nil


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
-- Cboe C1Options ComplexOptionsFutures Pitch 1.0.0 Fields
-----------------------------------------------------------------------

-- Auction End Offset
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_end_offset = {}

-- Size: Auction End Offset
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_end_offset.size = 4

-- Display: Auction End Offset
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_end_offset.display = function(value)
  return "Auction End Offset: "..value
end

-- Dissect: Auction End Offset
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_end_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_end_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_end_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.auction_end_offset, range, value, display)

  return offset + length, value
end

-- Auction Id
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_id = {}

-- Size: Auction Id
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_id.size = 8

-- Display: Auction Id
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Only Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_only_price = {}

-- Size: Auction Only Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_only_price.size = 8

-- Display: Auction Only Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_only_price.display = function(value)
  return "Auction Only Price: "..value
end

-- Translate: Auction Only Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_only_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Auction Only Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_only_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_only_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_only_price.translate(raw)
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_only_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.auction_only_price, range, value, display)

  return offset + length, value
end

-- Auction Type
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_type = {}

-- Size: Auction Type
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_type.size = 1

-- Display: Auction Type
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_type.labels = {
  ["C"] = "Auction Type: Complex Auction Coa (C)",
  ["B"] = "Auction Type: Complex Aim (B)",
  ["G"] = "Auction Type: Gth Opening (G)",
  ["O"] = "Auction Type: Rth Opening (O)",
  ["H"] = "Auction Type: Halt Re Opening (H)",
}

cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_type.display = function(value)
  return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_type.labels[value] or "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Buy Contracts
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.buy_contracts = {}

-- Size: Buy Contracts
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.buy_contracts.size = 4

-- Display: Buy Contracts
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.buy_contracts.display = function(value)
  return "Buy Contracts: "..value
end

-- Dissect: Buy Contracts
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.buy_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.buy_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.buy_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.buy_contracts, range, value, display)

  return offset + length, value
end

-- Canceled Quantity Long
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.canceled_quantity_long = {}

-- Size: Canceled Quantity Long
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.canceled_quantity_long.size = 4

-- Display: Canceled Quantity Long
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.canceled_quantity_long.display = function(value)
  return "Canceled Quantity Long: "..value
end

-- Dissect: Canceled Quantity Long
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.canceled_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.canceled_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.canceled_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.canceled_quantity_long, range, value, display)

  return offset + length, value
end

-- Canceled Quantity Short
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.canceled_quantity_short = {}

-- Size: Canceled Quantity Short
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.canceled_quantity_short.size = 2

-- Display: Canceled Quantity Short
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.canceled_quantity_short.display = function(value)
  return "Canceled Quantity Short: "..value
end

-- Dissect: Canceled Quantity Short
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.canceled_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.canceled_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.canceled_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.canceled_quantity_short, range, value, display)

  return offset + length, value
end

-- Client Id
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.client_id = {}

-- Size: Client Id
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.client_id.size = 4

-- Display: Client Id
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.client_id.display = function(value)
  return "Client Id: "..value
end

-- Dissect: Client Id
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.client_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.client_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.client_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.client_id, range, value, display)

  return offset + length, value
end

-- Complex Instrument Id Long
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_long = {}

-- Size: Complex Instrument Id Long
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_long.size = 8

-- Display: Complex Instrument Id Long
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_long.display = function(value)
  return "Complex Instrument Id Long: "..value
end

-- Dissect: Complex Instrument Id Long
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_long.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.complex_instrument_id_long, range, value, display)

  return offset + length, value
end

-- Complex Instrument Id Short
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_short = {}

-- Size: Complex Instrument Id Short
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_short.size = 6

-- Display: Complex Instrument Id Short
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_short.display = function(value)
  return "Complex Instrument Id Short: "..value
end

-- Dissect: Complex Instrument Id Short
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_short.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.complex_instrument_id_short, range, value, display)

  return offset + length, value
end

-- Complex Instrument Type
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_type = {}

-- Size: Complex Instrument Type
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_type.size = 1

-- Display: Complex Instrument Type
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_type.labels = {
  ["F"] = "Complex Instrument Type: One Leg Is A Futures Leg (F)",
}

cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_type.display = function(value)
  return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_type.labels[value] or "Complex Instrument Type: Unknown("..value..")"
end

-- Dissect: Complex Instrument Type
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.complex_instrument_type, range, value, display)

  return offset + length, value
end

-- Complex Instrument Underlying
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_underlying = {}

-- Size: Complex Instrument Underlying
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_underlying.size = 8

-- Display: Complex Instrument Underlying
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_underlying.display = function(value)
  return "Complex Instrument Underlying: "..value
end

-- Dissect: Complex Instrument Underlying
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_underlying.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_underlying.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.complex_instrument_underlying, range, value, display)

  return offset + length, value
end

-- Complex Symbol Id
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_symbol_id = {}

-- Size: Complex Symbol Id
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_symbol_id.size = 6

-- Display: Complex Symbol Id
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_symbol_id.display = function(value)
  return "Complex Symbol Id: "..value
end

-- Dissect: Complex Symbol Id
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_symbol_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_symbol_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_symbol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.complex_symbol_id, range, value, display)

  return offset + length, value
end

-- Composite Market Bid Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.composite_market_bid_price = {}

-- Size: Composite Market Bid Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.composite_market_bid_price.size = 8

-- Display: Composite Market Bid Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.composite_market_bid_price.display = function(value)
  return "Composite Market Bid Price: "..value
end

-- Translate: Composite Market Bid Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.composite_market_bid_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Bid Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.composite_market_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.composite_market_bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.composite_market_bid_price.translate(raw)
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.composite_market_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.composite_market_bid_price, range, value, display)

  return offset + length, value
end

-- Composite Market Offer Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.composite_market_offer_price = {}

-- Size: Composite Market Offer Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.composite_market_offer_price.size = 8

-- Display: Composite Market Offer Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.composite_market_offer_price.display = function(value)
  return "Composite Market Offer Price: "..value
end

-- Translate: Composite Market Offer Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.composite_market_offer_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Offer Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.composite_market_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.composite_market_offer_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.composite_market_offer_price.translate(raw)
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.composite_market_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.composite_market_offer_price, range, value, display)

  return offset + length, value
end

-- Customer Indicator
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.customer_indicator = {}

-- Size: Customer Indicator
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.customer_indicator.size = 1

-- Display: Customer Indicator
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.customer_indicator.labels = {
  ["N"] = "Customer Indicator: Non Customer (N)",
  ["C"] = "Customer Indicator: Customer (C)",
}

cboe_c1options_complexoptionsfutures_pitch_v1_0_0.customer_indicator.display = function(value)
  return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.customer_indicator.labels[value] or "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.customer_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.customer_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.customer_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Epoch Time
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.epoch_time = {}

-- Size: Epoch Time
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.epoch_time.size = 4

-- Display: Epoch Time
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.epoch_time.display = function(value)
  return "Epoch Time: "..value
end

-- Dissect: Epoch Time
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.epoch_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.epoch_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.epoch_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.epoch_time, range, value, display)

  return offset + length, value
end

-- Executed Quantity
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.executed_quantity = {}

-- Size: Executed Quantity
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.executed_quantity.size = 4

-- Display: Executed Quantity
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.execution_id = {}

-- Size: Execution Id
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.execution_id.size = 8

-- Display: Execution Id
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Feed Symbol
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.feed_symbol = {}

-- Size: Feed Symbol
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.feed_symbol.size = 6

-- Display: Feed Symbol
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.feed_symbol.display = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.feed_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.feed_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.feed_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Futures Leg Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.futures_leg_price = {}

-- Size: Futures Leg Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.futures_leg_price.size = 8

-- Display: Futures Leg Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.futures_leg_price.display = function(value)
  return "Futures Leg Price: "..value
end

-- Translate: Futures Leg Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.futures_leg_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Futures Leg Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.futures_leg_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.futures_leg_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.futures_leg_price.translate(raw)
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.futures_leg_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.futures_leg_price, range, value, display)

  return offset + length, value
end

-- Futures Price Leg Count
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.futures_price_leg_count = {}

-- Size: Futures Price Leg Count
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.futures_price_leg_count.size = 1

-- Display: Futures Price Leg Count
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.futures_price_leg_count.display = function(value)
  return "Futures Price Leg Count: "..value
end

-- Dissect: Futures Price Leg Count
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.futures_price_leg_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.futures_price_leg_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.futures_price_leg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.futures_price_leg_count, range, value, display)

  return offset + length, value
end

-- Gth Trading Status
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.gth_trading_status = {}

-- Size: Gth Trading Status
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.gth_trading_status.size = 1

-- Display: Gth Trading Status
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.gth_trading_status.labels = {
  ["H"] = "Gth Trading Status: Halted (H)",
  ["Q"] = "Gth Trading Status: Quote Only (Q)",
  ["T"] = "Gth Trading Status: Trading (T)",
}

cboe_c1options_complexoptionsfutures_pitch_v1_0_0.gth_trading_status.display = function(value)
  return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.gth_trading_status.labels[value] or "Gth Trading Status: Unknown("..value..")"
end

-- Dissect: Gth Trading Status
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.gth_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.gth_trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.gth_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.gth_trading_status, range, value, display)

  return offset + length, value
end

-- Indicative Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.indicative_price = {}

-- Size: Indicative Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.indicative_price.size = 8

-- Display: Indicative Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.indicative_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Indicative Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.indicative_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.indicative_price.translate(raw)
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Leg Count
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_count = {}

-- Size: Leg Count
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_count.size = 1

-- Display: Leg Count
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_count.display = function(value)
  return "Leg Count: "..value
end

-- Dissect: Leg Count
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.leg_count, range, value, display)

  return offset + length, value
end

-- Leg Index
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_index = {}

-- Size: Leg Index
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_index.size = 1

-- Display: Leg Index
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_index.display = function(value)
  return "Leg Index: "..value
end

-- Dissect: Leg Index
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_index.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.leg_index, range, value, display)

  return offset + length, value
end

-- Leg Ratio
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_ratio = {}

-- Size: Leg Ratio
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_ratio.size = 4

-- Display: Leg Ratio
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Security Type
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_security_type = {}

-- Size: Leg Security Type
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_security_type.size = 1

-- Display: Leg Security Type
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_security_type.labels = {
  ["O"] = "Leg Security Type: Leg Is An Option Instrument (O)",
  ["F"] = "Leg Security Type: Leg Is An Futures Instrument (F)",
}

cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_security_type.display = function(value)
  return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_security_type.labels[value] or "Leg Security Type: Unknown("..value..")"
end

-- Dissect: Leg Security Type
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_security_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Leg Symbol
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_symbol = {}

-- Size: Leg Symbol
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_symbol.size = 6

-- Display: Leg Symbol
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_symbol.display = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Length
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.length = {}

-- Size: Length
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.length.size = 2

-- Display: Length
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.length, range, value, display)

  return offset + length, value
end

-- Message Count
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_count = {}

-- Size: Message Count
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_count.size = 1

-- Display: Message Count
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_length = {}

-- Size: Message Length
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_length.size = 1

-- Display: Message Length
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_type = {}

-- Size: Message Type
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_type.size = 1

-- Display: Message Type
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_type.display = function(value)
  if value == 0x20 then
    return "Message Type: Time Message (0x20)"
  end
  if value == 0x97 then
    return "Message Type: Unit Clear Message (0x97)"
  end
  if value == 0xBC then
    return "Message Type: Transaction Begin Message (0xBC)"
  end
  if value == 0xBD then
    return "Message Type: Transaction End Message (0xBD)"
  end
  if value == 0xFC then
    return "Message Type: Complex Options Futures Instrument Definition Message (0xFC)"
  end
  if value == 0x2E then
    return "Message Type: Symbol Mapping Message (0x2E)"
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
  if value == 0xFD then
    return "Message Type: Trade Futures Options Message (0xFD)"
  end
  if value == 0xAD then
    return "Message Type: Auction Notification Message (0xAD)"
  end
  if value == 0xAE then
    return "Message Type: Auction Cancel Message (0xAE)"
  end
  if value == 0xAF then
    return "Message Type: Auction Trade Message (0xAF)"
  end
  if value == 0x31 then
    return "Message Type: Trading Status Message (0x31)"
  end
  if value == 0xD1 then
    return "Message Type: Options Auction Update Message (0xD1)"
  end
  if value == 0x96 then
    return "Message Type: Auction Summary Message (0x96)"
  end
  if value == 0x2D then
    return "Message Type: End Of Session Message (0x2D)"
  end

  return "Message Type: Unknown("..string.format("0x%02X", value)..")"
end

-- Dissect: Message Type
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Opening Condition
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.opening_condition = {}

-- Size: Opening Condition
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.opening_condition.size = 1

-- Display: Opening Condition
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.opening_condition.display = function(value)
  return "Opening Condition: "..value
end

-- Dissect: Opening Condition
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.opening_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.opening_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.opening_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.opening_condition, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id = {}

-- Size: Order Id
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.size = 8

-- Display: Order Id
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.order_id, range, value, display)

  return offset + length, value
end

-- Osi Symbol
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.osi_symbol = {}

-- Size: Osi Symbol
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.osi_symbol.size = 21

-- Display: Osi Symbol
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.osi_symbol.display = function(value)
  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.osi_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.osi_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.osi_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.osi_symbol, range, value, display)

  return offset + length, value
end

-- Participant Id
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.participant_id = {}

-- Size: Participant Id
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.participant_id.size = 4

-- Display: Participant Id
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Quantity Long
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_long = {}

-- Size: Quantity Long
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_long.size = 4

-- Display: Quantity Long
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_long.display = function(value)
  return "Quantity Long: "..value
end

-- Dissect: Quantity Long
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.quantity_long, range, value, display)

  return offset + length, value
end

-- Quantity Short
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_short = {}

-- Size: Quantity Short
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_short.size = 2

-- Display: Quantity Short
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_short.display = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Reference Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reference_price = {}

-- Size: Reference Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reference_price.size = 8

-- Display: Reference Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reference_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Reference Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reference_price.translate(raw)
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Remaining Quantity
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.remaining_quantity = {}

-- Size: Remaining Quantity
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.remaining_quantity.size = 4

-- Display: Remaining Quantity
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.remaining_quantity.display = function(value)
  return "Remaining Quantity: "..value
end

-- Dissect: Remaining Quantity
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.remaining_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.remaining_quantity, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_1 = {}

-- Size: Reserved 1
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_1.size = 1

-- Display: Reserved 1
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_2 = {}

-- Size: Reserved 2
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_2.size = 2

-- Display: Reserved 2
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 3
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_3 = {}

-- Size: Reserved 3
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_3.size = 3

-- Display: Reserved 3
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Reserved 5
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_5 = {}

-- Size: Reserved 5
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_5.size = 5

-- Display: Reserved 5
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_5.display = function(value)
  return "Reserved 5: "..value
end

-- Dissect: Reserved 5
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_5.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.reserved_5, range, value, display)

  return offset + length, value
end

-- Second Reserved 1
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.second_reserved_1 = {}

-- Size: Second Reserved 1
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.second_reserved_1.size = 1

-- Display: Second Reserved 1
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.second_reserved_1.display = function(value)
  return "Second Reserved 1: "..value
end

-- Dissect: Second Reserved 1
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.second_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.second_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.second_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.second_reserved_1, range, value, display)

  return offset + length, value
end

-- Sell Contracts
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.sell_contracts = {}

-- Size: Sell Contracts
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.sell_contracts.size = 4

-- Display: Sell Contracts
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.sell_contracts.display = function(value)
  return "Sell Contracts: "..value
end

-- Dissect: Sell Contracts
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.sell_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.sell_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.sell_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.sell_contracts, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.sequence = {}

-- Size: Sequence
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.sequence.size = 4

-- Display: Sequence
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.sequence, range, value, display)

  return offset + length, value
end

-- Side
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.side = {}

-- Size: Side
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.side.size = 1

-- Display: Side
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.side.labels = {
  ["B"] = "Side: Buy (B)",
  ["S"] = "Side: Sell (S)",
}

cboe_c1options_complexoptionsfutures_pitch_v1_0_0.side.display = function(value)
  return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.side, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.side_indicator = {}

-- Size: Side Indicator
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.side_indicator.size = 1

-- Display: Side Indicator
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.side_indicator.labels = {
  ["B"] = "Side Indicator: Buy Order (B)",
  ["S"] = "Side Indicator: Sell Order (S)",
}

cboe_c1options_complexoptionsfutures_pitch_v1_0_0.side_indicator.display = function(value)
  return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.side_indicator.labels[value] or "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Signed Price Long
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_long = {}

-- Size: Signed Price Long
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_long.size = 8

-- Display: Signed Price Long
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_long.display = function(value)
  return "Signed Price Long: "..value
end

-- Translate: Signed Price Long
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_long.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Signed Price Long
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_long.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_long.translate(raw)
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.signed_price_long, range, value, display)

  return offset + length, value
end

-- Signed Price Short
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_short = {}

-- Size: Signed Price Short
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_short.size = 2

-- Display: Signed Price Short
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_short.display = function(value)
  return "Signed Price Short: "..value
end

-- Translate: Signed Price Short
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Signed Price Short
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_short.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_short.translate(raw)
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.signed_price_short, range, value, display)

  return offset + length, value
end

-- Symbol Condition
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.symbol_condition = {}

-- Size: Symbol Condition
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.symbol_condition.size = 1

-- Display: Symbol Condition
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.symbol_condition.labels = {
  ["N"] = "Symbol Condition: Normal (N)",
  ["C"] = "Symbol Condition: Closing Only (C)",
}

cboe_c1options_complexoptionsfutures_pitch_v1_0_0.symbol_condition.display = function(value)
  return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.symbol_condition.labels[value] or "Symbol Condition: Unknown("..value..")"
end

-- Dissect: Symbol Condition
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.symbol_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.symbol_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.symbol_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.symbol_condition, range, value, display)

  return offset + length, value
end

-- Time
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time = {}

-- Size: Time
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time.size = 4

-- Store: Time
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time.current = nil

-- Generated: Time
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time.generated = function(value, range, packet, parent)
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time.display(value)
  local time = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.time, range, value, display)
  time:set_generated()
end

-- Display: Time
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset = {}

-- Size: Time Offset
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.size = 4

-- Display: Time Offset
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp = {}

-- Size: Timestamp
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.size = 4

-- Display: Timestamp
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Total Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.total_price = {}

-- Size: Total Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.total_price.size = 8

-- Display: Total Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.total_price.display = function(value)
  return "Total Price: "..value
end

-- Translate: Total Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.total_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Total Price
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.total_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.total_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.total_price.translate(raw)
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.total_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.total_price, range, value, display)

  return offset + length, value
end

-- Trade Condition
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_condition = {}

-- Size: Trade Condition
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_condition.size = 1

-- Display: Trade Condition
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_condition.labels = {
  ["N"] = "Trade Condition: Future Options Auto Electronic Trade (N)",
  ["M"] = "Trade Condition: Future Options Auction Trade (M)",
  ["P"] = "Trade Condition: Future Options Cross (P)",
}

cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_condition.display = function(value)
  return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_condition.labels[value] or "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trading_status = {}

-- Size: Trading Status
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trading_status.size = 1

-- Display: Trading Status
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trading_status.labels = {
  ["H"] = "Trading Status: Halted (H)",
  ["L"] = "Trading Status: Curb Trading (L)",
  ["Q"] = "Trading Status: Quote Only (Q)",
  ["T"] = "Trading Status: Rth Trading (T)",
}

cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trading_status.display = function(value)
  return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trading_status.labels[value] or "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Underlying
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.underlying = {}

-- Size: Underlying
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.underlying.size = 8

-- Display: Underlying
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.underlying.display = function(value)
  return "Underlying: "..value
end

-- Dissect: Underlying
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.underlying.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.underlying.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.underlying, range, value, display)

  return offset + length, value
end

-- Unit
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.unit = {}

-- Size: Unit
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.unit.size = 1

-- Display: Unit
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.unit, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp = {}

-- Translate: Timestamp
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.translate = function(time_offset, stored_time)
  return UInt64.new(stored_time * 1000000000 + time_offset)
end

-- Display: Timestamp
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.display = function(time_offset, stored_time, packet)
  -- Raw display mode
  if cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp_format == 0 then
    return "Timestamp: "..(stored_time * 1000000000 + time_offset)
  end

  -- Full datetime mode (calculate from capture date + UTC offset)
  if cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400
    local full_seconds = local_midnight + stored_time

    return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", time_offset)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", stored_time)..string.format("%09d", time_offset)
end

-- Composite: Timestamp
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.composite = function(buffer, offset, stored_time, packet, parent)
  local length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.size
  local range = buffer(offset, length)
  local time_offset = range:le_uint()
  local value = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.translate(time_offset, stored_time)
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.display(time_offset, stored_time, packet)
  parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.timestamp, range, value, display)

  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time.generated(stored_time, range, packet, parent)

  display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.display(time_offset)
  parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.time_offset, range, time_offset, display)

  return offset + length, value
end

-- Dissect: Timestamp
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.dissect = function(buffer, offset, packet, parent)
  if cboe_c1options_complexoptionsfutures_pitch_v1_0_0.format_timestamp then
    local stored_time = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time.current

    if stored_time ~= nil then
      return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.composite(buffer, offset, stored_time, packet, parent)
    end
  end

  return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Cboe C1Options ComplexOptionsFutures Pitch 1.0.0
-----------------------------------------------------------------------

-- End Of Session Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.end_of_session_message = {}

-- Size: End Of Session Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.end_of_session_message.size =
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.size

-- Display: End Of Session Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Summary Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_summary_message = {}

-- Size: Auction Summary Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_summary_message.size =
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_long.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_type.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_long.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_long.size

-- Display: Auction Summary Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Long: Printable ASCII
  index, complex_instrument_id_long = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_long.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_type.dissect(buffer, index, packet, parent)

  -- Signed Price Long: Binary Signed Long Price
  index, signed_price_long = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_long.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Auction Update Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.options_auction_update_message = {}

-- Size: Options Auction Update Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.options_auction_update_message.size =
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_long.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_type.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reference_price.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.buy_contracts.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.sell_contracts.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.indicative_price.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_only_price.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.opening_condition.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.composite_market_bid_price.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.composite_market_offer_price.size

-- Display: Options Auction Update Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.options_auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Auction Update Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.options_auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Long: Printable ASCII
  index, complex_instrument_id_long = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_long.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price: Binary Long Price
  index, reference_price = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reference_price.dissect(buffer, index, packet, parent)

  -- Buy Contracts: Binary
  index, buy_contracts = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.buy_contracts.dissect(buffer, index, packet, parent)

  -- Sell Contracts: Binary
  index, sell_contracts = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.sell_contracts.dissect(buffer, index, packet, parent)

  -- Indicative Price: Binary Signed Long Price
  index, indicative_price = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.indicative_price.dissect(buffer, index, packet, parent)

  -- Auction Only Price: Binary Signed Long Price
  index, auction_only_price = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_only_price.dissect(buffer, index, packet, parent)

  -- Opening Condition: Alphanumeric
  index, opening_condition = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.opening_condition.dissect(buffer, index, packet, parent)

  -- Composite Market Bid Price: Binary Signed Long Price
  index, composite_market_bid_price = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.composite_market_bid_price.dissect(buffer, index, packet, parent)

  -- Composite Market Offer Price: Binary Signed Long Price
  index, composite_market_offer_price = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.composite_market_offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Auction Update Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.options_auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.options_auction_update_message, buffer(offset, 0))
    local index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.options_auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.options_auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.options_auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trading_status_message = {}

-- Size: Trading Status Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trading_status_message.size =
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_symbol_id.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_2.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trading_status.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_1.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.gth_trading_status.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.second_reserved_1.size

-- Display: Trading Status Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Complex Symbol Id: Printable ASCII
  index, complex_symbol_id = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_symbol_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: Reserved
  index, reserved_2 = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_2.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_1.dissect(buffer, index, packet, parent)

  -- Gth Trading Status: Alpha
  index, gth_trading_status = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.gth_trading_status.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: Reserved
  index, second_reserved_1 = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.second_reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Trade Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_trade_message = {}

-- Size: Auction Trade Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_trade_message.size =
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_id.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.execution_id.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_long.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_long.size

-- Display: Auction Trade Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Trade Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_id.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.execution_id.dissect(buffer, index, packet, parent)

  -- Signed Price Long: Binary Signed Long Price
  index, signed_price_long = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_long.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Trade Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.auction_trade_message, buffer(offset, 0))
    local index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Cancel Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_cancel_message = {}

-- Size: Auction Cancel Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_cancel_message.size =
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_id.size

-- Display: Auction Cancel Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Cancel Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Cancel Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.auction_cancel_message, buffer(offset, 0))
    local index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Notification Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_notification_message = {}

-- Size: Auction Notification Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_notification_message.size =
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_short.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_id.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_type.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.side.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_long.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_long.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.customer_indicator.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.participant_id.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_end_offset.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.client_id.size

-- Display: Auction Notification Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Notification Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Short: Printable ASCII
  index, complex_instrument_id_short = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_short.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_type.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.side.dissect(buffer, index, packet, parent)

  -- Signed Price Long: Binary Signed Long Price
  index, signed_price_long = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_long.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_long.dissect(buffer, index, packet, parent)

  -- Customer Indicator: Alphanumeric
  index, customer_indicator = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.customer_indicator.dissect(buffer, index, packet, parent)

  -- Participant Id: Alphanumeric
  index, participant_id = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.participant_id.dissect(buffer, index, packet, parent)

  -- Auction End Offset: Binary
  index, auction_end_offset = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_end_offset.dissect(buffer, index, packet, parent)

  -- Client Id: Alphanumeric
  index, client_id = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.client_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Notification Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.auction_notification_message, buffer(offset, 0))
    local index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Futures Options Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_futures_options_message = {}

-- Size: Trade Futures Options Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_futures_options_message.size =
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.side_indicator.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_long.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_short.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.total_price.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.execution_id.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_condition.size

-- Display: Trade Futures Options Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_futures_options_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Futures Options Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_futures_options_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_long.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Short: Printable ASCII
  index, complex_instrument_id_short = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_short.dissect(buffer, index, packet, parent)

  -- Total Price: Binary Signed Long Price
  index, total_price = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.total_price.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Futures Options Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_futures_options_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.trade_futures_options_message, buffer(offset, 0))
    local index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_futures_options_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_futures_options_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_futures_options_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Short Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_short_message = {}

-- Size: Trade Short Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_short_message.size =
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.side_indicator.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_short.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_short.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_short.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.execution_id.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_condition.size

-- Display: Trade Short Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Short Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_short.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Short: Printable ASCII
  index, complex_instrument_id_short = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_short.dissect(buffer, index, packet, parent)

  -- Signed Price Short: Binary Signed Short Price
  index, signed_price_short = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_short.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.trade_short_message, buffer(offset, 0))
    local index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Long Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_long_message = {}

-- Size: Trade Long Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_long_message.size =
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.side_indicator.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_long.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_short.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_long.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.execution_id.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_condition.size

-- Display: Trade Long Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Long Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_long.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Short: Printable ASCII
  index, complex_instrument_id_short = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_short.dissect(buffer, index, packet, parent)

  -- Signed Price Long: Binary Signed Long Price
  index, signed_price_long = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_long.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.trade_long_message, buffer(offset, 0))
    local index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.delete_order_message = {}

-- Size: Delete Order Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.delete_order_message.size =
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.size

-- Display: Delete Order Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.delete_order_message, buffer(offset, 0))
    local index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Short Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.modify_order_short_message = {}

-- Size: Modify Order Short Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.modify_order_short_message.size =
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_short.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_short.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_1.size

-- Display: Modify Order Short Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.modify_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Short Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.modify_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_short.dissect(buffer, index, packet, parent)

  -- Signed Price Short: Binary Signed Short Price
  index, signed_price_short = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_short.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Short Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.modify_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.modify_order_short_message, buffer(offset, 0))
    local index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.modify_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.modify_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.modify_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Long Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.modify_order_long_message = {}

-- Size: Modify Order Long Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.modify_order_long_message.size =
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_long.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_long.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_1.size

-- Display: Modify Order Long Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.modify_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Long Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.modify_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_long.dissect(buffer, index, packet, parent)

  -- Signed Price Long: Binary Signed Long Price
  index, signed_price_long = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_long.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Long Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.modify_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.modify_order_long_message, buffer(offset, 0))
    local index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.modify_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.modify_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.modify_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Short Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reduce_size_short_message = {}

-- Size: Reduce Size Short Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reduce_size_short_message.size =
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.canceled_quantity_short.size

-- Display: Reduce Size Short Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reduce_size_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Short Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reduce_size_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Quantity Short: Binary
  index, canceled_quantity_short = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.canceled_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Short Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reduce_size_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.reduce_size_short_message, buffer(offset, 0))
    local index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reduce_size_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reduce_size_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reduce_size_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Long Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reduce_size_long_message = {}

-- Size: Reduce Size Long Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reduce_size_long_message.size =
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.canceled_quantity_long.size

-- Display: Reduce Size Long Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reduce_size_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Long Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reduce_size_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Quantity Long: Binary
  index, canceled_quantity_long = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.canceled_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Long Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reduce_size_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.reduce_size_long_message, buffer(offset, 0))
    local index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reduce_size_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reduce_size_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reduce_size_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed At Price Size Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_executed_at_price_size_message = {}

-- Size: Order Executed At Price Size Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_executed_at_price_size_message.size =
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.executed_quantity.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.remaining_quantity.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.execution_id.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_long.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_condition.size

-- Display: Order Executed At Price Size Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_executed_at_price_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed At Price Size Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_executed_at_price_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary
  index, executed_quantity = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.executed_quantity.dissect(buffer, index, packet, parent)

  -- Remaining Quantity: Binary
  index, remaining_quantity = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.remaining_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.execution_id.dissect(buffer, index, packet, parent)

  -- Signed Price Long: Binary Signed Long Price
  index, signed_price_long = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_long.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed At Price Size Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_executed_at_price_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.order_executed_at_price_size_message, buffer(offset, 0))
    local index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_executed_at_price_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_executed_message = {}

-- Size: Order Executed Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_executed_message.size =
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.executed_quantity.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.execution_id.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_condition.size

-- Display: Order Executed Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary
  index, executed_quantity = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.executed_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.order_executed_message, buffer(offset, 0))
    local index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Expanded Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.add_order_expanded_message = {}

-- Size: Add Order Expanded Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.add_order_expanded_message.size =
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.side_indicator.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_long.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_long.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_long.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_1.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.participant_id.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.customer_indicator.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.client_id.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_5.size

-- Display: Add Order Expanded Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.add_order_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Expanded Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.add_order_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_long.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Long: Printable ASCII
  index, complex_instrument_id_long = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_long.dissect(buffer, index, packet, parent)

  -- Signed Price Long: Binary Signed Long Price
  index, signed_price_long = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_long.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_1.dissect(buffer, index, packet, parent)

  -- Participant Id: Alphanumeric
  index, participant_id = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.participant_id.dissect(buffer, index, packet, parent)

  -- Customer Indicator: Alphanumeric
  index, customer_indicator = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.customer_indicator.dissect(buffer, index, packet, parent)

  -- Client Id: Alphanumeric
  index, client_id = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.client_id.dissect(buffer, index, packet, parent)

  -- Reserved 5: Reserved
  index, reserved_5 = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Expanded Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.add_order_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.add_order_expanded_message, buffer(offset, 0))
    local index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.add_order_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.add_order_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.add_order_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.add_order_short_message = {}

-- Size: Add Order Short Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.add_order_short_message.size =
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.side_indicator.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_short.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_short.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_short.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_1.size

-- Display: Add Order Short Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.add_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.add_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_short.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Short: Printable ASCII
  index, complex_instrument_id_short = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_short.dissect(buffer, index, packet, parent)

  -- Signed Price Short: Binary Signed Short Price
  index, signed_price_short = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_short.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.add_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.add_order_short_message, buffer(offset, 0))
    local index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.add_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.add_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.add_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.add_order_long_message = {}

-- Size: Add Order Long Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.add_order_long_message.size =
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.side_indicator.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_long.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_short.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_long.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_1.size

-- Display: Add Order Long Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.add_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.add_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.quantity_long.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Short: Printable ASCII
  index, complex_instrument_id_short = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_short.dissect(buffer, index, packet, parent)

  -- Signed Price Long: Binary Signed Long Price
  index, signed_price_long = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.signed_price_long.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.add_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.add_order_long_message, buffer(offset, 0))
    local index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.add_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.add_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.add_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Mapping Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.symbol_mapping_message = {}

-- Size: Symbol Mapping Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.symbol_mapping_message.size =
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.feed_symbol.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.osi_symbol.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.symbol_condition.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.underlying.size

-- Display: Symbol Mapping Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Mapping Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: Printable ASCII
  index, feed_symbol = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.feed_symbol.dissect(buffer, index, packet, parent)

  -- Osi Symbol: Printable ASCII
  index, osi_symbol = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.osi_symbol.dissect(buffer, index, packet, parent)

  -- Symbol Condition: Alphanumeric
  index, symbol_condition = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.symbol_condition.dissect(buffer, index, packet, parent)

  -- Underlying: Alphanumeric
  index, underlying = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.underlying.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.symbol_mapping_message, buffer(offset, 0))
    local index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Futures Price Leg
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.futures_price_leg = {}

-- Size: Futures Price Leg
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.futures_price_leg.size =
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_index.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.futures_leg_price.size

-- Display: Futures Price Leg
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.futures_price_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Price Leg
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.futures_price_leg.fields = function(buffer, offset, packet, parent, futures_price_leg_index)
  local index = offset

  -- Implicit Futures Price Leg Index
  if futures_price_leg_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.futures_price_leg_index, futures_price_leg_index)
    iteration:set_generated()
  end

  -- Leg Index: Binary
  index, leg_index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_index.dissect(buffer, index, packet, parent)

  -- Futures Leg Price: Binary Unsigned Price
  index, futures_leg_price = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.futures_leg_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Price Leg
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.futures_price_leg.dissect = function(buffer, offset, packet, parent, futures_price_leg_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.futures_price_leg, buffer(offset, 0))
    local index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.futures_price_leg.fields(buffer, offset, packet, parent, futures_price_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.futures_price_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.futures_price_leg.fields(buffer, offset, packet, parent, futures_price_leg_index)
  end
end

-- Complex Leg
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_leg = {}

-- Size: Complex Leg
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_leg.size =
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_symbol.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_ratio.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_security_type.size

-- Display: Complex Leg
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Leg
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_leg.fields = function(buffer, offset, packet, parent, complex_leg_index)
  local index = offset

  -- Implicit Complex Leg Index
  if complex_leg_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.complex_leg_index, complex_leg_index)
    iteration:set_generated()
  end

  -- Leg Symbol: Printable ASCII
  index, leg_symbol = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_symbol.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Signed Binary
  index, leg_ratio = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_ratio.dissect(buffer, index, packet, parent)

  -- Leg Security Type: Alphanumeric
  index, leg_security_type = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_security_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Leg
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_leg.dissect = function(buffer, offset, packet, parent, complex_leg_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.complex_leg, buffer(offset, 0))
    local index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_leg.fields(buffer, offset, packet, parent, complex_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_leg.fields(buffer, offset, packet, parent, complex_leg_index)
  end
end

-- Complex Options Futures Instrument Definition Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_options_futures_instrument_definition_message = {}

-- Calculate size of: Complex Options Futures Instrument Definition Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_options_futures_instrument_definition_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.size

  index = index + cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_short.size

  index = index + cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_underlying.size

  index = index + cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_type.size

  index = index + cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_3.size

  index = index + cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_count.size

  index = index + cboe_c1options_complexoptionsfutures_pitch_v1_0_0.futures_price_leg_count.size

  -- Calculate field size from count
  local complex_leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + complex_leg_count * 11

  -- Calculate field size from count
  local futures_price_leg_count = buffer(offset + 23, 1):le_uint()
  index = index + futures_price_leg_count * 9

  return index
end

-- Display: Complex Options Futures Instrument Definition Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_options_futures_instrument_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Options Futures Instrument Definition Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_options_futures_instrument_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Short: Printable ASCII
  index, complex_instrument_id_short = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_id_short.dissect(buffer, index, packet, parent)

  -- Complex Instrument Underlying: Printable ASCII
  index, complex_instrument_underlying = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_underlying.dissect(buffer, index, packet, parent)

  -- Complex Instrument Type: Alphanumeric
  index, complex_instrument_type = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_instrument_type.dissect(buffer, index, packet, parent)

  -- Reserved 3: Reserved
  index, reserved_3 = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reserved_3.dissect(buffer, index, packet, parent)

  -- Leg Count: Binary
  index, leg_count = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.leg_count.dissect(buffer, index, packet, parent)

  -- Futures Price Leg Count: Binary
  index, futures_price_leg_count = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.futures_price_leg_count.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Leg
  for complex_leg_index = 1, futures_price_leg_count do
    index, complex_leg = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_leg.dissect(buffer, index, packet, parent, complex_leg_index)
  end

  -- Repeating: Futures Price Leg
  for futures_price_leg_index = 1, futures_price_leg_count do
    index, futures_price_leg = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.futures_price_leg.dissect(buffer, index, packet, parent, futures_price_leg_index)
  end

  return index
end

-- Dissect: Complex Options Futures Instrument Definition Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_options_futures_instrument_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.complex_options_futures_instrument_definition_message, buffer(offset, 0))
    local index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_options_futures_instrument_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_options_futures_instrument_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_options_futures_instrument_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Transaction End Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.transaction_end_message = {}

-- Size: Transaction End Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.transaction_end_message.size =
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.size

-- Display: Transaction End Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.transaction_end_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction End Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.transaction_end_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction End Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.transaction_end_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.transaction_end_message, buffer(offset, 0))
    local index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.transaction_end_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.transaction_end_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.transaction_end_message.fields(buffer, offset, packet, parent)
  end
end

-- Transaction Begin Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.transaction_begin_message = {}

-- Size: Transaction Begin Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.transaction_begin_message.size =
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.size

-- Display: Transaction Begin Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.transaction_begin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction Begin Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.transaction_begin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction Begin Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.transaction_begin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.transaction_begin_message, buffer(offset, 0))
    local index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.transaction_begin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.transaction_begin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.transaction_begin_message.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.unit_clear_message = {}

-- Size: Unit Clear Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.unit_clear_message.size =
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_offset.size

-- Display: Unit Clear Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_message = {}

-- Size: Time Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_message.size =
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.epoch_time.size

-- Display: Time Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time.dissect(buffer, index, packet, parent)

  -- Store Time Value
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time.current = time

  if not packet.visited then
    cboe_c1options_complexoptionsfutures_pitch_v1_0_0.conversation.current.time.last = time
  end

  -- Epoch Time: Binary
  index, epoch_time = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.epoch_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.time_message, buffer(offset, 0))
    local index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.payload = {}

-- Dissect: Payload
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.unit_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Transaction Begin Message
  if message_type == 0xBC then
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.transaction_begin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Transaction End Message
  if message_type == 0xBD then
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.transaction_end_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Options Futures Instrument Definition Message
  if message_type == 0xFC then
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.complex_options_futures_instrument_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Mapping Message
  if message_type == 0x2E then
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Message
  if message_type == 0x21 then
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.add_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Message
  if message_type == 0x22 then
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.add_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Expanded Message
  if message_type == 0x2F then
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.add_order_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 0x23 then
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.order_executed_at_price_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reduce_size_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.reduce_size_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Long Message
  if message_type == 0x27 then
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.modify_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Short Message
  if message_type == 0x28 then
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.modify_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 0x29 then
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Long Message
  if message_type == 0x2A then
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Short Message
  if message_type == 0x2B then
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Futures Options Message
  if message_type == 0xFD then
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trade_futures_options_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Notification Message
  if message_type == 0xAD then
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Cancel Message
  if message_type == 0xAE then
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Trade Message
  if message_type == 0xAF then
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Auction Update Message
  if message_type == 0xD1 then
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.options_auction_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if message_type == 0x96 then
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.auction_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.end_of_session_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_header = {}

-- Size: Message Header
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_header.size =
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_length.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_type.size

-- Display: Message Header
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 26 values
  index, message_type = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.message_header, buffer(offset, 0))
    local index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message = {}

-- Read runtime size of: Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and cboe_c1options_complexoptionsfutures_pitch_v1_0_0.packet_sequence ~= nil then
    local sequence = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.message_sequence_number, UInt64.new(cboe_c1options_complexoptionsfutures_pitch_v1_0_0.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 26 branches
  index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.message, buffer(offset, 0))
    local current = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.heartbeat = {}

-- Display: Heartbeat
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.messages = {}

-- Dissect: Messages
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.messages.dispatch = {
  [0] = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.heartbeat.dissect,
}

cboe_c1options_complexoptionsfutures_pitch_v1_0_0.messages.dissect = function(buffer, offset, packet, parent, message_count)
  local dissect = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.messages.dispatch[message_count]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.packet_header = {}

-- Size: Packet Header
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.packet_header.size =
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.length.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_count.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.unit.size + 
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.sequence.size

-- Display: Packet Header
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.message_count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.sequence.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.packet_sequence = sequence

  return index
end

-- Dissect: Packet Header
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.fields.packet_header, buffer(offset, 0))
    local index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.packet = {}

-- Verify required size of Udp packet
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_c1options_complexoptionsfutures_pitch_v1_0_0.packet_header.size
end

-- Dissect Packet
cboe_c1options_complexoptionsfutures_pitch_v1_0_0.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.conversation.data(packet)
  if not packet.visited then
    data.time.frames[packet.number] = data.time.last
  end
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time.current = data.time.frames[packet.number]
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_c1options_complexoptionsfutures_pitch_v1_0_0.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.init()
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.time.current = nil
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.conversation.current = nil
  cboe_c1options_complexoptionsfutures_pitch_v1_0_0.conversation.flows = {}
end

-- Dissector for Cboe C1Options ComplexOptionsFutures Pitch 1.0.0
function omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0, buffer(), omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.description, "("..buffer:len().." Bytes)")
  return cboe_c1options_complexoptionsfutures_pitch_v1_0_0.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe C1Options ComplexOptionsFutures Pitch 1.0.0 (Udp)
local function omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_c1options_complexoptionsfutures_pitch_v1_0_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0
  omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe C1Options ComplexOptionsFutures Pitch 1.0.0
omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0:register_heuristic("udp", omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0_udp_heuristic)

-- Register Cboe C1Options ComplexOptionsFutures Pitch 1.0.0 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_cboe_c1options_complexoptionsfutures_pitch_v1_0_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.0.0
--   Date: Wednesday, September 16, 2026
--   Specification: technical-specifications-cboe-titanium-us-options-complex-multicast-futures-options-order-type-pitch-specification.pdf
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
