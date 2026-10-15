-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe BzxOptions MulticastTop Pitch 1.2.54 Protocol
local omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54 = Proto("Omi.Cboe.BzxOptions.MulticastTop.Pitch.v1.2.54", "Cboe BzxOptions MulticastTop Pitch 1.2.54")

-- Protocol table
local cboe_bzxoptions_multicasttop_pitch_v1_2_54 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe BzxOptions MulticastTop Pitch 1.2.54 Fields
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.aon = ProtoField.new("Aon", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.aon", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08, "0 = Price level is a firm quote, 1 = Price Level is AON (All or None).")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.ask_customer_quantity_long = ProtoField.new("Ask Customer Quantity Long", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.askcustomerquantitylong", ftypes.UINT32, nil, nil, nil, "Number of customer contracts on the inside ask. A zero value denotes there are no customer contracts at the inside price. If Customer bit is set, this will be the number of customer contracts on the inside ask considering only customer firm quotes. Will always be zero for C2.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.ask_customer_quantity_short = ProtoField.new("Ask Customer Quantity Short", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.askcustomerquantityshort", ftypes.UINT16, nil, nil, nil, "Number of customer contracts on the inside ask. A zero value denotes there are no customer contracts at the inside price. If Customer bit is set, this will be the number of customer contracts on the inside ask considering only customer firm quotes. Will always be zero for C2.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.ask_price_long = ProtoField.new("Ask Price Long", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.askpricelong", ftypes.DOUBLE, nil, nil, nil, "Ask Price.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.ask_price_short = ProtoField.new("Ask Price Short", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.askpriceshort", ftypes.DOUBLE, nil, nil, nil, "Ask Price.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.ask_quantity_long = ProtoField.new("Ask Quantity Long", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.askquantitylong", ftypes.UINT32, nil, nil, nil, "Total number of contracts on the inside ask (customer and non-customer). A zero value indicates there is no ask. If Customer bit is set, this will be zero.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.ask_quantity_short = ProtoField.new("Ask Quantity Short", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.askquantityshort", ftypes.UINT16, nil, nil, nil, "Total number of contracts on the inside ask (customer and non-customer). A zero value indicates there is no ask. If Customer bit is set, this will be zero.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.auction_only_price = ProtoField.new("Auction Only Price", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.auctiononlyprice", ftypes.DOUBLE, nil, nil, nil, "Uncollared VMIM price computed on the queuing book only.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.auction_type = ProtoField.new("Auction Type", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.auctiontype", ftypes.STRING, nil, nil, nil, "G = GTH Opening (C1 Only), O = RTH Opening (C1 Only), H = Halt Re-Opening, V = Volatility Opening.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.bid_customer_quantity_long = ProtoField.new("Bid Customer Quantity Long", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.bidcustomerquantitylong", ftypes.UINT32, nil, nil, nil, "Number of customer contracts on the inside bid. A zero value denotes there are no customer contracts at the inside price. If Customer bit is set, this will be the number of customer contracts on the inside bid considering only customer firm quotes. Will always be zero for C2.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.bid_customer_quantity_short = ProtoField.new("Bid Customer Quantity Short", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.bidcustomerquantityshort", ftypes.UINT16, nil, nil, nil, "Number of customer contracts on the inside bid. A zero value denotes there are no customer contracts at the inside price. If Customer bit is set, this will be the number of customer contracts on the inside bid considering only customer firm quotes. Will always be zero for C2.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.bid_price_long = ProtoField.new("Bid Price Long", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.bidpricelong", ftypes.DOUBLE, nil, nil, nil, "Bid Price.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.bid_price_short = ProtoField.new("Bid Price Short", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.bidpriceshort", ftypes.DOUBLE, nil, nil, nil, "Bid Price.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.bid_quantity_long = ProtoField.new("Bid Quantity Long", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.bidquantitylong", ftypes.UINT32, nil, nil, nil, "Total number of contracts on the inside bid (customer and non-customer). A zero value indicates there is no bid. If Customer bit is set, this will be zero.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.bid_quantity_short = ProtoField.new("Bid Quantity Short", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.bidquantityshort", ftypes.UINT16, nil, nil, nil, "Total number of contracts on the inside bid (customer and non-customer). A zero value indicates there is no bid. If Customer bit is set, this will be zero.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.bit_fields = ProtoField.new("Bit Fields", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.bitfields", ftypes.STRING, nil, nil, nil, "Bit field used in Single Side Update Expanded and Two Side Update Expanded messages. Bit 3 indicates AON (All or None) price level; Bit 4 (C1 Only) indicates the price level is specifically for firm customer quotes.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.buy_contracts = ProtoField.new("Buy Contracts", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.buycontracts", ftypes.UINT32, nil, nil, nil, "Cumulative Buy contracts at the Reference Price and above.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.composite_market_bid_price = ProtoField.new("Composite Market Bid Price", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.compositemarketbidprice", ftypes.DOUBLE, nil, nil, nil, "Bid Price of the prevailing Composite Market.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.composite_market_offer_price = ProtoField.new("Composite Market Offer Price", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.compositemarketofferprice", ftypes.DOUBLE, nil, nil, nil, "Offer Price of the prevailing Composite Market.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.customer = ProtoField.new("Customer", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.customer", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10, "C1 Only. 0 = Not customer specific, 1 = Price Level is specifically for firm customer quotes.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.customer_quantity_long = ProtoField.new("Customer Quantity Long", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.customerquantitylong", ftypes.UINT32, nil, nil, nil, "Number of customer contracts on the inside book. A zero value denotes that there are no customer contracts at the inside price. If Customer bit is set, this will be the number of customer contracts on the inside book considering only customer firm quotes. Will always be zero for C2.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.customer_quantity_short = ProtoField.new("Customer Quantity Short", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.customerquantityshort", ftypes.UINT16, nil, nil, nil, "Number of customer contracts on the inside book. A zero value denotes that there are no customer contracts at the inside price. If Customer bit is set, this will be the number of customer contracts on the inside book considering only customer firm quotes. Will always be zero for C2.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.execution_id = ProtoField.new("Execution Id", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.executionid", ftypes.UINT64, nil, nil, nil, "Cboe generated day-unique execution identifier of this trade. Execution Id is also referenced in the Trade Break message.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.expanded_symbol = ProtoField.new("Expanded Symbol", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.expandedsymbol", ftypes.STRING, nil, nil, nil, "Symbol right padded with spaces.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.feedsymbol", ftypes.STRING, nil, nil, nil, "Symbol right padded with spaces.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.gth_trading_status = ProtoField.new("Gth Trading Status", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.gthtradingstatus", ftypes.STRING, nil, nil, nil, "C1 Only. H = Halted, Q = Quote-Only, R = Opening Rotation, T = Trading.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.indicativeprice", ftypes.DOUBLE, nil, nil, nil, "Collared VMIM price computed on the combined queueing book and the continuous book. Equal to Reference Price for options that do not have a GTH trading session.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.length = ProtoField.new("Length", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.length", ftypes.UINT16, nil, nil, nil, "Length of entire block of messages. Includes this header and Message Count messages to follow")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.message_count = ProtoField.new("Message Count", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.messagecount", ftypes.UINT8, nil, nil, nil, "Number of messages to follow this header")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.message_length = ProtoField.new("Message Length", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.messagelength", ftypes.UINT8, nil, nil, nil, "Current Pitch message length")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.message_type = ProtoField.new("Message Type", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying this message type")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.opening_condition = ProtoField.new("Opening Condition", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.openingcondition", ftypes.STRING, nil, nil, nil, "O = Would open, Q = Need quote to open, B = Need more buyers (C1 Only), S = Need more sellers (C1 Only), C = Crossed Composite Market.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.osi_symbol = ProtoField.new("Osi Symbol", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.osisymbol", ftypes.STRING, nil, nil, nil, "OSI Symbol.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.price_long = ProtoField.new("Price Long", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.pricelong", ftypes.DOUBLE, nil, nil, nil, "Price.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.price_short = ProtoField.new("Price Short", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.priceshort", ftypes.DOUBLE, nil, nil, nil, "Price.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.quantity_long = ProtoField.new("Quantity Long", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.quantitylong", ftypes.UINT32, nil, nil, nil, "Total number of contracts on the inside book (customer and non-customer). If Customer bit is set, this will be zero.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.quantityshort", ftypes.UINT16, nil, nil, nil, "Total number of contracts on the inside book (customer and non-customer). If Customer bit is set, this will be zero.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.reference_price = ProtoField.new("Reference Price", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.referenceprice", ftypes.DOUBLE, nil, nil, nil, "Collared VMIM price computed on the queuing book only.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.reserved1", ftypes.BYTES, nil, nil, nil, "Reserved.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.reserved2", ftypes.BYTES, nil, nil, nil, "Reserved.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.reserved_high = ProtoField.new("Reserved High", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.reservedhigh", ftypes.UINT8, nil, base.DEC, 0xE0, "Bits 5-7 Reserved.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.reserved_low = ProtoField.new("Reserved Low", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.reservedlow", ftypes.UINT8, nil, base.DEC, 0x07, "Bits 0-2 Reserved.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.second_reserved_1 = ProtoField.new("Second Reserved 1", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.secondreserved1", ftypes.BYTES, nil, nil, nil, "Reserved.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.sell_contracts = ProtoField.new("Sell Contracts", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.sellcontracts", ftypes.UINT32, nil, nil, nil, "Cumulative Sell contracts at the Reference Price and below.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.sequence = ProtoField.new("Sequence", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.sequence", ftypes.UINT32, nil, nil, nil, "Sequence Number of the first message to follow this header")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.side = ProtoField.new("Side", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.side", ftypes.STRING, nil, nil, nil, "B = Bid Side, S = Ask Side.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.symbol = ProtoField.new("Symbol", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.symbol", ftypes.STRING, nil, nil, nil, "Symbol right padded with spaces.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.symbolcondition", ftypes.STRING, nil, nil, nil, "N = Normal, C = Closing Only.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.symbol_id = ProtoField.new("Symbol Id", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.symbolid", ftypes.STRING, nil, nil, nil, "Symbol right padded with spaces.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.time = ProtoField.new("Time", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.time", ftypes.UINT32, nil, nil, nil, "Number of whole seconds elapsed since the start of the current Eastern Time calendar day, derived by converting the current Eastern wall clock time (HH:MM:SS) to seconds.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.time_offset = ProtoField.new("Time Offset", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.timeoffset", ftypes.UINT32, nil, nil, nil, "Nanosecond offset from last unit timestamp.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.timestamp = ProtoField.new("Timestamp", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.timestamp", ftypes.UINT32, nil, nil, nil, "Nanosecond offset from last unit timestamp.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.total_volume = ProtoField.new("Total Volume", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.totalvolume", ftypes.UINT32, nil, nil, nil, "Total number of contracts traded on the current trading session (may decrease if the Trade Condition field indicates a canceled trade).")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.tradecondition", ftypes.STRING, nil, nil, nil, "See Options Trade Condition Codes for details.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.trading_status = ProtoField.new("Trading Status", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.tradingstatus", ftypes.STRING, nil, nil, nil, "H = Halted, L = Curb Trading (C1 Only), Q = Quote-Only, R = Opening Rotation, T = RTH Trading.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.underlying = ProtoField.new("Underlying", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.underlying", ftypes.STRING, nil, nil, nil, "Symbol of underlying equity right padded with spaces.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.unit = ProtoField.new("Unit", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.unit", ftypes.UINT8, nil, nil, nil, "Unit that applies to messages included in this header")

-- Cboe BzxOptions MulticastTop Pitch 1.2.54 Framing
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.message = ProtoField.new("Message", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.message", ftypes.STRING)
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.message_header = ProtoField.new("Message Header", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.messageheader", ftypes.STRING)
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.packet = ProtoField.new("Packet", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.packet", ftypes.STRING, nil, nil, nil, "Pitch Udp Packet")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.packet_header = ProtoField.new("Packet Header", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.packetheader", ftypes.STRING)

-- Cboe BzxOptions MulticastTop 1.2.54 Application Messages
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.auctionsummarymessage", ftypes.STRING, nil, nil, nil, "Auction Summary messages are used to disseminate the results of an auction. An Opening or Re-Opening Auction Summary message for each symbol is sent at the conclusion of its Opening or Re-Opening auction and represents the Cboe opening price.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.endofsessionmessage", ftypes.STRING, nil, nil, nil, "The End of Session message is sent for each unit when the unit shuts down. No more sequenced messages will be delivered for this unit, but heartbeats from the unit may be received.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.options_auction_update_message = ProtoField.new("Options Auction Update Message", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.optionsauctionupdatemessage", ftypes.STRING, nil, nil, nil, "Options Auction Update messages are used to disseminate price and size information and Composite Market bid and offer prices during Opening and Re-Opening (halt) auctions. The Auction Update messages are sent every five seconds during an opening period.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.single_side_update_expanded_long_message = ProtoField.new("Single Side Update Expanded Long Message", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.singlesideupdateexpandedlongmessage", ftypes.STRING, nil, nil, nil, "Single Side Update Expanded (Long) message is used when the Price cannot be represented by a Binary Short Price or the Quantity cannot be represented by an unsigned 16-bit integer.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.single_side_update_expanded_short_message = ProtoField.new("Single Side Update Expanded Short Message", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.singlesideupdateexpandedshortmessage", ftypes.STRING, nil, nil, nil, "Single Side Update messages provide an updated price and size for a single side of a Symbol. The side is denoted by the Side field. One Single Side Update message may reflect one or more updates to the inside book that were processed at the same time, but will only be done so in a way that can be arbitrated between A/B feeds. The Single Side Update Expanded (Short) message is used whenever possible.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.symbol_mapping_message = ProtoField.new("Symbol Mapping Message", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.symbolmappingmessage", ftypes.STRING, nil, nil, nil, "A Symbol Mapping message is sent as an unsequenced message. One unsequenced Symbol Mapping message for each Symbol is sent in a continuous loop as bandwidth allows.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.time_message = ProtoField.new("Time Message", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.timemessage", ftypes.STRING, nil, nil, nil, "A Time message is immediately generated and sent when there is a Top event for a given clock second. If there is no Top event for a given clock second, then no Time message is sent for that second. All subsequent time offset fields for the same unit will use the new Time value as the base until another Time message is received for the same unit. The Time field is the number of seconds relative to midnight Eastern Time, which is provided in the Time Reference message. On C1 only, the Time message will also include the Epoch Time field, which is the current time represented as the number of whole seconds since the Epoch (midnight January 1, 1970).")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.top_trade_message = ProtoField.new("Top Trade Message", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.toptrademessage", ftypes.STRING, nil, nil, nil, "The Top Trade message provides information about executions of orders on the book. Top Trade messages are necessary to calculate execution-based data. Top Trade messages do not alter the book. One or more Single Side Update Expanded or Two Side Update Expanded messages will follow a Top Trade message to reflect the updated book. The Top Trade message sends the trade price, trade quantity, execution id, and trade condition of a trade as well as the cumulative volume for the trading session. The Trade Condition value of X (Trade Break) is sent whenever an execution is broken. Trade breaks will contain the Symbol, Quantity, Price, and Execution Id of the original trade.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.tradingstatusmessage", ftypes.STRING, nil, nil, nil, "The Trading Status message is used to indicate the current trading status of an options contract. A Trading Status message will be sent whenever a security's trading status changes. The Trading Status field will be used to represent the status of the RTH (9:30 a.m. ET - 4:15 p.m. ET) and Curb sessions. The GTH Trading Status field will be used to represent the status of series that trade during the GTH session. The GTH session runs from 8:15 p.m. to 9:25 a.m. ET for GTH-eligible Products (C1 only).")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.two_side_update_expanded_long_message = ProtoField.new("Two Side Update Expanded Long Message", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.twosideupdateexpandedlongmessage", ftypes.STRING, nil, nil, nil, "Two Side Update Expanded (Long) message is used when the Price cannot be represented by a Binary Short Price or the Quantity cannot be represented by an unsigned 16-bit integer.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.two_side_update_expanded_short_message = ProtoField.new("Two Side Update Expanded Short Message", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.twosideupdateexpandedshortmessage", ftypes.STRING, nil, nil, nil, "Two Side Update messages provide an updated price and size for both sides of a Symbol. One Two Side Update message may reflect one or more updates to the inside book that were processed at the same time, but will only be done so in a way that can be arbitrated between A/B feeds. The Two Side Update Expanded (Short) message is used whenever possible.")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.unitclearmessage", ftypes.STRING, nil, nil, nil, "The Unit Clear message instructs feed recipients to clear all market snapshots for the book in the unit specified in the Sequenced Unit Header. This message will be sent at startup each day. It would also be distributed in certain recovery events such as a data center fail-over.")

-- Cboe BzxOptions MulticastTop Pitch 1.2.54 Generated Fields
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.message_index = ProtoField.new("Message Index", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.messageindex", ftypes.UINT16)
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.messagesequencenumber", ftypes.UINT64)
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.timestamp = ProtoField.new("Timestamp", "cboe.bzxoptions.multicasttop.pitch.v1.2.54.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Cboe BzxOptions MulticastTop Pitch 1.2.54 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
cboe_bzxoptions_multicasttop_pitch_v1_2_54.timestamp_format = 2

-- Hours behind UTC (EST) for midnight calculation
cboe_bzxoptions_multicasttop_pitch_v1_2_54.utc_offset_hours = 5

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
cboe_bzxoptions_multicasttop_pitch_v1_2_54.format_timestamp = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe BzxOptions MulticastTop Pitch 1.2.54 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Cboe BzxOptions MulticastTop Pitch 1.2.54 Show Options
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.prefs.timestamp_format = Pref.enum("Time Offset Format", 2, "Time Offset display format", timestamp_format_enum, false)
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.prefs.show_application_messages then
    show.application_messages = omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.prefs.show_headers then
    show.headers = omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.prefs.show_headers
  end
  if show.structs ~= omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.prefs.show_structs then
    show.structs = omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.prefs.show_indexes then
    show.indexes = omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.prefs.show_indexes
  end
  if show.sequences ~= omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.prefs.show_sequences then
    show.sequences = omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.prefs.show_sequences
  end
  if cboe_bzxoptions_multicasttop_pitch_v1_2_54.format_timestamp ~= omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.prefs.format_timestamp then
    cboe_bzxoptions_multicasttop_pitch_v1_2_54.format_timestamp = omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.prefs.format_timestamp
  end
  if cboe_bzxoptions_multicasttop_pitch_v1_2_54.timestamp_format ~= omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.prefs.timestamp_format then
    cboe_bzxoptions_multicasttop_pitch_v1_2_54.timestamp_format = omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.prefs.timestamp_format
  end
  if cboe_bzxoptions_multicasttop_pitch_v1_2_54.utc_offset_hours ~= omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.prefs.utc_offset_hours then
    cboe_bzxoptions_multicasttop_pitch_v1_2_54.utc_offset_hours = omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.prefs.utc_offset_hours
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
cboe_bzxoptions_multicasttop_pitch_v1_2_54.conversation = {}
cboe_bzxoptions_multicasttop_pitch_v1_2_54.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
cboe_bzxoptions_multicasttop_pitch_v1_2_54.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
cboe_bzxoptions_multicasttop_pitch_v1_2_54.conversation.data = function(packet)
  local key = cboe_bzxoptions_multicasttop_pitch_v1_2_54.conversation.key(packet)
  local data = cboe_bzxoptions_multicasttop_pitch_v1_2_54.conversation.flows[key]
  if data == nil then
    data = { time = { last = nil, frames = {} } }
    cboe_bzxoptions_multicasttop_pitch_v1_2_54.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
cboe_bzxoptions_multicasttop_pitch_v1_2_54.conversation.current = nil


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
-- Cboe BzxOptions MulticastTop Pitch 1.2.54 Fields
-----------------------------------------------------------------------

-- Ask Customer Quantity Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_customer_quantity_long = {}

-- Size: Ask Customer Quantity Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_customer_quantity_long.size = 4

-- Display: Ask Customer Quantity Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_customer_quantity_long.display = function(value)
  return "Ask Customer Quantity Long: "..value
end

-- Dissect: Ask Customer Quantity Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_customer_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_customer_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_customer_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.ask_customer_quantity_long, range, value, display)

  return offset + length, value
end

-- Ask Customer Quantity Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_customer_quantity_short = {}

-- Size: Ask Customer Quantity Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_customer_quantity_short.size = 2

-- Display: Ask Customer Quantity Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_customer_quantity_short.display = function(value)
  return "Ask Customer Quantity Short: "..value
end

-- Dissect: Ask Customer Quantity Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_customer_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_customer_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_customer_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.ask_customer_quantity_short, range, value, display)

  return offset + length, value
end

-- Ask Price Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_price_long = {}

-- Size: Ask Price Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_price_long.size = 8

-- Display: Ask Price Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_price_long.display = function(value)
  return "Ask Price Long: "..value
end

-- Translate: Ask Price Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_price_long.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Ask Price Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_price_long.translate(raw)
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.ask_price_long, range, value, display)

  return offset + length, value
end

-- Ask Price Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_price_short = {}

-- Size: Ask Price Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_price_short.size = 2

-- Display: Ask Price Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_price_short.display = function(value)
  return "Ask Price Short: "..value
end

-- Translate: Ask Price Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Ask Price Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_price_short.translate(raw)
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.ask_price_short, range, value, display)

  return offset + length, value
end

-- Ask Quantity Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_quantity_long = {}

-- Size: Ask Quantity Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_quantity_long.size = 4

-- Display: Ask Quantity Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_quantity_long.display = function(value)
  return "Ask Quantity Long: "..value
end

-- Dissect: Ask Quantity Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.ask_quantity_long, range, value, display)

  return offset + length, value
end

-- Ask Quantity Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_quantity_short = {}

-- Size: Ask Quantity Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_quantity_short.size = 2

-- Display: Ask Quantity Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_quantity_short.display = function(value)
  return "Ask Quantity Short: "..value
end

-- Dissect: Ask Quantity Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.ask_quantity_short, range, value, display)

  return offset + length, value
end

-- Auction Only Price
cboe_bzxoptions_multicasttop_pitch_v1_2_54.auction_only_price = {}

-- Size: Auction Only Price
cboe_bzxoptions_multicasttop_pitch_v1_2_54.auction_only_price.size = 8

-- Display: Auction Only Price
cboe_bzxoptions_multicasttop_pitch_v1_2_54.auction_only_price.display = function(value)
  return "Auction Only Price: "..value
end

-- Translate: Auction Only Price
cboe_bzxoptions_multicasttop_pitch_v1_2_54.auction_only_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Auction Only Price
cboe_bzxoptions_multicasttop_pitch_v1_2_54.auction_only_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.auction_only_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_bzxoptions_multicasttop_pitch_v1_2_54.auction_only_price.translate(raw)
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.auction_only_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.auction_only_price, range, value, display)

  return offset + length, value
end

-- Auction Type
cboe_bzxoptions_multicasttop_pitch_v1_2_54.auction_type = {}

-- Size: Auction Type
cboe_bzxoptions_multicasttop_pitch_v1_2_54.auction_type.size = 1

-- Display: Auction Type
cboe_bzxoptions_multicasttop_pitch_v1_2_54.auction_type.display = function(value)
  if value == "G" then
    return "Auction Type: Gth Opening (G)"
  end
  if value == "O" then
    return "Auction Type: Rth Opening (O)"
  end
  if value == "H" then
    return "Auction Type: Halt Re Opening (H)"
  end
  if value == "V" then
    return "Auction Type: Volatility Opening (V)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
cboe_bzxoptions_multicasttop_pitch_v1_2_54.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Bid Customer Quantity Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_customer_quantity_long = {}

-- Size: Bid Customer Quantity Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_customer_quantity_long.size = 4

-- Display: Bid Customer Quantity Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_customer_quantity_long.display = function(value)
  return "Bid Customer Quantity Long: "..value
end

-- Dissect: Bid Customer Quantity Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_customer_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_customer_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_customer_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.bid_customer_quantity_long, range, value, display)

  return offset + length, value
end

-- Bid Customer Quantity Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_customer_quantity_short = {}

-- Size: Bid Customer Quantity Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_customer_quantity_short.size = 2

-- Display: Bid Customer Quantity Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_customer_quantity_short.display = function(value)
  return "Bid Customer Quantity Short: "..value
end

-- Dissect: Bid Customer Quantity Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_customer_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_customer_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_customer_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.bid_customer_quantity_short, range, value, display)

  return offset + length, value
end

-- Bid Price Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_price_long = {}

-- Size: Bid Price Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_price_long.size = 8

-- Display: Bid Price Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_price_long.display = function(value)
  return "Bid Price Long: "..value
end

-- Translate: Bid Price Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_price_long.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Bid Price Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_price_long.translate(raw)
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.bid_price_long, range, value, display)

  return offset + length, value
end

-- Bid Price Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_price_short = {}

-- Size: Bid Price Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_price_short.size = 2

-- Display: Bid Price Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_price_short.display = function(value)
  return "Bid Price Short: "..value
end

-- Translate: Bid Price Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_price_short.translate(raw)
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Bid Quantity Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_quantity_long = {}

-- Size: Bid Quantity Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_quantity_long.size = 4

-- Display: Bid Quantity Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_quantity_long.display = function(value)
  return "Bid Quantity Long: "..value
end

-- Dissect: Bid Quantity Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.bid_quantity_long, range, value, display)

  return offset + length, value
end

-- Bid Quantity Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_quantity_short = {}

-- Size: Bid Quantity Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_quantity_short.size = 2

-- Display: Bid Quantity Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_quantity_short.display = function(value)
  return "Bid Quantity Short: "..value
end

-- Dissect: Bid Quantity Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.bid_quantity_short, range, value, display)

  return offset + length, value
end

-- Buy Contracts
cboe_bzxoptions_multicasttop_pitch_v1_2_54.buy_contracts = {}

-- Size: Buy Contracts
cboe_bzxoptions_multicasttop_pitch_v1_2_54.buy_contracts.size = 4

-- Display: Buy Contracts
cboe_bzxoptions_multicasttop_pitch_v1_2_54.buy_contracts.display = function(value)
  return "Buy Contracts: "..value
end

-- Dissect: Buy Contracts
cboe_bzxoptions_multicasttop_pitch_v1_2_54.buy_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.buy_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.buy_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.buy_contracts, range, value, display)

  return offset + length, value
end

-- Composite Market Bid Price
cboe_bzxoptions_multicasttop_pitch_v1_2_54.composite_market_bid_price = {}

-- Size: Composite Market Bid Price
cboe_bzxoptions_multicasttop_pitch_v1_2_54.composite_market_bid_price.size = 8

-- Display: Composite Market Bid Price
cboe_bzxoptions_multicasttop_pitch_v1_2_54.composite_market_bid_price.display = function(value)
  return "Composite Market Bid Price: "..value
end

-- Translate: Composite Market Bid Price
cboe_bzxoptions_multicasttop_pitch_v1_2_54.composite_market_bid_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Bid Price
cboe_bzxoptions_multicasttop_pitch_v1_2_54.composite_market_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.composite_market_bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_bzxoptions_multicasttop_pitch_v1_2_54.composite_market_bid_price.translate(raw)
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.composite_market_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.composite_market_bid_price, range, value, display)

  return offset + length, value
end

-- Composite Market Offer Price
cboe_bzxoptions_multicasttop_pitch_v1_2_54.composite_market_offer_price = {}

-- Size: Composite Market Offer Price
cboe_bzxoptions_multicasttop_pitch_v1_2_54.composite_market_offer_price.size = 8

-- Display: Composite Market Offer Price
cboe_bzxoptions_multicasttop_pitch_v1_2_54.composite_market_offer_price.display = function(value)
  return "Composite Market Offer Price: "..value
end

-- Translate: Composite Market Offer Price
cboe_bzxoptions_multicasttop_pitch_v1_2_54.composite_market_offer_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Offer Price
cboe_bzxoptions_multicasttop_pitch_v1_2_54.composite_market_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.composite_market_offer_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_bzxoptions_multicasttop_pitch_v1_2_54.composite_market_offer_price.translate(raw)
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.composite_market_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.composite_market_offer_price, range, value, display)

  return offset + length, value
