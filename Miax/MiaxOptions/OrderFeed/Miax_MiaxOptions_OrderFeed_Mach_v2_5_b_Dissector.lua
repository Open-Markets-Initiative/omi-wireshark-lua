-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax MiaxOptions OrderFeed Mach 2.5.b Protocol
local omi_miax_miaxoptions_orderfeed_mach_v2_5_b = Proto("Omi.Miax.MiaxOptions.OrderFeed.Mach.v2.5.b", "Miax MiaxOptions OrderFeed Mach 2.5.b")

-- Protocol table
local miax_miaxoptions_orderfeed_mach_v2_5_b = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax MiaxOptions OrderFeed Mach 2.5.b Fields
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.action = ProtoField.new("Action", "miax.miaxoptions.orderfeed.mach.v2.5.b.action", ftypes.STRING, nil, nil, nil, "Order Status.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.active_on_miax = ProtoField.new("Active On Miax", "miax.miaxoptions.orderfeed.mach.v2.5.b.activeonmiax", ftypes.STRING, nil, nil, nil, "Indicates if this symbol is tradable on MIAX in the current session")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.application_message = ProtoField.new("Application Message", "miax.miaxoptions.orderfeed.mach.v2.5.b.applicationmessage", ftypes.STRING)
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.application_protocol = ProtoField.new("Application Protocol", "miax.miaxoptions.orderfeed.mach.v2.5.b.applicationprotocol", ftypes.STRING, nil, nil, nil, "Miax Application Protocol")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.attributed_id = ProtoField.new("Attributed Id", "miax.miaxoptions.orderfeed.mach.v2.5.b.attributedid", ftypes.STRING, nil, nil, nil, "MIAX assigned Attributable ID (Executing Broker MPID) of an Order. Otherwise, it is space filled.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.call_or_put = ProtoField.new("Call Or Put", "miax.miaxoptions.orderfeed.mach.v2.5.b.callorput", ftypes.STRING, nil, nil, nil, "Option Type")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.closing_time = ProtoField.new("Closing Time", "miax.miaxoptions.orderfeed.mach.v2.5.b.closingtime", ftypes.STRING, nil, nil, nil, "Expressed in HH:MM:SS format. Eg: 16:15:00")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.computer_id = ProtoField.new("Computer Id", "miax.miaxoptions.orderfeed.mach.v2.5.b.computerid", ftypes.STRING, nil, nil, nil, "issued by MIAX Futures Exchange during initial setup")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.end_sequence_number = ProtoField.new("End Sequence Number", "miax.miaxoptions.orderfeed.mach.v2.5.b.endsequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the last packet to be retransmitted")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.event_reason = ProtoField.new("Event Reason", "miax.miaxoptions.orderfeed.mach.v2.5.b.eventreason", ftypes.STRING, nil, nil, nil, "Event Reason value")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.expected_event_time_nano_seconds_part = ProtoField.new("Expected Event Time Nano Seconds Part", "miax.miaxoptions.orderfeed.mach.v2.5.b.expectedeventtimenanosecondspart", ftypes.UINT32, nil, nil, nil, "Nano-seconds portion of the expected time of the event. Specifies number of nano-seconds since the seconds specified in “Expected Event Time Seconds” field.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.expected_event_time_seconds_part = ProtoField.new("Expected Event Time Seconds Part", "miax.miaxoptions.orderfeed.mach.v2.5.b.expectedeventtimesecondspart", ftypes.UINT32, nil, nil, nil, "Seconds portion of the expected time of the event. Always use in conjunction with the Nano-seconds part field.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.expiration_date = ProtoField.new("Expiration Date", "miax.miaxoptions.orderfeed.mach.v2.5.b.expirationdate", ftypes.STRING, nil, nil, nil, "Expiration date of the option in YYYYMMDD format")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.goodbye_packet = ProtoField.new("Goodbye Packet", "miax.miaxoptions.orderfeed.mach.v2.5.b.goodbyepacket", ftypes.STRING, nil, nil, nil, "The server may send a GoodBye packet to inform the client a reason for termination of the connection just before it terminates the connection")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.highest_sequence_number = ProtoField.new("Highest Sequence Number", "miax.miaxoptions.orderfeed.mach.v2.5.b.highestsequencenumber", ftypes.UINT64, nil, nil, nil, "the highest sequence number that the server currently has for the client")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.leg_definition = ProtoField.new("Leg Definition", "miax.miaxoptions.orderfeed.mach.v2.5.b.legdefinition", ftypes.STRING, nil, nil, nil, "Complex Strategy Number of Legs")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "miax.miaxoptions.orderfeed.mach.v2.5.b.legratioqty", ftypes.UINT16, nil, nil, nil, "The ratio of this individual leg. Number of option contracts or Number of stock shares for this leg is: LegRatioQty * OrderQty")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.leg_side = ProtoField.new("Leg Side", "miax.miaxoptions.orderfeed.mach.v2.5.b.legside", ftypes.STRING, nil, nil, nil, "The side of this individual leg")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.liquidity_acceptance_increment_indicator = ProtoField.new("Liquidity Acceptance Increment Indicator", "miax.miaxoptions.orderfeed.mach.v2.5.b.liquidityacceptanceincrementindicator", ftypes.STRING, nil, nil, nil, "This is the Minimum Price Variation for Quote/Order acceptance as per MIAX rules")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.login_request = ProtoField.new("Login Request", "miax.miaxoptions.orderfeed.mach.v2.5.b.loginrequest", ftypes.STRING, nil, nil, nil, "The SesM client must send a Login request packet immediately upon establishing a new TCP/IP socket connection to the server")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.login_response = ProtoField.new("Login Response", "miax.miaxoptions.orderfeed.mach.v2.5.b.loginresponse", ftypes.STRING, nil, nil, nil, "The SesM server sends a Login response packet in response a Login request packet from the client")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.login_status = ProtoField.new("Login Status", "miax.miaxoptions.orderfeed.mach.v2.5.b.loginstatus", ftypes.STRING)
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.logout_reason = ProtoField.new("Logout Reason", "miax.miaxoptions.orderfeed.mach.v2.5.b.logoutreason", ftypes.STRING, nil, nil, nil, "Logout Request Reason")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.logout_request = ProtoField.new("Logout Request", "miax.miaxoptions.orderfeed.mach.v2.5.b.logoutrequest", ftypes.STRING, nil, nil, nil, "The client may send a Logout request packet to request the connection be terminated")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.logout_text = ProtoField.new("Logout Text", "miax.miaxoptions.orderfeed.mach.v2.5.b.logouttext", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.long_term_option = ProtoField.new("Long Term Option", "miax.miaxoptions.orderfeed.mach.v2.5.b.longtermoption", ftypes.STRING, nil, nil, nil, "Long Term Option value")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.matching_engine_id = ProtoField.new("Matching Engine Id", "miax.miaxoptions.orderfeed.mach.v2.5.b.matchingengineid", ftypes.UINT8, nil, nil, nil, "Matching Engine that originated the packet")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.message_type = ProtoField.new("Message Type", "miax.miaxoptions.orderfeed.mach.v2.5.b.messagetype", ftypes.STRING, nil, nil, nil, "Code identifying this message type")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.miax_bbo_posting_increment_indicator = ProtoField.new("Miax Bbo Posting Increment Indicator", "miax.miaxoptions.orderfeed.mach.v2.5.b.miaxbbopostingincrementindicator", ftypes.STRING, nil, nil, nil, "This is the Minimum Price Variation as agreed to by the Options industry (penny pilot program) and as published by MIAX")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.mor_version = ProtoField.new("Mor Version", "miax.miaxoptions.orderfeed.mach.v2.5.b.morversion", ftypes.STRING, nil, nil, nil, "Eg: MOR2.0")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.nanoseconds = ProtoField.new("Nanoseconds", "miax.miaxoptions.orderfeed.mach.v2.5.b.nanoseconds", ftypes.UINT32, nil, nil, nil, "Time at which this product is added/updated on MIAX system today.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.number_of_legs = ProtoField.new("Number Of Legs", "miax.miaxoptions.orderfeed.mach.v2.5.b.numberoflegs", ftypes.UINT8, nil, nil, nil, "Number of Legs. Variable from 2 to 8")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.number_of_matching_engines = ProtoField.new("Number Of Matching Engines", "miax.miaxoptions.orderfeed.mach.v2.5.b.numberofmatchingengines", ftypes.UINT8, nil, nil, nil, "Count of all Matching Engines for the exchange")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.openclose_indicator = ProtoField.new("Openclose Indicator", "miax.miaxoptions.orderfeed.mach.v2.5.b.opencloseindicator", ftypes.STRING, nil, nil, nil, "Specifies if this order opens a position or closes a position. N/A when Origin is set to 4 = Market Maker or 5 = Non-Member Market Maker")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.opening_time = ProtoField.new("Opening Time", "miax.miaxoptions.orderfeed.mach.v2.5.b.openingtime", ftypes.STRING, nil, nil, nil, "Expressed in HH:MM:SS format. Eg: 09:30:00")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.opening_underlying_market_code = ProtoField.new("Opening Underlying Market Code", "miax.miaxoptions.orderfeed.mach.v2.5.b.openingunderlyingmarketcode", ftypes.STRING, nil, nil, nil, "Options opening will be triggered on receipt of Opening quote/trade from this Underlying market")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.order_id = ProtoField.new("Order Id", "miax.miaxoptions.orderfeed.mach.v2.5.b.orderid", ftypes.UINT64, nil, nil, nil, "MIAX assigned Order ID")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.order_original_volume = ProtoField.new("Order Original Volume", "miax.miaxoptions.orderfeed.mach.v2.5.b.orderoriginalvolume", ftypes.UINT32, nil, nil, nil, "Number of contracts specified on the order.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.order_price_long = ProtoField.new("Order Price Long", "miax.miaxoptions.orderfeed.mach.v2.5.b.orderpricelong", ftypes.DOUBLE, nil, nil, nil, "Effective limit price of the order (see notes). Not applicable for Market Orders.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.order_price_short = ProtoField.new("Order Price Short", "miax.miaxoptions.orderfeed.mach.v2.5.b.orderpriceshort", ftypes.DOUBLE, nil, nil, nil, "Original limit price of the order. Zero for market orders.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.order_side = ProtoField.new("Order Side", "miax.miaxoptions.orderfeed.mach.v2.5.b.orderside", ftypes.STRING, nil, nil, nil, "Side of order.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.order_type = ProtoField.new("Order Type", "miax.miaxoptions.orderfeed.mach.v2.5.b.ordertype", ftypes.STRING, nil, nil, nil, "Order price type.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.origin = ProtoField.new("Origin", "miax.miaxoptions.orderfeed.mach.v2.5.b.origin", ftypes.STRING, nil, nil, nil, "Specifies the order origin type.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.packet_length = ProtoField.new("Packet Length", "miax.miaxoptions.orderfeed.mach.v2.5.b.packetlength", ftypes.UINT16, nil, nil, nil, "Length of the packet, including the header and application data")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.packet_type = ProtoField.new("Packet Type", "miax.miaxoptions.orderfeed.mach.v2.5.b.packettype", ftypes.UINT8, nil, nil, nil, "protocol packet type")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.priority_customer_volume = ProtoField.new("Priority Customer Volume", "miax.miaxoptions.orderfeed.mach.v2.5.b.prioritycustomervolume", ftypes.UINT32, nil, nil, nil, "Number of Priority Customer contracts, when Origin = “ “ (Derived Order)")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.priority_quote_width = ProtoField.new("Priority Quote Width", "miax.miaxoptions.orderfeed.mach.v2.5.b.priorityquotewidth", ftypes.DOUBLE, nil, nil, nil, "Maximum allowable width for a quote for this Option during regular trading in order to be considered as Priority Quote. 0 when Priority Quote Width is not applicable.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.product_id = ProtoField.new("Product Id", "miax.miaxoptions.orderfeed.mach.v2.5.b.productid", ftypes.UINT32, nil, nil, nil, "MIAX Product ID mapped to a given option. It is assigned per trading session and is valid for that session.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.refresh_message_type = ProtoField.new("Refresh Message Type", "miax.miaxoptions.orderfeed.mach.v2.5.b.refreshmessagetype", ftypes.STRING, nil, nil, nil, "Identifies the data set the firm is requesting a refresh of.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.remaining_volume_open = ProtoField.new("Remaining Volume Open", "miax.miaxoptions.orderfeed.mach.v2.5.b.remainingvolumeopen", ftypes.UINT32, nil, nil, nil, "Number of contracts that are still open for trading at MIAX.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "miax.miaxoptions.orderfeed.mach.v2.5.b.requestedsequencenumber", ftypes.UINT64, nil, nil, nil, "Specifies client requested sequence number")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.requested_trading_session_id = ProtoField.new("Requested Trading Session Id", "miax.miaxoptions.orderfeed.mach.v2.5.b.requestedtradingsessionid", ftypes.UINT8, nil, nil, nil, "Specifies the session the client would like to log into, or zero to log into the currently active session")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.reserved_1 = ProtoField.new("Reserved 1", "miax.miaxoptions.orderfeed.mach.v2.5.b.reserved1", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.reserved_10 = ProtoField.new("Reserved 10", "miax.miaxoptions.orderfeed.mach.v2.5.b.reserved10", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.reserved_28 = ProtoField.new("Reserved 28", "miax.miaxoptions.orderfeed.mach.v2.5.b.reserved28", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.reserved_8 = ProtoField.new("Reserved 8", "miax.miaxoptions.orderfeed.mach.v2.5.b.reserved8", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.restricted_option = ProtoField.new("Restricted Option", "miax.miaxoptions.orderfeed.mach.v2.5.b.restrictedoption", ftypes.STRING, nil, nil, nil, "Restricted Option value")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.retransmission_request = ProtoField.new("Retransmission Request", "miax.miaxoptions.orderfeed.mach.v2.5.b.retransmissionrequest", ftypes.STRING, nil, nil, nil, "The SesM client uses this packet to request a retransmission server to retransmit a range of packets")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.route_instruction = ProtoField.new("Route Instruction", "miax.miaxoptions.orderfeed.mach.v2.5.b.routeinstruction", ftypes.STRING, nil, nil, nil, "Route instruction that came with the order.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.seconds = ProtoField.new("Seconds", "miax.miaxoptions.orderfeed.mach.v2.5.b.seconds", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Seconds part of the time that applies to all messages that gets disseminated until this message gets sent again.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.seconds_utc = ProtoField.new("Seconds", "miax.miaxoptions.orderfeed.mach.v2.5.b.seconds.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Seconds part of the time that applies to all messages that gets disseminated until this message gets sent again.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.security_symbol = ProtoField.new("Security Symbol", "miax.miaxoptions.orderfeed.mach.v2.5.b.securitysymbol", ftypes.STRING, nil, nil, nil, "Option Security Symbol")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.sequence_number = ProtoField.new("Sequence Number", "miax.miaxoptions.orderfeed.mach.v2.5.b.sequencenumber", ftypes.UINT64, nil, nil, nil, "Original sequence number from the live feed.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "miax.miaxoptions.orderfeed.mach.v2.5.b.sequenceddatapacket", ftypes.STRING, nil, nil, nil, "The SesM server uses Sequenced data packets to send all messages that must be recoverable by the client in case of a connection loss")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "miax.miaxoptions.orderfeed.mach.v2.5.b.sequencedmessagetype", ftypes.STRING, nil, nil, nil, "Market-data application message type carried over the SesM sequenced channel (matches the MACH UDP Message Type byte; Miax Options uses Ascii message codes)")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.sesm_packet_length = ProtoField.new("Sesm Packet Length", "miax.miaxoptions.orderfeed.mach.v2.5.b.sesmpacketlength", ftypes.UINT16, nil, nil, nil, "The length of rest of the packet")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.sesm_packet_type = ProtoField.new("Sesm Packet Type", "miax.miaxoptions.orderfeed.mach.v2.5.b.sesmpackettype", ftypes.STRING, nil, nil, nil, "SesM protocol packet type")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.sesm_version = ProtoField.new("Sesm Version", "miax.miaxoptions.orderfeed.mach.v2.5.b.sesmversion", ftypes.STRING, nil, nil, nil, "Protocol version")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.session_id = ProtoField.new("Session Id", "miax.miaxoptions.orderfeed.mach.v2.5.b.sessionid", ftypes.UINT32, nil, nil, nil, "MIAX assigned ID for the current trading session")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.session_number = ProtoField.new("Session Number", "miax.miaxoptions.orderfeed.mach.v2.5.b.sessionnumber", ftypes.UINT8, nil, nil, nil, "protocol packet type")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.simple_or_complex_order = ProtoField.new("Simple Or Complex Order", "miax.miaxoptions.orderfeed.mach.v2.5.b.simpleorcomplexorder", ftypes.STRING, nil, nil, nil, "Simple or Complex Order indicator")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.start_sequence_number = ProtoField.new("Start Sequence Number", "miax.miaxoptions.orderfeed.mach.v2.5.b.startsequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the first packet to be retransmitted")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.strategy_id = ProtoField.new("Strategy Id", "miax.miaxoptions.orderfeed.mach.v2.5.b.strategyid", ftypes.UINT32, nil, nil, nil, "MIAX Strategy ID is assigned per trading day and is valid only for that day.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.strike_price = ProtoField.new("Strike Price", "miax.miaxoptions.orderfeed.mach.v2.5.b.strikeprice", ftypes.DOUBLE, nil, nil, nil, "Explicit strike price of the option. Refer to data types for field processing notes")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.synchronization_complete = ProtoField.new("Synchronization Complete", "miax.miaxoptions.orderfeed.mach.v2.5.b.synchronizationcomplete", ftypes.STRING, nil, nil, nil, "The SesM server sends a Login response packet in response a Login request packet from the client")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.system_status = ProtoField.new("System Status", "miax.miaxoptions.orderfeed.mach.v2.5.b.systemstatus", ftypes.STRING, nil, nil, nil, "Current system status")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.test_packet = ProtoField.new("Test Packet", "miax.miaxoptions.orderfeed.mach.v2.5.b.testpacket", ftypes.STRING, nil, nil, nil, "Test packets are intended to provide human readable text that may aid in debugging problems")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.test_text = ProtoField.new("Test Text", "miax.miaxoptions.orderfeed.mach.v2.5.b.testtext", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.time_in_force_tif = ProtoField.new("Time In Force Tif", "miax.miaxoptions.orderfeed.mach.v2.5.b.timeinforcetif", ftypes.STRING, nil, nil, nil, "Specifies how long the order remains in effect.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.trading_session_id = ProtoField.new("Trading Session Id", "miax.miaxoptions.orderfeed.mach.v2.5.b.tradingsessionid", ftypes.UINT8, nil, nil, nil, "The current trading session ID of the corresponding Matching Engine")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.trading_status = ProtoField.new("Trading Status", "miax.miaxoptions.orderfeed.mach.v2.5.b.tradingstatus", ftypes.STRING, nil, nil, nil, "Trading Status value")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "miax.miaxoptions.orderfeed.mach.v2.5.b.underlyingsymbol", ftypes.STRING, nil, nil, nil, "Stock Symbol for the option.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "miax.miaxoptions.orderfeed.mach.v2.5.b.unsequenceddatapacket", ftypes.STRING, nil, nil, nil, "Each unsequenced data packet carries one unsequenced message from the higher-lever protocol")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "miax.miaxoptions.orderfeed.mach.v2.5.b.unsequencedmessagetype", ftypes.STRING, nil, nil, nil, "Market-data Refresh request/response discriminator carried over the SesM unsequenced channel (Request Type R, Response Type r, End of Refresh E)")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.update_reason = ProtoField.new("Update Reason", "miax.miaxoptions.orderfeed.mach.v2.5.b.updatereason", ftypes.STRING, nil, nil, nil, "Update Reason value")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.username = ProtoField.new("Username", "miax.miaxoptions.orderfeed.mach.v2.5.b.username", ftypes.STRING, nil, nil, nil, "issued by MIAX during initial setup")

-- Miax MiaxOptions OrderFeed Mach 2.5.b Framing
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.mach_message = ProtoField.new("Mach Message", "miax.miaxoptions.orderfeed.mach.v2.5.b.machmessage", ftypes.STRING)
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.mach_packet_header = ProtoField.new("Mach Packet Header", "miax.miaxoptions.orderfeed.mach.v2.5.b.machpacketheader", ftypes.STRING, nil, nil, nil, "Mach packet header (12 bytes)")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.sesm_packet_header = ProtoField.new("Sesm Packet Header", "miax.miaxoptions.orderfeed.mach.v2.5.b.sesmpacketheader", ftypes.STRING)
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.sesm_tcp_packet = ProtoField.new("Sesm Tcp Packet", "miax.miaxoptions.orderfeed.mach.v2.5.b.sesmtcppacket", ftypes.STRING)
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.tcp_packet = ProtoField.new("Tcp Packet", "miax.miaxoptions.orderfeed.mach.v2.5.b.tcppacket", ftypes.STRING, nil, nil, nil, "SesM Packet")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.udp_packet = ProtoField.new("Udp Packet", "miax.miaxoptions.orderfeed.mach.v2.5.b.udppacket", ftypes.STRING)

-- Miax MiaxOptions OrderFeed 2.5.b Application Messages
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.complex_order_message = ProtoField.new("Complex Order Message", "miax.miaxoptions.orderfeed.mach.v2.5.b.complexordermessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate MIAX Options Complex Orders.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.complex_strategy_definition_update_message = ProtoField.new("Complex Strategy Definition Update Message", "miax.miaxoptions.orderfeed.mach.v2.5.b.complexstrategydefinitionupdatemessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate stock option strategies traded on MIAX for the current session. The Strategy ID sent in this message is utilized by the Administrative Information Subscriber (AIS) Feed for Complex Liquidity Seeking Events, the MIAX Order Feed (MOR) for Complex Order dissemination, the Complex Top of Market Feed (cToM) for Complex Trade and Top of Market dissemination and the MIAX Express Interface (MEI) for Complex eQuotes.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.end_of_refresh_notification_message = ProtoField.new("End Of Refresh Notification Message", "miax.miaxoptions.orderfeed.mach.v2.5.b.endofrefreshnotificationmessage", ftypes.STRING, nil, nil, nil, "Sent by MIAX Options over the MOR Retransmission Interface (SesM Unsequenced Data Packet) when the refresh response is complete.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.order_close_message = ProtoField.new("Order Close Message", "miax.miaxoptions.orderfeed.mach.v2.5.b.orderclosemessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate Order Close for MIAX Options Simple and Complex Orders.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "miax.miaxoptions.orderfeed.mach.v2.5.b.refreshrequestmessage", ftypes.STRING, nil, nil, nil, "Sent by the firm over the MOR Retransmission Interface (SesM Unsequenced Data Packet) to request a Last Value Refresh of a particular data set identified by Refresh Message Type.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.refresh_response_message = ProtoField.new("Refresh Response Message", "miax.miaxoptions.orderfeed.mach.v2.5.b.refreshresponsemessage", ftypes.STRING, nil, nil, nil, "Sent by MIAX Options over the MOR Retransmission Interface (SesM Unsequenced Data Packet) carrying one Application Message that satisfies a previous Refresh Request. Note: MIAX Options PDF assigns Response Type \"R\" (uppercase) to this message, colliding with the Request Type \"R\" byte; lowercase \"r\" is used here to match the Pearl convention for case-distinct discrimination.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.simple_order_message = ProtoField.new("Simple Order Message", "miax.miaxoptions.orderfeed.mach.v2.5.b.simpleordermessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate MIAX Options Simple Orders.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.simple_series_update_message = ProtoField.new("Simple Series Update Message", "miax.miaxoptions.orderfeed.mach.v2.5.b.simpleseriesupdatemessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate all Option series traded on MIAX for the current session.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.system_state_message = ProtoField.new("System State Message", "miax.miaxoptions.orderfeed.mach.v2.5.b.systemstatemessage", ftypes.STRING, nil, nil, nil, "This message format is used to notify the firms of the state changes of the system. This is a notification that applies to each Underlying group. Firms can use notifications as triggers in their system to ensure electronic synchronization of systems.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.system_time_message = ProtoField.new("System Time Message", "miax.miaxoptions.orderfeed.mach.v2.5.b.systemtimemessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate the “seconds” part of the timestamp that is applicable to all messages that are sent in the current second.")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.underlying_trading_status_notification_message = ProtoField.new("Underlying Trading Status Notification Message", "miax.miaxoptions.orderfeed.mach.v2.5.b.underlyingtradingstatusnotificationmessage", ftypes.STRING, nil, nil, nil, "This message format will be used to notify firms of changes to the trading status of all the options of an underlying.")

-- Miax MiaxOptions OrderFeed Mach 2.5.b Generated Fields
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.leg_definition_index = ProtoField.new("Leg Definition Index", "miax.miaxoptions.orderfeed.mach.v2.5.b.legdefinitionindex", ftypes.UINT16)
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.timestamp = ProtoField.new("Timestamp", "miax.miaxoptions.orderfeed.mach.v2.5.b.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Miax MiaxOptions OrderFeed Mach 2.5.b Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
miax_miaxoptions_orderfeed_mach_v2_5_b.absolute_time_base = 0

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
miax_miaxoptions_orderfeed_mach_v2_5_b.format_timestamp = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Miax MiaxOptions OrderFeed Mach 2.5.b Element Dissection Options
show.structs = true
show.application_messages = true
show.repeating_groups = true
show.headers = true
show.indexes = true

-- Register Miax MiaxOptions OrderFeed Mach 2.5.b Show Options
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_miax_miaxoptions_orderfeed_mach_v2_5_b.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

omi_miax_miaxoptions_orderfeed_mach_v2_5_b.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_miax_miaxoptions_orderfeed_mach_v2_5_b.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_miax_miaxoptions_orderfeed_mach_v2_5_b.prefs.show_application_messages then
    show.application_messages = omi_miax_miaxoptions_orderfeed_mach_v2_5_b.prefs.show_application_messages
  end
  if show.headers ~= omi_miax_miaxoptions_orderfeed_mach_v2_5_b.prefs.show_headers then
    show.headers = omi_miax_miaxoptions_orderfeed_mach_v2_5_b.prefs.show_headers
  end
  if show.repeating_groups ~= omi_miax_miaxoptions_orderfeed_mach_v2_5_b.prefs.show_repeating_groups then
    show.repeating_groups = omi_miax_miaxoptions_orderfeed_mach_v2_5_b.prefs.show_repeating_groups
  end
  if show.structs ~= omi_miax_miaxoptions_orderfeed_mach_v2_5_b.prefs.show_structs then
    show.structs = omi_miax_miaxoptions_orderfeed_mach_v2_5_b.prefs.show_structs
  end
  if show.indexes ~= omi_miax_miaxoptions_orderfeed_mach_v2_5_b.prefs.show_indexes then
    show.indexes = omi_miax_miaxoptions_orderfeed_mach_v2_5_b.prefs.show_indexes
  end
  if miax_miaxoptions_orderfeed_mach_v2_5_b.format_timestamp ~= omi_miax_miaxoptions_orderfeed_mach_v2_5_b.prefs.format_timestamp then
    miax_miaxoptions_orderfeed_mach_v2_5_b.format_timestamp = omi_miax_miaxoptions_orderfeed_mach_v2_5_b.prefs.format_timestamp
  end
  if miax_miaxoptions_orderfeed_mach_v2_5_b.absolute_time_base ~= omi_miax_miaxoptions_orderfeed_mach_v2_5_b.prefs.absolute_time_base then
    miax_miaxoptions_orderfeed_mach_v2_5_b.absolute_time_base = omi_miax_miaxoptions_orderfeed_mach_v2_5_b.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
miax_miaxoptions_orderfeed_mach_v2_5_b.conversation = {}
miax_miaxoptions_orderfeed_mach_v2_5_b.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
miax_miaxoptions_orderfeed_mach_v2_5_b.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
miax_miaxoptions_orderfeed_mach_v2_5_b.conversation.data = function(packet)
  local key = miax_miaxoptions_orderfeed_mach_v2_5_b.conversation.key(packet)
  local data = miax_miaxoptions_orderfeed_mach_v2_5_b.conversation.flows[key]
  if data == nil then
    data = { seconds = { last = nil, frames = {} } }
    miax_miaxoptions_orderfeed_mach_v2_5_b.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
miax_miaxoptions_orderfeed_mach_v2_5_b.conversation.current = nil


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
-- Miax MiaxOptions OrderFeed Mach 2.5.b Fields
-----------------------------------------------------------------------

-- Action
miax_miaxoptions_orderfeed_mach_v2_5_b.action = {}

-- Size: Action
miax_miaxoptions_orderfeed_mach_v2_5_b.action.size = 1

-- Display: Action
miax_miaxoptions_orderfeed_mach_v2_5_b.action.labels = {
  ["O"] = "Action: Open (O)",
}

miax_miaxoptions_orderfeed_mach_v2_5_b.action.display = function(value)
  return miax_miaxoptions_orderfeed_mach_v2_5_b.action.labels[value] or "Action: Unknown("..value..")"
end

-- Dissect: Action
miax_miaxoptions_orderfeed_mach_v2_5_b.action.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.action.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.action, range, value, display)

  return offset + length, value
end

-- Active On Miax
miax_miaxoptions_orderfeed_mach_v2_5_b.active_on_miax = {}

-- Size: Active On Miax
miax_miaxoptions_orderfeed_mach_v2_5_b.active_on_miax.size = 1

-- Display: Active On Miax
miax_miaxoptions_orderfeed_mach_v2_5_b.active_on_miax.labels = {
  ["A"] = "Active On Miax: Active (A)",
  ["I"] = "Active On Miax: Inactive (I)",
}

miax_miaxoptions_orderfeed_mach_v2_5_b.active_on_miax.display = function(value)
  return miax_miaxoptions_orderfeed_mach_v2_5_b.active_on_miax.labels[value] or "Active On Miax: Unknown("..value..")"
end

-- Dissect: Active On Miax
miax_miaxoptions_orderfeed_mach_v2_5_b.active_on_miax.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.active_on_miax.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.active_on_miax.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.active_on_miax, range, value, display)

  return offset + length, value
end

-- Application Protocol
miax_miaxoptions_orderfeed_mach_v2_5_b.application_protocol = {}

-- Size: Application Protocol
miax_miaxoptions_orderfeed_mach_v2_5_b.application_protocol.size = 8

-- Display: Application Protocol
miax_miaxoptions_orderfeed_mach_v2_5_b.application_protocol.display = function(value)
  return "Application Protocol: "..value
end

-- Dissect: Application Protocol
miax_miaxoptions_orderfeed_mach_v2_5_b.application_protocol.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.application_protocol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.application_protocol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.application_protocol, range, value, display)

  return offset + length, value
end

-- Attributed Id
miax_miaxoptions_orderfeed_mach_v2_5_b.attributed_id = {}

-- Size: Attributed Id
miax_miaxoptions_orderfeed_mach_v2_5_b.attributed_id.size = 4

-- Display: Attributed Id
miax_miaxoptions_orderfeed_mach_v2_5_b.attributed_id.display = function(value)
  return "Attributed Id: "..value
end

-- Dissect: Attributed Id
miax_miaxoptions_orderfeed_mach_v2_5_b.attributed_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.attributed_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.attributed_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.attributed_id, range, value, display)

  return offset + length, value
end

-- Call Or Put
miax_miaxoptions_orderfeed_mach_v2_5_b.call_or_put = {}

-- Size: Call Or Put
miax_miaxoptions_orderfeed_mach_v2_5_b.call_or_put.size = 1

-- Display: Call Or Put
miax_miaxoptions_orderfeed_mach_v2_5_b.call_or_put.labels = {
  ["C"] = "Call Or Put: Call (C)",
  ["P"] = "Call Or Put: Put (P)",
}

miax_miaxoptions_orderfeed_mach_v2_5_b.call_or_put.display = function(value)
  return miax_miaxoptions_orderfeed_mach_v2_5_b.call_or_put.labels[value] or "Call Or Put: Unknown("..value..")"
end

-- Dissect: Call Or Put
miax_miaxoptions_orderfeed_mach_v2_5_b.call_or_put.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.call_or_put.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.call_or_put.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.call_or_put, range, value, display)

  return offset + length, value
end

-- Closing Time
miax_miaxoptions_orderfeed_mach_v2_5_b.closing_time = {}

-- Size: Closing Time
miax_miaxoptions_orderfeed_mach_v2_5_b.closing_time.size = 8

-- Display: Closing Time
miax_miaxoptions_orderfeed_mach_v2_5_b.closing_time.display = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
miax_miaxoptions_orderfeed_mach_v2_5_b.closing_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.closing_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.closing_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.closing_time, range, value, display)

  return offset + length, value
end

-- Computer Id
miax_miaxoptions_orderfeed_mach_v2_5_b.computer_id = {}

-- Size: Computer Id
miax_miaxoptions_orderfeed_mach_v2_5_b.computer_id.size = 8

-- Display: Computer Id
miax_miaxoptions_orderfeed_mach_v2_5_b.computer_id.display = function(value)
  return "Computer Id: "..value
end

-- Dissect: Computer Id
miax_miaxoptions_orderfeed_mach_v2_5_b.computer_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.computer_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.computer_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.computer_id, range, value, display)

  return offset + length, value
end

-- End Sequence Number
miax_miaxoptions_orderfeed_mach_v2_5_b.end_sequence_number = {}

-- Size: End Sequence Number
miax_miaxoptions_orderfeed_mach_v2_5_b.end_sequence_number.size = 8

-- Display: End Sequence Number
miax_miaxoptions_orderfeed_mach_v2_5_b.end_sequence_number.display = function(value)
  return "End Sequence Number: "..value
end

-- Dissect: End Sequence Number
miax_miaxoptions_orderfeed_mach_v2_5_b.end_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.end_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.end_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.end_sequence_number, range, value, display)

  return offset + length, value
end

-- Event Reason
miax_miaxoptions_orderfeed_mach_v2_5_b.event_reason = {}

-- Size: Event Reason
miax_miaxoptions_orderfeed_mach_v2_5_b.event_reason.size = 1

-- Display: Event Reason
miax_miaxoptions_orderfeed_mach_v2_5_b.event_reason.labels = {
  ["A"] = "Event Reason: Automatic (A)",
  ["M"] = "Event Reason: Manual (M)",
}

miax_miaxoptions_orderfeed_mach_v2_5_b.event_reason.display = function(value)
  return miax_miaxoptions_orderfeed_mach_v2_5_b.event_reason.labels[value] or "Event Reason: Unknown("..value..")"
end

-- Dissect: Event Reason
miax_miaxoptions_orderfeed_mach_v2_5_b.event_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.event_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.event_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.event_reason, range, value, display)

  return offset + length, value
end

-- Expected Event Time Nano Seconds Part
miax_miaxoptions_orderfeed_mach_v2_5_b.expected_event_time_nano_seconds_part = {}

-- Size: Expected Event Time Nano Seconds Part
miax_miaxoptions_orderfeed_mach_v2_5_b.expected_event_time_nano_seconds_part.size = 4

-- Display: Expected Event Time Nano Seconds Part
miax_miaxoptions_orderfeed_mach_v2_5_b.expected_event_time_nano_seconds_part.display = function(value)
  return "Expected Event Time Nano Seconds Part: "..value
end

-- Dissect: Expected Event Time Nano Seconds Part
miax_miaxoptions_orderfeed_mach_v2_5_b.expected_event_time_nano_seconds_part.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.expected_event_time_nano_seconds_part.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.expected_event_time_nano_seconds_part.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.expected_event_time_nano_seconds_part, range, value, display)

  return offset + length, value
end

-- Expected Event Time Seconds Part
miax_miaxoptions_orderfeed_mach_v2_5_b.expected_event_time_seconds_part = {}

-- Size: Expected Event Time Seconds Part
miax_miaxoptions_orderfeed_mach_v2_5_b.expected_event_time_seconds_part.size = 4

-- Display: Expected Event Time Seconds Part
miax_miaxoptions_orderfeed_mach_v2_5_b.expected_event_time_seconds_part.display = function(value)
  return "Expected Event Time Seconds Part: "..value
end

-- Dissect: Expected Event Time Seconds Part
miax_miaxoptions_orderfeed_mach_v2_5_b.expected_event_time_seconds_part.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.expected_event_time_seconds_part.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.expected_event_time_seconds_part.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.expected_event_time_seconds_part, range, value, display)

  return offset + length, value
end

-- Expiration Date
miax_miaxoptions_orderfeed_mach_v2_5_b.expiration_date = {}

-- Size: Expiration Date
miax_miaxoptions_orderfeed_mach_v2_5_b.expiration_date.size = 8

-- Display: Expiration Date
miax_miaxoptions_orderfeed_mach_v2_5_b.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
miax_miaxoptions_orderfeed_mach_v2_5_b.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.expiration_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Highest Sequence Number
miax_miaxoptions_orderfeed_mach_v2_5_b.highest_sequence_number = {}

-- Size: Highest Sequence Number
miax_miaxoptions_orderfeed_mach_v2_5_b.highest_sequence_number.size = 8

-- Display: Highest Sequence Number
miax_miaxoptions_orderfeed_mach_v2_5_b.highest_sequence_number.display = function(value)
  return "Highest Sequence Number: "..value
end

-- Dissect: Highest Sequence Number
miax_miaxoptions_orderfeed_mach_v2_5_b.highest_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.highest_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.highest_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.highest_sequence_number, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty
miax_miaxoptions_orderfeed_mach_v2_5_b.leg_ratio_qty = {}

-- Size: Leg Ratio Qty
miax_miaxoptions_orderfeed_mach_v2_5_b.leg_ratio_qty.size = 2

-- Display: Leg Ratio Qty
miax_miaxoptions_orderfeed_mach_v2_5_b.leg_ratio_qty.display = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
miax_miaxoptions_orderfeed_mach_v2_5_b.leg_ratio_qty.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.leg_ratio_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.leg_ratio_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Leg Side
miax_miaxoptions_orderfeed_mach_v2_5_b.leg_side = {}

-- Size: Leg Side
miax_miaxoptions_orderfeed_mach_v2_5_b.leg_side.size = 1

-- Display: Leg Side
miax_miaxoptions_orderfeed_mach_v2_5_b.leg_side.labels = {
  ["B"] = "Leg Side: Bid (B)",
  ["A"] = "Leg Side: Ask (A)",
}

miax_miaxoptions_orderfeed_mach_v2_5_b.leg_side.display = function(value)
  return miax_miaxoptions_orderfeed_mach_v2_5_b.leg_side.labels[value] or "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
miax_miaxoptions_orderfeed_mach_v2_5_b.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.leg_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Liquidity Acceptance Increment Indicator
miax_miaxoptions_orderfeed_mach_v2_5_b.liquidity_acceptance_increment_indicator = {}

-- Size: Liquidity Acceptance Increment Indicator
miax_miaxoptions_orderfeed_mach_v2_5_b.liquidity_acceptance_increment_indicator.size = 1

-- Display: Liquidity Acceptance Increment Indicator
miax_miaxoptions_orderfeed_mach_v2_5_b.liquidity_acceptance_increment_indicator.labels = {
  ["P"] = "Liquidity Acceptance Increment Indicator: Penny (P)",
  ["N"] = "Liquidity Acceptance Increment Indicator: Penny Or Nickel (N)",
  ["D"] = "Liquidity Acceptance Increment Indicator: Nickel Or Dime (D)",
}

miax_miaxoptions_orderfeed_mach_v2_5_b.liquidity_acceptance_increment_indicator.display = function(value)
  return miax_miaxoptions_orderfeed_mach_v2_5_b.liquidity_acceptance_increment_indicator.labels[value] or "Liquidity Acceptance Increment Indicator: Unknown("..value..")"
end

-- Dissect: Liquidity Acceptance Increment Indicator
miax_miaxoptions_orderfeed_mach_v2_5_b.liquidity_acceptance_increment_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.liquidity_acceptance_increment_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.liquidity_acceptance_increment_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.liquidity_acceptance_increment_indicator, range, value, display)

  return offset + length, value
end

-- Login Status
miax_miaxoptions_orderfeed_mach_v2_5_b.login_status = {}

-- Size: Login Status
miax_miaxoptions_orderfeed_mach_v2_5_b.login_status.size = 1

-- Display: Login Status
miax_miaxoptions_orderfeed_mach_v2_5_b.login_status.display = function(value)
  if value == " " then
    return "Login Status: Successful (<whitespace>)"
  end
  if value == "S" then
    return "Login Status: Invalid Trading Session Requested (S)"
  end
  if value == "U" then
    return "Login Status: No Active Trading Session Exists (U)"
  end
  if value == "X" then
    return "Login Status: Rejected (X)"
  end
  if value == "N" then
    return "Login Status: Invalid Start Sequence Number Requested (N)"
  end
  if value == "I" then
    return "Login Status: Incompatible Session Protocol Version (I)"
  end
  if value == "A" then
    return "Login Status: Incompatible Application Protocol Version (A)"
  end
  if value == "L" then
    return "Login Status: Request Rejected Because Client Already Logged In (L)"
  end

  return "Login Status: Unknown("..value..")"
end

-- Dissect: Login Status
miax_miaxoptions_orderfeed_mach_v2_5_b.login_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.login_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.login_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.login_status, range, value, display)

  return offset + length, value
end

-- Logout Reason
miax_miaxoptions_orderfeed_mach_v2_5_b.logout_reason = {}

-- Size: Logout Reason
miax_miaxoptions_orderfeed_mach_v2_5_b.logout_reason.size = 1

-- Display: Logout Reason
miax_miaxoptions_orderfeed_mach_v2_5_b.logout_reason.display = function(value)
  if value == " " then
    return "Logout Reason: Graceful Logout (<whitespace>)"
  end
  if value == "B" then
    return "Logout Reason: Bad Packet (B)"
  end
  if value == "L" then
    return "Logout Reason: Timed Out (L)"
  end
  if value == "A" then
    return "Logout Reason: Application Terminating Connection (A)"
  end

  return "Logout Reason: Unknown("..value..")"
end

-- Dissect: Logout Reason
miax_miaxoptions_orderfeed_mach_v2_5_b.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Logout Text
miax_miaxoptions_orderfeed_mach_v2_5_b.logout_text = {}

-- Display: Logout Text
miax_miaxoptions_orderfeed_mach_v2_5_b.logout_text.display = function(value)
  return "Logout Text: "..value
end

-- Dissect runtime sized field: Logout Text
miax_miaxoptions_orderfeed_mach_v2_5_b.logout_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.logout_text.display(value, packet, parent, size)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.logout_text, range, value, display)

  return offset + size, value
end

-- Long Term Option
miax_miaxoptions_orderfeed_mach_v2_5_b.long_term_option = {}

-- Size: Long Term Option
miax_miaxoptions_orderfeed_mach_v2_5_b.long_term_option.size = 1

-- Display: Long Term Option
miax_miaxoptions_orderfeed_mach_v2_5_b.long_term_option.labels = {
  ["Y"] = "Long Term Option: Yes (Y)",
  ["N"] = "Long Term Option: No (N)",
}

miax_miaxoptions_orderfeed_mach_v2_5_b.long_term_option.display = function(value)
  return miax_miaxoptions_orderfeed_mach_v2_5_b.long_term_option.labels[value] or "Long Term Option: Unknown("..value..")"
end

-- Dissect: Long Term Option
miax_miaxoptions_orderfeed_mach_v2_5_b.long_term_option.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.long_term_option.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.long_term_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.long_term_option, range, value, display)

  return offset + length, value
