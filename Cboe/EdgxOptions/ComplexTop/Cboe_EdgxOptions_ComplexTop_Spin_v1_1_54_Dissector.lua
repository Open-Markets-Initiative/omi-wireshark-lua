-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe EdgxOptions ComplexTop Spin 1.1.54 Protocol
local omi_cboe_edgxoptions_complextop_spin_v1_1_54 = Proto("Omi.Cboe.EdgxOptions.ComplexTop.Spin.v1.1.54", "Cboe EdgxOptions ComplexTop Spin 1.1.54")

-- Protocol table
local cboe_edgxoptions_complextop_spin_v1_1_54 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe EdgxOptions ComplexTop Spin 1.1.54 Fields
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.ask_customer_quantity_long = ProtoField.new("Ask Customer Quantity Long", "cboe.edgxoptions.complextop.spin.v1.1.54.askcustomerquantitylong", ftypes.UINT32, nil, nil, nil, "Number of customer contracts on the inside ask. A zero value denotes that there are no customer contracts at the inside price.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.ask_customer_quantity_short = ProtoField.new("Ask Customer Quantity Short", "cboe.edgxoptions.complextop.spin.v1.1.54.askcustomerquantityshort", ftypes.UINT16, nil, nil, nil, "Number of customer contracts on the inside ask. A zero value denotes that there are no customer contracts at the inside price.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.ask_price_long = ProtoField.new("Ask Price Long", "cboe.edgxoptions.complextop.spin.v1.1.54.askpricelong", ftypes.DOUBLE, nil, nil, nil, "Ask Price (may be a zero or negative price for some instruments).")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.ask_price_short = ProtoField.new("Ask Price Short", "cboe.edgxoptions.complextop.spin.v1.1.54.askpriceshort", ftypes.DOUBLE, nil, nil, nil, "Ask Price (may be a zero or negative price for some instruments).")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.ask_quantity_long = ProtoField.new("Ask Quantity Long", "cboe.edgxoptions.complextop.spin.v1.1.54.askquantitylong", ftypes.UINT32, nil, nil, nil, "Total number of contracts on the inside ask (customer and non-customer). A zero value denotes there is no ask.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.ask_quantity_short = ProtoField.new("Ask Quantity Short", "cboe.edgxoptions.complextop.spin.v1.1.54.askquantityshort", ftypes.UINT16, nil, nil, nil, "Total number of contracts on the inside ask (customer and non-customer). A zero value denotes there is no ask.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.bid_customer_quantity_long = ProtoField.new("Bid Customer Quantity Long", "cboe.edgxoptions.complextop.spin.v1.1.54.bidcustomerquantitylong", ftypes.UINT32, nil, nil, nil, "Number of customer contracts on the inside bid. A zero value denotes that there are no customer contracts at the inside price.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.bid_customer_quantity_short = ProtoField.new("Bid Customer Quantity Short", "cboe.edgxoptions.complextop.spin.v1.1.54.bidcustomerquantityshort", ftypes.UINT16, nil, nil, nil, "Number of customer contracts on the inside bid. A zero value denotes that there are no customer contracts at the inside price.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.bid_price_long = ProtoField.new("Bid Price Long", "cboe.edgxoptions.complextop.spin.v1.1.54.bidpricelong", ftypes.DOUBLE, nil, nil, nil, "Bid Price (may be a zero or negative price for some instruments).")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.bid_price_short = ProtoField.new("Bid Price Short", "cboe.edgxoptions.complextop.spin.v1.1.54.bidpriceshort", ftypes.DOUBLE, nil, nil, nil, "Bid Price (may be a zero or negative price for some instruments).")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.bid_quantity_long = ProtoField.new("Bid Quantity Long", "cboe.edgxoptions.complextop.spin.v1.1.54.bidquantitylong", ftypes.UINT32, nil, nil, nil, "Total number of contracts on the inside bid (customer and non-customer). A zero value denotes there is no bid.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.bid_quantity_short = ProtoField.new("Bid Quantity Short", "cboe.edgxoptions.complextop.spin.v1.1.54.bidquantityshort", ftypes.UINT16, nil, nil, nil, "Total number of contracts on the inside bid (customer and non-customer). A zero value denotes there is no bid.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.bit_fields = ProtoField.new("Bit Fields", "cboe.edgxoptions.complextop.spin.v1.1.54.bitfields", ftypes.STRING, nil, nil, nil, "Reserved bit field used in Single Side Update and Two Side Update messages. All 8 bits are reserved for Complex Multicast TOP.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.complex_instrument_id = ProtoField.new("Complex Instrument Id", "cboe.edgxoptions.complextop.spin.v1.1.54.complexinstrumentid", ftypes.STRING, nil, nil, nil, "Complex Instrument Id right padded with spaces.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.complex_instrument_type = ProtoField.new("Complex Instrument Type", "cboe.edgxoptions.complextop.spin.v1.1.54.complexinstrumenttype", ftypes.STRING, nil, nil, nil, "Character field; each field describes a characteristic. Character 1: Complex Option Type. Characters 2-4: Reserved.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.complex_instrument_underlying = ProtoField.new("Complex Instrument Underlying", "cboe.edgxoptions.complextop.spin.v1.1.54.complexinstrumentunderlying", ftypes.STRING, nil, nil, nil, "Complex Instrument Underlying right padded with spaces.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.complex_leg = ProtoField.new("Complex Leg", "cboe.edgxoptions.complextop.spin.v1.1.54.complexleg", ftypes.STRING, nil, nil, nil, "Repeating leg definition group inside the Complex Instrument Definition Expanded message. Repeats Leg Count times.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.customer_quantity_long = ProtoField.new("Customer Quantity Long", "cboe.edgxoptions.complextop.spin.v1.1.54.customerquantitylong", ftypes.UINT32, nil, nil, nil, "Number of customer contracts on the inside book. A zero value denotes that there are no customer contracts at the inside price.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.customer_quantity_short = ProtoField.new("Customer Quantity Short", "cboe.edgxoptions.complextop.spin.v1.1.54.customerquantityshort", ftypes.UINT16, nil, nil, nil, "Number of customer contracts on the inside book. A zero value denotes that there are no customer contracts at the inside price.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.execution_id = ProtoField.new("Execution Id", "cboe.edgxoptions.complextop.spin.v1.1.54.executionid", ftypes.UINT64, nil, nil, nil, "Cboe generated day-unique execution identifier of this trade. Execution Id is also referenced in the Trade Break message.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.edgxoptions.complextop.spin.v1.1.54.feedsymbol", ftypes.STRING, nil, nil, nil, "Symbol right padded with spaces.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.filler = ProtoField.new("Filler", "cboe.edgxoptions.complextop.spin.v1.1.54.filler", ftypes.STRING, nil, nil, nil, "(space filled)")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.gth_trading_status = ProtoField.new("Gth Trading Status", "cboe.edgxoptions.complextop.spin.v1.1.54.gthtradingstatus", ftypes.BYTES, nil, nil, nil, "Reserved. C1 only field — unused on BzxOptions, C2Options, and EdgxOptions.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.instrument_count = ProtoField.new("Instrument Count", "cboe.edgxoptions.complextop.spin.v1.1.54.instrumentcount", ftypes.UINT32, nil, nil, nil, "Number of Symbol Mapping and Complex Instrument Definition Expanded (if applicable) messages which will be contained in this spin.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.instrument_definition_response_status = ProtoField.new("Instrument Definition Response Status", "cboe.edgxoptions.complextop.spin.v1.1.54.instrumentdefinitionresponsestatus", ftypes.STRING, nil, nil, nil, "Accepted or reason for reject.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.leg_count = ProtoField.new("Leg Count", "cboe.edgxoptions.complextop.spin.v1.1.54.legcount", ftypes.UINT8, nil, nil, nil, "The number of legs in the complex instrument. The maximum number of legs is 16.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.leg_ratio = ProtoField.new("Leg Ratio", "cboe.edgxoptions.complextop.spin.v1.1.54.legratio", ftypes.INT32, nil, nil, nil, "Leg ratio (positive for buy-side, negative for sell-side). For options this is the number of contracts, for equities this is the number of shares.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.leg_security_type = ProtoField.new("Leg Security Type", "cboe.edgxoptions.complextop.spin.v1.1.54.legsecuritytype", ftypes.STRING, nil, nil, nil, "O = Leg is an Option instrument, E = Leg is an Equity instrument.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.leg_symbol = ProtoField.new("Leg Symbol", "cboe.edgxoptions.complextop.spin.v1.1.54.legsymbol", ftypes.STRING, nil, nil, nil, "Option or Equity Symbol of leg, right padded with spaces.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.length = ProtoField.new("Length", "cboe.edgxoptions.complextop.spin.v1.1.54.length", ftypes.UINT16, nil, nil, nil, "Length of entire block of messages. Includes this header and Message Count messages to follow")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.login_response_status = ProtoField.new("Login Response Status", "cboe.edgxoptions.complextop.spin.v1.1.54.loginresponsestatus", ftypes.STRING, nil, nil, nil, "Accepted or reason for reject.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.message_count = ProtoField.new("Message Count", "cboe.edgxoptions.complextop.spin.v1.1.54.messagecount", ftypes.UINT8, nil, nil, nil, "Number of messages to follow this header")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.message_length = ProtoField.new("Message Length", "cboe.edgxoptions.complextop.spin.v1.1.54.messagelength", ftypes.UINT8, nil, nil, nil, "Current Pitch message length")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.message_type = ProtoField.new("Message Type", "cboe.edgxoptions.complextop.spin.v1.1.54.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying this message type")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.order_count = ProtoField.new("Order Count", "cboe.edgxoptions.complextop.spin.v1.1.54.ordercount", ftypes.UINT32, nil, nil, nil, "Always zero.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.osi_symbol = ProtoField.new("Osi Symbol", "cboe.edgxoptions.complextop.spin.v1.1.54.osisymbol", ftypes.STRING, nil, nil, nil, "OSI Symbol.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.password = ProtoField.new("Password", "cboe.edgxoptions.complextop.spin.v1.1.54.password", ftypes.STRING, nil, nil, nil, "Password supplied by Cboe.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.price_long = ProtoField.new("Price Long", "cboe.edgxoptions.complextop.spin.v1.1.54.pricelong", ftypes.DOUBLE, nil, nil, nil, "Price (may be a zero or negative price for some instruments).")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.price_short = ProtoField.new("Price Short", "cboe.edgxoptions.complextop.spin.v1.1.54.priceshort", ftypes.DOUBLE, nil, nil, nil, "Price (may be a zero or negative price for some instruments).")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.quantity_long = ProtoField.new("Quantity Long", "cboe.edgxoptions.complextop.spin.v1.1.54.quantitylong", ftypes.UINT32, nil, nil, nil, "Total number of contracts on the inside book (customer and non-customer). A zero value denotes there is no Bid/Ask.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.edgxoptions.complextop.spin.v1.1.54.quantityshort", ftypes.UINT16, nil, nil, nil, "Total number of contracts on the inside book (customer and non-customer). A zero value denotes there is no Bid/Ask.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.edgxoptions.complextop.spin.v1.1.54.reserved1", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.edgxoptions.complextop.spin.v1.1.54.reserved2", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.reserved_bits = ProtoField.new("Reserved Bits", "cboe.edgxoptions.complextop.spin.v1.1.54.reservedbits", ftypes.UINT8, nil, base.DEC, 0xFF, "Bits 0-7 - Reserved. There are no Bit Fields for Complex Multicast TOP.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.second_reserved_1 = ProtoField.new("Second Reserved 1", "cboe.edgxoptions.complextop.spin.v1.1.54.secondreserved1", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.sequence = ProtoField.new("Sequence", "cboe.edgxoptions.complextop.spin.v1.1.54.sequence", ftypes.UINT32, nil, nil, nil, "Spin is available which is current through this sequence number.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.session_sub_id = ProtoField.new("Session Sub Id", "cboe.edgxoptions.complextop.spin.v1.1.54.sessionsubid", ftypes.STRING, nil, nil, nil, "SessionSubId supplied by Cboe.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.side = ProtoField.new("Side", "cboe.edgxoptions.complextop.spin.v1.1.54.side", ftypes.STRING, nil, nil, nil, "B = Bid Side, S = Ask Side.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.spin_response_status = ProtoField.new("Spin Response Status", "cboe.edgxoptions.complextop.spin.v1.1.54.spinresponsestatus", ftypes.STRING, nil, nil, nil, "Accepted or reason for reject. All non-A status codes should be interpreted as a reject.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.edgxoptions.complextop.spin.v1.1.54.symbolcondition", ftypes.STRING, nil, nil, nil, "N = Normal, C = Closing Only.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.time = ProtoField.new("Time", "cboe.edgxoptions.complextop.spin.v1.1.54.time", ftypes.UINT32, nil, nil, nil, "Number of whole seconds elapsed since the start of the current Eastern Time calendar day, derived by converting the current Eastern wall clock time (HH:MM:SS) to seconds.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.time_offset = ProtoField.new("Time Offset", "cboe.edgxoptions.complextop.spin.v1.1.54.timeoffset", ftypes.UINT32, nil, nil, nil, "Nanosecond offset from last unit timestamp.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.total_volume = ProtoField.new("Total Volume", "cboe.edgxoptions.complextop.spin.v1.1.54.totalvolume", ftypes.UINT32, nil, nil, nil, "Total quantity traded on the current business day (may decrease if the Trade Condition field indicates a cancelled trade).")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.edgxoptions.complextop.spin.v1.1.54.tradecondition", ftypes.STRING, nil, nil, nil, "See Options Trade Condition Codes for details.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.trading_status = ProtoField.new("Trading Status", "cboe.edgxoptions.complextop.spin.v1.1.54.tradingstatus", ftypes.STRING, nil, nil, nil, "H = Halted, L = Curb Trading (C1 Only), Q = Quote-Only, T = RTH Trading.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.underlying = ProtoField.new("Underlying", "cboe.edgxoptions.complextop.spin.v1.1.54.underlying", ftypes.STRING, nil, nil, nil, "Symbol of underlying equity right padded with spaces. All spaces if not available or not applicable.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.unit = ProtoField.new("Unit", "cboe.edgxoptions.complextop.spin.v1.1.54.unit", ftypes.UINT8, nil, nil, nil, "Unit that applies to messages included in this header")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.username = ProtoField.new("Username", "cboe.edgxoptions.complextop.spin.v1.1.54.username", ftypes.STRING, nil, nil, nil, "Username supplied by Cboe.")

-- Cboe EdgxOptions ComplexTop Spin 1.1.54 Framing
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.message = ProtoField.new("Message", "cboe.edgxoptions.complextop.spin.v1.1.54.message", ftypes.STRING)
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.message_header = ProtoField.new("Message Header", "cboe.edgxoptions.complextop.spin.v1.1.54.messageheader", ftypes.STRING)
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.packet = ProtoField.new("Packet", "cboe.edgxoptions.complextop.spin.v1.1.54.packet", ftypes.STRING, nil, nil, nil, "Pitch Tcp Packet")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.packet_header = ProtoField.new("Packet Header", "cboe.edgxoptions.complextop.spin.v1.1.54.packetheader", ftypes.STRING)

-- Cboe EdgxOptions ComplexTop 1.1.54 Application Messages
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.complex_instrument_definition_expanded_message = ProtoField.new("Complex Instrument Definition Expanded Message", "cboe.edgxoptions.complextop.spin.v1.1.54.complexinstrumentdefinitionexpandedmessage", ftypes.STRING, nil, nil, nil, "A Complex Instrument Definition Expanded message represents a complex instrument that is available to place orders. It is sent as a sequenced message. Complex Instrument Definition Expanded messages will be sent in a continuous loop through the day at variable rates as bandwidth allows. The Complex Instrument Definition Expanded message will contain two or more repeating groups of leg definitions. There is a limit of 16 leg definitions.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.instrument_definition_finished_message = ProtoField.new("Instrument Definition Finished Message", "cboe.edgxoptions.complextop.spin.v1.1.54.instrumentdefinitionfinishedmessage", ftypes.BYTES, nil, nil, nil, "The Instrument Definition Finished message is sent to indicate that all Symbol Mapping and Complex Instrument Definition Expanded messages for this unit have been sent. An Instrument Definition Finished message is only sent if an Instrument Definition Request was not rejected.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.instrument_definition_request_message = ProtoField.new("Instrument Definition Request Message", "cboe.edgxoptions.complextop.spin.v1.1.54.instrumentdefinitionrequestmessage", ftypes.STRING, nil, nil, nil, "The Instrument Definition Request message is used by a user's process to request transmission of this unit's Symbol Mappings and Complex Instrument Definitions. All Symbol Mapping messages will be sent before Complex Instrument Definition Expanded and Exchange Designated Complex Instrument Definition messages.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.instrument_definition_response_message = ProtoField.new("Instrument Definition Response Message", "cboe.edgxoptions.complextop.spin.v1.1.54.instrumentdefinitionresponsemessage", ftypes.STRING, nil, nil, nil, "The Instrument Definition Response message is sent in response to a user's Instrument Definition Request message indicating whether a spin will be sent.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.login_message = ProtoField.new("Login Message", "cboe.edgxoptions.complextop.spin.v1.1.54.loginmessage", ftypes.STRING, nil, nil, nil, "The Login message is the first message sent to the Spin Server by a user's process after the connection to the Spin Server is established. Failure to login before sending any other message type will result in the connection being dropped by the Spin Server. The format of the Login message for the Spin Server is identical to that of the GRP.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.login_response_message = ProtoField.new("Login Response Message", "cboe.edgxoptions.complextop.spin.v1.1.54.loginresponsemessage", ftypes.STRING, nil, nil, nil, "The Login Response message is sent by the Spin Server to a user's process in response to a Login message. The status field is used to reflect an accepted login or the reason the session was not accepted. If login fails, the connection will be dropped after the Login Response message is sent.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.single_side_update_expanded_long_message = ProtoField.new("Single Side Update Expanded Long Message", "cboe.edgxoptions.complextop.spin.v1.1.54.singlesideupdateexpandedlongmessage", ftypes.STRING, nil, nil, nil, "Single Side Update messages provide an updated price and size for a single side of a Complex Instrument ID. The Single Side Update Expanded (Long) message is used when the Price cannot be represented by a Binary Short Price or the Quantity cannot be represented by an unsigned 16-bit integer.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.single_side_update_expanded_short_message = ProtoField.new("Single Side Update Expanded Short Message", "cboe.edgxoptions.complextop.spin.v1.1.54.singlesideupdateexpandedshortmessage", ftypes.STRING, nil, nil, nil, "Single Side Update messages provide an updated price and size for a single side of a Complex Instrument ID. The side is denoted by the Side field. One Single Side Update message may reflect one or more updates to the inside book that were processed at the same time, but will only be done so in a way that can be arbitrated between A/B feeds. The Single Side Update Expanded (Short) message is used whenever possible.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.spin_finished_message = ProtoField.new("Spin Finished Message", "cboe.edgxoptions.complextop.spin.v1.1.54.spinfinishedmessage", ftypes.STRING, nil, nil, nil, "The Spin Finished message is sent to indicate that all messages for the spin requested have been sent. A Spin Finished message is only sent if a Spin Request was not rejected. Upon receipt of a Spin Finished message, any buffered multicast messages should be applied to the customer's copy of the book to make it current.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.spin_image_available_message = ProtoField.new("Spin Image Available Message", "cboe.edgxoptions.complextop.spin.v1.1.54.spinimageavailablemessage", ftypes.STRING, nil, nil, nil, "The Spin Image Available message is sent once per second and indicates through what sequence number a spin is available.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.spin_request_message = ProtoField.new("Spin Request Message", "cboe.edgxoptions.complextop.spin.v1.1.54.spinrequestmessage", ftypes.STRING, nil, nil, nil, "The Spin Request message is used by a user's process to request transmission of a spin of the unit's order book.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.spin_response_message = ProtoField.new("Spin Response Message", "cboe.edgxoptions.complextop.spin.v1.1.54.spinresponsemessage", ftypes.STRING, nil, nil, nil, "The Spin Response message is sent in response to a user's Spin Request message indicating whether a spin will be sent.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.symbol_mapping_message = ProtoField.new("Symbol Mapping Message", "cboe.edgxoptions.complextop.spin.v1.1.54.symbolmappingmessage", ftypes.STRING, nil, nil, nil, "A Symbol Mapping message is used to map the 6 character simple instrument multicast feed symbol field to an OSI symbol and Underlying. These messages are not sequenced (sequence = 0) and are sent continuously through the day at variable rates as bandwidth allows.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.time_message = ProtoField.new("Time Message", "cboe.edgxoptions.complextop.spin.v1.1.54.timemessage", ftypes.STRING, nil, nil, nil, "A Time message is immediately generated and sent when there is a Top event for a given clock second. If there is no Top event for a given clock second, then no Time message is sent for that second. All subsequent time offset fields for the same unit will use the new Time value as the base until another Time message is received for the same unit.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.top_trade_message = ProtoField.new("Top Trade Message", "cboe.edgxoptions.complextop.spin.v1.1.54.toptrademessage", ftypes.STRING, nil, nil, nil, "The TOP Trade message provides information about executions of complex orders. TOP Trade messages are necessary to calculate Cboe execution-based data. TOP Trade messages do not alter the complex book. One or more Single Side Update Expanded or Two Side Update Expanded messages will follow a TOP Trade message to reflect the updated complex book. The TOP Trade message sends the trade price, trade quantity, and trade condition of a trade as well as the cumulative volume for the business day.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.edgxoptions.complextop.spin.v1.1.54.tradingstatusmessage", ftypes.STRING, nil, nil, nil, "The Trading Status message is used to indicate the current trading status of a complex instrument. A Trading Status message will be sent whenever a complex instrument trading status changes. The Trading Status field will be used to represent the status of the RTH (9:30 a.m. ET - 4:15 p.m. ET) session.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.two_side_update_expanded_long_message = ProtoField.new("Two Side Update Expanded Long Message", "cboe.edgxoptions.complextop.spin.v1.1.54.twosideupdateexpandedlongmessage", ftypes.STRING, nil, nil, nil, "Two Side Update messages provide an updated price and size for both sides of a Complex Instrument ID. The Two Side Update Expanded (Long) message is used when the Price cannot be represented by a Binary Short Price or the Quantity cannot be represented by an unsigned 16-bit integer.")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.two_side_update_expanded_short_message = ProtoField.new("Two Side Update Expanded Short Message", "cboe.edgxoptions.complextop.spin.v1.1.54.twosideupdateexpandedshortmessage", ftypes.STRING, nil, nil, nil, "Two Side Update messages provide an updated price and size for both sides of a Complex Instrument ID. One Two Side Update message may reflect one or more updates to the inside book that were processed at the same time, but will only be done so in a way that can be arbitrated between A/B feeds. The Two Side Update Expanded (Short) message is used whenever possible.")

-- Cboe EdgxOptions ComplexTop Spin 1.1.54 Generated Fields
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.complex_leg_index = ProtoField.new("Complex Leg Index", "cboe.edgxoptions.complextop.spin.v1.1.54.complexlegindex", ftypes.UINT16)
omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.message_index = ProtoField.new("Message Index", "cboe.edgxoptions.complextop.spin.v1.1.54.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe EdgxOptions ComplexTop Spin 1.1.54 Element Dissection Options
show.structs = true
show.application_messages = true
show.repeating_groups = true
show.headers = true
show.indexes = true

-- Register Cboe EdgxOptions ComplexTop Spin 1.1.54 Show Options
omi_cboe_edgxoptions_complextop_spin_v1_1_54.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cboe_edgxoptions_complextop_spin_v1_1_54.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_cboe_edgxoptions_complextop_spin_v1_1_54.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_edgxoptions_complextop_spin_v1_1_54.prefs.show_application_messages then
    show.application_messages = omi_cboe_edgxoptions_complextop_spin_v1_1_54.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_edgxoptions_complextop_spin_v1_1_54.prefs.show_headers then
    show.headers = omi_cboe_edgxoptions_complextop_spin_v1_1_54.prefs.show_headers
  end
  if show.repeating_groups ~= omi_cboe_edgxoptions_complextop_spin_v1_1_54.prefs.show_repeating_groups then
    show.repeating_groups = omi_cboe_edgxoptions_complextop_spin_v1_1_54.prefs.show_repeating_groups
  end
  if show.structs ~= omi_cboe_edgxoptions_complextop_spin_v1_1_54.prefs.show_structs then
    show.structs = omi_cboe_edgxoptions_complextop_spin_v1_1_54.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_edgxoptions_complextop_spin_v1_1_54.prefs.show_indexes then
    show.indexes = omi_cboe_edgxoptions_complextop_spin_v1_1_54.prefs.show_indexes
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
-- Cboe EdgxOptions ComplexTop Spin 1.1.54 Fields
-----------------------------------------------------------------------

-- Ask Customer Quantity Long
cboe_edgxoptions_complextop_spin_v1_1_54.ask_customer_quantity_long = {}

-- Size: Ask Customer Quantity Long
cboe_edgxoptions_complextop_spin_v1_1_54.ask_customer_quantity_long.size = 4

-- Display: Ask Customer Quantity Long
cboe_edgxoptions_complextop_spin_v1_1_54.ask_customer_quantity_long.display = function(value)
  return "Ask Customer Quantity Long: "..value
end

-- Dissect: Ask Customer Quantity Long
cboe_edgxoptions_complextop_spin_v1_1_54.ask_customer_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.ask_customer_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.ask_customer_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.ask_customer_quantity_long, range, value, display)

  return offset + length, value
end

-- Ask Customer Quantity Short
cboe_edgxoptions_complextop_spin_v1_1_54.ask_customer_quantity_short = {}

-- Size: Ask Customer Quantity Short
cboe_edgxoptions_complextop_spin_v1_1_54.ask_customer_quantity_short.size = 2

-- Display: Ask Customer Quantity Short
cboe_edgxoptions_complextop_spin_v1_1_54.ask_customer_quantity_short.display = function(value)
  return "Ask Customer Quantity Short: "..value
end

-- Dissect: Ask Customer Quantity Short
cboe_edgxoptions_complextop_spin_v1_1_54.ask_customer_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.ask_customer_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.ask_customer_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.ask_customer_quantity_short, range, value, display)

  return offset + length, value
end

-- Ask Price Long
cboe_edgxoptions_complextop_spin_v1_1_54.ask_price_long = {}

-- Size: Ask Price Long
cboe_edgxoptions_complextop_spin_v1_1_54.ask_price_long.size = 8

-- Display: Ask Price Long
cboe_edgxoptions_complextop_spin_v1_1_54.ask_price_long.display = function(value)
  return "Ask Price Long: "..value
end

-- Translate: Ask Price Long
cboe_edgxoptions_complextop_spin_v1_1_54.ask_price_long.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Ask Price Long
cboe_edgxoptions_complextop_spin_v1_1_54.ask_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.ask_price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_edgxoptions_complextop_spin_v1_1_54.ask_price_long.translate(raw)
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.ask_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.ask_price_long, range, value, display)

  return offset + length, value
end

-- Ask Price Short
cboe_edgxoptions_complextop_spin_v1_1_54.ask_price_short = {}

-- Size: Ask Price Short
cboe_edgxoptions_complextop_spin_v1_1_54.ask_price_short.size = 2

-- Display: Ask Price Short
cboe_edgxoptions_complextop_spin_v1_1_54.ask_price_short.display = function(value)
  return "Ask Price Short: "..value
end

-- Translate: Ask Price Short
cboe_edgxoptions_complextop_spin_v1_1_54.ask_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Ask Price Short
cboe_edgxoptions_complextop_spin_v1_1_54.ask_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.ask_price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_edgxoptions_complextop_spin_v1_1_54.ask_price_short.translate(raw)
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.ask_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.ask_price_short, range, value, display)

  return offset + length, value
end

-- Ask Quantity Long
cboe_edgxoptions_complextop_spin_v1_1_54.ask_quantity_long = {}

-- Size: Ask Quantity Long
cboe_edgxoptions_complextop_spin_v1_1_54.ask_quantity_long.size = 4

-- Display: Ask Quantity Long
cboe_edgxoptions_complextop_spin_v1_1_54.ask_quantity_long.display = function(value)
  return "Ask Quantity Long: "..value
end

-- Dissect: Ask Quantity Long
cboe_edgxoptions_complextop_spin_v1_1_54.ask_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.ask_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.ask_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.ask_quantity_long, range, value, display)

  return offset + length, value
end

-- Ask Quantity Short
cboe_edgxoptions_complextop_spin_v1_1_54.ask_quantity_short = {}

-- Size: Ask Quantity Short
cboe_edgxoptions_complextop_spin_v1_1_54.ask_quantity_short.size = 2

-- Display: Ask Quantity Short
cboe_edgxoptions_complextop_spin_v1_1_54.ask_quantity_short.display = function(value)
  return "Ask Quantity Short: "..value
end

-- Dissect: Ask Quantity Short
cboe_edgxoptions_complextop_spin_v1_1_54.ask_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.ask_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.ask_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.ask_quantity_short, range, value, display)

  return offset + length, value
end

-- Bid Customer Quantity Long
cboe_edgxoptions_complextop_spin_v1_1_54.bid_customer_quantity_long = {}

-- Size: Bid Customer Quantity Long
cboe_edgxoptions_complextop_spin_v1_1_54.bid_customer_quantity_long.size = 4

-- Display: Bid Customer Quantity Long
cboe_edgxoptions_complextop_spin_v1_1_54.bid_customer_quantity_long.display = function(value)
  return "Bid Customer Quantity Long: "..value
end

-- Dissect: Bid Customer Quantity Long
cboe_edgxoptions_complextop_spin_v1_1_54.bid_customer_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.bid_customer_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.bid_customer_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.bid_customer_quantity_long, range, value, display)

  return offset + length, value
end

-- Bid Customer Quantity Short
cboe_edgxoptions_complextop_spin_v1_1_54.bid_customer_quantity_short = {}

-- Size: Bid Customer Quantity Short
cboe_edgxoptions_complextop_spin_v1_1_54.bid_customer_quantity_short.size = 2

-- Display: Bid Customer Quantity Short
cboe_edgxoptions_complextop_spin_v1_1_54.bid_customer_quantity_short.display = function(value)
  return "Bid Customer Quantity Short: "..value
end

-- Dissect: Bid Customer Quantity Short
cboe_edgxoptions_complextop_spin_v1_1_54.bid_customer_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.bid_customer_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.bid_customer_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.bid_customer_quantity_short, range, value, display)

  return offset + length, value
end

-- Bid Price Long
cboe_edgxoptions_complextop_spin_v1_1_54.bid_price_long = {}

-- Size: Bid Price Long
cboe_edgxoptions_complextop_spin_v1_1_54.bid_price_long.size = 8

-- Display: Bid Price Long
cboe_edgxoptions_complextop_spin_v1_1_54.bid_price_long.display = function(value)
  return "Bid Price Long: "..value
end

-- Translate: Bid Price Long
cboe_edgxoptions_complextop_spin_v1_1_54.bid_price_long.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Bid Price Long
cboe_edgxoptions_complextop_spin_v1_1_54.bid_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.bid_price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_edgxoptions_complextop_spin_v1_1_54.bid_price_long.translate(raw)
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.bid_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.bid_price_long, range, value, display)

  return offset + length, value
end

-- Bid Price Short
cboe_edgxoptions_complextop_spin_v1_1_54.bid_price_short = {}

-- Size: Bid Price Short
cboe_edgxoptions_complextop_spin_v1_1_54.bid_price_short.size = 2

-- Display: Bid Price Short
cboe_edgxoptions_complextop_spin_v1_1_54.bid_price_short.display = function(value)
  return "Bid Price Short: "..value
end

-- Translate: Bid Price Short
cboe_edgxoptions_complextop_spin_v1_1_54.bid_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price Short
cboe_edgxoptions_complextop_spin_v1_1_54.bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.bid_price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_edgxoptions_complextop_spin_v1_1_54.bid_price_short.translate(raw)
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Bid Quantity Long
cboe_edgxoptions_complextop_spin_v1_1_54.bid_quantity_long = {}

-- Size: Bid Quantity Long
cboe_edgxoptions_complextop_spin_v1_1_54.bid_quantity_long.size = 4

-- Display: Bid Quantity Long
cboe_edgxoptions_complextop_spin_v1_1_54.bid_quantity_long.display = function(value)
  return "Bid Quantity Long: "..value
end

-- Dissect: Bid Quantity Long
cboe_edgxoptions_complextop_spin_v1_1_54.bid_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.bid_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.bid_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.bid_quantity_long, range, value, display)

  return offset + length, value
end

-- Bid Quantity Short
cboe_edgxoptions_complextop_spin_v1_1_54.bid_quantity_short = {}

-- Size: Bid Quantity Short
cboe_edgxoptions_complextop_spin_v1_1_54.bid_quantity_short.size = 2

-- Display: Bid Quantity Short
cboe_edgxoptions_complextop_spin_v1_1_54.bid_quantity_short.display = function(value)
  return "Bid Quantity Short: "..value
end

-- Dissect: Bid Quantity Short
cboe_edgxoptions_complextop_spin_v1_1_54.bid_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.bid_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.bid_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.bid_quantity_short, range, value, display)

  return offset + length, value
end

-- Complex Instrument Id
cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_id = {}

-- Size: Complex Instrument Id
cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_id.size = 6

-- Display: Complex Instrument Id
cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_id.display = function(value)
  return "Complex Instrument Id: "..value
end

-- Dissect: Complex Instrument Id
cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.complex_instrument_id, range, value, display)

  return offset + length, value
end

-- Complex Instrument Type
cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_type = {}

-- Size: Complex Instrument Type
cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_type.size = 4

-- Display: Complex Instrument Type
cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_type.display = function(value)
  return "Complex Instrument Type: "..value
end

-- Dissect: Complex Instrument Type
cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.complex_instrument_type, range, value, display)

  return offset + length, value
end

-- Complex Instrument Underlying
cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_underlying = {}

-- Size: Complex Instrument Underlying
cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_underlying.size = 8

-- Display: Complex Instrument Underlying
cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_underlying.display = function(value)
  return "Complex Instrument Underlying: "..value
end

-- Dissect: Complex Instrument Underlying
cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_underlying.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_underlying.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.complex_instrument_underlying, range, value, display)

  return offset + length, value
end

-- Customer Quantity Long
cboe_edgxoptions_complextop_spin_v1_1_54.customer_quantity_long = {}

-- Size: Customer Quantity Long
cboe_edgxoptions_complextop_spin_v1_1_54.customer_quantity_long.size = 4

-- Display: Customer Quantity Long
cboe_edgxoptions_complextop_spin_v1_1_54.customer_quantity_long.display = function(value)
  return "Customer Quantity Long: "..value
end

-- Dissect: Customer Quantity Long
cboe_edgxoptions_complextop_spin_v1_1_54.customer_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.customer_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.customer_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.customer_quantity_long, range, value, display)

  return offset + length, value
end

-- Customer Quantity Short
cboe_edgxoptions_complextop_spin_v1_1_54.customer_quantity_short = {}

-- Size: Customer Quantity Short
cboe_edgxoptions_complextop_spin_v1_1_54.customer_quantity_short.size = 2

-- Display: Customer Quantity Short
cboe_edgxoptions_complextop_spin_v1_1_54.customer_quantity_short.display = function(value)
  return "Customer Quantity Short: "..value
end

-- Dissect: Customer Quantity Short
cboe_edgxoptions_complextop_spin_v1_1_54.customer_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.customer_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.customer_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.customer_quantity_short, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_edgxoptions_complextop_spin_v1_1_54.execution_id = {}

-- Size: Execution Id
cboe_edgxoptions_complextop_spin_v1_1_54.execution_id.size = 8

-- Display: Execution Id
cboe_edgxoptions_complextop_spin_v1_1_54.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_edgxoptions_complextop_spin_v1_1_54.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Feed Symbol
cboe_edgxoptions_complextop_spin_v1_1_54.feed_symbol = {}

-- Size: Feed Symbol
cboe_edgxoptions_complextop_spin_v1_1_54.feed_symbol.size = 6

-- Display: Feed Symbol
cboe_edgxoptions_complextop_spin_v1_1_54.feed_symbol.display = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_edgxoptions_complextop_spin_v1_1_54.feed_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.feed_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.feed_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Filler
cboe_edgxoptions_complextop_spin_v1_1_54.filler = {}

-- Size: Filler
cboe_edgxoptions_complextop_spin_v1_1_54.filler.size = 2

-- Display: Filler
cboe_edgxoptions_complextop_spin_v1_1_54.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
cboe_edgxoptions_complextop_spin_v1_1_54.filler.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.filler.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.filler, range, value, display)

  return offset + length, value
end

-- Gth Trading Status
cboe_edgxoptions_complextop_spin_v1_1_54.gth_trading_status = {}

-- Size: Gth Trading Status
cboe_edgxoptions_complextop_spin_v1_1_54.gth_trading_status.size = 1

-- Display: Gth Trading Status
cboe_edgxoptions_complextop_spin_v1_1_54.gth_trading_status.display = function(value)
  return "Gth Trading Status: "..value
end

-- Dissect: Gth Trading Status
cboe_edgxoptions_complextop_spin_v1_1_54.gth_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.gth_trading_status.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.gth_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.gth_trading_status, range, value, display)

  return offset + length, value
end

-- Instrument Count
cboe_edgxoptions_complextop_spin_v1_1_54.instrument_count = {}

-- Size: Instrument Count
cboe_edgxoptions_complextop_spin_v1_1_54.instrument_count.size = 4

-- Display: Instrument Count
cboe_edgxoptions_complextop_spin_v1_1_54.instrument_count.display = function(value)
  return "Instrument Count: "..value
end

-- Dissect: Instrument Count
cboe_edgxoptions_complextop_spin_v1_1_54.instrument_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.instrument_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.instrument_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.instrument_count, range, value, display)

  return offset + length, value
end

-- Instrument Definition Response Status
cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_response_status = {}

-- Size: Instrument Definition Response Status
cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_response_status.size = 1

-- Display: Instrument Definition Response Status
cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_response_status.display = function(value)
  if value == "A" then
    return "Instrument Definition Response Status: Accepted (A)"
  end
  if value == "O" then
    return "Instrument Definition Response Status: Out Of Range Sequence Must Be 0 (O)"
  end
  if value == "S" then
    return "Instrument Definition Response Status: Spin Already In Progress Only One Spin Can Be Running At A Time (S)"
  end

  return "Instrument Definition Response Status: Unknown("..value..")"
end

-- Dissect: Instrument Definition Response Status
cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.instrument_definition_response_status, range, value, display)

  return offset + length, value
end

-- Leg Count
cboe_edgxoptions_complextop_spin_v1_1_54.leg_count = {}

-- Size: Leg Count
cboe_edgxoptions_complextop_spin_v1_1_54.leg_count.size = 1

-- Display: Leg Count
cboe_edgxoptions_complextop_spin_v1_1_54.leg_count.display = function(value)
  return "Leg Count: "..value
end

-- Dissect: Leg Count
cboe_edgxoptions_complextop_spin_v1_1_54.leg_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.leg_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.leg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.leg_count, range, value, display)

  return offset + length, value
end

-- Leg Ratio
cboe_edgxoptions_complextop_spin_v1_1_54.leg_ratio = {}

-- Size: Leg Ratio
cboe_edgxoptions_complextop_spin_v1_1_54.leg_ratio.size = 4

-- Display: Leg Ratio
cboe_edgxoptions_complextop_spin_v1_1_54.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
cboe_edgxoptions_complextop_spin_v1_1_54.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Security Type
cboe_edgxoptions_complextop_spin_v1_1_54.leg_security_type = {}

-- Size: Leg Security Type
cboe_edgxoptions_complextop_spin_v1_1_54.leg_security_type.size = 1

-- Display: Leg Security Type
cboe_edgxoptions_complextop_spin_v1_1_54.leg_security_type.display = function(value)
  if value == "O" then
    return "Leg Security Type: Leg Is An Option Instrument (O)"
  end
  if value == "E" then
    return "Leg Security Type: Leg Is An Equity Instrument (E)"
  end

  return "Leg Security Type: Unknown("..value..")"
end

-- Dissect: Leg Security Type
cboe_edgxoptions_complextop_spin_v1_1_54.leg_security_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.leg_security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.leg_security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Leg Symbol
cboe_edgxoptions_complextop_spin_v1_1_54.leg_symbol = {}

-- Size: Leg Symbol
cboe_edgxoptions_complextop_spin_v1_1_54.leg_symbol.size = 8

-- Display: Leg Symbol
cboe_edgxoptions_complextop_spin_v1_1_54.leg_symbol.display = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
cboe_edgxoptions_complextop_spin_v1_1_54.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.leg_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Length
cboe_edgxoptions_complextop_spin_v1_1_54.length = {}

-- Size: Length
cboe_edgxoptions_complextop_spin_v1_1_54.length.size = 2

-- Display: Length
cboe_edgxoptions_complextop_spin_v1_1_54.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_edgxoptions_complextop_spin_v1_1_54.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.length, range, value, display)

  return offset + length, value
end

-- Login Response Status
cboe_edgxoptions_complextop_spin_v1_1_54.login_response_status = {}

-- Size: Login Response Status
cboe_edgxoptions_complextop_spin_v1_1_54.login_response_status.size = 1

-- Display: Login Response Status
cboe_edgxoptions_complextop_spin_v1_1_54.login_response_status.display = function(value)
  if value == "A" then
    return "Login Response Status: Login Accepted (A)"
  end
  if value == "N" then
    return "Login Response Status: Not Authorized Invalid Username Password (N)"
  end
  if value == "B" then
    return "Login Response Status: Session In Use (B)"
  end
  if value == "S" then
    return "Login Response Status: Invalid Session (S)"
  end

  return "Login Response Status: Unknown("..value..")"
end

-- Dissect: Login Response Status
cboe_edgxoptions_complextop_spin_v1_1_54.login_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.login_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.login_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.login_response_status, range, value, display)

  return offset + length, value
end

-- Message Count
cboe_edgxoptions_complextop_spin_v1_1_54.message_count = {}

-- Size: Message Count
cboe_edgxoptions_complextop_spin_v1_1_54.message_count.size = 1

-- Display: Message Count
cboe_edgxoptions_complextop_spin_v1_1_54.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
cboe_edgxoptions_complextop_spin_v1_1_54.message_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_edgxoptions_complextop_spin_v1_1_54.message_length = {}

-- Size: Message Length
cboe_edgxoptions_complextop_spin_v1_1_54.message_length.size = 1

-- Display: Message Length
cboe_edgxoptions_complextop_spin_v1_1_54.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_edgxoptions_complextop_spin_v1_1_54.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_edgxoptions_complextop_spin_v1_1_54.message_type = {}

-- Size: Message Type
cboe_edgxoptions_complextop_spin_v1_1_54.message_type.size = 1

-- Display: Message Type
cboe_edgxoptions_complextop_spin_v1_1_54.message_type.display = function(value)
  if value == 0x01 then
    return "Message Type: Login Message (0x01)"
  end
  if value == 0x02 then
    return "Message Type: Login Response Message (0x02)"
  end
  if value == 0x80 then
    return "Message Type: Spin Image Available Message (0x80)"
  end
  if value == 0x81 then
    return "Message Type: Spin Request Message (0x81)"
  end
  if value == 0x82 then
    return "Message Type: Spin Response Message (0x82)"
  end
  if value == 0x83 then
    return "Message Type: Spin Finished Message (0x83)"
  end
  if value == 0x84 then
    return "Message Type: Instrument Definition Request Message (0x84)"
  end
  if value == 0x85 then
    return "Message Type: Instrument Definition Response Message (0x85)"
  end
  if value == 0x86 then
    return "Message Type: Instrument Definition Finished Message (0x86)"
  end
  if value == 0x20 then
    return "Message Type: Time Message (0x20)"
  end
  if value == 0x2F then
    return "Message Type: Symbol Mapping Message (0x2F)"
  end
  if value == 0x9A then
    return "Message Type: Complex Instrument Definition Expanded Message (0x9A)"
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
  if value == 0x31 then
    return "Message Type: Trading Status Message (0x31)"
  end

  return "Message Type: Unknown("..string.format("0x%02X", value)..")"
end

-- Dissect: Message Type
cboe_edgxoptions_complextop_spin_v1_1_54.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.message_type, range, value, display)

  return offset + length, value
end

-- Order Count
cboe_edgxoptions_complextop_spin_v1_1_54.order_count = {}

-- Size: Order Count
cboe_edgxoptions_complextop_spin_v1_1_54.order_count.size = 4

-- Display: Order Count
cboe_edgxoptions_complextop_spin_v1_1_54.order_count.display = function(value)
  return "Order Count: "..value
end

-- Dissect: Order Count
cboe_edgxoptions_complextop_spin_v1_1_54.order_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.order_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.order_count, range, value, display)

  return offset + length, value
end

-- Osi Symbol
cboe_edgxoptions_complextop_spin_v1_1_54.osi_symbol = {}

-- Size: Osi Symbol
cboe_edgxoptions_complextop_spin_v1_1_54.osi_symbol.size = 21

-- Display: Osi Symbol
cboe_edgxoptions_complextop_spin_v1_1_54.osi_symbol.display = function(value)
  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
cboe_edgxoptions_complextop_spin_v1_1_54.osi_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.osi_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.osi_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.osi_symbol, range, value, display)

  return offset + length, value
end

-- Password
cboe_edgxoptions_complextop_spin_v1_1_54.password = {}

-- Size: Password
cboe_edgxoptions_complextop_spin_v1_1_54.password.size = 10

-- Display: Password
cboe_edgxoptions_complextop_spin_v1_1_54.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_edgxoptions_complextop_spin_v1_1_54.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.password, range, value, display)

  return offset + length, value