end

-- Customer Quantity Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.customer_quantity_long = {}

-- Size: Customer Quantity Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.customer_quantity_long.size = 4

-- Display: Customer Quantity Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.customer_quantity_long.display = function(value)
  return "Customer Quantity Long: "..value
end

-- Dissect: Customer Quantity Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.customer_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.customer_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.customer_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.customer_quantity_long, range, value, display)

  return offset + length, value
end

-- Customer Quantity Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.customer_quantity_short = {}

-- Size: Customer Quantity Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.customer_quantity_short.size = 2

-- Display: Customer Quantity Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.customer_quantity_short.display = function(value)
  return "Customer Quantity Short: "..value
end

-- Dissect: Customer Quantity Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.customer_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.customer_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.customer_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.customer_quantity_short, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_bzxoptions_multicasttop_pitch_v1_2_54.execution_id = {}

-- Size: Execution Id
cboe_bzxoptions_multicasttop_pitch_v1_2_54.execution_id.size = 8

-- Display: Execution Id
cboe_bzxoptions_multicasttop_pitch_v1_2_54.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_bzxoptions_multicasttop_pitch_v1_2_54.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Expanded Symbol
cboe_bzxoptions_multicasttop_pitch_v1_2_54.expanded_symbol = {}

-- Size: Expanded Symbol
cboe_bzxoptions_multicasttop_pitch_v1_2_54.expanded_symbol.size = 8