end

-- Matching Engine Id
miax_miaxoptions_orderfeed_mach_v2_5_b.matching_engine_id = {}

-- Size: Matching Engine Id
miax_miaxoptions_orderfeed_mach_v2_5_b.matching_engine_id.size = 1

-- Display: Matching Engine Id
miax_miaxoptions_orderfeed_mach_v2_5_b.matching_engine_id.display = function(value)
  return "Matching Engine Id: "..value
end

-- Dissect: Matching Engine Id
miax_miaxoptions_orderfeed_mach_v2_5_b.matching_engine_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.matching_engine_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.matching_engine_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.matching_engine_id, range, value, display)

  return offset + length, value
end

-- Message Type
miax_miaxoptions_orderfeed_mach_v2_5_b.message_type = {}

-- Size: Message Type
miax_miaxoptions_orderfeed_mach_v2_5_b.message_type.size = 1

-- Display: Message Type
miax_miaxoptions_orderfeed_mach_v2_5_b.message_type.labels = {
  ["1"] = "Message Type: System Time Message (1)",
  ["P"] = "Message Type: Simple Series Update Message (P)",
  ["S"] = "Message Type: System State Message (S)",
  ["H"] = "Message Type: Underlying Trading Status Notification Message (H)",
  ["F"] = "Message Type: Simple Order Message (F)",
  ["C"] = "Message Type: Complex Strategy Definition Update Message (C)",
  ["R"] = "Message Type: Complex Order Message (R)",
  ["x"] = "Message Type: Order Close Message (x)",
}