end

-- Price Long
cboe_edgxoptions_complextop_spin_v1_1_54.price_long = {}

-- Size: Price Long
cboe_edgxoptions_complextop_spin_v1_1_54.price_long.size = 8

-- Display: Price Long
cboe_edgxoptions_complextop_spin_v1_1_54.price_long.display = function(value)
  return "Price Long: "..value
end

-- Translate: Price Long
cboe_edgxoptions_complextop_spin_v1_1_54.price_long.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price Long
cboe_edgxoptions_complextop_spin_v1_1_54.price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_edgxoptions_complextop_spin_v1_1_54.price_long.translate(raw)
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.price_long, range, value, display)

  return offset + length, value
end

-- Price Short
cboe_edgxoptions_complextop_spin_v1_1_54.price_short = {}

-- Size: Price Short
cboe_edgxoptions_complextop_spin_v1_1_54.price_short.size = 2

-- Display: Price Short
cboe_edgxoptions_complextop_spin_v1_1_54.price_short.display = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
cboe_edgxoptions_complextop_spin_v1_1_54.price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Price Short
cboe_edgxoptions_complextop_spin_v1_1_54.price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_edgxoptions_complextop_spin_v1_1_54.price_short.translate(raw)
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.price_short, range, value, display)

  return offset + length, value