-- Display: Expanded Symbol
cboe_bzxoptions_multicasttop_pitch_v1_2_54.expanded_symbol.display = function(value)
  return "Expanded Symbol: "..value
end

-- Dissect: Expanded Symbol
cboe_bzxoptions_multicasttop_pitch_v1_2_54.expanded_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.expanded_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.expanded_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.expanded_symbol, range, value, display)

  return offset + length, value
end

-- Feed Symbol
cboe_bzxoptions_multicasttop_pitch_v1_2_54.feed_symbol = {}

-- Size: Feed Symbol
cboe_bzxoptions_multicasttop_pitch_v1_2_54.feed_symbol.size = 6

-- Display: Feed Symbol
cboe_bzxoptions_multicasttop_pitch_v1_2_54.feed_symbol.display = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_bzxoptions_multicasttop_pitch_v1_2_54.feed_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.feed_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.feed_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Gth Trading Status
cboe_bzxoptions_multicasttop_pitch_v1_2_54.gth_trading_status = {}

-- Size: Gth Trading Status
cboe_bzxoptions_multicasttop_pitch_v1_2_54.gth_trading_status.size = 1

-- Display: Gth Trading Status
cboe_bzxoptions_multicasttop_pitch_v1_2_54.gth_trading_status.display = function(value)
  if value == "H" then
    return "Gth Trading Status: Halted (H)"
  end
  if value == "Q" then
    return "Gth Trading Status: Quote Only (Q)"
  end
  if value == "R" then
    return "Gth Trading Status: Opening Rotation (R)"
  end
  if value == "T" then
    return "Gth Trading Status: Trading (T)"
  end

  return "Gth Trading Status: Unknown("..value..")"