miax_miaxoptions_orderfeed_mach_v2_5_b.message_type.display = function(value)
  return miax_miaxoptions_orderfeed_mach_v2_5_b.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
miax_miaxoptions_orderfeed_mach_v2_5_b.message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.message_type, range, value, display)

  return offset + length, value
end

-- Miax Bbo Posting Increment Indicator
miax_miaxoptions_orderfeed_mach_v2_5_b.miax_bbo_posting_increment_indicator = {}

-- Size: Miax Bbo Posting Increment Indicator
miax_miaxoptions_orderfeed_mach_v2_5_b.miax_bbo_posting_increment_indicator.size = 1

-- Display: Miax Bbo Posting Increment Indicator
miax_miaxoptions_orderfeed_mach_v2_5_b.miax_bbo_posting_increment_indicator.labels = {
  ["P"] = "Miax Bbo Posting Increment Indicator: Penny (P)",
  ["N"] = "Miax Bbo Posting Increment Indicator: Penny Or Nickel (N)",
  ["D"] = "Miax Bbo Posting Increment Indicator: Nickel Or Dime (D)",
}

miax_miaxoptions_orderfeed_mach_v2_5_b.miax_bbo_posting_increment_indicator.display = function(value)
  return miax_miaxoptions_orderfeed_mach_v2_5_b.miax_bbo_posting_increment_indicator.labels[value] or "Miax Bbo Posting Increment Indicator: Unknown("..value..")"
end

-- Dissect: Miax Bbo Posting Increment Indicator
miax_miaxoptions_orderfeed_mach_v2_5_b.miax_bbo_posting_increment_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.miax_bbo_posting_increment_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.miax_bbo_posting_increment_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.miax_bbo_posting_increment_indicator, range, value, display)

  return offset + length, value
end

-- Mor Version
miax_miaxoptions_orderfeed_mach_v2_5_b.mor_version = {}

-- Size: Mor Version
miax_miaxoptions_orderfeed_mach_v2_5_b.mor_version.size = 8

-- Display: Mor Version
miax_miaxoptions_orderfeed_mach_v2_5_b.mor_version.display = function(value)
  return "Mor Version: "..value
end

-- Dissect: Mor Version
miax_miaxoptions_orderfeed_mach_v2_5_b.mor_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.mor_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.mor_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.mor_version, range, value, display)

  return offset + length, value
end

-- Nanoseconds
miax_miaxoptions_orderfeed_mach_v2_5_b.nanoseconds = {}

-- Size: Nanoseconds
miax_miaxoptions_orderfeed_mach_v2_5_b.nanoseconds.size = 4

-- Display: Nanoseconds
miax_miaxoptions_orderfeed_mach_v2_5_b.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
miax_miaxoptions_orderfeed_mach_v2_5_b.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Number Of Legs
miax_miaxoptions_orderfeed_mach_v2_5_b.number_of_legs = {}

-- Size: Number Of Legs
miax_miaxoptions_orderfeed_mach_v2_5_b.number_of_legs.size = 1

-- Display: Number Of Legs
miax_miaxoptions_orderfeed_mach_v2_5_b.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
miax_miaxoptions_orderfeed_mach_v2_5_b.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Number Of Matching Engines
miax_miaxoptions_orderfeed_mach_v2_5_b.number_of_matching_engines = {}

-- Size: Number Of Matching Engines
miax_miaxoptions_orderfeed_mach_v2_5_b.number_of_matching_engines.size = 1

-- Display: Number Of Matching Engines
miax_miaxoptions_orderfeed_mach_v2_5_b.number_of_matching_engines.display = function(value)
  return "Number Of Matching Engines: "..value
end

-- Dissect: Number Of Matching Engines
miax_miaxoptions_orderfeed_mach_v2_5_b.number_of_matching_engines.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.number_of_matching_engines.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.number_of_matching_engines.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.number_of_matching_engines, range, value, display)

  return offset + length, value
end

-- Openclose Indicator
miax_miaxoptions_orderfeed_mach_v2_5_b.openclose_indicator = {}

-- Size: Openclose Indicator
miax_miaxoptions_orderfeed_mach_v2_5_b.openclose_indicator.size = 1

-- Display: Openclose Indicator
miax_miaxoptions_orderfeed_mach_v2_5_b.openclose_indicator.display = function(value)
  if value == "O" then
    return "Openclose Indicator: Open (O)"
  end
  if value == "C" then
    return "Openclose Indicator: Close (C)"
  end
  if value == " " then
    return "Openclose Indicator: Not Applicable (<whitespace>)"
  end

  return "Openclose Indicator: Unknown("..value..")"
end

-- Dissect: Openclose Indicator
miax_miaxoptions_orderfeed_mach_v2_5_b.openclose_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.openclose_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.openclose_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.openclose_indicator, range, value, display)

  return offset + length, value
end

-- Opening Time
miax_miaxoptions_orderfeed_mach_v2_5_b.opening_time = {}

-- Size: Opening Time
miax_miaxoptions_orderfeed_mach_v2_5_b.opening_time.size = 8

-- Display: Opening Time
miax_miaxoptions_orderfeed_mach_v2_5_b.opening_time.display = function(value)
  return "Opening Time: "..value
end

-- Dissect: Opening Time
miax_miaxoptions_orderfeed_mach_v2_5_b.opening_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.opening_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.opening_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.opening_time, range, value, display)

  return offset + length, value
end

-- Opening Underlying Market Code
miax_miaxoptions_orderfeed_mach_v2_5_b.opening_underlying_market_code = {}

-- Size: Opening Underlying Market Code
miax_miaxoptions_orderfeed_mach_v2_5_b.opening_underlying_market_code.size = 1

-- Display: Opening Underlying Market Code
miax_miaxoptions_orderfeed_mach_v2_5_b.opening_underlying_market_code.labels = {
  ["A"] = "Opening Underlying Market Code: Nyse Amex (A)",
  ["B"] = "Opening Underlying Market Code: Nasdaq Omx Bx (B)",
  ["C"] = "Opening Underlying Market Code: National Stock Exchange (C)",
  ["D"] = "Opening Underlying Market Code: Finra Adf (D)",
  ["E"] = "Opening Underlying Market Code: Market Independent (E)",
  ["H"] = "Opening Underlying Market Code: Miax Pearl Equities (H)",
  ["I"] = "Opening Underlying Market Code: International Securities Exchange (I)",
  ["J"] = "Opening Underlying Market Code: Edga Exchange Inc (J)",
  ["K"] = "Opening Underlying Market Code: Edgx Exchange Inc (K)",
  ["L"] = "Opening Underlying Market Code: Ltse (L)",
  ["M"] = "Opening Underlying Market Code: Chicago Stock Exchange (M)",
  ["N"] = "Opening Underlying Market Code: Nyse Euronext (N)",
  ["P"] = "Opening Underlying Market Code: Nyse Arca Exchange (P)",
  ["Q"] = "Opening Underlying Market Code: Nasdaq Omx Utp (Q)",
  ["T"] = "Opening Underlying Market Code: Nasdaq Omx Cta (T)",
  ["U"] = "Opening Underlying Market Code: Memx (U)",
  ["V"] = "Opening Underlying Market Code: Iex (V)",
  ["W"] = "Opening Underlying Market Code: Cboe Stock Exchange (W)",
  ["X"] = "Opening Underlying Market Code: Nasdaq Omx Phlx (X)",
  ["Y"] = "Opening Underlying Market Code: Bats Y Exchange Inc (Y)",
  ["Z"] = "Opening Underlying Market Code: Bats Exchange Inc (Z)",
}