end

-- Quantity Long
cboe_edgxoptions_complextop_spin_v1_1_54.quantity_long = {}

-- Size: Quantity Long
cboe_edgxoptions_complextop_spin_v1_1_54.quantity_long.size = 4

-- Display: Quantity Long
cboe_edgxoptions_complextop_spin_v1_1_54.quantity_long.display = function(value)
  return "Quantity Long: "..value
end

-- Dissect: Quantity Long
cboe_edgxoptions_complextop_spin_v1_1_54.quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.quantity_long, range, value, display)

  return offset + length, value
end

-- Quantity Short
cboe_edgxoptions_complextop_spin_v1_1_54.quantity_short = {}

-- Size: Quantity Short
cboe_edgxoptions_complextop_spin_v1_1_54.quantity_short.size = 2

-- Display: Quantity Short
cboe_edgxoptions_complextop_spin_v1_1_54.quantity_short.display = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_edgxoptions_complextop_spin_v1_1_54.quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_edgxoptions_complextop_spin_v1_1_54.reserved_1 = {}

-- Size: Reserved 1
cboe_edgxoptions_complextop_spin_v1_1_54.reserved_1.size = 1

-- Display: Reserved 1
cboe_edgxoptions_complextop_spin_v1_1_54.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_edgxoptions_complextop_spin_v1_1_54.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
cboe_edgxoptions_complextop_spin_v1_1_54.reserved_2 = {}