end

-- Dissect: Gth Trading Status
cboe_bzxoptions_multicasttop_pitch_v1_2_54.gth_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.gth_trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.gth_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.gth_trading_status, range, value, display)

  return offset + length, value
end

-- Indicative Price
cboe_bzxoptions_multicasttop_pitch_v1_2_54.indicative_price = {}

-- Size: Indicative Price
cboe_bzxoptions_multicasttop_pitch_v1_2_54.indicative_price.size = 8

-- Display: Indicative Price
cboe_bzxoptions_multicasttop_pitch_v1_2_54.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
cboe_bzxoptions_multicasttop_pitch_v1_2_54.indicative_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Indicative Price
cboe_bzxoptions_multicasttop_pitch_v1_2_54.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.indicative_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_bzxoptions_multicasttop_pitch_v1_2_54.indicative_price.translate(raw)
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Length
cboe_bzxoptions_multicasttop_pitch_v1_2_54.length = {}

-- Size: Length
cboe_bzxoptions_multicasttop_pitch_v1_2_54.length.size = 2

-- Display: Length
cboe_bzxoptions_multicasttop_pitch_v1_2_54.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_bzxoptions_multicasttop_pitch_v1_2_54.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.length, range, value, display)

  return offset + length, value
end

-- Message Count
cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_count = {}

-- Size: Message Count
cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_count.size = 1

-- Display: Message Count
cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_length = {}

-- Size: Message Length
cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_length.size = 1

-- Display: Message Length
cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_type = {}

-- Size: Message Type
cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_type.size = 1

-- Display: Message Type
cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_type.display = function(value)
  if value == 0x20 then
    return "Message Type: Time Message (0x20)"
  end
  if value == 0x97 then
    return "Message Type: Unit Clear Message (0x97)"
  end
  if value == 0x2E then
    return "Message Type: Symbol Mapping Message (0x2E)"
  end
  if value == 0xD4 then
    return "Message Type: Single Side Update Expanded Short Message (0xD4)"
  end
  if value == 0xD5 then
    return "Message Type: Single Side Update Expanded Long Message (0xD5)"
  end
  if value == 0xD6 then
    return "Message Type: Two Side Update Expanded Short Message (0xD6)"
  end
  if value == 0xD7 then
    return "Message Type: Two Side Update Expanded Long Message (0xD7)"
  end
  if value == 0xB8 then
    return "Message Type: Top Trade Message (0xB8)"
  end
  if value == 0xD1 then
    return "Message Type: Options Auction Update Message (0xD1)"
  end
  if value == 0x96 then
    return "Message Type: Auction Summary Message (0x96)"
  end
  if value == 0x31 then
    return "Message Type: Trading Status Message (0x31)"
  end
  if value == 0x2D then
    return "Message Type: End Of Session Message (0x2D)"
  end

  return "Message Type: Unknown("..string.format("0x%02X", value)..")"
end

-- Dissect: Message Type
cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.message_type, range, value, display)

  return offset + length, value
end

-- Opening Condition
cboe_bzxoptions_multicasttop_pitch_v1_2_54.opening_condition = {}

-- Size: Opening Condition
cboe_bzxoptions_multicasttop_pitch_v1_2_54.opening_condition.size = 1

-- Display: Opening Condition
cboe_bzxoptions_multicasttop_pitch_v1_2_54.opening_condition.display = function(value)
  if value == "O" then
    return "Opening Condition: Would Open (O)"
  end
  if value == "Q" then
    return "Opening Condition: Need Quote To Open (Q)"
  end
  if value == "B" then
    return "Opening Condition: Need More Buyers (B)"
  end
  if value == "S" then
    return "Opening Condition: Need More Sellers (S)"
  end
  if value == "C" then
    return "Opening Condition: Crossed Composite Market (C)"
  end

  return "Opening Condition: Unknown("..value..")"
end

-- Dissect: Opening Condition
cboe_bzxoptions_multicasttop_pitch_v1_2_54.opening_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.opening_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.opening_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.opening_condition, range, value, display)

  return offset + length, value
end

-- Osi Symbol
cboe_bzxoptions_multicasttop_pitch_v1_2_54.osi_symbol = {}

-- Size: Osi Symbol
cboe_bzxoptions_multicasttop_pitch_v1_2_54.osi_symbol.size = 21

-- Display: Osi Symbol
cboe_bzxoptions_multicasttop_pitch_v1_2_54.osi_symbol.display = function(value)
  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