miax_miaxoptions_orderfeed_mach_v2_5_b.opening_underlying_market_code.display = function(value)
  return miax_miaxoptions_orderfeed_mach_v2_5_b.opening_underlying_market_code.labels[value] or "Opening Underlying Market Code: Unknown("..value..")"
end

-- Dissect: Opening Underlying Market Code
miax_miaxoptions_orderfeed_mach_v2_5_b.opening_underlying_market_code.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.opening_underlying_market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.opening_underlying_market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.opening_underlying_market_code, range, value, display)

  return offset + length, value
end

-- Order Id
miax_miaxoptions_orderfeed_mach_v2_5_b.order_id = {}

-- Size: Order Id
miax_miaxoptions_orderfeed_mach_v2_5_b.order_id.size = 8

-- Display: Order Id
miax_miaxoptions_orderfeed_mach_v2_5_b.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
miax_miaxoptions_orderfeed_mach_v2_5_b.order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Original Volume
miax_miaxoptions_orderfeed_mach_v2_5_b.order_original_volume = {}

-- Size: Order Original Volume
miax_miaxoptions_orderfeed_mach_v2_5_b.order_original_volume.size = 4

-- Display: Order Original Volume
miax_miaxoptions_orderfeed_mach_v2_5_b.order_original_volume.display = function(value)
  return "Order Original Volume: "..value
end

-- Dissect: Order Original Volume
miax_miaxoptions_orderfeed_mach_v2_5_b.order_original_volume.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.order_original_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.order_original_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.order_original_volume, range, value, display)

  return offset + length, value
end

-- Order Price Long
miax_miaxoptions_orderfeed_mach_v2_5_b.order_price_long = {}

-- Size: Order Price Long
miax_miaxoptions_orderfeed_mach_v2_5_b.order_price_long.size = 8

-- Display: Order Price Long
miax_miaxoptions_orderfeed_mach_v2_5_b.order_price_long.display = function(value)
  return "Order Price Long: "..value
end

-- Translate: Order Price Long
miax_miaxoptions_orderfeed_mach_v2_5_b.order_price_long.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Order Price Long
miax_miaxoptions_orderfeed_mach_v2_5_b.order_price_long.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.order_price_long.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_miaxoptions_orderfeed_mach_v2_5_b.order_price_long.translate(raw)
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.order_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.order_price_long, range, value, display)

  return offset + length, value
end

-- Order Price Short
miax_miaxoptions_orderfeed_mach_v2_5_b.order_price_short = {}

-- Size: Order Price Short
miax_miaxoptions_orderfeed_mach_v2_5_b.order_price_short.size = 4

-- Display: Order Price Short
miax_miaxoptions_orderfeed_mach_v2_5_b.order_price_short.display = function(value)
  return "Order Price Short: "..value
end

-- Translate: Order Price Short
miax_miaxoptions_orderfeed_mach_v2_5_b.order_price_short.translate = function(raw)
  return raw/10000
end

-- Dissect: Order Price Short
miax_miaxoptions_orderfeed_mach_v2_5_b.order_price_short.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.order_price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_miaxoptions_orderfeed_mach_v2_5_b.order_price_short.translate(raw)
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.order_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.order_price_short, range, value, display)

  return offset + length, value
end

-- Order Side
miax_miaxoptions_orderfeed_mach_v2_5_b.order_side = {}

-- Size: Order Side
miax_miaxoptions_orderfeed_mach_v2_5_b.order_side.size = 1

-- Display: Order Side
miax_miaxoptions_orderfeed_mach_v2_5_b.order_side.labels = {
  ["B"] = "Order Side: Buy (B)",
  ["S"] = "Order Side: Sell (S)",
}

miax_miaxoptions_orderfeed_mach_v2_5_b.order_side.display = function(value)
  return miax_miaxoptions_orderfeed_mach_v2_5_b.order_side.labels[value] or "Order Side: Unknown("..value..")"
end

-- Dissect: Order Side
miax_miaxoptions_orderfeed_mach_v2_5_b.order_side.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.order_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.order_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.order_side, range, value, display)

  return offset + length, value
end

-- Order Type
miax_miaxoptions_orderfeed_mach_v2_5_b.order_type = {}

-- Size: Order Type
miax_miaxoptions_orderfeed_mach_v2_5_b.order_type.size = 1

-- Display: Order Type
miax_miaxoptions_orderfeed_mach_v2_5_b.order_type.labels = {
  ["M"] = "Order Type: Market (M)",
  ["L"] = "Order Type: Limit (L)",
}

miax_miaxoptions_orderfeed_mach_v2_5_b.order_type.display = function(value)
  return miax_miaxoptions_orderfeed_mach_v2_5_b.order_type.labels[value] or "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
miax_miaxoptions_orderfeed_mach_v2_5_b.order_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.order_type, range, value, display)

  return offset + length, value
end

-- Origin
miax_miaxoptions_orderfeed_mach_v2_5_b.origin = {}

-- Size: Origin
miax_miaxoptions_orderfeed_mach_v2_5_b.origin.size = 1

-- Display: Origin
miax_miaxoptions_orderfeed_mach_v2_5_b.origin.display = function(value)
  if value == "0" then
    return "Origin: Priority Customer (0)"
  end
  if value == "1" then
    return "Origin: Firm (1)"
  end
  if value == "2" then
    return "Origin: Broker Dealer (2)"
  end
  if value == "4" then
    return "Origin: Market Maker (4)"
  end
  if value == "5" then
    return "Origin: Non Member Market Maker (5)"
  end
  if value == "8" then
    return "Origin: Non Priority Customer (8)"
  end
  if value == " " then
    return "Origin: Not Applicable (<whitespace>)"
  end

  return "Origin: Unknown("..value..")"
end

-- Dissect: Origin
miax_miaxoptions_orderfeed_mach_v2_5_b.origin.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.origin.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.origin.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.origin, range, value, display)

  return offset + length, value
end

-- Packet Length
miax_miaxoptions_orderfeed_mach_v2_5_b.packet_length = {}

-- Size: Packet Length
miax_miaxoptions_orderfeed_mach_v2_5_b.packet_length.size = 2

-- Display: Packet Length
miax_miaxoptions_orderfeed_mach_v2_5_b.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
miax_miaxoptions_orderfeed_mach_v2_5_b.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Type
miax_miaxoptions_orderfeed_mach_v2_5_b.packet_type = {}

-- Size: Packet Type
miax_miaxoptions_orderfeed_mach_v2_5_b.packet_type.size = 1

-- Display: Packet Type
miax_miaxoptions_orderfeed_mach_v2_5_b.packet_type.labels = {
  [0] = "Packet Type: Heartbeat (0)",
  [1] = "Packet Type: Start Of Session (1)",
  [2] = "Packet Type: End Of Session (2)",
  [3] = "Packet Type: Application Message (3)",
}

miax_miaxoptions_orderfeed_mach_v2_5_b.packet_type.display = function(value)
  return miax_miaxoptions_orderfeed_mach_v2_5_b.packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
miax_miaxoptions_orderfeed_mach_v2_5_b.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.packet_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Priority Customer Volume
miax_miaxoptions_orderfeed_mach_v2_5_b.priority_customer_volume = {}

-- Size: Priority Customer Volume
miax_miaxoptions_orderfeed_mach_v2_5_b.priority_customer_volume.size = 4

-- Display: Priority Customer Volume
miax_miaxoptions_orderfeed_mach_v2_5_b.priority_customer_volume.display = function(value)
  return "Priority Customer Volume: "..value
end

-- Dissect: Priority Customer Volume
miax_miaxoptions_orderfeed_mach_v2_5_b.priority_customer_volume.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.priority_customer_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.priority_customer_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.priority_customer_volume, range, value, display)

  return offset + length, value
end

-- Priority Quote Width
miax_miaxoptions_orderfeed_mach_v2_5_b.priority_quote_width = {}

-- Size: Priority Quote Width
miax_miaxoptions_orderfeed_mach_v2_5_b.priority_quote_width.size = 4

-- Display: Priority Quote Width
miax_miaxoptions_orderfeed_mach_v2_5_b.priority_quote_width.display = function(value)
  return "Priority Quote Width: "..value
end

-- Translate: Priority Quote Width
miax_miaxoptions_orderfeed_mach_v2_5_b.priority_quote_width.translate = function(raw)
  return raw/10000
end

-- Dissect: Priority Quote Width
miax_miaxoptions_orderfeed_mach_v2_5_b.priority_quote_width.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.priority_quote_width.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_miaxoptions_orderfeed_mach_v2_5_b.priority_quote_width.translate(raw)
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.priority_quote_width.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.priority_quote_width, range, value, display)

  return offset + length, value
end

-- Product Id
miax_miaxoptions_orderfeed_mach_v2_5_b.product_id = {}

-- Size: Product Id
miax_miaxoptions_orderfeed_mach_v2_5_b.product_id.size = 4

-- Display: Product Id
miax_miaxoptions_orderfeed_mach_v2_5_b.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
miax_miaxoptions_orderfeed_mach_v2_5_b.product_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.product_id, range, value, display)

  return offset + length, value
end

-- Refresh Message Type
miax_miaxoptions_orderfeed_mach_v2_5_b.refresh_message_type = {}

-- Size: Refresh Message Type
miax_miaxoptions_orderfeed_mach_v2_5_b.refresh_message_type.size = 1

-- Display: Refresh Message Type
miax_miaxoptions_orderfeed_mach_v2_5_b.refresh_message_type.labels = {
  ["P"] = "Refresh Message Type: Series Update Refresh (P)",
  ["U"] = "Refresh Message Type: Underlying Trading Status Refresh (U)",
  ["S"] = "Refresh Message Type: System State Refresh (S)",
  ["C"] = "Refresh Message Type: Complex Strategy Definition Refresh (C)",
}

miax_miaxoptions_orderfeed_mach_v2_5_b.refresh_message_type.display = function(value)
  return miax_miaxoptions_orderfeed_mach_v2_5_b.refresh_message_type.labels[value] or "Refresh Message Type: Unknown("..value..")"
end

-- Dissect: Refresh Message Type
miax_miaxoptions_orderfeed_mach_v2_5_b.refresh_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.refresh_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.refresh_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.refresh_message_type, range, value, display)

  return offset + length, value
end

-- Remaining Volume Open
miax_miaxoptions_orderfeed_mach_v2_5_b.remaining_volume_open = {}

-- Size: Remaining Volume Open
miax_miaxoptions_orderfeed_mach_v2_5_b.remaining_volume_open.size = 4

-- Display: Remaining Volume Open
miax_miaxoptions_orderfeed_mach_v2_5_b.remaining_volume_open.display = function(value)
  return "Remaining Volume Open: "..value
end

-- Dissect: Remaining Volume Open
miax_miaxoptions_orderfeed_mach_v2_5_b.remaining_volume_open.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.remaining_volume_open.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.remaining_volume_open.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.remaining_volume_open, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
miax_miaxoptions_orderfeed_mach_v2_5_b.requested_sequence_number = {}

-- Size: Requested Sequence Number
miax_miaxoptions_orderfeed_mach_v2_5_b.requested_sequence_number.size = 8

-- Display: Requested Sequence Number
miax_miaxoptions_orderfeed_mach_v2_5_b.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
miax_miaxoptions_orderfeed_mach_v2_5_b.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Trading Session Id
miax_miaxoptions_orderfeed_mach_v2_5_b.requested_trading_session_id = {}

-- Size: Requested Trading Session Id
miax_miaxoptions_orderfeed_mach_v2_5_b.requested_trading_session_id.size = 1

-- Display: Requested Trading Session Id
miax_miaxoptions_orderfeed_mach_v2_5_b.requested_trading_session_id.display = function(value)
  return "Requested Trading Session Id: "..value
end

-- Dissect: Requested Trading Session Id
miax_miaxoptions_orderfeed_mach_v2_5_b.requested_trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.requested_trading_session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.requested_trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.requested_trading_session_id, range, value, display)

  return offset + length, value
end

-- Reserved 1
miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_1 = {}

-- Size: Reserved 1
miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_1.size = 1

-- Display: Reserved 1
miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 10
miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_10 = {}

-- Size: Reserved 10
miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_10.size = 10

-- Display: Reserved 10
miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_10.display = function(value)
  return "Reserved 10: "..value
end

-- Dissect: Reserved 10
miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_10.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_10.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.reserved_10, range, value, display)

  return offset + length, value
end

-- Reserved 28
miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_28 = {}

-- Size: Reserved 28
miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_28.size = 28

-- Display: Reserved 28
miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_28.display = function(value)
  return "Reserved 28: "..value
end

-- Dissect: Reserved 28
miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_28.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_28.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_28.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.reserved_28, range, value, display)

  return offset + length, value
end

-- Reserved 8
miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_8 = {}

-- Size: Reserved 8
miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_8.size = 8

-- Display: Reserved 8
miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Restricted Option
miax_miaxoptions_orderfeed_mach_v2_5_b.restricted_option = {}

-- Size: Restricted Option
miax_miaxoptions_orderfeed_mach_v2_5_b.restricted_option.size = 1

-- Display: Restricted Option
miax_miaxoptions_orderfeed_mach_v2_5_b.restricted_option.labels = {
  ["Y"] = "Restricted Option: Yes (Y)",
  ["N"] = "Restricted Option: No (N)",
}

miax_miaxoptions_orderfeed_mach_v2_5_b.restricted_option.display = function(value)
  return miax_miaxoptions_orderfeed_mach_v2_5_b.restricted_option.labels[value] or "Restricted Option: Unknown("..value..")"
end

-- Dissect: Restricted Option
miax_miaxoptions_orderfeed_mach_v2_5_b.restricted_option.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.restricted_option.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.restricted_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.restricted_option, range, value, display)

  return offset + length, value
end

-- Route Instruction
miax_miaxoptions_orderfeed_mach_v2_5_b.route_instruction = {}

-- Size: Route Instruction
miax_miaxoptions_orderfeed_mach_v2_5_b.route_instruction.size = 1

-- Display: Route Instruction
miax_miaxoptions_orderfeed_mach_v2_5_b.route_instruction.labels = {
  ["R"] = "Route Instruction: Routable (R)",
  ["D"] = "Route Instruction: Do Not Route (D)",
}

miax_miaxoptions_orderfeed_mach_v2_5_b.route_instruction.display = function(value)
  return miax_miaxoptions_orderfeed_mach_v2_5_b.route_instruction.labels[value] or "Route Instruction: Unknown("..value..")"
end

-- Dissect: Route Instruction
miax_miaxoptions_orderfeed_mach_v2_5_b.route_instruction.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.route_instruction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.route_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.route_instruction, range, value, display)

  return offset + length, value
end

-- Seconds
miax_miaxoptions_orderfeed_mach_v2_5_b.seconds = {}

-- Size: Seconds
miax_miaxoptions_orderfeed_mach_v2_5_b.seconds.size = 4

-- Store: Seconds
miax_miaxoptions_orderfeed_mach_v2_5_b.seconds.current = nil

-- Generated: Seconds
miax_miaxoptions_orderfeed_mach_v2_5_b.seconds.generated = function(value, range, packet, parent)
  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.seconds
  if miax_miaxoptions_orderfeed_mach_v2_5_b.absolute_time_base == 1 then field = omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.seconds_utc end
  local seconds = parent:add(field, range, NSTime.new(value, 0))
  seconds:set_generated()
end

-- Dissect: Seconds
miax_miaxoptions_orderfeed_mach_v2_5_b.seconds.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.seconds
  if miax_miaxoptions_orderfeed_mach_v2_5_b.absolute_time_base == 1 then field = omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.seconds_utc end

  local seconds = value
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Security Symbol
miax_miaxoptions_orderfeed_mach_v2_5_b.security_symbol = {}

-- Size: Security Symbol
miax_miaxoptions_orderfeed_mach_v2_5_b.security_symbol.size = 6

-- Display: Security Symbol
miax_miaxoptions_orderfeed_mach_v2_5_b.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
miax_miaxoptions_orderfeed_mach_v2_5_b.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sequence Number
miax_miaxoptions_orderfeed_mach_v2_5_b.sequence_number = {}

-- Size: Sequence Number
miax_miaxoptions_orderfeed_mach_v2_5_b.sequence_number.size = 8

-- Display: Sequence Number
miax_miaxoptions_orderfeed_mach_v2_5_b.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_miaxoptions_orderfeed_mach_v2_5_b.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
miax_miaxoptions_orderfeed_mach_v2_5_b.sequenced_message_type = {}

-- Size: Sequenced Message Type
miax_miaxoptions_orderfeed_mach_v2_5_b.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
miax_miaxoptions_orderfeed_mach_v2_5_b.sequenced_message_type.display = function(value)
  return "Sequenced Message Type: "..value
end

-- Dissect: Sequenced Message Type
miax_miaxoptions_orderfeed_mach_v2_5_b.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Sesm Packet Length
miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_packet_length = {}

-- Size: Sesm Packet Length
miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_packet_length.size = 2

-- Display: Sesm Packet Length
miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_packet_length.display = function(value)
  return "Sesm Packet Length: "..value
end

-- Dissect: Sesm Packet Length
miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.sesm_packet_length, range, value, display)

  return offset + length, value
end

-- Sesm Packet Type
miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_packet_type = {}

-- Size: Sesm Packet Type
miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_packet_type.size = 1