-- Size: Reserved 2
cboe_edgxoptions_complextop_spin_v1_1_54.reserved_2.size = 2

-- Display: Reserved 2
cboe_edgxoptions_complextop_spin_v1_1_54.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_edgxoptions_complextop_spin_v1_1_54.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Second Reserved 1
cboe_edgxoptions_complextop_spin_v1_1_54.second_reserved_1 = {}

-- Size: Second Reserved 1
cboe_edgxoptions_complextop_spin_v1_1_54.second_reserved_1.size = 1

-- Display: Second Reserved 1
cboe_edgxoptions_complextop_spin_v1_1_54.second_reserved_1.display = function(value)
  return "Second Reserved 1: "..value
end

-- Dissect: Second Reserved 1
cboe_edgxoptions_complextop_spin_v1_1_54.second_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.second_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.second_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.second_reserved_1, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_edgxoptions_complextop_spin_v1_1_54.sequence = {}

-- Size: Sequence
cboe_edgxoptions_complextop_spin_v1_1_54.sequence.size = 4

-- Display: Sequence
cboe_edgxoptions_complextop_spin_v1_1_54.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_edgxoptions_complextop_spin_v1_1_54.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.sequence, range, value, display)

  return offset + length, value
end

-- Session Sub Id
cboe_edgxoptions_complextop_spin_v1_1_54.session_sub_id = {}