cboe_bzxoptions_multicasttop_pitch_v1_2_54.osi_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.osi_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.osi_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.osi_symbol, range, value, display)

  return offset + length, value
end

-- Price Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.price_long = {}

-- Size: Price Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.price_long.size = 8

-- Display: Price Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.price_long.display = function(value)
  return "Price Long: "..value
end

-- Translate: Price Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.price_long.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_bzxoptions_multicasttop_pitch_v1_2_54.price_long.translate(raw)
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.price_long, range, value, display)

  return offset + length, value
end

-- Price Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.price_short = {}

-- Size: Price Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.price_short.size = 2

-- Display: Price Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.price_short.display = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Price Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_bzxoptions_multicasttop_pitch_v1_2_54.price_short.translate(raw)
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.price_short, range, value, display)

  return offset + length, value
end

-- Quantity Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.quantity_long = {}

-- Size: Quantity Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.quantity_long.size = 4

-- Display: Quantity Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.quantity_long.display = function(value)
  return "Quantity Long: "..value
end

-- Dissect: Quantity Long
cboe_bzxoptions_multicasttop_pitch_v1_2_54.quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.quantity_long, range, value, display)

  return offset + length, value
end

-- Quantity Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.quantity_short = {}

-- Size: Quantity Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.quantity_short.size = 2

-- Display: Quantity Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.quantity_short.display = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_bzxoptions_multicasttop_pitch_v1_2_54.quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Reference Price
cboe_bzxoptions_multicasttop_pitch_v1_2_54.reference_price = {}

-- Size: Reference Price
cboe_bzxoptions_multicasttop_pitch_v1_2_54.reference_price.size = 8

-- Display: Reference Price
cboe_bzxoptions_multicasttop_pitch_v1_2_54.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
cboe_bzxoptions_multicasttop_pitch_v1_2_54.reference_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Reference Price
cboe_bzxoptions_multicasttop_pitch_v1_2_54.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_bzxoptions_multicasttop_pitch_v1_2_54.reference_price.translate(raw)
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_bzxoptions_multicasttop_pitch_v1_2_54.reserved_1 = {}

-- Size: Reserved 1
cboe_bzxoptions_multicasttop_pitch_v1_2_54.reserved_1.size = 1

-- Display: Reserved 1
cboe_bzxoptions_multicasttop_pitch_v1_2_54.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_bzxoptions_multicasttop_pitch_v1_2_54.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
cboe_bzxoptions_multicasttop_pitch_v1_2_54.reserved_2 = {}

-- Size: Reserved 2
cboe_bzxoptions_multicasttop_pitch_v1_2_54.reserved_2.size = 2

-- Display: Reserved 2
cboe_bzxoptions_multicasttop_pitch_v1_2_54.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_bzxoptions_multicasttop_pitch_v1_2_54.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Second Reserved 1
cboe_bzxoptions_multicasttop_pitch_v1_2_54.second_reserved_1 = {}

-- Size: Second Reserved 1
cboe_bzxoptions_multicasttop_pitch_v1_2_54.second_reserved_1.size = 1

-- Display: Second Reserved 1
cboe_bzxoptions_multicasttop_pitch_v1_2_54.second_reserved_1.display = function(value)
  return "Second Reserved 1: "..value
end

-- Dissect: Second Reserved 1
cboe_bzxoptions_multicasttop_pitch_v1_2_54.second_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.second_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.second_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.second_reserved_1, range, value, display)

  return offset + length, value
end

-- Sell Contracts
cboe_bzxoptions_multicasttop_pitch_v1_2_54.sell_contracts = {}

-- Size: Sell Contracts
cboe_bzxoptions_multicasttop_pitch_v1_2_54.sell_contracts.size = 4

-- Display: Sell Contracts
cboe_bzxoptions_multicasttop_pitch_v1_2_54.sell_contracts.display = function(value)
  return "Sell Contracts: "..value
end

-- Dissect: Sell Contracts
cboe_bzxoptions_multicasttop_pitch_v1_2_54.sell_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.sell_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.sell_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.sell_contracts, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_bzxoptions_multicasttop_pitch_v1_2_54.sequence = {}

-- Size: Sequence
cboe_bzxoptions_multicasttop_pitch_v1_2_54.sequence.size = 4

-- Display: Sequence
cboe_bzxoptions_multicasttop_pitch_v1_2_54.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_bzxoptions_multicasttop_pitch_v1_2_54.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.sequence, range, value, display)

  return offset + length, value
end

-- Side
cboe_bzxoptions_multicasttop_pitch_v1_2_54.side = {}

-- Size: Side
cboe_bzxoptions_multicasttop_pitch_v1_2_54.side.size = 1

-- Display: Side
cboe_bzxoptions_multicasttop_pitch_v1_2_54.side.display = function(value)
  if value == "B" then
    return "Side: Bid Side (B)"
  end
  if value == "S" then
    return "Side: Ask Side (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cboe_bzxoptions_multicasttop_pitch_v1_2_54.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.side, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol = {}

-- Size: Symbol
cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol.size = 6

-- Display: Symbol
cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Condition
cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol_condition = {}

-- Size: Symbol Condition
cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol_condition.size = 1

-- Display: Symbol Condition
cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol_condition.display = function(value)
  if value == "N" then
    return "Symbol Condition: Normal (N)"
  end
  if value == "C" then
    return "Symbol Condition: Closing Only (C)"
  end

  return "Symbol Condition: Unknown("..value..")"
end

-- Dissect: Symbol Condition
cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.symbol_condition, range, value, display)

  return offset + length, value
end

-- Symbol Id
cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol_id = {}

-- Size: Symbol Id
cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol_id.size = 8

-- Display: Symbol Id
cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol_id.display = function(value)
  return "Symbol Id: "..value
end

-- Dissect: Symbol Id
cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.symbol_id, range, value, display)

  return offset + length, value
end

-- Time
cboe_bzxoptions_multicasttop_pitch_v1_2_54.time = {}

-- Size: Time
cboe_bzxoptions_multicasttop_pitch_v1_2_54.time.size = 4

-- Store: Time
cboe_bzxoptions_multicasttop_pitch_v1_2_54.time.current = nil

-- Generated: Time
cboe_bzxoptions_multicasttop_pitch_v1_2_54.time.generated = function(value, range, packet, parent)
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.time.display(value)
  local time = parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.time, range, value, display)
  time:set_generated()
end

-- Display: Time
cboe_bzxoptions_multicasttop_pitch_v1_2_54.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_bzxoptions_multicasttop_pitch_v1_2_54.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_bzxoptions_multicasttop_pitch_v1_2_54.time_offset = {}

-- Size: Time Offset
cboe_bzxoptions_multicasttop_pitch_v1_2_54.time_offset.size = 4

-- Display: Time Offset
cboe_bzxoptions_multicasttop_pitch_v1_2_54.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_bzxoptions_multicasttop_pitch_v1_2_54.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_bzxoptions_multicasttop_pitch_v1_2_54.timestamp = {}

-- Size: Timestamp
cboe_bzxoptions_multicasttop_pitch_v1_2_54.timestamp.size = 4

-- Display: Timestamp
cboe_bzxoptions_multicasttop_pitch_v1_2_54.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_bzxoptions_multicasttop_pitch_v1_2_54.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Total Volume
cboe_bzxoptions_multicasttop_pitch_v1_2_54.total_volume = {}

-- Size: Total Volume
cboe_bzxoptions_multicasttop_pitch_v1_2_54.total_volume.size = 4

-- Display: Total Volume
cboe_bzxoptions_multicasttop_pitch_v1_2_54.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
cboe_bzxoptions_multicasttop_pitch_v1_2_54.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.total_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Trade Condition
cboe_bzxoptions_multicasttop_pitch_v1_2_54.trade_condition = {}

-- Size: Trade Condition
cboe_bzxoptions_multicasttop_pitch_v1_2_54.trade_condition.size = 1