-- Display: Sesm Packet Type
miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_packet_type.labels = {
  ["s"] = "Sesm Packet Type: Sequenced Data Packet (s)",
  ["U"] = "Sesm Packet Type: Unsequenced Data Packet (U)",
  ["l"] = "Sesm Packet Type: Login Request (l)",
  ["r"] = "Sesm Packet Type: Login Response (r)",
  ["c"] = "Sesm Packet Type: Synchronization Complete (c)",
  ["a"] = "Sesm Packet Type: Retransmission Request (a)",
  ["X"] = "Sesm Packet Type: Logout Request (X)",
  ["G"] = "Sesm Packet Type: Goodbye Packet (G)",
  ["u"] = "Sesm Packet Type: Trading Session Update (u)",
  ["0"] = "Sesm Packet Type: Server Heartbeat (0)",
  ["1"] = "Sesm Packet Type: Client Heartbeat (1)",
  ["T"] = "Sesm Packet Type: Test Packet (T)",
}

miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_packet_type.display = function(value)
  return miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_packet_type.labels[value] or "Sesm Packet Type: Unknown("..value..")"
end

-- Dissect: Sesm Packet Type
miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.sesm_packet_type, range, value, display)

  return offset + length, value
end

-- Sesm Version
miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_version = {}

-- Size: Sesm Version
miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_version.size = 5

-- Display: Sesm Version
miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_version.display = function(value)
  return "Sesm Version: "..value
end

-- Dissect: Sesm Version
miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.sesm_version, range, value, display)

  return offset + length, value
end

-- Session Id
miax_miaxoptions_orderfeed_mach_v2_5_b.session_id = {}

-- Size: Session Id
miax_miaxoptions_orderfeed_mach_v2_5_b.session_id.size = 4

-- Display: Session Id
miax_miaxoptions_orderfeed_mach_v2_5_b.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_miaxoptions_orderfeed_mach_v2_5_b.session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.session_id, range, value, display)

  return offset + length, value
end

-- Session Number
miax_miaxoptions_orderfeed_mach_v2_5_b.session_number = {}

-- Size: Session Number
miax_miaxoptions_orderfeed_mach_v2_5_b.session_number.size = 1

-- Display: Session Number
miax_miaxoptions_orderfeed_mach_v2_5_b.session_number.display = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
miax_miaxoptions_orderfeed_mach_v2_5_b.session_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.session_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.session_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.session_number, range, value, display)

  return offset + length, value
end

-- Simple Or Complex Order
miax_miaxoptions_orderfeed_mach_v2_5_b.simple_or_complex_order = {}

-- Size: Simple Or Complex Order
miax_miaxoptions_orderfeed_mach_v2_5_b.simple_or_complex_order.size = 1

-- Display: Simple Or Complex Order
miax_miaxoptions_orderfeed_mach_v2_5_b.simple_or_complex_order.labels = {
  ["F"] = "Simple Or Complex Order: Simple Order (F)",
  ["R"] = "Simple Or Complex Order: Complex Order (R)",
}

miax_miaxoptions_orderfeed_mach_v2_5_b.simple_or_complex_order.display = function(value)
  return miax_miaxoptions_orderfeed_mach_v2_5_b.simple_or_complex_order.labels[value] or "Simple Or Complex Order: Unknown("..value..")"
end

-- Dissect: Simple Or Complex Order
miax_miaxoptions_orderfeed_mach_v2_5_b.simple_or_complex_order.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.simple_or_complex_order.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.simple_or_complex_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.simple_or_complex_order, range, value, display)

  return offset + length, value
end

-- Start Sequence Number
miax_miaxoptions_orderfeed_mach_v2_5_b.start_sequence_number = {}

-- Size: Start Sequence Number
miax_miaxoptions_orderfeed_mach_v2_5_b.start_sequence_number.size = 8

-- Display: Start Sequence Number
miax_miaxoptions_orderfeed_mach_v2_5_b.start_sequence_number.display = function(value)
  return "Start Sequence Number: "..value
end

-- Dissect: Start Sequence Number
miax_miaxoptions_orderfeed_mach_v2_5_b.start_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.start_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.start_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.start_sequence_number, range, value, display)

  return offset + length, value
end

-- Strategy Id
miax_miaxoptions_orderfeed_mach_v2_5_b.strategy_id = {}

-- Size: Strategy Id
miax_miaxoptions_orderfeed_mach_v2_5_b.strategy_id.size = 4

-- Display: Strategy Id
miax_miaxoptions_orderfeed_mach_v2_5_b.strategy_id.display = function(value)
  return "Strategy Id: "..value
end

-- Dissect: Strategy Id
miax_miaxoptions_orderfeed_mach_v2_5_b.strategy_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.strategy_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.strategy_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.strategy_id, range, value, display)

  return offset + length, value
end

-- Strike Price
miax_miaxoptions_orderfeed_mach_v2_5_b.strike_price = {}

-- Size: Strike Price
miax_miaxoptions_orderfeed_mach_v2_5_b.strike_price.size = 4

-- Display: Strike Price
miax_miaxoptions_orderfeed_mach_v2_5_b.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
miax_miaxoptions_orderfeed_mach_v2_5_b.strike_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Strike Price
miax_miaxoptions_orderfeed_mach_v2_5_b.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_miaxoptions_orderfeed_mach_v2_5_b.strike_price.translate(raw)
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.strike_price, range, value, display)

  return offset + length, value
end

-- System Status
miax_miaxoptions_orderfeed_mach_v2_5_b.system_status = {}

-- Size: System Status
miax_miaxoptions_orderfeed_mach_v2_5_b.system_status.size = 1

-- Display: System Status
miax_miaxoptions_orderfeed_mach_v2_5_b.system_status.labels = {
  ["S"] = "System Status: Start Of System Hours (S)",
  ["C"] = "System Status: End Of System Hours (C)",
  ["1"] = "System Status: Start Of Test Session (1)",
  ["2"] = "System Status: End Of Test Session (2)",
}

miax_miaxoptions_orderfeed_mach_v2_5_b.system_status.display = function(value)
  return miax_miaxoptions_orderfeed_mach_v2_5_b.system_status.labels[value] or "System Status: Unknown("..value..")"
end

-- Dissect: System Status
miax_miaxoptions_orderfeed_mach_v2_5_b.system_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.system_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.system_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.system_status, range, value, display)

  return offset + length, value
end

-- Test Text
miax_miaxoptions_orderfeed_mach_v2_5_b.test_text = {}

-- Display: Test Text
miax_miaxoptions_orderfeed_mach_v2_5_b.test_text.display = function(value)
  return "Test Text: "..value
end

-- Dissect runtime sized field: Test Text
miax_miaxoptions_orderfeed_mach_v2_5_b.test_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.test_text.display(value, packet, parent, size)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.test_text, range, value, display)

  return offset + size, value
end

-- Time In Force Tif
miax_miaxoptions_orderfeed_mach_v2_5_b.time_in_force_tif = {}

-- Size: Time In Force Tif
miax_miaxoptions_orderfeed_mach_v2_5_b.time_in_force_tif.size = 1

-- Display: Time In Force Tif
miax_miaxoptions_orderfeed_mach_v2_5_b.time_in_force_tif.labels = {
  ["A"] = "Time In Force Tif: Aoc (A)",
  ["G"] = "Time In Force Tif: Gtc (G)",
  ["O"] = "Time In Force Tif: Opg (O)",
  ["D"] = "Time In Force Tif: Day (D)",
  ["S"] = "Time In Force Tif: Sao (S)",
}

miax_miaxoptions_orderfeed_mach_v2_5_b.time_in_force_tif.display = function(value)
  return miax_miaxoptions_orderfeed_mach_v2_5_b.time_in_force_tif.labels[value] or "Time In Force Tif: Unknown("..value..")"
end

-- Dissect: Time In Force Tif
miax_miaxoptions_orderfeed_mach_v2_5_b.time_in_force_tif.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.time_in_force_tif.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.time_in_force_tif.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.time_in_force_tif, range, value, display)

  return offset + length, value
end

-- Trading Session Id
miax_miaxoptions_orderfeed_mach_v2_5_b.trading_session_id = {}

-- Size: Trading Session Id
miax_miaxoptions_orderfeed_mach_v2_5_b.trading_session_id.size = 1

-- Display: Trading Session Id
miax_miaxoptions_orderfeed_mach_v2_5_b.trading_session_id.display = function(value)
  return "Trading Session Id: "..value
end

-- Dissect: Trading Session Id
miax_miaxoptions_orderfeed_mach_v2_5_b.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.trading_session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Trading Status
miax_miaxoptions_orderfeed_mach_v2_5_b.trading_status = {}

-- Size: Trading Status
miax_miaxoptions_orderfeed_mach_v2_5_b.trading_status.size = 1

-- Display: Trading Status
miax_miaxoptions_orderfeed_mach_v2_5_b.trading_status.labels = {
  ["H"] = "Trading Status: Halted (H)",
  ["R"] = "Trading Status: Resumed (R)",
  ["O"] = "Trading Status: Opened (O)",
}

miax_miaxoptions_orderfeed_mach_v2_5_b.trading_status.display = function(value)
  return miax_miaxoptions_orderfeed_mach_v2_5_b.trading_status.labels[value] or "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
miax_miaxoptions_orderfeed_mach_v2_5_b.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
miax_miaxoptions_orderfeed_mach_v2_5_b.underlying_symbol = {}

-- Size: Underlying Symbol
miax_miaxoptions_orderfeed_mach_v2_5_b.underlying_symbol.size = 11

-- Display: Underlying Symbol
miax_miaxoptions_orderfeed_mach_v2_5_b.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
miax_miaxoptions_orderfeed_mach_v2_5_b.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
miax_miaxoptions_orderfeed_mach_v2_5_b.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
miax_miaxoptions_orderfeed_mach_v2_5_b.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
miax_miaxoptions_orderfeed_mach_v2_5_b.unsequenced_message_type.labels = {
  ["R"] = "Unsequenced Message Type: Refresh Request Message (R)",
  ["r"] = "Unsequenced Message Type: Refresh Response Message (r)",
  ["E"] = "Unsequenced Message Type: End Of Refresh Notification Message (E)",
}

miax_miaxoptions_orderfeed_mach_v2_5_b.unsequenced_message_type.display = function(value)
  return miax_miaxoptions_orderfeed_mach_v2_5_b.unsequenced_message_type.labels[value] or "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
miax_miaxoptions_orderfeed_mach_v2_5_b.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Update Reason
miax_miaxoptions_orderfeed_mach_v2_5_b.update_reason = {}

-- Size: Update Reason
miax_miaxoptions_orderfeed_mach_v2_5_b.update_reason.size = 1

-- Display: Update Reason
miax_miaxoptions_orderfeed_mach_v2_5_b.update_reason.labels = {
  ["N"] = "Update Reason: New Strategy Created (N)",
  ["U"] = "Update Reason: Updated (U)",
}

miax_miaxoptions_orderfeed_mach_v2_5_b.update_reason.display = function(value)
  return miax_miaxoptions_orderfeed_mach_v2_5_b.update_reason.labels[value] or "Update Reason: Unknown("..value..")"
end

-- Dissect: Update Reason
miax_miaxoptions_orderfeed_mach_v2_5_b.update_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.update_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.update_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.update_reason, range, value, display)

  return offset + length, value
end

-- Username
miax_miaxoptions_orderfeed_mach_v2_5_b.username = {}

-- Size: Username
miax_miaxoptions_orderfeed_mach_v2_5_b.username.size = 5

-- Display: Username
miax_miaxoptions_orderfeed_mach_v2_5_b.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
miax_miaxoptions_orderfeed_mach_v2_5_b.username.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.username, range, value, display)

  return offset + length, value
end

-- Timestamp
miax_miaxoptions_orderfeed_mach_v2_5_b.timestamp = {}

-- Translate: Timestamp
miax_miaxoptions_orderfeed_mach_v2_5_b.timestamp.translate = function(nanoseconds, stored_seconds)
  return UInt64.new(stored_seconds * 1000000000 + nanoseconds)
end

-- Display: Timestamp
miax_miaxoptions_orderfeed_mach_v2_5_b.timestamp.display = function(nanoseconds, stored_seconds)
  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", stored_seconds)..string.format("%09d", nanoseconds)
end

-- Composite: Timestamp
miax_miaxoptions_orderfeed_mach_v2_5_b.timestamp.composite = function(buffer, offset, stored_seconds, packet, parent)
  local length = miax_miaxoptions_orderfeed_mach_v2_5_b.nanoseconds.size
  local range = buffer(offset, length)
  local nanoseconds = range:le_uint()
  local value = miax_miaxoptions_orderfeed_mach_v2_5_b.timestamp.translate(nanoseconds, stored_seconds)
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.timestamp.display(nanoseconds, stored_seconds, packet)
  parent = parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.timestamp, range, value, display)

  miax_miaxoptions_orderfeed_mach_v2_5_b.seconds.generated(stored_seconds, range, packet, parent)

  display = miax_miaxoptions_orderfeed_mach_v2_5_b.nanoseconds.display(nanoseconds)
  parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.nanoseconds, range, nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
miax_miaxoptions_orderfeed_mach_v2_5_b.timestamp.dissect = function(buffer, offset, packet, parent)
  if miax_miaxoptions_orderfeed_mach_v2_5_b.format_timestamp then
    local stored_seconds = miax_miaxoptions_orderfeed_mach_v2_5_b.seconds.current

    if stored_seconds ~= nil then
      return miax_miaxoptions_orderfeed_mach_v2_5_b.timestamp.composite(buffer, offset, stored_seconds, packet, parent)
    end
  end

  return miax_miaxoptions_orderfeed_mach_v2_5_b.nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Miax MiaxOptions OrderFeed Mach 2.5.b
-----------------------------------------------------------------------

-- Test Packet
miax_miaxoptions_orderfeed_mach_v2_5_b.test_packet = {}

-- Calculate size of: Test Packet
miax_miaxoptions_orderfeed_mach_v2_5_b.test_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Test Text
  index = index + buffer(offset + index - 3, 2):le_uint()

  return index
end

-- Display: Test Packet
miax_miaxoptions_orderfeed_mach_v2_5_b.test_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Test Packet
miax_miaxoptions_orderfeed_mach_v2_5_b.test_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Test Text
  local size_of_test_text = sesm_packet_length - 1

  -- Test Text: 0 Byte Ascii String
  index, test_text = miax_miaxoptions_orderfeed_mach_v2_5_b.test_text.dissect(buffer, index, packet, parent, size_of_test_text)

  return index
end

-- Dissect: Test Packet
miax_miaxoptions_orderfeed_mach_v2_5_b.test_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.test_packet, buffer(offset, 0))
    local index = miax_miaxoptions_orderfeed_mach_v2_5_b.test_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_orderfeed_mach_v2_5_b.test_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_orderfeed_mach_v2_5_b.test_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Heartbeat
miax_miaxoptions_orderfeed_mach_v2_5_b.client_heartbeat = {}

-- Display: Client Heartbeat
miax_miaxoptions_orderfeed_mach_v2_5_b.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
miax_miaxoptions_orderfeed_mach_v2_5_b.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
miax_miaxoptions_orderfeed_mach_v2_5_b.server_heartbeat = {}

-- Display: Server Heartbeat
miax_miaxoptions_orderfeed_mach_v2_5_b.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
miax_miaxoptions_orderfeed_mach_v2_5_b.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Trading Session Update
miax_miaxoptions_orderfeed_mach_v2_5_b.trading_session_update = {}

-- Display: Trading Session Update
miax_miaxoptions_orderfeed_mach_v2_5_b.trading_session_update.display = function(packet, parent, length)
  return "Trading Session Update"
end


-- Dissect: Trading Session Update
miax_miaxoptions_orderfeed_mach_v2_5_b.trading_session_update.dissect = function(buffer, offset, packet, parent)
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.trading_session_update.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Goodbye Packet
miax_miaxoptions_orderfeed_mach_v2_5_b.goodbye_packet = {}

-- Calculate size of: Goodbye Packet
miax_miaxoptions_orderfeed_mach_v2_5_b.goodbye_packet.size = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_orderfeed_mach_v2_5_b.logout_reason.size

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Goodbye Packet
miax_miaxoptions_orderfeed_mach_v2_5_b.goodbye_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Goodbye Packet
miax_miaxoptions_orderfeed_mach_v2_5_b.goodbye_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_miaxoptions_orderfeed_mach_v2_5_b.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = sesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_miaxoptions_orderfeed_mach_v2_5_b.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Goodbye Packet
miax_miaxoptions_orderfeed_mach_v2_5_b.goodbye_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.goodbye_packet, buffer(offset, 0))
    local index = miax_miaxoptions_orderfeed_mach_v2_5_b.goodbye_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_orderfeed_mach_v2_5_b.goodbye_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_orderfeed_mach_v2_5_b.goodbye_packet.fields(buffer, offset, packet, parent)
  end
end

-- Logout Request
miax_miaxoptions_orderfeed_mach_v2_5_b.logout_request = {}

-- Calculate size of: Logout Request
miax_miaxoptions_orderfeed_mach_v2_5_b.logout_request.size = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_orderfeed_mach_v2_5_b.logout_reason.size

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Logout Request
miax_miaxoptions_orderfeed_mach_v2_5_b.logout_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Request
miax_miaxoptions_orderfeed_mach_v2_5_b.logout_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_miaxoptions_orderfeed_mach_v2_5_b.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = sesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_miaxoptions_orderfeed_mach_v2_5_b.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Logout Request
miax_miaxoptions_orderfeed_mach_v2_5_b.logout_request.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.logout_request, buffer(offset, 0))
    local index = miax_miaxoptions_orderfeed_mach_v2_5_b.logout_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_orderfeed_mach_v2_5_b.logout_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_orderfeed_mach_v2_5_b.logout_request.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request