-- Size: Session Sub Id
cboe_edgxoptions_complextop_spin_v1_1_54.session_sub_id.size = 4

-- Display: Session Sub Id
cboe_edgxoptions_complextop_spin_v1_1_54.session_sub_id.display = function(value)
  return "Session Sub Id: "..value
end

-- Dissect: Session Sub Id
cboe_edgxoptions_complextop_spin_v1_1_54.session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.session_sub_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.session_sub_id, range, value, display)

  return offset + length, value
end

-- Side
cboe_edgxoptions_complextop_spin_v1_1_54.side = {}

-- Size: Side
cboe_edgxoptions_complextop_spin_v1_1_54.side.size = 1

-- Display: Side
cboe_edgxoptions_complextop_spin_v1_1_54.side.display = function(value)
  if value == "B" then
    return "Side: Bid Side (B)"
  end
  if value == "S" then
    return "Side: Ask Side (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cboe_edgxoptions_complextop_spin_v1_1_54.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.side, range, value, display)

  return offset + length, value
end

-- Spin Response Status
cboe_edgxoptions_complextop_spin_v1_1_54.spin_response_status = {}

-- Size: Spin Response Status
cboe_edgxoptions_complextop_spin_v1_1_54.spin_response_status.size = 1

-- Display: Spin Response Status
cboe_edgxoptions_complextop_spin_v1_1_54.spin_response_status.display = function(value)
  if value == "A" then
    return "Spin Response Status: Accepted (A)"
  end
  if value == "O" then
    return "Spin Response Status: Out Of Range Sequence Requested Is Greater Than Sequence Available By The Next Spin (O)"
  end
  if value == "S" then
    return "Spin Response Status: Spin Already In Progress Only One Spin Can Be Running At A Time (S)"
  end

  return "Spin Response Status: Unknown("..value..")"
end

-- Dissect: Spin Response Status
cboe_edgxoptions_complextop_spin_v1_1_54.spin_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.spin_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.spin_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.spin_response_status, range, value, display)

  return offset + length, value
end

-- Symbol Condition
cboe_edgxoptions_complextop_spin_v1_1_54.symbol_condition = {}

-- Size: Symbol Condition
cboe_edgxoptions_complextop_spin_v1_1_54.symbol_condition.size = 1

-- Display: Symbol Condition
cboe_edgxoptions_complextop_spin_v1_1_54.symbol_condition.display = function(value)
  if value == "N" then
    return "Symbol Condition: Normal (N)"
  end
  if value == "C" then
    return "Symbol Condition: Closing Only (C)"
  end

  return "Symbol Condition: Unknown("..value..")"
end

-- Dissect: Symbol Condition
cboe_edgxoptions_complextop_spin_v1_1_54.symbol_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.symbol_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.symbol_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.symbol_condition, range, value, display)

  return offset + length, value
end

-- Time
cboe_edgxoptions_complextop_spin_v1_1_54.time = {}

-- Size: Time
cboe_edgxoptions_complextop_spin_v1_1_54.time.size = 4

-- Display: Time
cboe_edgxoptions_complextop_spin_v1_1_54.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_edgxoptions_complextop_spin_v1_1_54.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_edgxoptions_complextop_spin_v1_1_54.time_offset = {}

-- Size: Time Offset
cboe_edgxoptions_complextop_spin_v1_1_54.time_offset.size = 4

-- Display: Time Offset
cboe_edgxoptions_complextop_spin_v1_1_54.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_edgxoptions_complextop_spin_v1_1_54.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Total Volume
cboe_edgxoptions_complextop_spin_v1_1_54.total_volume = {}

-- Size: Total Volume
cboe_edgxoptions_complextop_spin_v1_1_54.total_volume.size = 4

-- Display: Total Volume
cboe_edgxoptions_complextop_spin_v1_1_54.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
cboe_edgxoptions_complextop_spin_v1_1_54.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.total_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Trade Condition
cboe_edgxoptions_complextop_spin_v1_1_54.trade_condition = {}

-- Size: Trade Condition
cboe_edgxoptions_complextop_spin_v1_1_54.trade_condition.size = 1

-- Display: Trade Condition
cboe_edgxoptions_complextop_spin_v1_1_54.trade_condition.display = function(value)
  if value == "f" then
    return "Trade Condition: Complex To Complex Electronic Trade Cboe Auction Type Is Coa (f)"
  end
  if value == "g" then
    return "Trade Condition: Complex Auction Trade Cboe Order Types Include Caim Csam (g)"
  end
  if value == "h" then
    return "Trade Condition: Complex Cross Cboe Auction Types Include Cust To Cust Caim Cqcc (h)"
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
  if value == "v" then
    return "Trade Condition: Extended Hours Trade Transaction Represents A Trade Executed During The Curb Session (v)"
  end
  if value == "I" then
    return "Trade Condition: Electronic Trade (I)"
  end
  if value == "O" then
    return "Trade Condition: Opening Trade (O)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
cboe_edgxoptions_complextop_spin_v1_1_54.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_edgxoptions_complextop_spin_v1_1_54.trading_status = {}

-- Size: Trading Status
cboe_edgxoptions_complextop_spin_v1_1_54.trading_status.size = 1

-- Display: Trading Status
cboe_edgxoptions_complextop_spin_v1_1_54.trading_status.display = function(value)
  if value == "H" then
    return "Trading Status: Halted (H)"
  end
  if value == "L" then
    return "Trading Status: Curb Trading (L)"
  end
  if value == "Q" then
    return "Trading Status: Quote Only (Q)"
  end
  if value == "T" then
    return "Trading Status: Rth Trading (T)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
cboe_edgxoptions_complextop_spin_v1_1_54.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Underlying
cboe_edgxoptions_complextop_spin_v1_1_54.underlying = {}

-- Size: Underlying
cboe_edgxoptions_complextop_spin_v1_1_54.underlying.size = 8

-- Display: Underlying
cboe_edgxoptions_complextop_spin_v1_1_54.underlying.display = function(value)
  return "Underlying: "..value
end

-- Dissect: Underlying
cboe_edgxoptions_complextop_spin_v1_1_54.underlying.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.underlying.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.underlying, range, value, display)

  return offset + length, value
end

-- Unit
cboe_edgxoptions_complextop_spin_v1_1_54.unit = {}

-- Size: Unit
cboe_edgxoptions_complextop_spin_v1_1_54.unit.size = 1

-- Display: Unit
cboe_edgxoptions_complextop_spin_v1_1_54.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_edgxoptions_complextop_spin_v1_1_54.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.unit, range, value, display)

  return offset + length, value
end

-- Username
cboe_edgxoptions_complextop_spin_v1_1_54.username = {}

-- Size: Username
cboe_edgxoptions_complextop_spin_v1_1_54.username.size = 4