-- Display: Trade Condition
cboe_bzxoptions_multicasttop_pitch_v1_2_54.trade_condition.display = function(value)
  if value == "a" then
    return "Trade Condition: Single Leg Auction Non Iso Cboe Auction Types Include Aim Sam (a)"
  end
  if value == "b" then
    return "Trade Condition: Single Leg Auction Iso Cboe Auction Types Include Aim Iso Sam Iso (b)"
  end
  if value == "c" then
    return "Trade Condition: Single Leg Cross Non Iso Cboe Auction Types Include Cust To Cust Aim Qcc (c)"
  end
  if value == "d" then
    return "Trade Condition: Single Leg Cross Iso Cboe Order Type Is Cust To Cust Aim Iso (d)"
  end
  if value == "e" then
    return "Trade Condition: Single Leg Floor Trade (e)"
  end
  if value == "f" then
    return "Trade Condition: Complex To Complex Electronic Trade Cboe Auction Type Is Coa (f)"
  end
  if value == "g" then
    return "Trade Condition: Complex Auction Trade Cboe Order Types Include Caim Csam (g)"
  end
  if value == "h" then
    return "Trade Condition: Complex Cross Cboe Auction Types Include Cust To Cust Caim Cqcc (h)"
  end
  if value == "i" then
    return "Trade Condition: Complex Floor Trade Deprecated All Complex Floor Executions Are Reported As Condition M (i)"
  end
  if value == "j" then
    return "Trade Condition: Complex Electronic Trade Against Single Legs (j)"
  end
  if value == "k" then
    return "Trade Condition: Complex With Stock Options Auction Trade Cboe Auction Types Include Caim W Stock Csam W Stock (k)"
  end
  if value == "m" then
    return "Trade Condition: Complex Floor Trade Against Single Legs All Complex Floor Executions Are Reported As Condition M (m)"
  end
  if value == "n" then
    return "Trade Condition: Complex With Stock Electronic Trade Includes Coa Auctions Done Electronically (n)"
  end
  if value == "o" then
    return "Trade Condition: Complex With Stock Cross Cboe Auction Types Include Cqcc W Stock (o)"
  end
  if value == "p" then
    return "Trade Condition: Complex With Stock Floor Trade (p)"
  end
  if value == "t" then
    return "Trade Condition: Complex Floor Trade Of Proprietary Products Marked As Combo Order (t)"
  end
  if value == "u" then
    return "Trade Condition: Multilateral Compression Trade Of Proprietary Products (u)"
  end
  if value == "v" then
    return "Trade Condition: Extended Hours Trade Transaction Represents A Trade Executed During The Curb Session (v)"
  end
  if value == "I" then
    return "Trade Condition: Electronic Trade (I)"
  end
  if value == "K" then
    return "Trade Condition: Cabinet Order (K)"
  end
  if value == "O" then
    return "Trade Condition: Opening Trade (O)"
  end
  if value == "S" then
    return "Trade Condition: Iso (S)"
  end
  if value == "X" then
    return "Trade Condition: Trade Break (X)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
cboe_bzxoptions_multicasttop_pitch_v1_2_54.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_bzxoptions_multicasttop_pitch_v1_2_54.trading_status = {}

-- Size: Trading Status
cboe_bzxoptions_multicasttop_pitch_v1_2_54.trading_status.size = 1

-- Display: Trading Status
cboe_bzxoptions_multicasttop_pitch_v1_2_54.trading_status.display = function(value)
  if value == "H" then
    return "Trading Status: Halted (H)"
  end
  if value == "L" then
    return "Trading Status: Curb Trading (L)"
  end
  if value == "Q" then
    return "Trading Status: Quote Only (Q)"
  end
  if value == "R" then
    return "Trading Status: Opening Rotation (R)"
  end
  if value == "T" then
    return "Trading Status: Rth Trading (T)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
cboe_bzxoptions_multicasttop_pitch_v1_2_54.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Underlying
cboe_bzxoptions_multicasttop_pitch_v1_2_54.underlying = {}

-- Size: Underlying
cboe_bzxoptions_multicasttop_pitch_v1_2_54.underlying.size = 8

-- Display: Underlying
cboe_bzxoptions_multicasttop_pitch_v1_2_54.underlying.display = function(value)
  return "Underlying: "..value
end

-- Dissect: Underlying
cboe_bzxoptions_multicasttop_pitch_v1_2_54.underlying.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.underlying.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.underlying, range, value, display)

  return offset + length, value
end

-- Unit
cboe_bzxoptions_multicasttop_pitch_v1_2_54.unit = {}

-- Size: Unit
cboe_bzxoptions_multicasttop_pitch_v1_2_54.unit.size = 1

-- Display: Unit
cboe_bzxoptions_multicasttop_pitch_v1_2_54.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_bzxoptions_multicasttop_pitch_v1_2_54.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.unit, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_bzxoptions_multicasttop_pitch_v1_2_54.timestamp = {}

-- Translate: Timestamp
cboe_bzxoptions_multicasttop_pitch_v1_2_54.timestamp.translate = function(time_offset, stored_time)
  return UInt64.new(stored_time * 1000000000 + time_offset)
end

-- Display: Timestamp
cboe_bzxoptions_multicasttop_pitch_v1_2_54.timestamp.display = function(time_offset, stored_time, packet)
  -- Raw display mode
  if cboe_bzxoptions_multicasttop_pitch_v1_2_54.timestamp_format == 0 then
    return "Timestamp: "..(stored_time * 1000000000 + time_offset)
  end

  -- Full datetime mode (calculate from capture date + UTC offset)
  if cboe_bzxoptions_multicasttop_pitch_v1_2_54.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = cboe_bzxoptions_multicasttop_pitch_v1_2_54.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400
    local full_seconds = local_midnight + stored_time

    return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", time_offset)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", stored_time)..string.format("%09d", time_offset)
end

-- Composite: Timestamp
cboe_bzxoptions_multicasttop_pitch_v1_2_54.timestamp.composite = function(buffer, offset, stored_time, packet, parent)
  local length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.time_offset.size
  local range = buffer(offset, length)
  local time_offset = range:le_uint()
  local value = cboe_bzxoptions_multicasttop_pitch_v1_2_54.timestamp.translate(time_offset, stored_time)
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.timestamp.display(time_offset, stored_time, packet)
  parent = parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.timestamp, range, value, display)

  cboe_bzxoptions_multicasttop_pitch_v1_2_54.time.generated(stored_time, range, packet, parent)

  display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.time_offset.display(time_offset)
  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.time_offset, range, time_offset, display)

  return offset + length, value
end

-- Dissect: Timestamp
cboe_bzxoptions_multicasttop_pitch_v1_2_54.timestamp.dissect = function(buffer, offset, packet, parent)
  if cboe_bzxoptions_multicasttop_pitch_v1_2_54.format_timestamp then
    local stored_time = cboe_bzxoptions_multicasttop_pitch_v1_2_54.time.current

    if stored_time ~= nil then
      return cboe_bzxoptions_multicasttop_pitch_v1_2_54.timestamp.composite(buffer, offset, stored_time, packet, parent)
    end
  end

  return cboe_bzxoptions_multicasttop_pitch_v1_2_54.time_offset.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Cboe BzxOptions MulticastTop Pitch 1.2.54
-----------------------------------------------------------------------

-- End Of Session Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.end_of_session_message = {}

-- Size: End Of Session Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.end_of_session_message.size =
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.timestamp.size

-- Display: End Of Session Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_bzxoptions_multicasttop_pitch_v1_2_54.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_bzxoptions_multicasttop_pitch_v1_2_54.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxoptions_multicasttop_pitch_v1_2_54.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.trading_status_message = {}

-- Size: Trading Status Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.trading_status_message.size =
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.time_offset.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.reserved_2.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.trading_status.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.reserved_1.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.gth_trading_status.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.second_reserved_1.size

-- Display: Trading Status Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxoptions_multicasttop_pitch_v1_2_54.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 2: Reserved
  index, reserved_2 = cboe_bzxoptions_multicasttop_pitch_v1_2_54.reserved_2.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = cboe_bzxoptions_multicasttop_pitch_v1_2_54.trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_bzxoptions_multicasttop_pitch_v1_2_54.reserved_1.dissect(buffer, index, packet, parent)

  -- Gth Trading Status: Alpha
  index, gth_trading_status = cboe_bzxoptions_multicasttop_pitch_v1_2_54.gth_trading_status.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: Reserved
  index, second_reserved_1 = cboe_bzxoptions_multicasttop_pitch_v1_2_54.second_reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_bzxoptions_multicasttop_pitch_v1_2_54.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxoptions_multicasttop_pitch_v1_2_54.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Summary Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.auction_summary_message = {}

-- Size: Auction Summary Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.auction_summary_message.size =
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.time_offset.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol_id.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.auction_type.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.price_long.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.quantity_long.size

-- Display: Auction Summary Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxoptions_multicasttop_pitch_v1_2_54.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: Printable ASCII
  index, symbol_id = cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_bzxoptions_multicasttop_pitch_v1_2_54.auction_type.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_bzxoptions_multicasttop_pitch_v1_2_54.price_long.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_bzxoptions_multicasttop_pitch_v1_2_54.quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_bzxoptions_multicasttop_pitch_v1_2_54.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxoptions_multicasttop_pitch_v1_2_54.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Auction Update Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.options_auction_update_message = {}

-- Size: Options Auction Update Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.options_auction_update_message.size =
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.time_offset.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.expanded_symbol.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.auction_type.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.reference_price.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.buy_contracts.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.sell_contracts.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.indicative_price.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.auction_only_price.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.opening_condition.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.composite_market_bid_price.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.composite_market_offer_price.size