miax_miaxoptions_orderfeed_mach_v2_5_b.retransmission_request = {}

-- Size: Retransmission Request
miax_miaxoptions_orderfeed_mach_v2_5_b.retransmission_request.size =
  miax_miaxoptions_orderfeed_mach_v2_5_b.start_sequence_number.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.end_sequence_number.size

-- Display: Retransmission Request
miax_miaxoptions_orderfeed_mach_v2_5_b.retransmission_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request
miax_miaxoptions_orderfeed_mach_v2_5_b.retransmission_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, start_sequence_number = miax_miaxoptions_orderfeed_mach_v2_5_b.start_sequence_number.dissect(buffer, index, packet, parent)

  -- End Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, end_sequence_number = miax_miaxoptions_orderfeed_mach_v2_5_b.end_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request
miax_miaxoptions_orderfeed_mach_v2_5_b.retransmission_request.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.retransmission_request, buffer(offset, 0))
    local index = miax_miaxoptions_orderfeed_mach_v2_5_b.retransmission_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_orderfeed_mach_v2_5_b.retransmission_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_orderfeed_mach_v2_5_b.retransmission_request.fields(buffer, offset, packet, parent)
  end
end

-- Synchronization Complete
miax_miaxoptions_orderfeed_mach_v2_5_b.synchronization_complete = {}

-- Size: Synchronization Complete
miax_miaxoptions_orderfeed_mach_v2_5_b.synchronization_complete.size =
  miax_miaxoptions_orderfeed_mach_v2_5_b.number_of_matching_engines.size

-- Display: Synchronization Complete
miax_miaxoptions_orderfeed_mach_v2_5_b.synchronization_complete.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Synchronization Complete
miax_miaxoptions_orderfeed_mach_v2_5_b.synchronization_complete.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Matching Engines: 1 Byte Unsigned Fixed Width Integer
  index, number_of_matching_engines = miax_miaxoptions_orderfeed_mach_v2_5_b.number_of_matching_engines.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Synchronization Complete
miax_miaxoptions_orderfeed_mach_v2_5_b.synchronization_complete.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.synchronization_complete, buffer(offset, 0))
    local index = miax_miaxoptions_orderfeed_mach_v2_5_b.synchronization_complete.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_orderfeed_mach_v2_5_b.synchronization_complete.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_orderfeed_mach_v2_5_b.synchronization_complete.fields(buffer, offset, packet, parent)
  end
end

-- Login Response
miax_miaxoptions_orderfeed_mach_v2_5_b.login_response = {}

-- Size: Login Response
miax_miaxoptions_orderfeed_mach_v2_5_b.login_response.size =
  miax_miaxoptions_orderfeed_mach_v2_5_b.number_of_matching_engines.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.login_status.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.trading_session_id.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.highest_sequence_number.size

-- Display: Login Response
miax_miaxoptions_orderfeed_mach_v2_5_b.login_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response
miax_miaxoptions_orderfeed_mach_v2_5_b.login_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Matching Engines: 1 Byte Unsigned Fixed Width Integer
  index, number_of_matching_engines = miax_miaxoptions_orderfeed_mach_v2_5_b.number_of_matching_engines.dissect(buffer, index, packet, parent)

  -- Login Status: 1 Byte Ascii String Enum with 8 values
  index, login_status = miax_miaxoptions_orderfeed_mach_v2_5_b.login_status.dissect(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer
  index, trading_session_id = miax_miaxoptions_orderfeed_mach_v2_5_b.trading_session_id.dissect(buffer, index, packet, parent)

  -- Highest Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, highest_sequence_number = miax_miaxoptions_orderfeed_mach_v2_5_b.highest_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
miax_miaxoptions_orderfeed_mach_v2_5_b.login_response.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.login_response, buffer(offset, 0))
    local index = miax_miaxoptions_orderfeed_mach_v2_5_b.login_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_orderfeed_mach_v2_5_b.login_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_orderfeed_mach_v2_5_b.login_response.fields(buffer, offset, packet, parent)
  end
end

-- Login Request
miax_miaxoptions_orderfeed_mach_v2_5_b.login_request = {}

-- Size: Login Request
miax_miaxoptions_orderfeed_mach_v2_5_b.login_request.size =
  miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_version.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.username.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.computer_id.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.application_protocol.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.requested_trading_session_id.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.requested_sequence_number.size

-- Display: Login Request
miax_miaxoptions_orderfeed_mach_v2_5_b.login_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request
miax_miaxoptions_orderfeed_mach_v2_5_b.login_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sesm Version: 5 Byte Ascii String
  index, sesm_version = miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_version.dissect(buffer, index, packet, parent)

  -- Username: 5 Byte Ascii String
  index, username = miax_miaxoptions_orderfeed_mach_v2_5_b.username.dissect(buffer, index, packet, parent)

  -- Computer Id: 8 Byte Ascii String
  index, computer_id = miax_miaxoptions_orderfeed_mach_v2_5_b.computer_id.dissect(buffer, index, packet, parent)

  -- Application Protocol: 8 Byte Ascii String
  index, application_protocol = miax_miaxoptions_orderfeed_mach_v2_5_b.application_protocol.dissect(buffer, index, packet, parent)

  -- Requested Trading Session Id: 1 Byte Unsigned Fixed Width Integer
  index, requested_trading_session_id = miax_miaxoptions_orderfeed_mach_v2_5_b.requested_trading_session_id.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, requested_sequence_number = miax_miaxoptions_orderfeed_mach_v2_5_b.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request
miax_miaxoptions_orderfeed_mach_v2_5_b.login_request.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.login_request, buffer(offset, 0))
    local index = miax_miaxoptions_orderfeed_mach_v2_5_b.login_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_orderfeed_mach_v2_5_b.login_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_orderfeed_mach_v2_5_b.login_request.fields(buffer, offset, packet, parent)
  end
end

-- End Of Refresh Notification Message
miax_miaxoptions_orderfeed_mach_v2_5_b.end_of_refresh_notification_message = {}

-- Size: End Of Refresh Notification Message
miax_miaxoptions_orderfeed_mach_v2_5_b.end_of_refresh_notification_message.size =
  miax_miaxoptions_orderfeed_mach_v2_5_b.refresh_message_type.size

-- Display: End Of Refresh Notification Message
miax_miaxoptions_orderfeed_mach_v2_5_b.end_of_refresh_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Refresh Notification Message
miax_miaxoptions_orderfeed_mach_v2_5_b.end_of_refresh_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Refresh Message Type: Alphanumeric
  index, refresh_message_type = miax_miaxoptions_orderfeed_mach_v2_5_b.refresh_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Refresh Notification Message
miax_miaxoptions_orderfeed_mach_v2_5_b.end_of_refresh_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.end_of_refresh_notification_message, buffer(offset, 0))
    local index = miax_miaxoptions_orderfeed_mach_v2_5_b.end_of_refresh_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_orderfeed_mach_v2_5_b.end_of_refresh_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_orderfeed_mach_v2_5_b.end_of_refresh_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Close Message
miax_miaxoptions_orderfeed_mach_v2_5_b.order_close_message = {}

-- Size: Order Close Message
miax_miaxoptions_orderfeed_mach_v2_5_b.order_close_message.size =
  miax_miaxoptions_orderfeed_mach_v2_5_b.nanoseconds.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.simple_or_complex_order.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.order_id.size

-- Display: Order Close Message
miax_miaxoptions_orderfeed_mach_v2_5_b.order_close_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Close Message
miax_miaxoptions_orderfeed_mach_v2_5_b.order_close_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_miaxoptions_orderfeed_mach_v2_5_b.timestamp.dissect(buffer, index, packet, parent)

  -- Simple Or Complex Order: Alphanumeric
  index, simple_or_complex_order = miax_miaxoptions_orderfeed_mach_v2_5_b.simple_or_complex_order.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_miaxoptions_orderfeed_mach_v2_5_b.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Close Message
miax_miaxoptions_orderfeed_mach_v2_5_b.order_close_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.order_close_message, buffer(offset, 0))
    local index = miax_miaxoptions_orderfeed_mach_v2_5_b.order_close_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_orderfeed_mach_v2_5_b.order_close_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_orderfeed_mach_v2_5_b.order_close_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Order Message
miax_miaxoptions_orderfeed_mach_v2_5_b.complex_order_message = {}

-- Size: Complex Order Message
miax_miaxoptions_orderfeed_mach_v2_5_b.complex_order_message.size =
  miax_miaxoptions_orderfeed_mach_v2_5_b.nanoseconds.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.action.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.strategy_id.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.order_id.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.order_side.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.order_type.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.order_price_long.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.order_original_volume.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.remaining_volume_open.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.time_in_force_tif.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.origin.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.attributed_id.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_28.size

-- Display: Complex Order Message
miax_miaxoptions_orderfeed_mach_v2_5_b.complex_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Message
miax_miaxoptions_orderfeed_mach_v2_5_b.complex_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_miaxoptions_orderfeed_mach_v2_5_b.timestamp.dissect(buffer, index, packet, parent)

  -- Action: Alphanumeric
  index, action = miax_miaxoptions_orderfeed_mach_v2_5_b.action.dissect(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_miaxoptions_orderfeed_mach_v2_5_b.strategy_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_miaxoptions_orderfeed_mach_v2_5_b.order_id.dissect(buffer, index, packet, parent)

  -- Order Side: Alphanumeric
  index, order_side = miax_miaxoptions_orderfeed_mach_v2_5_b.order_side.dissect(buffer, index, packet, parent)

  -- Order Type: Alphanumeric
  index, order_type = miax_miaxoptions_orderfeed_mach_v2_5_b.order_type.dissect(buffer, index, packet, parent)

  -- Order Price Long: BinaryPrc4S
  index, order_price_long = miax_miaxoptions_orderfeed_mach_v2_5_b.order_price_long.dissect(buffer, index, packet, parent)

  -- Order Original Volume: BinaryU
  index, order_original_volume = miax_miaxoptions_orderfeed_mach_v2_5_b.order_original_volume.dissect(buffer, index, packet, parent)

  -- Remaining Volume Open: BinaryU
  index, remaining_volume_open = miax_miaxoptions_orderfeed_mach_v2_5_b.remaining_volume_open.dissect(buffer, index, packet, parent)

  -- Time In Force Tif: Alphanumeric
  index, time_in_force_tif = miax_miaxoptions_orderfeed_mach_v2_5_b.time_in_force_tif.dissect(buffer, index, packet, parent)

  -- Origin: Alphanumeric
  index, origin = miax_miaxoptions_orderfeed_mach_v2_5_b.origin.dissect(buffer, index, packet, parent)

  -- Attributed Id: Alphanumeric
  index, attributed_id = miax_miaxoptions_orderfeed_mach_v2_5_b.attributed_id.dissect(buffer, index, packet, parent)

  -- Reserved 28: BinaryU
  index, reserved_28 = miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_28.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Message
miax_miaxoptions_orderfeed_mach_v2_5_b.complex_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.complex_order_message, buffer(offset, 0))
    local index = miax_miaxoptions_orderfeed_mach_v2_5_b.complex_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_orderfeed_mach_v2_5_b.complex_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_orderfeed_mach_v2_5_b.complex_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Leg Definition
miax_miaxoptions_orderfeed_mach_v2_5_b.leg_definition = {}

-- Size: Leg Definition
miax_miaxoptions_orderfeed_mach_v2_5_b.leg_definition.size =
  miax_miaxoptions_orderfeed_mach_v2_5_b.product_id.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.leg_ratio_qty.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.leg_side.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_8.size

-- Display: Leg Definition
miax_miaxoptions_orderfeed_mach_v2_5_b.leg_definition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg Definition
miax_miaxoptions_orderfeed_mach_v2_5_b.leg_definition.fields = function(buffer, offset, packet, parent, leg_definition_index)
  local index = offset

  -- Implicit Leg Definition Index
  if leg_definition_index ~= nil and show.indexes then
    local iteration = parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.leg_definition_index, leg_definition_index)
    iteration:set_generated()
  end

  -- Product Id: BinaryU
  index, product_id = miax_miaxoptions_orderfeed_mach_v2_5_b.product_id.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: BinaryU
  index, leg_ratio_qty = miax_miaxoptions_orderfeed_mach_v2_5_b.leg_ratio_qty.dissect(buffer, index, packet, parent)

  -- Leg Side: Alphanumeric
  index, leg_side = miax_miaxoptions_orderfeed_mach_v2_5_b.leg_side.dissect(buffer, index, packet, parent)

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Definition
miax_miaxoptions_orderfeed_mach_v2_5_b.leg_definition.dissect = function(buffer, offset, packet, parent, leg_definition_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.leg_definition, buffer(offset, 0))
    local index = miax_miaxoptions_orderfeed_mach_v2_5_b.leg_definition.fields(buffer, offset, packet, parent, leg_definition_index)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_orderfeed_mach_v2_5_b.leg_definition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_orderfeed_mach_v2_5_b.leg_definition.fields(buffer, offset, packet, parent, leg_definition_index)
  end
end

-- Complex Strategy Definition Update Message
miax_miaxoptions_orderfeed_mach_v2_5_b.complex_strategy_definition_update_message = {}

-- Calculate size of: Complex Strategy Definition Update Message
miax_miaxoptions_orderfeed_mach_v2_5_b.complex_strategy_definition_update_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_orderfeed_mach_v2_5_b.nanoseconds.size

  index = index + miax_miaxoptions_orderfeed_mach_v2_5_b.strategy_id.size

  index = index + miax_miaxoptions_orderfeed_mach_v2_5_b.underlying_symbol.size

  index = index + miax_miaxoptions_orderfeed_mach_v2_5_b.active_on_miax.size

  index = index + miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_1.size

  index = index + miax_miaxoptions_orderfeed_mach_v2_5_b.update_reason.size

  index = index + miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_10.size

  index = index + miax_miaxoptions_orderfeed_mach_v2_5_b.number_of_legs.size

  -- Calculate field size from count
  local leg_definition_count = buffer(offset + index - 1, 1):le_uint()
  index = index + leg_definition_count * 15

  return index
end

-- Display: Complex Strategy Definition Update Message
miax_miaxoptions_orderfeed_mach_v2_5_b.complex_strategy_definition_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Strategy Definition Update Message
miax_miaxoptions_orderfeed_mach_v2_5_b.complex_strategy_definition_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_miaxoptions_orderfeed_mach_v2_5_b.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_miaxoptions_orderfeed_mach_v2_5_b.strategy_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_miaxoptions_orderfeed_mach_v2_5_b.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Active On Miax: Alphanumeric
  index, active_on_miax = miax_miaxoptions_orderfeed_mach_v2_5_b.active_on_miax.dissect(buffer, index, packet, parent)

  -- Reserved 1: BinaryU
  index, reserved_1 = miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_1.dissect(buffer, index, packet, parent)

  -- Update Reason: Alphanumeric
  index, update_reason = miax_miaxoptions_orderfeed_mach_v2_5_b.update_reason.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_10.dissect(buffer, index, packet, parent)

  -- Number Of Legs: BinaryU
  index, number_of_legs = miax_miaxoptions_orderfeed_mach_v2_5_b.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Leg Definition
  for leg_definition_index = 1, number_of_legs do
    index, leg_definition = miax_miaxoptions_orderfeed_mach_v2_5_b.leg_definition.dissect(buffer, index, packet, parent, leg_definition_index)
  end

  return index
end

-- Dissect: Complex Strategy Definition Update Message
miax_miaxoptions_orderfeed_mach_v2_5_b.complex_strategy_definition_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.complex_strategy_definition_update_message, buffer(offset, 0))
    local index = miax_miaxoptions_orderfeed_mach_v2_5_b.complex_strategy_definition_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_orderfeed_mach_v2_5_b.complex_strategy_definition_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_orderfeed_mach_v2_5_b.complex_strategy_definition_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Order Message
miax_miaxoptions_orderfeed_mach_v2_5_b.simple_order_message = {}

-- Size: Simple Order Message
miax_miaxoptions_orderfeed_mach_v2_5_b.simple_order_message.size =
  miax_miaxoptions_orderfeed_mach_v2_5_b.nanoseconds.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.action.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.product_id.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.order_id.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.order_side.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.order_type.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.order_price_short.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.order_original_volume.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.remaining_volume_open.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.time_in_force_tif.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.origin.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.openclose_indicator.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.route_instruction.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.attributed_id.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.priority_customer_volume.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_28.size