-- Display: Username
cboe_edgxoptions_complextop_spin_v1_1_54.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_edgxoptions_complextop_spin_v1_1_54.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complextop_spin_v1_1_54.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe EdgxOptions ComplexTop Spin 1.1.54
-----------------------------------------------------------------------

-- Trading Status Message
cboe_edgxoptions_complextop_spin_v1_1_54.trading_status_message = {}

-- Size: Trading Status Message
cboe_edgxoptions_complextop_spin_v1_1_54.trading_status_message.size =
  cboe_edgxoptions_complextop_spin_v1_1_54.time_offset.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_id.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.reserved_2.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.trading_status.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.reserved_1.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.gth_trading_status.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.second_reserved_1.size

-- Display: Trading Status Message
cboe_edgxoptions_complextop_spin_v1_1_54.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_edgxoptions_complextop_spin_v1_1_54.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complextop_spin_v1_1_54.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: Reserved
  index, reserved_2 = cboe_edgxoptions_complextop_spin_v1_1_54.reserved_2.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = cboe_edgxoptions_complextop_spin_v1_1_54.trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_edgxoptions_complextop_spin_v1_1_54.reserved_1.dissect(buffer, index, packet, parent)

  -- Gth Trading Status: Reserved
  index, gth_trading_status = cboe_edgxoptions_complextop_spin_v1_1_54.gth_trading_status.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: Reserved
  index, second_reserved_1 = cboe_edgxoptions_complextop_spin_v1_1_54.second_reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_edgxoptions_complextop_spin_v1_1_54.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complextop_spin_v1_1_54.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complextop_spin_v1_1_54.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complextop_spin_v1_1_54.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Top Trade Message
cboe_edgxoptions_complextop_spin_v1_1_54.top_trade_message = {}

-- Size: Top Trade Message
cboe_edgxoptions_complextop_spin_v1_1_54.top_trade_message.size =
  cboe_edgxoptions_complextop_spin_v1_1_54.time_offset.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_id.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.quantity_long.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.price_long.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.execution_id.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.total_volume.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.trade_condition.size

-- Display: Top Trade Message
cboe_edgxoptions_complextop_spin_v1_1_54.top_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Trade Message
cboe_edgxoptions_complextop_spin_v1_1_54.top_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complextop_spin_v1_1_54.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_edgxoptions_complextop_spin_v1_1_54.quantity_long.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_edgxoptions_complextop_spin_v1_1_54.price_long.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_edgxoptions_complextop_spin_v1_1_54.execution_id.dissect(buffer, index, packet, parent)

  -- Total Volume: Binary
  index, total_volume = cboe_edgxoptions_complextop_spin_v1_1_54.total_volume.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_edgxoptions_complextop_spin_v1_1_54.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Trade Message
cboe_edgxoptions_complextop_spin_v1_1_54.top_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.top_trade_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complextop_spin_v1_1_54.top_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complextop_spin_v1_1_54.top_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complextop_spin_v1_1_54.top_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Bit Fields
cboe_edgxoptions_complextop_spin_v1_1_54.bit_fields = {}

-- Size: Bit Fields
cboe_edgxoptions_complextop_spin_v1_1_54.bit_fields.size = 1

-- Display: Bit Fields
cboe_edgxoptions_complextop_spin_v1_1_54.bit_fields.display = function(range, value, packet, parent)
  local flags = {}


  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Bit Fields
cboe_edgxoptions_complextop_spin_v1_1_54.bit_fields.bits = function(range, value, packet, parent)

  -- Reserved Bits: 8 Bit
  parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.reserved_bits, range, value)
end

-- Dissect: Bit Fields
cboe_edgxoptions_complextop_spin_v1_1_54.bit_fields.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgxoptions_complextop_spin_v1_1_54.bit_fields.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.bit_fields.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.bit_fields, range, display)

  if show.structs then
    cboe_edgxoptions_complextop_spin_v1_1_54.bit_fields.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Two Side Update Expanded Long Message
cboe_edgxoptions_complextop_spin_v1_1_54.two_side_update_expanded_long_message = {}

-- Size: Two Side Update Expanded Long Message
cboe_edgxoptions_complextop_spin_v1_1_54.two_side_update_expanded_long_message.size =
  cboe_edgxoptions_complextop_spin_v1_1_54.time_offset.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_id.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.bit_fields.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.bid_price_long.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.bid_quantity_long.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.bid_customer_quantity_long.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.ask_price_long.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.ask_quantity_long.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.ask_customer_quantity_long.size

-- Display: Two Side Update Expanded Long Message
cboe_edgxoptions_complextop_spin_v1_1_54.two_side_update_expanded_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Two Side Update Expanded Long Message
cboe_edgxoptions_complextop_spin_v1_1_54.two_side_update_expanded_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complextop_spin_v1_1_54.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Bit Fields: Struct of 1 fields
  index, bit_fields = cboe_edgxoptions_complextop_spin_v1_1_54.bit_fields.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Binary Long Price
  index, bid_price_long = cboe_edgxoptions_complextop_spin_v1_1_54.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Binary
  index, bid_quantity_long = cboe_edgxoptions_complextop_spin_v1_1_54.bid_quantity_long.dissect(buffer, index, packet, parent)

  -- Bid Customer Quantity Long: Binary
  index, bid_customer_quantity_long = cboe_edgxoptions_complextop_spin_v1_1_54.bid_customer_quantity_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Binary Long Price
  index, ask_price_long = cboe_edgxoptions_complextop_spin_v1_1_54.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Binary
  index, ask_quantity_long = cboe_edgxoptions_complextop_spin_v1_1_54.ask_quantity_long.dissect(buffer, index, packet, parent)

  -- Ask Customer Quantity Long: Binary
  index, ask_customer_quantity_long = cboe_edgxoptions_complextop_spin_v1_1_54.ask_customer_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Two Side Update Expanded Long Message
cboe_edgxoptions_complextop_spin_v1_1_54.two_side_update_expanded_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.two_side_update_expanded_long_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complextop_spin_v1_1_54.two_side_update_expanded_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complextop_spin_v1_1_54.two_side_update_expanded_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complextop_spin_v1_1_54.two_side_update_expanded_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Two Side Update Expanded Short Message
cboe_edgxoptions_complextop_spin_v1_1_54.two_side_update_expanded_short_message = {}

-- Size: Two Side Update Expanded Short Message
cboe_edgxoptions_complextop_spin_v1_1_54.two_side_update_expanded_short_message.size =
  cboe_edgxoptions_complextop_spin_v1_1_54.time_offset.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_id.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.bit_fields.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.bid_price_short.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.bid_quantity_short.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.bid_customer_quantity_short.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.ask_price_short.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.ask_quantity_short.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.ask_customer_quantity_short.size

-- Display: Two Side Update Expanded Short Message
cboe_edgxoptions_complextop_spin_v1_1_54.two_side_update_expanded_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Two Side Update Expanded Short Message
cboe_edgxoptions_complextop_spin_v1_1_54.two_side_update_expanded_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complextop_spin_v1_1_54.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Bit Fields: Struct of 1 fields
  index, bit_fields = cboe_edgxoptions_complextop_spin_v1_1_54.bit_fields.dissect(buffer, index, packet, parent)

  -- Bid Price Short: Binary Short Price
  index, bid_price_short = cboe_edgxoptions_complextop_spin_v1_1_54.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Quantity Short: Binary
  index, bid_quantity_short = cboe_edgxoptions_complextop_spin_v1_1_54.bid_quantity_short.dissect(buffer, index, packet, parent)

  -- Bid Customer Quantity Short: Binary
  index, bid_customer_quantity_short = cboe_edgxoptions_complextop_spin_v1_1_54.bid_customer_quantity_short.dissect(buffer, index, packet, parent)

  -- Ask Price Short: Binary Short Price
  index, ask_price_short = cboe_edgxoptions_complextop_spin_v1_1_54.ask_price_short.dissect(buffer, index, packet, parent)

  -- Ask Quantity Short: Binary
  index, ask_quantity_short = cboe_edgxoptions_complextop_spin_v1_1_54.ask_quantity_short.dissect(buffer, index, packet, parent)

  -- Ask Customer Quantity Short: Binary
  index, ask_customer_quantity_short = cboe_edgxoptions_complextop_spin_v1_1_54.ask_customer_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Two Side Update Expanded Short Message
cboe_edgxoptions_complextop_spin_v1_1_54.two_side_update_expanded_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.two_side_update_expanded_short_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complextop_spin_v1_1_54.two_side_update_expanded_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complextop_spin_v1_1_54.two_side_update_expanded_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complextop_spin_v1_1_54.two_side_update_expanded_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Update Expanded Long Message
cboe_edgxoptions_complextop_spin_v1_1_54.single_side_update_expanded_long_message = {}

-- Size: Single Side Update Expanded Long Message
cboe_edgxoptions_complextop_spin_v1_1_54.single_side_update_expanded_long_message.size =
  cboe_edgxoptions_complextop_spin_v1_1_54.time_offset.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_id.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.side.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.bit_fields.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.price_long.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.quantity_long.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.customer_quantity_long.size

-- Display: Single Side Update Expanded Long Message
cboe_edgxoptions_complextop_spin_v1_1_54.single_side_update_expanded_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Update Expanded Long Message
cboe_edgxoptions_complextop_spin_v1_1_54.single_side_update_expanded_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complextop_spin_v1_1_54.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_edgxoptions_complextop_spin_v1_1_54.side.dissect(buffer, index, packet, parent)

  -- Bit Fields: Struct of 1 fields
  index, bit_fields = cboe_edgxoptions_complextop_spin_v1_1_54.bit_fields.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_edgxoptions_complextop_spin_v1_1_54.price_long.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_edgxoptions_complextop_spin_v1_1_54.quantity_long.dissect(buffer, index, packet, parent)

  -- Customer Quantity Long: Binary
  index, customer_quantity_long = cboe_edgxoptions_complextop_spin_v1_1_54.customer_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Update Expanded Long Message
cboe_edgxoptions_complextop_spin_v1_1_54.single_side_update_expanded_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.single_side_update_expanded_long_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complextop_spin_v1_1_54.single_side_update_expanded_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complextop_spin_v1_1_54.single_side_update_expanded_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complextop_spin_v1_1_54.single_side_update_expanded_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Update Expanded Short Message
cboe_edgxoptions_complextop_spin_v1_1_54.single_side_update_expanded_short_message = {}

-- Size: Single Side Update Expanded Short Message
cboe_edgxoptions_complextop_spin_v1_1_54.single_side_update_expanded_short_message.size =
  cboe_edgxoptions_complextop_spin_v1_1_54.time_offset.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_id.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.side.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.bit_fields.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.price_short.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.quantity_short.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.customer_quantity_short.size

-- Display: Single Side Update Expanded Short Message
cboe_edgxoptions_complextop_spin_v1_1_54.single_side_update_expanded_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Update Expanded Short Message
cboe_edgxoptions_complextop_spin_v1_1_54.single_side_update_expanded_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complextop_spin_v1_1_54.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_edgxoptions_complextop_spin_v1_1_54.side.dissect(buffer, index, packet, parent)

  -- Bit Fields: Struct of 1 fields
  index, bit_fields = cboe_edgxoptions_complextop_spin_v1_1_54.bit_fields.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_edgxoptions_complextop_spin_v1_1_54.price_short.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_edgxoptions_complextop_spin_v1_1_54.quantity_short.dissect(buffer, index, packet, parent)

  -- Customer Quantity Short: Binary
  index, customer_quantity_short = cboe_edgxoptions_complextop_spin_v1_1_54.customer_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Update Expanded Short Message