-- Display: Options Auction Update Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.options_auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Auction Update Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.options_auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxoptions_multicasttop_pitch_v1_2_54.timestamp.dissect(buffer, index, packet, parent)

  -- Expanded Symbol: Printable ASCII
  index, expanded_symbol = cboe_bzxoptions_multicasttop_pitch_v1_2_54.expanded_symbol.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_bzxoptions_multicasttop_pitch_v1_2_54.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price: Binary Long Price
  index, reference_price = cboe_bzxoptions_multicasttop_pitch_v1_2_54.reference_price.dissect(buffer, index, packet, parent)

  -- Buy Contracts: Binary
  index, buy_contracts = cboe_bzxoptions_multicasttop_pitch_v1_2_54.buy_contracts.dissect(buffer, index, packet, parent)

  -- Sell Contracts: Binary
  index, sell_contracts = cboe_bzxoptions_multicasttop_pitch_v1_2_54.sell_contracts.dissect(buffer, index, packet, parent)

  -- Indicative Price: Binary Long Price
  index, indicative_price = cboe_bzxoptions_multicasttop_pitch_v1_2_54.indicative_price.dissect(buffer, index, packet, parent)

  -- Auction Only Price: Binary Long Price
  index, auction_only_price = cboe_bzxoptions_multicasttop_pitch_v1_2_54.auction_only_price.dissect(buffer, index, packet, parent)

  -- Opening Condition: Alphanumeric
  index, opening_condition = cboe_bzxoptions_multicasttop_pitch_v1_2_54.opening_condition.dissect(buffer, index, packet, parent)

  -- Composite Market Bid Price: Binary Long Price
  index, composite_market_bid_price = cboe_bzxoptions_multicasttop_pitch_v1_2_54.composite_market_bid_price.dissect(buffer, index, packet, parent)

  -- Composite Market Offer Price: Binary Long Price
  index, composite_market_offer_price = cboe_bzxoptions_multicasttop_pitch_v1_2_54.composite_market_offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Auction Update Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.options_auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.options_auction_update_message, buffer(offset, 0))
    local index = cboe_bzxoptions_multicasttop_pitch_v1_2_54.options_auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.options_auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxoptions_multicasttop_pitch_v1_2_54.options_auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Top Trade Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.top_trade_message = {}

-- Size: Top Trade Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.top_trade_message.size =
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.time_offset.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.quantity_long.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.price_long.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.execution_id.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.total_volume.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.trade_condition.size

-- Display: Top Trade Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.top_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Trade Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.top_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxoptions_multicasttop_pitch_v1_2_54.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_bzxoptions_multicasttop_pitch_v1_2_54.quantity_long.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_bzxoptions_multicasttop_pitch_v1_2_54.price_long.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_bzxoptions_multicasttop_pitch_v1_2_54.execution_id.dissect(buffer, index, packet, parent)

  -- Total Volume: Binary
  index, total_volume = cboe_bzxoptions_multicasttop_pitch_v1_2_54.total_volume.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_bzxoptions_multicasttop_pitch_v1_2_54.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Trade Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.top_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.top_trade_message, buffer(offset, 0))
    local index = cboe_bzxoptions_multicasttop_pitch_v1_2_54.top_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.top_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxoptions_multicasttop_pitch_v1_2_54.top_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Bit Fields
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bit_fields = {}

-- Size: Bit Fields
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bit_fields.size = 1

-- Display: Bit Fields
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bit_fields.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Aon flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Aon"
  end
  -- Is Customer flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Customer"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Bit Fields
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bit_fields.bits = function(range, value, packet, parent)

  -- Reserved Low: 3 Bit
  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.reserved_low, range, value)

  -- Aon: 1 Bit
  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.aon, range, value)

  -- Customer: 1 Bit
  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.customer, range, value)

  -- Reserved High: 3 Bit
  parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.reserved_high, range, value)
end

-- Dissect: Bit Fields
cboe_bzxoptions_multicasttop_pitch_v1_2_54.bit_fields.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxoptions_multicasttop_pitch_v1_2_54.bit_fields.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.bit_fields.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.bit_fields, range, display)

  if show.structs then
    cboe_bzxoptions_multicasttop_pitch_v1_2_54.bit_fields.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Two Side Update Expanded Long Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.two_side_update_expanded_long_message = {}

-- Size: Two Side Update Expanded Long Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.two_side_update_expanded_long_message.size =
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.time_offset.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.bit_fields.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_price_long.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_quantity_long.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_customer_quantity_long.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_price_long.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_quantity_long.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_customer_quantity_long.size

-- Display: Two Side Update Expanded Long Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.two_side_update_expanded_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Two Side Update Expanded Long Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.two_side_update_expanded_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxoptions_multicasttop_pitch_v1_2_54.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol.dissect(buffer, index, packet, parent)

  -- Bit Fields: Struct of 4 fields
  index, bit_fields = cboe_bzxoptions_multicasttop_pitch_v1_2_54.bit_fields.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Binary Long Price
  index, bid_price_long = cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Binary
  index, bid_quantity_long = cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_quantity_long.dissect(buffer, index, packet, parent)

  -- Bid Customer Quantity Long: Binary
  index, bid_customer_quantity_long = cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_customer_quantity_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Binary Long Price
  index, ask_price_long = cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Binary
  index, ask_quantity_long = cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_quantity_long.dissect(buffer, index, packet, parent)

  -- Ask Customer Quantity Long: Binary
  index, ask_customer_quantity_long = cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_customer_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Two Side Update Expanded Long Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.two_side_update_expanded_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.two_side_update_expanded_long_message, buffer(offset, 0))
    local index = cboe_bzxoptions_multicasttop_pitch_v1_2_54.two_side_update_expanded_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.two_side_update_expanded_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxoptions_multicasttop_pitch_v1_2_54.two_side_update_expanded_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Two Side Update Expanded Short Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.two_side_update_expanded_short_message = {}

-- Size: Two Side Update Expanded Short Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.two_side_update_expanded_short_message.size =
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.time_offset.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.bit_fields.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_price_short.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_quantity_short.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_customer_quantity_short.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_price_short.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_quantity_short.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_customer_quantity_short.size

-- Display: Two Side Update Expanded Short Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.two_side_update_expanded_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Two Side Update Expanded Short Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.two_side_update_expanded_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxoptions_multicasttop_pitch_v1_2_54.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol.dissect(buffer, index, packet, parent)

  -- Bit Fields: Struct of 4 fields
  index, bit_fields = cboe_bzxoptions_multicasttop_pitch_v1_2_54.bit_fields.dissect(buffer, index, packet, parent)

  -- Bid Price Short: Binary Short Price
  index, bid_price_short = cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Quantity Short: Binary
  index, bid_quantity_short = cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_quantity_short.dissect(buffer, index, packet, parent)

  -- Bid Customer Quantity Short: Binary
  index, bid_customer_quantity_short = cboe_bzxoptions_multicasttop_pitch_v1_2_54.bid_customer_quantity_short.dissect(buffer, index, packet, parent)

  -- Ask Price Short: Binary Short Price
  index, ask_price_short = cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_price_short.dissect(buffer, index, packet, parent)

  -- Ask Quantity Short: Binary
  index, ask_quantity_short = cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_quantity_short.dissect(buffer, index, packet, parent)

  -- Ask Customer Quantity Short: Binary
  index, ask_customer_quantity_short = cboe_bzxoptions_multicasttop_pitch_v1_2_54.ask_customer_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Two Side Update Expanded Short Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.two_side_update_expanded_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.two_side_update_expanded_short_message, buffer(offset, 0))
    local index = cboe_bzxoptions_multicasttop_pitch_v1_2_54.two_side_update_expanded_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.two_side_update_expanded_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxoptions_multicasttop_pitch_v1_2_54.two_side_update_expanded_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Update Expanded Long Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.single_side_update_expanded_long_message = {}

-- Size: Single Side Update Expanded Long Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.single_side_update_expanded_long_message.size =
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.time_offset.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.side.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.bit_fields.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.price_long.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.quantity_long.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.customer_quantity_long.size

-- Display: Single Side Update Expanded Long Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.single_side_update_expanded_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Update Expanded Long Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.single_side_update_expanded_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxoptions_multicasttop_pitch_v1_2_54.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_bzxoptions_multicasttop_pitch_v1_2_54.side.dissect(buffer, index, packet, parent)

  -- Bit Fields: Struct of 4 fields
  index, bit_fields = cboe_bzxoptions_multicasttop_pitch_v1_2_54.bit_fields.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_bzxoptions_multicasttop_pitch_v1_2_54.price_long.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_bzxoptions_multicasttop_pitch_v1_2_54.quantity_long.dissect(buffer, index, packet, parent)

  -- Customer Quantity Long: Binary
  index, customer_quantity_long = cboe_bzxoptions_multicasttop_pitch_v1_2_54.customer_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Update Expanded Long Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.single_side_update_expanded_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.single_side_update_expanded_long_message, buffer(offset, 0))
    local index = cboe_bzxoptions_multicasttop_pitch_v1_2_54.single_side_update_expanded_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.single_side_update_expanded_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxoptions_multicasttop_pitch_v1_2_54.single_side_update_expanded_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Update Expanded Short Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.single_side_update_expanded_short_message = {}

-- Size: Single Side Update Expanded Short Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.single_side_update_expanded_short_message.size =
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.time_offset.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.side.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.bit_fields.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.price_short.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.quantity_short.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.customer_quantity_short.size