-- Display: Simple Order Message
miax_miaxoptions_orderfeed_mach_v2_5_b.simple_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Order Message
miax_miaxoptions_orderfeed_mach_v2_5_b.simple_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_miaxoptions_orderfeed_mach_v2_5_b.timestamp.dissect(buffer, index, packet, parent)

  -- Action: Alphanumeric
  index, action = miax_miaxoptions_orderfeed_mach_v2_5_b.action.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_miaxoptions_orderfeed_mach_v2_5_b.product_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_miaxoptions_orderfeed_mach_v2_5_b.order_id.dissect(buffer, index, packet, parent)

  -- Order Side: Alphanumeric
  index, order_side = miax_miaxoptions_orderfeed_mach_v2_5_b.order_side.dissect(buffer, index, packet, parent)

  -- Order Type: Alphanumeric
  index, order_type = miax_miaxoptions_orderfeed_mach_v2_5_b.order_type.dissect(buffer, index, packet, parent)

  -- Order Price Short: BinaryPrc4U
  index, order_price_short = miax_miaxoptions_orderfeed_mach_v2_5_b.order_price_short.dissect(buffer, index, packet, parent)

  -- Order Original Volume: BinaryU
  index, order_original_volume = miax_miaxoptions_orderfeed_mach_v2_5_b.order_original_volume.dissect(buffer, index, packet, parent)

  -- Remaining Volume Open: BinaryU
  index, remaining_volume_open = miax_miaxoptions_orderfeed_mach_v2_5_b.remaining_volume_open.dissect(buffer, index, packet, parent)

  -- Time In Force Tif: Alphanumeric
  index, time_in_force_tif = miax_miaxoptions_orderfeed_mach_v2_5_b.time_in_force_tif.dissect(buffer, index, packet, parent)

  -- Origin: Alphanumeric
  index, origin = miax_miaxoptions_orderfeed_mach_v2_5_b.origin.dissect(buffer, index, packet, parent)

  -- Openclose Indicator: Alphanumeric
  index, openclose_indicator = miax_miaxoptions_orderfeed_mach_v2_5_b.openclose_indicator.dissect(buffer, index, packet, parent)

  -- Route Instruction: Alphanumeric
  index, route_instruction = miax_miaxoptions_orderfeed_mach_v2_5_b.route_instruction.dissect(buffer, index, packet, parent)

  -- Attributed Id: Alphanumeric
  index, attributed_id = miax_miaxoptions_orderfeed_mach_v2_5_b.attributed_id.dissect(buffer, index, packet, parent)

  -- Priority Customer Volume: BinaryU
  index, priority_customer_volume = miax_miaxoptions_orderfeed_mach_v2_5_b.priority_customer_volume.dissect(buffer, index, packet, parent)

  -- Reserved 28: BinaryU
  index, reserved_28 = miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_28.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Order Message
miax_miaxoptions_orderfeed_mach_v2_5_b.simple_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.simple_order_message, buffer(offset, 0))
    local index = miax_miaxoptions_orderfeed_mach_v2_5_b.simple_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_orderfeed_mach_v2_5_b.simple_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_orderfeed_mach_v2_5_b.simple_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Trading Status Notification Message
miax_miaxoptions_orderfeed_mach_v2_5_b.underlying_trading_status_notification_message = {}

-- Size: Underlying Trading Status Notification Message
miax_miaxoptions_orderfeed_mach_v2_5_b.underlying_trading_status_notification_message.size =
  miax_miaxoptions_orderfeed_mach_v2_5_b.nanoseconds.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.underlying_symbol.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.trading_status.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.event_reason.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.expected_event_time_seconds_part.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.expected_event_time_nano_seconds_part.size

-- Display: Underlying Trading Status Notification Message
miax_miaxoptions_orderfeed_mach_v2_5_b.underlying_trading_status_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Trading Status Notification Message
miax_miaxoptions_orderfeed_mach_v2_5_b.underlying_trading_status_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_miaxoptions_orderfeed_mach_v2_5_b.timestamp.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_miaxoptions_orderfeed_mach_v2_5_b.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Trading Status: Alphanumeric
  index, trading_status = miax_miaxoptions_orderfeed_mach_v2_5_b.trading_status.dissect(buffer, index, packet, parent)

  -- Event Reason: Alphanumeric
  index, event_reason = miax_miaxoptions_orderfeed_mach_v2_5_b.event_reason.dissect(buffer, index, packet, parent)

  -- Expected Event Time Seconds Part: SecTime
  index, expected_event_time_seconds_part = miax_miaxoptions_orderfeed_mach_v2_5_b.expected_event_time_seconds_part.dissect(buffer, index, packet, parent)

  -- Expected Event Time Nano Seconds Part: BinaryU
  index, expected_event_time_nano_seconds_part = miax_miaxoptions_orderfeed_mach_v2_5_b.expected_event_time_nano_seconds_part.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Trading Status Notification Message
miax_miaxoptions_orderfeed_mach_v2_5_b.underlying_trading_status_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.underlying_trading_status_notification_message, buffer(offset, 0))
    local index = miax_miaxoptions_orderfeed_mach_v2_5_b.underlying_trading_status_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_orderfeed_mach_v2_5_b.underlying_trading_status_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_orderfeed_mach_v2_5_b.underlying_trading_status_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- System State Message
miax_miaxoptions_orderfeed_mach_v2_5_b.system_state_message = {}

-- Size: System State Message
miax_miaxoptions_orderfeed_mach_v2_5_b.system_state_message.size =
  miax_miaxoptions_orderfeed_mach_v2_5_b.nanoseconds.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.mor_version.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.session_id.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.system_status.size

-- Display: System State Message
miax_miaxoptions_orderfeed_mach_v2_5_b.system_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System State Message
miax_miaxoptions_orderfeed_mach_v2_5_b.system_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_miaxoptions_orderfeed_mach_v2_5_b.timestamp.dissect(buffer, index, packet, parent)

  -- Mor Version: Alphanumeric
  index, mor_version = miax_miaxoptions_orderfeed_mach_v2_5_b.mor_version.dissect(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_miaxoptions_orderfeed_mach_v2_5_b.session_id.dissect(buffer, index, packet, parent)

  -- System Status: Alphanumeric
  index, system_status = miax_miaxoptions_orderfeed_mach_v2_5_b.system_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Message
miax_miaxoptions_orderfeed_mach_v2_5_b.system_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.system_state_message, buffer(offset, 0))
    local index = miax_miaxoptions_orderfeed_mach_v2_5_b.system_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_orderfeed_mach_v2_5_b.system_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_orderfeed_mach_v2_5_b.system_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Series Update Message
miax_miaxoptions_orderfeed_mach_v2_5_b.simple_series_update_message = {}

-- Size: Simple Series Update Message
miax_miaxoptions_orderfeed_mach_v2_5_b.simple_series_update_message.size =
  miax_miaxoptions_orderfeed_mach_v2_5_b.nanoseconds.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.product_id.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.underlying_symbol.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.security_symbol.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.expiration_date.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.strike_price.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.call_or_put.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.opening_time.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.closing_time.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.restricted_option.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.long_term_option.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.active_on_miax.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.miax_bbo_posting_increment_indicator.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.liquidity_acceptance_increment_indicator.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.opening_underlying_market_code.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.priority_quote_width.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_8.size

-- Display: Simple Series Update Message
miax_miaxoptions_orderfeed_mach_v2_5_b.simple_series_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Series Update Message
miax_miaxoptions_orderfeed_mach_v2_5_b.simple_series_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_miaxoptions_orderfeed_mach_v2_5_b.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_miaxoptions_orderfeed_mach_v2_5_b.product_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_miaxoptions_orderfeed_mach_v2_5_b.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = miax_miaxoptions_orderfeed_mach_v2_5_b.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Date: Alphanumeric
  index, expiration_date = miax_miaxoptions_orderfeed_mach_v2_5_b.expiration_date.dissect(buffer, index, packet, parent)

  -- Strike Price: BinaryPrc4U
  index, strike_price = miax_miaxoptions_orderfeed_mach_v2_5_b.strike_price.dissect(buffer, index, packet, parent)

  -- Call Or Put: Alphanumeric
  index, call_or_put = miax_miaxoptions_orderfeed_mach_v2_5_b.call_or_put.dissect(buffer, index, packet, parent)

  -- Opening Time: Alphanumeric
  index, opening_time = miax_miaxoptions_orderfeed_mach_v2_5_b.opening_time.dissect(buffer, index, packet, parent)

  -- Closing Time: Alphanumeric
  index, closing_time = miax_miaxoptions_orderfeed_mach_v2_5_b.closing_time.dissect(buffer, index, packet, parent)

  -- Restricted Option: Alphanumeric
  index, restricted_option = miax_miaxoptions_orderfeed_mach_v2_5_b.restricted_option.dissect(buffer, index, packet, parent)

  -- Long Term Option: Alphanumeric
  index, long_term_option = miax_miaxoptions_orderfeed_mach_v2_5_b.long_term_option.dissect(buffer, index, packet, parent)

  -- Active On Miax: Alphanumeric
  index, active_on_miax = miax_miaxoptions_orderfeed_mach_v2_5_b.active_on_miax.dissect(buffer, index, packet, parent)

  -- Miax Bbo Posting Increment Indicator: Alphanumeric
  index, miax_bbo_posting_increment_indicator = miax_miaxoptions_orderfeed_mach_v2_5_b.miax_bbo_posting_increment_indicator.dissect(buffer, index, packet, parent)

  -- Liquidity Acceptance Increment Indicator: Alphanumeric
  index, liquidity_acceptance_increment_indicator = miax_miaxoptions_orderfeed_mach_v2_5_b.liquidity_acceptance_increment_indicator.dissect(buffer, index, packet, parent)

  -- Opening Underlying Market Code: Alphanumeric
  index, opening_underlying_market_code = miax_miaxoptions_orderfeed_mach_v2_5_b.opening_underlying_market_code.dissect(buffer, index, packet, parent)

  -- Priority Quote Width: BinaryPrc4U
  index, priority_quote_width = miax_miaxoptions_orderfeed_mach_v2_5_b.priority_quote_width.dissect(buffer, index, packet, parent)

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_miaxoptions_orderfeed_mach_v2_5_b.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Series Update Message
miax_miaxoptions_orderfeed_mach_v2_5_b.simple_series_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.simple_series_update_message, buffer(offset, 0))
    local index = miax_miaxoptions_orderfeed_mach_v2_5_b.simple_series_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_orderfeed_mach_v2_5_b.simple_series_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_orderfeed_mach_v2_5_b.simple_series_update_message.fields(buffer, offset, packet, parent)
  end
end

-- System Time Message
miax_miaxoptions_orderfeed_mach_v2_5_b.system_time_message = {}

-- Size: System Time Message
miax_miaxoptions_orderfeed_mach_v2_5_b.system_time_message.size =
  miax_miaxoptions_orderfeed_mach_v2_5_b.seconds.size

-- Display: System Time Message
miax_miaxoptions_orderfeed_mach_v2_5_b.system_time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Time Message
miax_miaxoptions_orderfeed_mach_v2_5_b.system_time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: SecTime
  index, seconds = miax_miaxoptions_orderfeed_mach_v2_5_b.seconds.dissect(buffer, index, packet, parent)

  -- Store Seconds Value
  miax_miaxoptions_orderfeed_mach_v2_5_b.seconds.current = seconds

  if not packet.visited then
    miax_miaxoptions_orderfeed_mach_v2_5_b.conversation.current.seconds.last = seconds
  end

  return index
end

-- Dissect: System Time Message
miax_miaxoptions_orderfeed_mach_v2_5_b.system_time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.system_time_message, buffer(offset, 0))
    local index = miax_miaxoptions_orderfeed_mach_v2_5_b.system_time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_orderfeed_mach_v2_5_b.system_time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_orderfeed_mach_v2_5_b.system_time_message.fields(buffer, offset, packet, parent)
  end
end

-- Data
miax_miaxoptions_orderfeed_mach_v2_5_b.data = {}

-- Dissect: Data
miax_miaxoptions_orderfeed_mach_v2_5_b.data.dispatch = {
  ["1"] = miax_miaxoptions_orderfeed_mach_v2_5_b.system_time_message.dissect,
  ["P"] = miax_miaxoptions_orderfeed_mach_v2_5_b.simple_series_update_message.dissect,
  ["S"] = miax_miaxoptions_orderfeed_mach_v2_5_b.system_state_message.dissect,
  ["H"] = miax_miaxoptions_orderfeed_mach_v2_5_b.underlying_trading_status_notification_message.dissect,
  ["F"] = miax_miaxoptions_orderfeed_mach_v2_5_b.simple_order_message.dissect,
  ["C"] = miax_miaxoptions_orderfeed_mach_v2_5_b.complex_strategy_definition_update_message.dissect,
  ["R"] = miax_miaxoptions_orderfeed_mach_v2_5_b.complex_order_message.dissect,
  ["x"] = miax_miaxoptions_orderfeed_mach_v2_5_b.order_close_message.dissect,
}

miax_miaxoptions_orderfeed_mach_v2_5_b.data.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = miax_miaxoptions_orderfeed_mach_v2_5_b.data.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Application Message
miax_miaxoptions_orderfeed_mach_v2_5_b.application_message = {}

-- Display: Application Message
miax_miaxoptions_orderfeed_mach_v2_5_b.application_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Application Message
miax_miaxoptions_orderfeed_mach_v2_5_b.application_message.fields = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 8 values
  index, message_type = miax_miaxoptions_orderfeed_mach_v2_5_b.message_type.dissect(buffer, index, packet, parent)

  -- Data: Runtime Type with 8 branches
  index = miax_miaxoptions_orderfeed_mach_v2_5_b.data.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Application Message
miax_miaxoptions_orderfeed_mach_v2_5_b.application_message.dissect = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset + size_of_application_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.application_message, buffer(offset, 0))
    local current = miax_miaxoptions_orderfeed_mach_v2_5_b.application_message.fields(buffer, offset, packet, parent, size_of_application_message)
    parent:set_len(size_of_application_message)
    local display = miax_miaxoptions_orderfeed_mach_v2_5_b.application_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_miaxoptions_orderfeed_mach_v2_5_b.application_message.fields(buffer, offset, packet, parent, size_of_application_message)

    return index
  end
end

-- Refresh Response Message
miax_miaxoptions_orderfeed_mach_v2_5_b.refresh_response_message = {}

-- Calculate size of: Refresh Response Message
miax_miaxoptions_orderfeed_mach_v2_5_b.refresh_response_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_orderfeed_mach_v2_5_b.sequence_number.size

  -- Parse runtime size of: Application Message
  index = index + buffer(offset + index - 12, 2):le_uint()

  return index
end

-- Display: Refresh Response Message
miax_miaxoptions_orderfeed_mach_v2_5_b.refresh_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Response Message
miax_miaxoptions_orderfeed_mach_v2_5_b.refresh_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: BinaryU
  index, sequence_number = miax_miaxoptions_orderfeed_mach_v2_5_b.sequence_number.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 4, 2):le_uint()

  -- Runtime Size Of: Application Message
  local size_of_application_message = sesm_packet_length - 12

  -- Application Message: Struct of 2 fields
  index, application_message = miax_miaxoptions_orderfeed_mach_v2_5_b.application_message.dissect(buffer, index, packet, parent, size_of_application_message)

  return index
end

-- Dissect: Refresh Response Message
miax_miaxoptions_orderfeed_mach_v2_5_b.refresh_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.refresh_response_message, buffer(offset, 0))
    local index = miax_miaxoptions_orderfeed_mach_v2_5_b.refresh_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_orderfeed_mach_v2_5_b.refresh_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_orderfeed_mach_v2_5_b.refresh_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Request Message
miax_miaxoptions_orderfeed_mach_v2_5_b.refresh_request_message = {}

-- Size: Refresh Request Message
miax_miaxoptions_orderfeed_mach_v2_5_b.refresh_request_message.size =
  miax_miaxoptions_orderfeed_mach_v2_5_b.refresh_message_type.size

-- Display: Refresh Request Message
miax_miaxoptions_orderfeed_mach_v2_5_b.refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
miax_miaxoptions_orderfeed_mach_v2_5_b.refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Refresh Message Type: Alphanumeric
  index, refresh_message_type = miax_miaxoptions_orderfeed_mach_v2_5_b.refresh_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
miax_miaxoptions_orderfeed_mach_v2_5_b.refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.refresh_request_message, buffer(offset, 0))
    local index = miax_miaxoptions_orderfeed_mach_v2_5_b.refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_orderfeed_mach_v2_5_b.refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_orderfeed_mach_v2_5_b.refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
miax_miaxoptions_orderfeed_mach_v2_5_b.unsequenced_message = {}

-- Dissect: Unsequenced Message
miax_miaxoptions_orderfeed_mach_v2_5_b.unsequenced_message.dispatch = {
  ["R"] = miax_miaxoptions_orderfeed_mach_v2_5_b.refresh_request_message.dissect,
  ["r"] = miax_miaxoptions_orderfeed_mach_v2_5_b.refresh_response_message.dissect,
  ["E"] = miax_miaxoptions_orderfeed_mach_v2_5_b.end_of_refresh_notification_message.dissect,
}

miax_miaxoptions_orderfeed_mach_v2_5_b.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  local dissect = miax_miaxoptions_orderfeed_mach_v2_5_b.unsequenced_message.dispatch[unsequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
miax_miaxoptions_orderfeed_mach_v2_5_b.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
miax_miaxoptions_orderfeed_mach_v2_5_b.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  return sesm_packet_length - 1
end

-- Display: Unsequenced Data Packet
miax_miaxoptions_orderfeed_mach_v2_5_b.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
miax_miaxoptions_orderfeed_mach_v2_5_b.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String Enum with 3 values
  index, unsequenced_message_type = miax_miaxoptions_orderfeed_mach_v2_5_b.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 3 branches
  index = miax_miaxoptions_orderfeed_mach_v2_5_b.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
miax_miaxoptions_orderfeed_mach_v2_5_b.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = miax_miaxoptions_orderfeed_mach_v2_5_b.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = miax_miaxoptions_orderfeed_mach_v2_5_b.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = miax_miaxoptions_orderfeed_mach_v2_5_b.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_miaxoptions_orderfeed_mach_v2_5_b.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Sequenced Data Packet
miax_miaxoptions_orderfeed_mach_v2_5_b.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
miax_miaxoptions_orderfeed_mach_v2_5_b.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  return sesm_packet_length - 1
end

-- Display: Sequenced Data Packet
miax_miaxoptions_orderfeed_mach_v2_5_b.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
miax_miaxoptions_orderfeed_mach_v2_5_b.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequence Number: BinaryU
  index, sequence_number = miax_miaxoptions_orderfeed_mach_v2_5_b.sequence_number.dissect(buffer, index, packet, parent)

  -- Matching Engine Id: 1 Byte Unsigned Fixed Width Integer
  index, matching_engine_id = miax_miaxoptions_orderfeed_mach_v2_5_b.matching_engine_id.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: 1 Byte Ascii String
  index, sequenced_message_type = miax_miaxoptions_orderfeed_mach_v2_5_b.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message
  index, sequenced_message = miax_miaxoptions_orderfeed_mach_v2_5_b.sequenced_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Data Packet
miax_miaxoptions_orderfeed_mach_v2_5_b.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = miax_miaxoptions_orderfeed_mach_v2_5_b.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.sequenced_data_packet, buffer(offset, 0))
    local current = miax_miaxoptions_orderfeed_mach_v2_5_b.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = miax_miaxoptions_orderfeed_mach_v2_5_b.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_miaxoptions_orderfeed_mach_v2_5_b.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Sesm Payload
miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_payload = {}

-- Dissect: Sesm Payload
miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_payload.dispatch = {
  ["s"] = miax_miaxoptions_orderfeed_mach_v2_5_b.sequenced_data_packet.dissect,
  ["U"] = miax_miaxoptions_orderfeed_mach_v2_5_b.unsequenced_data_packet.dissect,
  ["l"] = miax_miaxoptions_orderfeed_mach_v2_5_b.login_request.dissect,
  ["r"] = miax_miaxoptions_orderfeed_mach_v2_5_b.login_response.dissect,
  ["c"] = miax_miaxoptions_orderfeed_mach_v2_5_b.synchronization_complete.dissect,
  ["a"] = miax_miaxoptions_orderfeed_mach_v2_5_b.retransmission_request.dissect,
  ["X"] = miax_miaxoptions_orderfeed_mach_v2_5_b.logout_request.dissect,
  ["G"] = miax_miaxoptions_orderfeed_mach_v2_5_b.goodbye_packet.dissect,
  ["u"] = miax_miaxoptions_orderfeed_mach_v2_5_b.trading_session_update.dissect,
  ["0"] = miax_miaxoptions_orderfeed_mach_v2_5_b.server_heartbeat.dissect,
  ["1"] = miax_miaxoptions_orderfeed_mach_v2_5_b.client_heartbeat.dissect,
  ["T"] = miax_miaxoptions_orderfeed_mach_v2_5_b.test_packet.dissect,
}

miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_payload.dissect = function(buffer, offset, packet, parent, sesm_packet_type)
  local dissect = miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_payload.dispatch[sesm_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sesm Packet Header
miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_packet_header = {}

-- Size: Sesm Packet Header
miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_packet_header.size =
  miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_packet_length.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_packet_type.size

-- Display: Sesm Packet Header
miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sesm Packet Header
miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sesm Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, sesm_packet_length = miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_packet_length.dissect(buffer, index, packet, parent)

  -- Sesm Packet Type: 1 Byte Ascii String Enum with 12 values
  index, sesm_packet_type = miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sesm Packet Header
miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.sesm_packet_header, buffer(offset, 0))
    local index = miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Sesm Tcp Packet
miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_tcp_packet = {}

-- Display: Sesm Tcp Packet
miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sesm Tcp Packet
miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset

  -- Sesm Packet Header: Struct of 2 fields
  index, sesm_packet_header = miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Type
  local sesm_packet_type = buffer(index - 1, 1):string()

  -- Sesm Payload: Runtime Type with 12 branches
  index = miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_payload.dissect(buffer, index, packet, parent, sesm_packet_type)

  return index
end

-- Dissect: Sesm Tcp Packet
miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset + size_of_sesm_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.sesm_tcp_packet, buffer(offset, 0))
    local current = miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_tcp_packet.fields(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
    parent:set_len(size_of_sesm_tcp_packet)
    local display = miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_tcp_packet.fields(buffer, offset, packet, parent, size_of_sesm_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Sesm Tcp Packet
local sesm_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):le_uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Tcp Packet
miax_miaxoptions_orderfeed_mach_v2_5_b.tcp_packet = {}

-- Verify required size of Tcp packet
miax_miaxoptions_orderfeed_mach_v2_5_b.tcp_packet.requiredsize = function(buffer)
  return buffer:len() >= miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_packet_header.size
end

-- Dissect Tcp Packet
miax_miaxoptions_orderfeed_mach_v2_5_b.tcp_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = miax_miaxoptions_orderfeed_mach_v2_5_b.conversation.data(packet)
  if not packet.visited then
    data.seconds.frames[packet.number] = data.seconds.last
  end
  miax_miaxoptions_orderfeed_mach_v2_5_b.seconds.current = data.seconds.frames[packet.number]
  miax_miaxoptions_orderfeed_mach_v2_5_b.conversation.current = data

  local index = 0

  -- Dependency for Sesm Tcp Packet
  local end_of_payload = buffer:len()

  -- Sesm Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_sesm_tcp_packet = sesm_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_sesm_tcp_packet):tvb()
      index = miax_miaxoptions_orderfeed_mach_v2_5_b.sesm_tcp_packet.dissect(frame, index, packet, parent, size_of_sesm_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      -- Claim the whole buffer: tcp keeps the bytes from desegment_offset for reassembly
      return end_of_payload
    end
  end

  return index
end

-- End Of Session
miax_miaxoptions_orderfeed_mach_v2_5_b.end_of_session = {}

-- Display: End Of Session
miax_miaxoptions_orderfeed_mach_v2_5_b.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
miax_miaxoptions_orderfeed_mach_v2_5_b.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Start Of Session
miax_miaxoptions_orderfeed_mach_v2_5_b.start_of_session = {}

-- Display: Start Of Session
miax_miaxoptions_orderfeed_mach_v2_5_b.start_of_session.display = function(packet, parent, length)
  return "Start Of Session"
end


-- Dissect: Start Of Session
miax_miaxoptions_orderfeed_mach_v2_5_b.start_of_session.dissect = function(buffer, offset, packet, parent)
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.start_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
miax_miaxoptions_orderfeed_mach_v2_5_b.heartbeat = {}

-- Display: Heartbeat
miax_miaxoptions_orderfeed_mach_v2_5_b.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
miax_miaxoptions_orderfeed_mach_v2_5_b.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_miaxoptions_orderfeed_mach_v2_5_b.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Payload
miax_miaxoptions_orderfeed_mach_v2_5_b.payload = {}

-- Dissect: Payload
miax_miaxoptions_orderfeed_mach_v2_5_b.payload.dispatch = {
  [0] = miax_miaxoptions_orderfeed_mach_v2_5_b.heartbeat.dissect,
  [1] = miax_miaxoptions_orderfeed_mach_v2_5_b.start_of_session.dissect,
  [2] = miax_miaxoptions_orderfeed_mach_v2_5_b.end_of_session.dissect,
  [3] = miax_miaxoptions_orderfeed_mach_v2_5_b.application_message.dissect,
}

miax_miaxoptions_orderfeed_mach_v2_5_b.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  local dissect = miax_miaxoptions_orderfeed_mach_v2_5_b.payload.dispatch[packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Mach Packet Header
miax_miaxoptions_orderfeed_mach_v2_5_b.mach_packet_header = {}

-- Size: Mach Packet Header
miax_miaxoptions_orderfeed_mach_v2_5_b.mach_packet_header.size =
  miax_miaxoptions_orderfeed_mach_v2_5_b.sequence_number.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.packet_length.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.packet_type.size + 
  miax_miaxoptions_orderfeed_mach_v2_5_b.session_number.size

-- Display: Mach Packet Header
miax_miaxoptions_orderfeed_mach_v2_5_b.mach_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mach Packet Header
miax_miaxoptions_orderfeed_mach_v2_5_b.mach_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: BinaryU
  index, sequence_number = miax_miaxoptions_orderfeed_mach_v2_5_b.sequence_number.dissect(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = miax_miaxoptions_orderfeed_mach_v2_5_b.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, packet_type = miax_miaxoptions_orderfeed_mach_v2_5_b.packet_type.dissect(buffer, index, packet, parent)

  -- Session Number: 1 Byte Unsigned Fixed Width Integer
  index, session_number = miax_miaxoptions_orderfeed_mach_v2_5_b.session_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mach Packet Header
miax_miaxoptions_orderfeed_mach_v2_5_b.mach_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.mach_packet_header, buffer(offset, 0))
    local index = miax_miaxoptions_orderfeed_mach_v2_5_b.mach_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_orderfeed_mach_v2_5_b.mach_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_orderfeed_mach_v2_5_b.mach_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Mach Message
miax_miaxoptions_orderfeed_mach_v2_5_b.mach_message = {}

-- Display: Mach Message
miax_miaxoptions_orderfeed_mach_v2_5_b.mach_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mach Message
miax_miaxoptions_orderfeed_mach_v2_5_b.mach_message.fields = function(buffer, offset, packet, parent, size_of_mach_message)
  local index = offset

  -- Mach Packet Header: Struct of 4 fields
  index, mach_packet_header = miax_miaxoptions_orderfeed_mach_v2_5_b.mach_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 2, 1):le_uint()

  -- Payload: Runtime Type with 4 branches
  index = miax_miaxoptions_orderfeed_mach_v2_5_b.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Mach Message
miax_miaxoptions_orderfeed_mach_v2_5_b.mach_message.dissect = function(buffer, offset, packet, parent, size_of_mach_message)
  local index = offset + size_of_mach_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b.fields.mach_message, buffer(offset, 0))
    local current = miax_miaxoptions_orderfeed_mach_v2_5_b.mach_message.fields(buffer, offset, packet, parent, size_of_mach_message)
    parent:set_len(size_of_mach_message)
    local display = miax_miaxoptions_orderfeed_mach_v2_5_b.mach_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_miaxoptions_orderfeed_mach_v2_5_b.mach_message.fields(buffer, offset, packet, parent, size_of_mach_message)

    return index
  end
end

-- Udp Packet
miax_miaxoptions_orderfeed_mach_v2_5_b.udp_packet = {}

-- Verify required size of Udp packet
miax_miaxoptions_orderfeed_mach_v2_5_b.udp_packet.requiredsize = function(buffer)
  return buffer:len() >= miax_miaxoptions_orderfeed_mach_v2_5_b.mach_packet_header.size
end

-- Dissect Udp Packet
miax_miaxoptions_orderfeed_mach_v2_5_b.udp_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = miax_miaxoptions_orderfeed_mach_v2_5_b.conversation.data(packet)
  if not packet.visited then
    data.seconds.frames[packet.number] = data.seconds.last
  end
  miax_miaxoptions_orderfeed_mach_v2_5_b.seconds.current = data.seconds.frames[packet.number]
  miax_miaxoptions_orderfeed_mach_v2_5_b.conversation.current = data

  local index = 0

  -- Dependency for Mach Message
  local end_of_payload = buffer:len()

  -- Mach Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Packet Length
    local packet_length = buffer(index + 8, 2):le_uint()

    -- Runtime Size Of: Mach Message
    index, mach_message = miax_miaxoptions_orderfeed_mach_v2_5_b.mach_message.dissect(buffer, index, packet, parent, packet_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_miax_miaxoptions_orderfeed_mach_v2_5_b.init()
  miax_miaxoptions_orderfeed_mach_v2_5_b.seconds.current = nil
  miax_miaxoptions_orderfeed_mach_v2_5_b.conversation.current = nil
  miax_miaxoptions_orderfeed_mach_v2_5_b.conversation.flows = {}
end

-- Dissector for Miax MiaxOptions OrderFeed Mach 2.5.b
function omi_miax_miaxoptions_orderfeed_mach_v2_5_b.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_miax_miaxoptions_orderfeed_mach_v2_5_b.name

  if packet.port_type == 3 then
    -- Dissect protocol
    local protocol = parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b, buffer(), omi_miax_miaxoptions_orderfeed_mach_v2_5_b.description, "("..buffer:len().." Bytes)")
    return miax_miaxoptions_orderfeed_mach_v2_5_b.udp_packet.dissect(buffer, packet, protocol)
  end

  if packet.port_type == 2 then
    -- Dissect protocol
    local protocol = parent:add(omi_miax_miaxoptions_orderfeed_mach_v2_5_b, buffer(), omi_miax_miaxoptions_orderfeed_mach_v2_5_b.description, "("..buffer:len().." Bytes)")
    return miax_miaxoptions_orderfeed_mach_v2_5_b.tcp_packet.dissect(buffer, packet, protocol)
  end
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Udp Packet: would its message dispatch accept this frame?
miax_miaxoptions_orderfeed_mach_v2_5_b.udp_packet.fingerprint = function(buffer)
  if buffer:len() < 11 then
    return false
  end

  local packet_type = buffer(10, 1):le_uint()

  -- Heartbeat
  if packet_type == 0 then
    return true
  end

  -- Start Of Session
  if packet_type == 1 then
    return true
  end

  -- End Of Session
  if packet_type == 2 then
    return true
  end

  -- Application Message: carries the application messages, which tell this protocol from others sharing the session framing
  if packet_type == 3 then
    if buffer:len() < 13 then
      return false
    end

    local message_type = buffer(12, 1):string()

    -- System Time Message
    if message_type == "1" then
      return true
    end

    -- Simple Series Update Message
    if message_type == "P" then
      return true
    end

    -- System State Message
    if message_type == "S" then
      return true
    end

    -- Underlying Trading Status Notification Message
    if message_type == "H" then
      return true
    end

    -- Simple Order Message
    if message_type == "F" then
      return true
    end

    -- Complex Strategy Definition Update Message
    if message_type == "C" then
      return true
    end

    -- Complex Order Message
    if message_type == "R" then
      return true
    end

    -- Order Close Message
    if message_type == "x" then
      return true
    end

    return false
  end

  return false
end

-- Fingerprint of Tcp Packet: would its message dispatch accept this frame?
miax_miaxoptions_orderfeed_mach_v2_5_b.tcp_packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end

  local sesm_packet_type = buffer(2, 1):string()

  -- Sequenced Data Packet
  if sesm_packet_type == "s" then
    return true
  end

  -- Unsequenced Data Packet: carries the application messages, which tell this protocol from others sharing the session framing
  if sesm_packet_type == "U" then
    if buffer:len() < 4 then
      return false
    end

    local unsequenced_message_type = buffer(3, 1):string()

    -- Refresh Request Message
    if unsequenced_message_type == "R" then
      return true
    end

    -- Refresh Response Message
    if unsequenced_message_type == "r" then
      return true
    end

    -- End Of Refresh Notification Message
    if unsequenced_message_type == "E" then
      return true
    end

    return false
  end

  -- Login Request
  if sesm_packet_type == "l" then
    return true
  end

  -- Login Response
  if sesm_packet_type == "r" then
    return true
  end

  -- Synchronization Complete
  if sesm_packet_type == "c" then
    return true
  end

  -- Retransmission Request
  if sesm_packet_type == "a" then
    return true
  end

  -- Logout Request
  if sesm_packet_type == "X" then
    return true
  end

  -- Goodbye Packet
  if sesm_packet_type == "G" then
    return true
  end

  -- Trading Session Update
  if sesm_packet_type == "u" then
    return true
  end

  -- Server Heartbeat
  if sesm_packet_type == "0" then
    return true
  end

  -- Client Heartbeat
  if sesm_packet_type == "1" then
    return true
  end

  -- Test Packet
  if sesm_packet_type == "T" then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Miax MiaxOptions OrderFeed Mach 2.5.b (Udp)
local function omi_miax_miaxoptions_orderfeed_mach_v2_5_b_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_miaxoptions_orderfeed_mach_v2_5_b.udp_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp udp packet message dispatch
  if not miax_miaxoptions_orderfeed_mach_v2_5_b.udp_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_miaxoptions_orderfeed_mach_v2_5_b
  omi_miax_miaxoptions_orderfeed_mach_v2_5_b.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Miax MiaxOptions OrderFeed Mach 2.5.b (Tcp)
local function omi_miax_miaxoptions_orderfeed_mach_v2_5_b_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_miaxoptions_orderfeed_mach_v2_5_b.tcp_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp tcp packet message dispatch
  if not miax_miaxoptions_orderfeed_mach_v2_5_b.tcp_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_miaxoptions_orderfeed_mach_v2_5_b
  omi_miax_miaxoptions_orderfeed_mach_v2_5_b.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristics for Miax MiaxOptions OrderFeed Mach 2.5.b
omi_miax_miaxoptions_orderfeed_mach_v2_5_b:register_heuristic("udp", omi_miax_miaxoptions_orderfeed_mach_v2_5_b_udp_heuristic)
omi_miax_miaxoptions_orderfeed_mach_v2_5_b:register_heuristic("tcp", omi_miax_miaxoptions_orderfeed_mach_v2_5_b_tcp_heuristic)

-- Register Miax MiaxOptions OrderFeed Mach 2.5.b for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_miax_miaxoptions_orderfeed_mach_v2_5_b)

-- Register Miax MiaxOptions OrderFeed Mach 2.5.b for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_miax_miaxoptions_orderfeed_mach_v2_5_b)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Miami International Holdings
--   Version: 2.5.b
--   Date: Tuesday, May 17, 2022
--   Specification: MIAX Options Order Feed_MOR_v2.5b_re.pdf
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