cboe_edgxoptions_complextop_spin_v1_1_54.single_side_update_expanded_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.single_side_update_expanded_short_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complextop_spin_v1_1_54.single_side_update_expanded_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complextop_spin_v1_1_54.single_side_update_expanded_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complextop_spin_v1_1_54.single_side_update_expanded_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Leg
cboe_edgxoptions_complextop_spin_v1_1_54.complex_leg = {}

-- Size: Complex Leg
cboe_edgxoptions_complextop_spin_v1_1_54.complex_leg.size =
  cboe_edgxoptions_complextop_spin_v1_1_54.leg_symbol.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.leg_ratio.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.leg_security_type.size

-- Display: Complex Leg
cboe_edgxoptions_complextop_spin_v1_1_54.complex_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Leg
cboe_edgxoptions_complextop_spin_v1_1_54.complex_leg.fields = function(buffer, offset, packet, parent, complex_leg_index)
  local index = offset

  -- Implicit Complex Leg Index
  if complex_leg_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.complex_leg_index, complex_leg_index)
    iteration:set_generated()
  end

  -- Leg Symbol: Printable ASCII
  index, leg_symbol = cboe_edgxoptions_complextop_spin_v1_1_54.leg_symbol.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Signed Binary
  index, leg_ratio = cboe_edgxoptions_complextop_spin_v1_1_54.leg_ratio.dissect(buffer, index, packet, parent)

  -- Leg Security Type: Alphanumeric
  index, leg_security_type = cboe_edgxoptions_complextop_spin_v1_1_54.leg_security_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Leg
cboe_edgxoptions_complextop_spin_v1_1_54.complex_leg.dissect = function(buffer, offset, packet, parent, complex_leg_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.complex_leg, buffer(offset, 0))
    local index = cboe_edgxoptions_complextop_spin_v1_1_54.complex_leg.fields(buffer, offset, packet, parent, complex_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complextop_spin_v1_1_54.complex_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complextop_spin_v1_1_54.complex_leg.fields(buffer, offset, packet, parent, complex_leg_index)
  end
end

-- Complex Instrument Definition Expanded Message
cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_definition_expanded_message = {}

-- Calculate size of: Complex Instrument Definition Expanded Message
cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_definition_expanded_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_edgxoptions_complextop_spin_v1_1_54.time_offset.size

  index = index + cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_id.size

  index = index + cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_underlying.size

  index = index + cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_type.size

  index = index + cboe_edgxoptions_complextop_spin_v1_1_54.leg_count.size

  -- Calculate field size from count
  local complex_leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + complex_leg_count * 13

  return index
end

-- Display: Complex Instrument Definition Expanded Message
cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_definition_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Instrument Definition Expanded Message
cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_definition_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complextop_spin_v1_1_54.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Complex Instrument Underlying: Printable ASCII
  index, complex_instrument_underlying = cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_underlying.dissect(buffer, index, packet, parent)

  -- Complex Instrument Type: Alphanumeric
  index, complex_instrument_type = cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_type.dissect(buffer, index, packet, parent)

  -- Leg Count: Binary
  index, leg_count = cboe_edgxoptions_complextop_spin_v1_1_54.leg_count.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Leg
  for complex_leg_index = 1, leg_count do
    index, complex_leg = cboe_edgxoptions_complextop_spin_v1_1_54.complex_leg.dissect(buffer, index, packet, parent, complex_leg_index)
  end

  return index
end

-- Dissect: Complex Instrument Definition Expanded Message
cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_definition_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.complex_instrument_definition_expanded_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_definition_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_definition_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_definition_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Mapping Message
cboe_edgxoptions_complextop_spin_v1_1_54.symbol_mapping_message = {}

-- Size: Symbol Mapping Message
cboe_edgxoptions_complextop_spin_v1_1_54.symbol_mapping_message.size =
  cboe_edgxoptions_complextop_spin_v1_1_54.feed_symbol.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.osi_symbol.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.symbol_condition.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.underlying.size

-- Display: Symbol Mapping Message
cboe_edgxoptions_complextop_spin_v1_1_54.symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Mapping Message
cboe_edgxoptions_complextop_spin_v1_1_54.symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: Printable ASCII
  index, feed_symbol = cboe_edgxoptions_complextop_spin_v1_1_54.feed_symbol.dissect(buffer, index, packet, parent)

  -- Osi Symbol: Printable ASCII
  index, osi_symbol = cboe_edgxoptions_complextop_spin_v1_1_54.osi_symbol.dissect(buffer, index, packet, parent)

  -- Symbol Condition: Alphanumeric
  index, symbol_condition = cboe_edgxoptions_complextop_spin_v1_1_54.symbol_condition.dissect(buffer, index, packet, parent)

  -- Underlying: Alphanumeric
  index, underlying = cboe_edgxoptions_complextop_spin_v1_1_54.underlying.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Message
cboe_edgxoptions_complextop_spin_v1_1_54.symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.symbol_mapping_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complextop_spin_v1_1_54.symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complextop_spin_v1_1_54.symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complextop_spin_v1_1_54.symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_edgxoptions_complextop_spin_v1_1_54.time_message = {}

-- Size: Time Message
cboe_edgxoptions_complextop_spin_v1_1_54.time_message.size =
  cboe_edgxoptions_complextop_spin_v1_1_54.time.size

-- Display: Time Message
cboe_edgxoptions_complextop_spin_v1_1_54.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_edgxoptions_complextop_spin_v1_1_54.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = cboe_edgxoptions_complextop_spin_v1_1_54.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_edgxoptions_complextop_spin_v1_1_54.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.time_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complextop_spin_v1_1_54.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complextop_spin_v1_1_54.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complextop_spin_v1_1_54.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Definition Finished Message
cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_finished_message = {}

-- Display: Instrument Definition Finished Message
cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_finished_message.display = function(packet, parent, length)
  return "Instrument Definition Finished Message"
end


-- Dissect: Instrument Definition Finished Message
cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_finished_message.dissect = function(buffer, offset, packet, parent)
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_finished_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Instrument Definition Response Message
cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_response_message = {}

-- Size: Instrument Definition Response Message
cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_response_message.size =
  cboe_edgxoptions_complextop_spin_v1_1_54.sequence.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.instrument_count.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_response_status.size

-- Display: Instrument Definition Response Message
cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Definition Response Message
cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_edgxoptions_complextop_spin_v1_1_54.sequence.dissect(buffer, index, packet, parent)

  -- Instrument Count: Binary
  index, instrument_count = cboe_edgxoptions_complextop_spin_v1_1_54.instrument_count.dissect(buffer, index, packet, parent)

  -- Instrument Definition Response Status: Alphanumeric
  index, instrument_definition_response_status = cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Definition Response Message
cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.instrument_definition_response_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Definition Request Message
cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_request_message = {}

-- Size: Instrument Definition Request Message
cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_request_message.size =
  cboe_edgxoptions_complextop_spin_v1_1_54.sequence.size

-- Display: Instrument Definition Request Message
cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Definition Request Message
cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_edgxoptions_complextop_spin_v1_1_54.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Definition Request Message
cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.instrument_definition_request_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Finished Message
cboe_edgxoptions_complextop_spin_v1_1_54.spin_finished_message = {}

-- Size: Spin Finished Message
cboe_edgxoptions_complextop_spin_v1_1_54.spin_finished_message.size =
  cboe_edgxoptions_complextop_spin_v1_1_54.sequence.size

-- Display: Spin Finished Message
cboe_edgxoptions_complextop_spin_v1_1_54.spin_finished_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Finished Message
cboe_edgxoptions_complextop_spin_v1_1_54.spin_finished_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_edgxoptions_complextop_spin_v1_1_54.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Finished Message
cboe_edgxoptions_complextop_spin_v1_1_54.spin_finished_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.spin_finished_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complextop_spin_v1_1_54.spin_finished_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complextop_spin_v1_1_54.spin_finished_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complextop_spin_v1_1_54.spin_finished_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Response Message
cboe_edgxoptions_complextop_spin_v1_1_54.spin_response_message = {}

-- Size: Spin Response Message
cboe_edgxoptions_complextop_spin_v1_1_54.spin_response_message.size =
  cboe_edgxoptions_complextop_spin_v1_1_54.sequence.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.order_count.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.spin_response_status.size

-- Display: Spin Response Message
cboe_edgxoptions_complextop_spin_v1_1_54.spin_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Response Message
cboe_edgxoptions_complextop_spin_v1_1_54.spin_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_edgxoptions_complextop_spin_v1_1_54.sequence.dissect(buffer, index, packet, parent)

  -- Order Count: Binary
  index, order_count = cboe_edgxoptions_complextop_spin_v1_1_54.order_count.dissect(buffer, index, packet, parent)

  -- Spin Response Status: Alphanumeric
  index, spin_response_status = cboe_edgxoptions_complextop_spin_v1_1_54.spin_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Response Message
cboe_edgxoptions_complextop_spin_v1_1_54.spin_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.spin_response_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complextop_spin_v1_1_54.spin_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complextop_spin_v1_1_54.spin_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complextop_spin_v1_1_54.spin_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Request Message
cboe_edgxoptions_complextop_spin_v1_1_54.spin_request_message = {}

-- Size: Spin Request Message
cboe_edgxoptions_complextop_spin_v1_1_54.spin_request_message.size =
  cboe_edgxoptions_complextop_spin_v1_1_54.sequence.size

-- Display: Spin Request Message
cboe_edgxoptions_complextop_spin_v1_1_54.spin_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Request Message
cboe_edgxoptions_complextop_spin_v1_1_54.spin_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_edgxoptions_complextop_spin_v1_1_54.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Request Message
cboe_edgxoptions_complextop_spin_v1_1_54.spin_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.spin_request_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complextop_spin_v1_1_54.spin_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complextop_spin_v1_1_54.spin_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complextop_spin_v1_1_54.spin_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Image Available Message
cboe_edgxoptions_complextop_spin_v1_1_54.spin_image_available_message = {}

-- Size: Spin Image Available Message
cboe_edgxoptions_complextop_spin_v1_1_54.spin_image_available_message.size =
  cboe_edgxoptions_complextop_spin_v1_1_54.sequence.size

-- Display: Spin Image Available Message
cboe_edgxoptions_complextop_spin_v1_1_54.spin_image_available_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Image Available Message
cboe_edgxoptions_complextop_spin_v1_1_54.spin_image_available_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_edgxoptions_complextop_spin_v1_1_54.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Image Available Message
cboe_edgxoptions_complextop_spin_v1_1_54.spin_image_available_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.spin_image_available_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complextop_spin_v1_1_54.spin_image_available_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complextop_spin_v1_1_54.spin_image_available_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complextop_spin_v1_1_54.spin_image_available_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Response Message
cboe_edgxoptions_complextop_spin_v1_1_54.login_response_message = {}

-- Size: Login Response Message
cboe_edgxoptions_complextop_spin_v1_1_54.login_response_message.size =
  cboe_edgxoptions_complextop_spin_v1_1_54.login_response_status.size

-- Display: Login Response Message
cboe_edgxoptions_complextop_spin_v1_1_54.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
cboe_edgxoptions_complextop_spin_v1_1_54.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Response Status: Alphanumeric
  index, login_response_status = cboe_edgxoptions_complextop_spin_v1_1_54.login_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response Message
cboe_edgxoptions_complextop_spin_v1_1_54.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.login_response_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complextop_spin_v1_1_54.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complextop_spin_v1_1_54.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complextop_spin_v1_1_54.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Message
cboe_edgxoptions_complextop_spin_v1_1_54.login_message = {}

-- Size: Login Message
cboe_edgxoptions_complextop_spin_v1_1_54.login_message.size =
  cboe_edgxoptions_complextop_spin_v1_1_54.session_sub_id.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.username.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.filler.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.password.size

-- Display: Login Message
cboe_edgxoptions_complextop_spin_v1_1_54.login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Message
cboe_edgxoptions_complextop_spin_v1_1_54.login_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Sub Id: Alphanumeric
  index, session_sub_id = cboe_edgxoptions_complextop_spin_v1_1_54.session_sub_id.dissect(buffer, index, packet, parent)

  -- Username: Alphanumeric
  index, username = cboe_edgxoptions_complextop_spin_v1_1_54.username.dissect(buffer, index, packet, parent)

  -- Filler: Alphanumeric
  index, filler = cboe_edgxoptions_complextop_spin_v1_1_54.filler.dissect(buffer, index, packet, parent)

  -- Password: Alphanumeric
  index, password = cboe_edgxoptions_complextop_spin_v1_1_54.password.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
cboe_edgxoptions_complextop_spin_v1_1_54.login_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.login_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complextop_spin_v1_1_54.login_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complextop_spin_v1_1_54.login_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complextop_spin_v1_1_54.login_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_edgxoptions_complextop_spin_v1_1_54.payload = {}

-- Dissect: Payload
cboe_edgxoptions_complextop_spin_v1_1_54.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Message
  if message_type == 0x01 then
    return cboe_edgxoptions_complextop_spin_v1_1_54.login_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response Message
  if message_type == 0x02 then
    return cboe_edgxoptions_complextop_spin_v1_1_54.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Image Available Message
  if message_type == 0x80 then
    return cboe_edgxoptions_complextop_spin_v1_1_54.spin_image_available_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Request Message
  if message_type == 0x81 then
    return cboe_edgxoptions_complextop_spin_v1_1_54.spin_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Response Message
  if message_type == 0x82 then
    return cboe_edgxoptions_complextop_spin_v1_1_54.spin_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Finished Message
  if message_type == 0x83 then
    return cboe_edgxoptions_complextop_spin_v1_1_54.spin_finished_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Definition Request Message
  if message_type == 0x84 then
    return cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Definition Response Message
  if message_type == 0x85 then
    return cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Definition Finished Message
  if message_type == 0x86 then
    return cboe_edgxoptions_complextop_spin_v1_1_54.instrument_definition_finished_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_edgxoptions_complextop_spin_v1_1_54.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Mapping Message
  if message_type == 0x2F then
    return cboe_edgxoptions_complextop_spin_v1_1_54.symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Instrument Definition Expanded Message
  if message_type == 0x9A then
    return cboe_edgxoptions_complextop_spin_v1_1_54.complex_instrument_definition_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Update Expanded Short Message
  if message_type == 0xD4 then
    return cboe_edgxoptions_complextop_spin_v1_1_54.single_side_update_expanded_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Update Expanded Long Message
  if message_type == 0xD5 then
    return cboe_edgxoptions_complextop_spin_v1_1_54.single_side_update_expanded_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Two Side Update Expanded Short Message
  if message_type == 0xD6 then
    return cboe_edgxoptions_complextop_spin_v1_1_54.two_side_update_expanded_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Two Side Update Expanded Long Message
  if message_type == 0xD7 then
    return cboe_edgxoptions_complextop_spin_v1_1_54.two_side_update_expanded_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Top Trade Message
  if message_type == 0xB8 then
    return cboe_edgxoptions_complextop_spin_v1_1_54.top_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_edgxoptions_complextop_spin_v1_1_54.trading_status_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_edgxoptions_complextop_spin_v1_1_54.message_header = {}

-- Size: Message Header
cboe_edgxoptions_complextop_spin_v1_1_54.message_header.size =
  cboe_edgxoptions_complextop_spin_v1_1_54.message_length.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.message_type.size

-- Display: Message Header
cboe_edgxoptions_complextop_spin_v1_1_54.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_edgxoptions_complextop_spin_v1_1_54.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_edgxoptions_complextop_spin_v1_1_54.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 18 values
  index, message_type = cboe_edgxoptions_complextop_spin_v1_1_54.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_edgxoptions_complextop_spin_v1_1_54.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.message_header, buffer(offset, 0))
    local index = cboe_edgxoptions_complextop_spin_v1_1_54.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complextop_spin_v1_1_54.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complextop_spin_v1_1_54.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_edgxoptions_complextop_spin_v1_1_54.message = {}