-- Display: Single Side Update Expanded Short Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.single_side_update_expanded_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Update Expanded Short Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.single_side_update_expanded_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxoptions_multicasttop_pitch_v1_2_54.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_bzxoptions_multicasttop_pitch_v1_2_54.side.dissect(buffer, index, packet, parent)

  -- Bit Fields: Struct of 4 fields
  index, bit_fields = cboe_bzxoptions_multicasttop_pitch_v1_2_54.bit_fields.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_bzxoptions_multicasttop_pitch_v1_2_54.price_short.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_bzxoptions_multicasttop_pitch_v1_2_54.quantity_short.dissect(buffer, index, packet, parent)

  -- Customer Quantity Short: Binary
  index, customer_quantity_short = cboe_bzxoptions_multicasttop_pitch_v1_2_54.customer_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Update Expanded Short Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.single_side_update_expanded_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.single_side_update_expanded_short_message, buffer(offset, 0))
    local index = cboe_bzxoptions_multicasttop_pitch_v1_2_54.single_side_update_expanded_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.single_side_update_expanded_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxoptions_multicasttop_pitch_v1_2_54.single_side_update_expanded_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Mapping Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol_mapping_message = {}

-- Size: Symbol Mapping Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol_mapping_message.size =
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.feed_symbol.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.osi_symbol.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol_condition.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.underlying.size

-- Display: Symbol Mapping Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Mapping Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: Printable ASCII
  index, feed_symbol = cboe_bzxoptions_multicasttop_pitch_v1_2_54.feed_symbol.dissect(buffer, index, packet, parent)

  -- Osi Symbol: Printable ASCII
  index, osi_symbol = cboe_bzxoptions_multicasttop_pitch_v1_2_54.osi_symbol.dissect(buffer, index, packet, parent)

  -- Symbol Condition: Alphanumeric
  index, symbol_condition = cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol_condition.dissect(buffer, index, packet, parent)

  -- Underlying: Alphanumeric
  index, underlying = cboe_bzxoptions_multicasttop_pitch_v1_2_54.underlying.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.symbol_mapping_message, buffer(offset, 0))
    local index = cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.unit_clear_message = {}

-- Size: Unit Clear Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.unit_clear_message.size =
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.time_offset.size

-- Display: Unit Clear Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxoptions_multicasttop_pitch_v1_2_54.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_bzxoptions_multicasttop_pitch_v1_2_54.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxoptions_multicasttop_pitch_v1_2_54.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.time_message = {}

-- Size: Time Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.time_message.size =
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.time.size

-- Display: Time Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = cboe_bzxoptions_multicasttop_pitch_v1_2_54.time.dissect(buffer, index, packet, parent)

  -- Store Time Value
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.time.current = time

  if not packet.visited then
    cboe_bzxoptions_multicasttop_pitch_v1_2_54.conversation.current.time.last = time
  end

  return index
end

-- Dissect: Time Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.time_message, buffer(offset, 0))
    local index = cboe_bzxoptions_multicasttop_pitch_v1_2_54.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxoptions_multicasttop_pitch_v1_2_54.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_bzxoptions_multicasttop_pitch_v1_2_54.payload = {}

-- Dissect: Payload
cboe_bzxoptions_multicasttop_pitch_v1_2_54.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_bzxoptions_multicasttop_pitch_v1_2_54.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_bzxoptions_multicasttop_pitch_v1_2_54.unit_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Mapping Message
  if message_type == 0x2E then
    return cboe_bzxoptions_multicasttop_pitch_v1_2_54.symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Update Expanded Short Message
  if message_type == 0xD4 then
    return cboe_bzxoptions_multicasttop_pitch_v1_2_54.single_side_update_expanded_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Update Expanded Long Message
  if message_type == 0xD5 then
    return cboe_bzxoptions_multicasttop_pitch_v1_2_54.single_side_update_expanded_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Two Side Update Expanded Short Message
  if message_type == 0xD6 then
    return cboe_bzxoptions_multicasttop_pitch_v1_2_54.two_side_update_expanded_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Two Side Update Expanded Long Message
  if message_type == 0xD7 then
    return cboe_bzxoptions_multicasttop_pitch_v1_2_54.two_side_update_expanded_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Top Trade Message
  if message_type == 0xB8 then
    return cboe_bzxoptions_multicasttop_pitch_v1_2_54.top_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Auction Update Message
  if message_type == 0xD1 then
    return cboe_bzxoptions_multicasttop_pitch_v1_2_54.options_auction_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if message_type == 0x96 then
    return cboe_bzxoptions_multicasttop_pitch_v1_2_54.auction_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_bzxoptions_multicasttop_pitch_v1_2_54.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_bzxoptions_multicasttop_pitch_v1_2_54.end_of_session_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_header = {}

-- Size: Message Header
cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_header.size =
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_length.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_type.size

-- Display: Message Header
cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, message_type = cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.message_header, buffer(offset, 0))
    local index = cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.message = {}

-- Read runtime size of: Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and cboe_bzxoptions_multicasttop_pitch_v1_2_54.packet_sequence ~= nil then
    local sequence = parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.message_sequence_number, UInt64.new(cboe_bzxoptions_multicasttop_pitch_v1_2_54.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 12 branches
  index = cboe_bzxoptions_multicasttop_pitch_v1_2_54.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_bzxoptions_multicasttop_pitch_v1_2_54.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_bzxoptions_multicasttop_pitch_v1_2_54.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.message, buffer(offset, 0))
    local current = cboe_bzxoptions_multicasttop_pitch_v1_2_54.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_bzxoptions_multicasttop_pitch_v1_2_54.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
cboe_bzxoptions_multicasttop_pitch_v1_2_54.heartbeat = {}

-- Display: Heartbeat
cboe_bzxoptions_multicasttop_pitch_v1_2_54.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
cboe_bzxoptions_multicasttop_pitch_v1_2_54.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
cboe_bzxoptions_multicasttop_pitch_v1_2_54.messages = {}

-- Dissect: Messages
cboe_bzxoptions_multicasttop_pitch_v1_2_54.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return cboe_bzxoptions_multicasttop_pitch_v1_2_54.heartbeat.dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_bzxoptions_multicasttop_pitch_v1_2_54.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
cboe_bzxoptions_multicasttop_pitch_v1_2_54.packet_header = {}

-- Size: Packet Header
cboe_bzxoptions_multicasttop_pitch_v1_2_54.packet_header.size =
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.length.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_count.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.unit.size + 
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.sequence.size

-- Display: Packet Header
cboe_bzxoptions_multicasttop_pitch_v1_2_54.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_bzxoptions_multicasttop_pitch_v1_2_54.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_bzxoptions_multicasttop_pitch_v1_2_54.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = cboe_bzxoptions_multicasttop_pitch_v1_2_54.message_count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_bzxoptions_multicasttop_pitch_v1_2_54.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_bzxoptions_multicasttop_pitch_v1_2_54.sequence.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.packet_sequence = sequence

  return index
end

-- Dissect: Packet Header
cboe_bzxoptions_multicasttop_pitch_v1_2_54.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.fields.packet_header, buffer(offset, 0))
    local index = cboe_bzxoptions_multicasttop_pitch_v1_2_54.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxoptions_multicasttop_pitch_v1_2_54.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxoptions_multicasttop_pitch_v1_2_54.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_bzxoptions_multicasttop_pitch_v1_2_54.packet = {}

-- Verify required size of Udp packet
cboe_bzxoptions_multicasttop_pitch_v1_2_54.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_bzxoptions_multicasttop_pitch_v1_2_54.packet_header.size
end

-- Dissect Packet
cboe_bzxoptions_multicasttop_pitch_v1_2_54.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = cboe_bzxoptions_multicasttop_pitch_v1_2_54.conversation.data(packet)
  if not packet.visited then
    data.time.frames[packet.number] = data.time.last
  end
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.time.current = data.time.frames[packet.number]
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_bzxoptions_multicasttop_pitch_v1_2_54.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_bzxoptions_multicasttop_pitch_v1_2_54.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.init()
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.time.current = nil
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.conversation.current = nil
  cboe_bzxoptions_multicasttop_pitch_v1_2_54.conversation.flows = {}
end

-- Dissector for Cboe BzxOptions MulticastTop Pitch 1.2.54
function omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54, buffer(), omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.description, "("..buffer:len().." Bytes)")
  return cboe_bzxoptions_multicasttop_pitch_v1_2_54.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe BzxOptions MulticastTop Pitch 1.2.54 (Udp)
local function omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_bzxoptions_multicasttop_pitch_v1_2_54.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54
  omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe BzxOptions MulticastTop Pitch 1.2.54
omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54:register_heuristic("udp", omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54_udp_heuristic)

-- Register Cboe BzxOptions MulticastTop Pitch 1.2.54 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_cboe_bzxoptions_multicasttop_pitch_v1_2_54)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.2.54
--   Date: Wednesday, April 1, 2026
--   Specification: US_OPTIONS_MULTICAST_TOP_SPECIFICATION.pdf
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