-- Read runtime size of: Message
cboe_edgxoptions_complextop_spin_v1_1_54.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_edgxoptions_complextop_spin_v1_1_54.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_edgxoptions_complextop_spin_v1_1_54.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_edgxoptions_complextop_spin_v1_1_54.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 18 branches
  index = cboe_edgxoptions_complextop_spin_v1_1_54.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_edgxoptions_complextop_spin_v1_1_54.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_edgxoptions_complextop_spin_v1_1_54.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.message, buffer(offset, 0))
    local current = cboe_edgxoptions_complextop_spin_v1_1_54.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_edgxoptions_complextop_spin_v1_1_54.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_edgxoptions_complextop_spin_v1_1_54.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
cboe_edgxoptions_complextop_spin_v1_1_54.heartbeat = {}

-- Display: Heartbeat
cboe_edgxoptions_complextop_spin_v1_1_54.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
cboe_edgxoptions_complextop_spin_v1_1_54.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_edgxoptions_complextop_spin_v1_1_54.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
cboe_edgxoptions_complextop_spin_v1_1_54.messages = {}

-- Dissect: Messages
cboe_edgxoptions_complextop_spin_v1_1_54.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return cboe_edgxoptions_complextop_spin_v1_1_54.heartbeat.dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_edgxoptions_complextop_spin_v1_1_54.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
cboe_edgxoptions_complextop_spin_v1_1_54.packet_header = {}

-- Size: Packet Header
cboe_edgxoptions_complextop_spin_v1_1_54.packet_header.size =
  cboe_edgxoptions_complextop_spin_v1_1_54.length.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.message_count.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.unit.size + 
  cboe_edgxoptions_complextop_spin_v1_1_54.sequence.size

-- Display: Packet Header
cboe_edgxoptions_complextop_spin_v1_1_54.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_edgxoptions_complextop_spin_v1_1_54.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_edgxoptions_complextop_spin_v1_1_54.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = cboe_edgxoptions_complextop_spin_v1_1_54.message_count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_edgxoptions_complextop_spin_v1_1_54.unit.dissect(buffer, index, packet, parent)

  -- Sequence: Binary
  index, sequence = cboe_edgxoptions_complextop_spin_v1_1_54.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_edgxoptions_complextop_spin_v1_1_54.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54.fields.packet_header, buffer(offset, 0))
    local index = cboe_edgxoptions_complextop_spin_v1_1_54.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complextop_spin_v1_1_54.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complextop_spin_v1_1_54.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_edgxoptions_complextop_spin_v1_1_54.packet = {}

-- Verify required size of Tcp packet
cboe_edgxoptions_complextop_spin_v1_1_54.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_edgxoptions_complextop_spin_v1_1_54.packet_header.size
end

-- Dissect Packet
cboe_edgxoptions_complextop_spin_v1_1_54.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_edgxoptions_complextop_spin_v1_1_54.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_edgxoptions_complextop_spin_v1_1_54.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_edgxoptions_complextop_spin_v1_1_54.init()
end

-- Dissector for Cboe EdgxOptions ComplexTop Spin 1.1.54
function omi_cboe_edgxoptions_complextop_spin_v1_1_54.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_edgxoptions_complextop_spin_v1_1_54.name

  local length = buffer:len()
  local index = 0

  -- Dissect each message the segment carries
  while index < length do
    local remaining = length - index

    -- The message length lives in the header: wait for the header before reading it
    if remaining < cboe_edgxoptions_complextop_spin_v1_1_54.packet_header.size then
      packet.desegment_offset = index
      packet.desegment_len = DESEGMENT_ONE_MORE_SEGMENT
      return length
    end

    local size = buffer(index, 2):le_uint()
    -- A message split across segments: ask TCP for exactly the bytes still missing
    if remaining < size then
      packet.desegment_offset = index
      packet.desegment_len = size - remaining
      return length
    end

    local protocol = parent:add(omi_cboe_edgxoptions_complextop_spin_v1_1_54, buffer(index, size), omi_cboe_edgxoptions_complextop_spin_v1_1_54.description, "("..size.." Bytes)")
    cboe_edgxoptions_complextop_spin_v1_1_54.packet.dissect(buffer(index, size):tvb(), packet, protocol)
    protocol:set_len(size)
    index = index + size
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
cboe_edgxoptions_complextop_spin_v1_1_54.packet.fingerprint = function(buffer)
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

  -- Login Message
  if message_type == 0x01 then
    return true
  end

  -- Login Response Message
  if message_type == 0x02 then
    return true
  end

  -- Spin Image Available Message
  if message_type == 0x80 then
    return true
  end

  -- Spin Request Message
  if message_type == 0x81 then
    return true
  end

  -- Spin Response Message
  if message_type == 0x82 then
    return true
  end

  -- Spin Finished Message
  if message_type == 0x83 then
    return true
  end

  -- Instrument Definition Request Message
  if message_type == 0x84 then
    return true
  end

  -- Instrument Definition Response Message
  if message_type == 0x85 then
    return true
  end

  -- Instrument Definition Finished Message
  if message_type == 0x86 then
    return true
  end

  -- Time Message
  if message_type == 0x20 then
    return true
  end

  -- Symbol Mapping Message
  if message_type == 0x2F then
    return true
  end

  -- Complex Instrument Definition Expanded Message
  if message_type == 0x9A then
    return true
  end

  -- Single Side Update Expanded Short Message
  if message_type == 0xD4 then
    return true
  end

  -- Single Side Update Expanded Long Message
  if message_type == 0xD5 then
    return true
  end

  -- Two Side Update Expanded Short Message
  if message_type == 0xD6 then
    return true
  end

  -- Two Side Update Expanded Long Message
  if message_type == 0xD7 then
    return true
  end

  -- Top Trade Message
  if message_type == 0xB8 then
    return true
  end

  -- Trading Status Message
  if message_type == 0x31 then
    return true
  end


  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe EdgxOptions ComplexTop Spin 1.1.54 (Tcp)
local function omi_cboe_edgxoptions_complextop_spin_v1_1_54_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_edgxoptions_complextop_spin_v1_1_54.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp packet message dispatch
  if not cboe_edgxoptions_complextop_spin_v1_1_54.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_edgxoptions_complextop_spin_v1_1_54
  omi_cboe_edgxoptions_complextop_spin_v1_1_54.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe EdgxOptions ComplexTop Spin 1.1.54
omi_cboe_edgxoptions_complextop_spin_v1_1_54:register_heuristic("tcp", omi_cboe_edgxoptions_complextop_spin_v1_1_54_tcp_heuristic)

-- Register Cboe EdgxOptions ComplexTop Spin 1.1.54 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_edgxoptions_complextop_spin_v1_1_54)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.1.54
--   Date: Wednesday, April 1, 2026
--   Specification: US_OPTIONS_COMPLEX_MULTICAST_TOP_SPECIFICATION.pdf
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
