-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax PearlOptions TopOfMarket Mach 1.2 Protocol
local omi_miax_pearloptions_topofmarket_mach_v1_2 = Proto("Omi.Miax.PearlOptions.TopOfMarket.Mach.v1.2", "Miax PearlOptions TopOfMarket Mach 1.2")

-- Protocol table
local miax_pearloptions_topofmarket_mach_v1_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax PearlOptions TopOfMarket Mach 1.2 Fields
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.active_on_pearl = ProtoField.new("Active On Pearl", "miax.pearloptions.topofmarket.mach.v1.2.activeonpearl", ftypes.STRING, nil, nil, nil, "Indicates if this symbol is tradable on Pearl in the current session")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.application_message = ProtoField.new("Application Message", "miax.pearloptions.topofmarket.mach.v1.2.applicationmessage", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.application_protocol = ProtoField.new("Application Protocol", "miax.pearloptions.topofmarket.mach.v1.2.applicationprotocol", ftypes.STRING, nil, nil, nil, "Miax Application Protocol")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.bid_condition = ProtoField.new("Bid Condition", "miax.pearloptions.topofmarket.mach.v1.2.bidcondition", ftypes.STRING, nil, nil, nil, "Bid Condition Value")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.bid_price_long = ProtoField.new("Bid Price Long", "miax.pearloptions.topofmarket.mach.v1.2.bidpricelong", ftypes.DOUBLE, nil, nil, nil, "Pearl best bid price at the time stated in Timestamp and side specified in Message Type")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.bid_price_short = ProtoField.new("Bid Price Short", "miax.pearloptions.topofmarket.mach.v1.2.bidpriceshort", ftypes.DOUBLE, nil, nil, nil, "Pearl best bid price at the time stated in Timestamp and side specified in Message Type")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.bid_priority_customer_size_long = ProtoField.new("Bid Priority Customer Size Long", "miax.pearloptions.topofmarket.mach.v1.2.bidprioritycustomersizelong", ftypes.UINT32, nil, nil, nil, "Aggregate size of Priority Customer contracts at the Pearl Best Bid Price")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.bid_priority_customer_size_short = ProtoField.new("Bid Priority Customer Size Short", "miax.pearloptions.topofmarket.mach.v1.2.bidprioritycustomersizeshort", ftypes.UINT16, nil, nil, nil, "Aggregate size of Priority Customer contracts at the Pearl Best Bid Price")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.bid_size_long = ProtoField.new("Bid Size Long", "miax.pearloptions.topofmarket.mach.v1.2.bidsizelong", ftypes.UINT32, nil, nil, nil, "Aggregate size at Pearl best bid Price at the time stated in Timestamp and side specified in Message Type")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.bid_size_short = ProtoField.new("Bid Size Short", "miax.pearloptions.topofmarket.mach.v1.2.bidsizeshort", ftypes.UINT16, nil, nil, nil, "Aggregate size at Pearl best bid Price at the time stated in Timestamp and side specified in Message Type")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.call_or_put = ProtoField.new("Call Or Put", "miax.pearloptions.topofmarket.mach.v1.2.callorput", ftypes.STRING, nil, nil, nil, "Option Type")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.closing_time = ProtoField.new("Closing Time", "miax.pearloptions.topofmarket.mach.v1.2.closingtime", ftypes.STRING, nil, nil, nil, "Expressed in HH:MM:SS format. Eg: 16:15:00")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.computer_id = ProtoField.new("Computer Id", "miax.pearloptions.topofmarket.mach.v1.2.computerid", ftypes.STRING, nil, nil, nil, "issued by MIAX Futures Exchange during initial setup")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.correction_number = ProtoField.new("Correction Number", "miax.pearloptions.topofmarket.mach.v1.2.correctionnumber", ftypes.UINT8, nil, nil, nil, "Trade correction number. 0 for New trades. Greater than or equal to 0 for trades resulting from corrections/adjustments.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.end_sequence_number = ProtoField.new("End Sequence Number", "miax.pearloptions.topofmarket.mach.v1.2.endsequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the last packet to be retransmitted")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.event_reason = ProtoField.new("Event Reason", "miax.pearloptions.topofmarket.mach.v1.2.eventreason", ftypes.STRING, nil, nil, nil, "Event Reason value")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.expected_event_time_nano_seconds_part = ProtoField.new("Expected Event Time Nano Seconds Part", "miax.pearloptions.topofmarket.mach.v1.2.expectedeventtimenanosecondspart", ftypes.UINT32, nil, nil, nil, "Nano-seconds portion of the expected time of the event. Specifies number of nano-seconds since the seconds specified in \"Expected Event Time Seconds\" field.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.expected_event_time_seconds_part = ProtoField.new("Expected Event Time Seconds Part", "miax.pearloptions.topofmarket.mach.v1.2.expectedeventtimesecondspart", ftypes.UINT32, nil, nil, nil, "Seconds portion of the expected time of the event. Always use in conjunction with the Nano-seconds part field.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.expiration_date = ProtoField.new("Expiration Date", "miax.pearloptions.topofmarket.mach.v1.2.expirationdate", ftypes.STRING, nil, nil, nil, "Expiration date of the option in YYYYMMDD format")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.goodbye_packet = ProtoField.new("Goodbye Packet", "miax.pearloptions.topofmarket.mach.v1.2.goodbyepacket", ftypes.STRING, nil, nil, nil, "The server may send a GoodBye packet to inform the client a reason for termination of the connection just before it terminates the connection")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.highest_sequence_number = ProtoField.new("Highest Sequence Number", "miax.pearloptions.topofmarket.mach.v1.2.highestsequencenumber", ftypes.UINT64, nil, nil, nil, "the highest sequence number that the server currently has for the client")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.liquidity_acceptance_increment_indicator = ProtoField.new("Liquidity Acceptance Increment Indicator", "miax.pearloptions.topofmarket.mach.v1.2.liquidityacceptanceincrementindicator", ftypes.STRING, nil, nil, nil, "This is the Minimum Price Variation for Quote/Order acceptance as per Pearl rules")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.login_request = ProtoField.new("Login Request", "miax.pearloptions.topofmarket.mach.v1.2.loginrequest", ftypes.STRING, nil, nil, nil, "The SesM client must send a Login request packet immediately upon establishing a new TCP/IP socket connection to the server")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.login_response = ProtoField.new("Login Response", "miax.pearloptions.topofmarket.mach.v1.2.loginresponse", ftypes.STRING, nil, nil, nil, "The SesM server sends a Login response packet in response a Login request packet from the client")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.login_status = ProtoField.new("Login Status", "miax.pearloptions.topofmarket.mach.v1.2.loginstatus", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.logout_reason = ProtoField.new("Logout Reason", "miax.pearloptions.topofmarket.mach.v1.2.logoutreason", ftypes.STRING, nil, nil, nil, "Logout Request Reason")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.logout_request = ProtoField.new("Logout Request", "miax.pearloptions.topofmarket.mach.v1.2.logoutrequest", ftypes.STRING, nil, nil, nil, "The client may send a Logout request packet to request the connection be terminated")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.logout_text = ProtoField.new("Logout Text", "miax.pearloptions.topofmarket.mach.v1.2.logouttext", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.long_term_option = ProtoField.new("Long Term Option", "miax.pearloptions.topofmarket.mach.v1.2.longtermoption", ftypes.STRING, nil, nil, nil, "\"Y\" = Far month expiration (as defined by Pearl rules); \"N\" = Near month expiration (as defined by Pearl rules)")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.matching_engine_id = ProtoField.new("Matching Engine Id", "miax.pearloptions.topofmarket.mach.v1.2.matchingengineid", ftypes.UINT8, nil, nil, nil, "Matching Engine that originated the packet")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.message_type = ProtoField.new("Message Type", "miax.pearloptions.topofmarket.mach.v1.2.messagetype", ftypes.STRING, nil, nil, nil, "Code identifying this message type")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.nanoseconds = ProtoField.new("Nanoseconds", "miax.pearloptions.topofmarket.mach.v1.2.nanoseconds", ftypes.UINT32, nil, nil, nil, "Time at which this product is added/updated on Pearl system today.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.number_of_matching_engines = ProtoField.new("Number Of Matching Engines", "miax.pearloptions.topofmarket.mach.v1.2.numberofmatchingengines", ftypes.UINT8, nil, nil, nil, "Count of all Matching Engines for the exchange")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.offer_condition = ProtoField.new("Offer Condition", "miax.pearloptions.topofmarket.mach.v1.2.offercondition", ftypes.STRING, nil, nil, nil, "Offer Condition Value")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.offer_price_long = ProtoField.new("Offer Price Long", "miax.pearloptions.topofmarket.mach.v1.2.offerpricelong", ftypes.DOUBLE, nil, nil, nil, "Pearl best offer price at the time stated in Timestamp and side specified in Message Type")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.offer_price_short = ProtoField.new("Offer Price Short", "miax.pearloptions.topofmarket.mach.v1.2.offerpriceshort", ftypes.DOUBLE, nil, nil, nil, "Pearl best offer price at the time stated in Timestamp and side specified in Message Type")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.offer_priority_customer_size_long = ProtoField.new("Offer Priority Customer Size Long", "miax.pearloptions.topofmarket.mach.v1.2.offerprioritycustomersizelong", ftypes.UINT32, nil, nil, nil, "Aggregate size of Priority Customer contracts at the Pearl Best Offer Price")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.offer_priority_customer_size_short = ProtoField.new("Offer Priority Customer Size Short", "miax.pearloptions.topofmarket.mach.v1.2.offerprioritycustomersizeshort", ftypes.UINT16, nil, nil, nil, "Aggregate size of Priority Customer contracts at the Pearl Best Offer Price")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.offer_size_long = ProtoField.new("Offer Size Long", "miax.pearloptions.topofmarket.mach.v1.2.offersizelong", ftypes.UINT32, nil, nil, nil, "Aggregate size at Pearl best offer Price at the time stated in Timestamp and side specified in Message Type")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.offer_size_short = ProtoField.new("Offer Size Short", "miax.pearloptions.topofmarket.mach.v1.2.offersizeshort", ftypes.UINT16, nil, nil, nil, "Aggregate size at Pearl best offer Price at the time stated in Timestamp and side specified in Message Type")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.opening_time = ProtoField.new("Opening Time", "miax.pearloptions.topofmarket.mach.v1.2.openingtime", ftypes.STRING, nil, nil, nil, "Expressed in HH:MM:SS format. Eg: 09:30:00")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.opening_underlying_market_code = ProtoField.new("Opening Underlying Market Code", "miax.pearloptions.topofmarket.mach.v1.2.openingunderlyingmarketcode", ftypes.STRING, nil, nil, nil, "Options opening will be triggered on receipt of Opening quote/trade from this Underlying market")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.packet_length = ProtoField.new("Packet Length", "miax.pearloptions.topofmarket.mach.v1.2.packetlength", ftypes.UINT16, nil, nil, nil, "Length of the packet, including the header and application data")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.packet_type = ProtoField.new("Packet Type", "miax.pearloptions.topofmarket.mach.v1.2.packettype", ftypes.UINT8, nil, nil, nil, "protocol packet type")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.pbbo_condition = ProtoField.new("Pbbo Condition", "miax.pearloptions.topofmarket.mach.v1.2.pbbocondition", ftypes.STRING, nil, nil, nil, "PBBO Condition Value")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.pbbo_price_long = ProtoField.new("PBBO Price Long", "miax.pearloptions.topofmarket.mach.v1.2.pbbopricelong", ftypes.DOUBLE, nil, nil, nil, "Pearl Best price at the time stated in Timestamp and side specified in Message Type")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.pbbo_price_short = ProtoField.new("PBBO Price Short", "miax.pearloptions.topofmarket.mach.v1.2.pbbopriceshort", ftypes.DOUBLE, nil, nil, nil, "Pearl Best price at the time stated in Timestamp and side specified in Message Type")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.pbbo_priority_customer_size_long = ProtoField.new("PBBO Priority Customer Size Long", "miax.pearloptions.topofmarket.mach.v1.2.pbboprioritycustomersizelong", ftypes.UINT32, nil, nil, nil, "Aggregate size of Priority Customer contracts at the Pearl Best Price")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.pbbo_priority_customer_size_short = ProtoField.new("PBBO Priority Customer Size Short", "miax.pearloptions.topofmarket.mach.v1.2.pbboprioritycustomersizeshort", ftypes.UINT16, nil, nil, nil, "Aggregate size of Priority Customer contracts at the Pearl Best Price")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.pbbo_size_long = ProtoField.new("PBBO Size Long", "miax.pearloptions.topofmarket.mach.v1.2.pbbosizelong", ftypes.UINT32, nil, nil, nil, "Aggregate size at Pearl Best Price at the time stated in Timestamp and side specified in Message Type")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.pbbo_size_short = ProtoField.new("PBBO Size Short", "miax.pearloptions.topofmarket.mach.v1.2.pbbosizeshort", ftypes.UINT16, nil, nil, nil, "Aggregate size at Pearl Best Price at the time stated in Timestamp and side specified in Message Type")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.pearl_bbo_posting_increment_indicator = ProtoField.new("Pearl Bbo Posting Increment Indicator", "miax.pearloptions.topofmarket.mach.v1.2.pearlbbopostingincrementindicator", ftypes.STRING, nil, nil, nil, "This is the Minimum Price Variation as agreed to by the Options industry (penny pilot program) and as published by Pearl")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.product_id = ProtoField.new("Product Id", "miax.pearloptions.topofmarket.mach.v1.2.productid", ftypes.UINT32, nil, nil, nil, "Pearl Product ID mapped to a given option. It is assigned per trading session and is valid for that session.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.reference_correction_number = ProtoField.new("Reference Correction Number", "miax.pearloptions.topofmarket.mach.v1.2.referencecorrectionnumber", ftypes.UINT8, nil, nil, nil, "Correction Number of the trade that was just corrected/adjusted. 0 for new trades.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.reference_trade_id = ProtoField.new("Reference Trade Id", "miax.pearloptions.topofmarket.mach.v1.2.referencetradeid", ftypes.UINT32, nil, nil, nil, "0 (zero) if new trade. Trade ID of the original trade if this trade originated as a correction of the original trade.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.refresh_message_type = ProtoField.new("Refresh Message Type", "miax.pearloptions.topofmarket.mach.v1.2.refreshmessagetype", ftypes.STRING, nil, nil, nil, "Identifies the data set the firm is requesting a refresh of.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "miax.pearloptions.topofmarket.mach.v1.2.requestedsequencenumber", ftypes.UINT64, nil, nil, nil, "Specifies client requested sequence number")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.requested_trading_session_id = ProtoField.new("Requested Trading Session Id", "miax.pearloptions.topofmarket.mach.v1.2.requestedtradingsessionid", ftypes.UINT8, nil, nil, nil, "Specifies the session the client would like to log into, or zero to log into the currently active session")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.reserved_12 = ProtoField.new("Reserved 12", "miax.pearloptions.topofmarket.mach.v1.2.reserved12", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.restricted_option = ProtoField.new("Restricted Option", "miax.pearloptions.topofmarket.mach.v1.2.restrictedoption", ftypes.STRING, nil, nil, nil, "Restricted Option indicator")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.retransmission_request = ProtoField.new("Retransmission Request", "miax.pearloptions.topofmarket.mach.v1.2.retransmissionrequest", ftypes.STRING, nil, nil, nil, "The SesM client uses this packet to request a retransmission server to retransmit a range of packets")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.seconds = ProtoField.new("Seconds", "miax.pearloptions.topofmarket.mach.v1.2.seconds", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Seconds part of the time that applies to all messages that gets disseminated until this message gets sent again.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.seconds_utc = ProtoField.new("Seconds", "miax.pearloptions.topofmarket.mach.v1.2.seconds.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Seconds part of the time that applies to all messages that gets disseminated until this message gets sent again.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.security_symbol = ProtoField.new("Security Symbol", "miax.pearloptions.topofmarket.mach.v1.2.securitysymbol", ftypes.STRING, nil, nil, nil, "Option Security Symbol")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.sequence_number = ProtoField.new("Sequence Number", "miax.pearloptions.topofmarket.mach.v1.2.sequencenumber", ftypes.UINT64, nil, nil, nil, "Original sequence number from the live feed.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "miax.pearloptions.topofmarket.mach.v1.2.sequenceddatapacket", ftypes.STRING, nil, nil, nil, "The SesM server uses Sequenced data packets to send all messages that must be recoverable by the client in case of a connection loss")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "miax.pearloptions.topofmarket.mach.v1.2.sequencedmessagetype", ftypes.STRING, nil, nil, nil, "Market-data application message type carried over the SesM sequenced channel (matches the MACH UDP Message Type byte; Pearl Options uses Ascii message codes)")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.sesm_packet_length = ProtoField.new("Sesm Packet Length", "miax.pearloptions.topofmarket.mach.v1.2.sesmpacketlength", ftypes.UINT16, nil, nil, nil, "The length of rest of the packet")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.sesm_packet_type = ProtoField.new("Sesm Packet Type", "miax.pearloptions.topofmarket.mach.v1.2.sesmpackettype", ftypes.STRING, nil, nil, nil, "SesM protocol packet type")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.sesm_version = ProtoField.new("Sesm Version", "miax.pearloptions.topofmarket.mach.v1.2.sesmversion", ftypes.STRING, nil, nil, nil, "Protocol version")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.session_id = ProtoField.new("Session Id", "miax.pearloptions.topofmarket.mach.v1.2.sessionid", ftypes.UINT32, nil, nil, nil, "Pearl assigned ID for the current trading session")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.session_number = ProtoField.new("Session Number", "miax.pearloptions.topofmarket.mach.v1.2.sessionnumber", ftypes.UINT8, nil, nil, nil, "protocol packet type")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.start_sequence_number = ProtoField.new("Start Sequence Number", "miax.pearloptions.topofmarket.mach.v1.2.startsequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the first packet to be retransmitted")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.strike_price = ProtoField.new("Strike Price", "miax.pearloptions.topofmarket.mach.v1.2.strikeprice", ftypes.DOUBLE, nil, nil, nil, "Explicit strike price of the option. Refer to data types for field processing notes")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.synchronization_complete = ProtoField.new("Synchronization Complete", "miax.pearloptions.topofmarket.mach.v1.2.synchronizationcomplete", ftypes.STRING, nil, nil, nil, "The SesM server sends a Login response packet in response a Login request packet from the client")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.system_status = ProtoField.new("System Status", "miax.pearloptions.topofmarket.mach.v1.2.systemstatus", ftypes.STRING, nil, nil, nil, "Current system status")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.test_packet = ProtoField.new("Test Packet", "miax.pearloptions.topofmarket.mach.v1.2.testpacket", ftypes.STRING, nil, nil, nil, "Test packets are intended to provide human readable text that may aid in debugging problems")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.test_text = ProtoField.new("Test Text", "miax.pearloptions.topofmarket.mach.v1.2.testtext", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.to_m_version = ProtoField.new("To M Version", "miax.pearloptions.topofmarket.mach.v1.2.tomversion", ftypes.STRING, nil, nil, nil, "Eg: TOM1.0")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.trade_condition = ProtoField.new("Trade Condition", "miax.pearloptions.topofmarket.mach.v1.2.tradecondition", ftypes.STRING, nil, nil, nil, "Trade Condition Value")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.trade_id = ProtoField.new("Trade Id", "miax.pearloptions.topofmarket.mach.v1.2.tradeid", ftypes.UINT32, nil, nil, nil, "Unique Trade ID assigned to every Trade.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.trade_price = ProtoField.new("Trade Price", "miax.pearloptions.topofmarket.mach.v1.2.tradeprice", ftypes.DOUBLE, nil, nil, nil, "Price at which this product traded")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.trade_size = ProtoField.new("Trade Size", "miax.pearloptions.topofmarket.mach.v1.2.tradesize", ftypes.UINT32, nil, nil, nil, "Number of contracts executed in this trade")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.trading_session_id = ProtoField.new("Trading Session Id", "miax.pearloptions.topofmarket.mach.v1.2.tradingsessionid", ftypes.UINT8, nil, nil, nil, "The current trading session ID of the corresponding Matching Engine")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.trading_status = ProtoField.new("Trading Status", "miax.pearloptions.topofmarket.mach.v1.2.tradingstatus", ftypes.STRING, nil, nil, nil, "Trading Status value")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "miax.pearloptions.topofmarket.mach.v1.2.underlyingsymbol", ftypes.STRING, nil, nil, nil, "Stock Symbol for the option.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "miax.pearloptions.topofmarket.mach.v1.2.unsequenceddatapacket", ftypes.STRING, nil, nil, nil, "Each unsequenced data packet carries one unsequenced message from the higher-lever protocol")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "miax.pearloptions.topofmarket.mach.v1.2.unsequencedmessagetype", ftypes.STRING, nil, nil, nil, "Market-data Refresh request/response discriminator carried over the SesM unsequenced channel (Request Type R, Response Type r, End of Refresh E)")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.username = ProtoField.new("Username", "miax.pearloptions.topofmarket.mach.v1.2.username", ftypes.STRING, nil, nil, nil, "issued by MIAX during initial setup")

-- Miax PearlOptions TopOfMarket Mach 1.2 Framing
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.mach_message = ProtoField.new("Mach Message", "miax.pearloptions.topofmarket.mach.v1.2.machmessage", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.mach_packet_header = ProtoField.new("Mach Packet Header", "miax.pearloptions.topofmarket.mach.v1.2.machpacketheader", ftypes.STRING, nil, nil, nil, "Mach packet header (12 bytes)")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.sesm_packet_header = ProtoField.new("Sesm Packet Header", "miax.pearloptions.topofmarket.mach.v1.2.sesmpacketheader", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.sesm_tcp_packet = ProtoField.new("Sesm Tcp Packet", "miax.pearloptions.topofmarket.mach.v1.2.sesmtcppacket", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.tcp_packet = ProtoField.new("Tcp Packet", "miax.pearloptions.topofmarket.mach.v1.2.tcppacket", ftypes.STRING, nil, nil, nil, "SesM Packet")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.udp_packet = ProtoField.new("Udp Packet", "miax.pearloptions.topofmarket.mach.v1.2.udppacket", ftypes.STRING)

-- Miax PearlOptions TopOfMarket 1.2 Application Messages
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.double_sided_top_of_market_best_bid_or_offer_compact_format_message = ProtoField.new("Double Sided Top Of Market Best Bid Or Offer Compact Format Message", "miax.pearloptions.topofmarket.mach.v1.2.doublesidedtopofmarketbestbidoroffercompactformatmessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used, in the refresh service and during trading hours, to disseminate both sides of the Pearl Top of Market for options with low premiums and small aggregate Pearl Best Bid or Offer (PBBO) size.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.double_sided_top_of_market_best_bid_or_offer_wide_format_message = ProtoField.new("Double Sided Top Of Market Best Bid Or Offer Wide Format Message", "miax.pearloptions.topofmarket.mach.v1.2.doublesidedtopofmarketbestbidorofferwideformatmessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used, in the refresh service and during trading hours, to disseminate both sides of the Pearl Top of Market for options with high premiums or large aggregate Pearl Best Bid or Offer (PBBO) sizes.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.end_of_refresh_notification_message = ProtoField.new("End Of Refresh Notification Message", "miax.pearloptions.topofmarket.mach.v1.2.endofrefreshnotificationmessage", ftypes.STRING, nil, nil, nil, "Sent by MIAX Pearl Options over the ToM Retransmission Interface (SesM Unsequenced Data Packet) when the refresh response is complete.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.last_sale_message = ProtoField.new("Last Sale Message", "miax.pearloptions.topofmarket.mach.v1.2.lastsalemessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate Trades that are resulting from executions on Pearl during the current trading session.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "miax.pearloptions.topofmarket.mach.v1.2.refreshrequestmessage", ftypes.STRING, nil, nil, nil, "Sent by the firm over the ToM Retransmission Interface (SesM Unsequenced Data Packet) to request a Last Value Refresh of a particular data set identified by Refresh Message Type.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.refresh_response_message = ProtoField.new("Refresh Response Message", "miax.pearloptions.topofmarket.mach.v1.2.refreshresponsemessage", ftypes.STRING, nil, nil, nil, "Sent by MIAX Pearl Options over the ToM Retransmission Interface (SesM Unsequenced Data Packet) carrying one Application Message that satisfies a previous Refresh Request. Note: Pearl Options PDF assigns Response Type \"R\" (uppercase) to this message, colliding with the Request Type \"R\" byte; lowercase \"r\" is used here to match the PearlEquities case-distinction convention.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.series_update_message = ProtoField.new("Series Update Message", "miax.pearloptions.topofmarket.mach.v1.2.seriesupdatemessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate all Option series traded on Pearl for the current session. The product ID sent in this message is what will be disseminated in Top of Market BBO and Last Sale messages.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.system_state_message = ProtoField.new("System State Message", "miax.pearloptions.topofmarket.mach.v1.2.systemstatemessage", ftypes.STRING, nil, nil, nil, "This message format is used to notify the firms of the state changes of the system. This is a notification that applies to each Underlying group. Firms can use notifications as triggers in their system to ensure electronic synchronization of systems.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.system_time_message = ProtoField.new("System Time Message", "miax.pearloptions.topofmarket.mach.v1.2.systemtimemessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate the \"seconds\" part of the timestamp that is applicable to all messages that are sent in the current second.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.top_of_market_best_bid_or_offer_compact_format_bid_message = ProtoField.new("Top Of Market Best Bid Or Offer Compact Format Bid Message", "miax.pearloptions.topofmarket.mach.v1.2.topofmarketbestbidoroffercompactformatbidmessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate each side of the Pearl Top of Market for options with low premiums and small aggregate Pearl Best Bid or Offer (PBBO) size. Top of Market on Bid side.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.top_of_market_best_bid_or_offer_compact_format_bid_priority_customer_message = ProtoField.new("Top Of Market Best Bid Or Offer Compact Format Bid Priority Customer Message", "miax.pearloptions.topofmarket.mach.v1.2.topofmarketbestbidoroffercompactformatbidprioritycustomermessage", ftypes.STRING, nil, nil, nil, "Simple Top of Market on Bid side with Priority Customer establishing new aggressive price.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.top_of_market_best_bid_or_offer_compact_format_offer_message = ProtoField.new("Top Of Market Best Bid Or Offer Compact Format Offer Message", "miax.pearloptions.topofmarket.mach.v1.2.topofmarketbestbidoroffercompactformatoffermessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate each side of the Pearl Top of Market for options with low premiums and small aggregate Pearl Best Bid or Offer (PBBO) size. Top of Market on Offer side.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.top_of_market_best_bid_or_offer_compact_format_offer_priority_customer_message = ProtoField.new("Top Of Market Best Bid Or Offer Compact Format Offer Priority Customer Message", "miax.pearloptions.topofmarket.mach.v1.2.topofmarketbestbidoroffercompactformatofferprioritycustomermessage", ftypes.STRING, nil, nil, nil, "Simple Top of Market on Offer side with Priority Customer establishing new aggressive price.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.top_of_market_best_bid_or_offer_wide_format_bid_message = ProtoField.new("Top Of Market Best Bid Or Offer Wide Format Bid Message", "miax.pearloptions.topofmarket.mach.v1.2.topofmarketbestbidorofferwideformatbidmessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate Pearl Top of Market for options with high premiums or large aggregate Pearl Best Bid or Offer (PBBO) size. Top of Market on Bid side.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.top_of_market_best_bid_or_offer_wide_format_bid_priority_customer_message = ProtoField.new("Top Of Market Best Bid Or Offer Wide Format Bid Priority Customer Message", "miax.pearloptions.topofmarket.mach.v1.2.topofmarketbestbidorofferwideformatbidprioritycustomermessage", ftypes.STRING, nil, nil, nil, "Simple Top of Market on Bid side with Priority Customer establishing new aggressive price.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.top_of_market_best_bid_or_offer_wide_format_offer_message = ProtoField.new("Top Of Market Best Bid Or Offer Wide Format Offer Message", "miax.pearloptions.topofmarket.mach.v1.2.topofmarketbestbidorofferwideformatoffermessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate Pearl Top of Market for options with high premiums or large aggregate Pearl Best Bid or Offer (PBBO) size. Top of Market on Offer side.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.top_of_market_best_bid_or_offer_wide_format_offer_priority_customer_message = ProtoField.new("Top Of Market Best Bid Or Offer Wide Format Offer Priority Customer Message", "miax.pearloptions.topofmarket.mach.v1.2.topofmarketbestbidorofferwideformatofferprioritycustomermessage", ftypes.STRING, nil, nil, nil, "Simple Top of Market on Offer side with Priority Customer establishing new aggressive price.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "miax.pearloptions.topofmarket.mach.v1.2.tradecancelmessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate canceled Trades that are resulting from Trade cancellations or corrections on Pearl during the current trading session.")
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.underlying_trading_status_notification_message = ProtoField.new("Underlying Trading Status Notification Message", "miax.pearloptions.topofmarket.mach.v1.2.underlyingtradingstatusnotificationmessage", ftypes.STRING, nil, nil, nil, "This message format will be used to notify firms of changes to the trading status of all the options of an underlying.")

-- Miax PearlOptions TopOfMarket Mach 1.2 Generated Fields
omi_miax_pearloptions_topofmarket_mach_v1_2.fields.timestamp = ProtoField.new("Timestamp", "miax.pearloptions.topofmarket.mach.v1.2.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Miax PearlOptions TopOfMarket Mach 1.2 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
miax_pearloptions_topofmarket_mach_v1_2.absolute_time_base = 0

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
miax_pearloptions_topofmarket_mach_v1_2.format_timestamp = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Miax PearlOptions TopOfMarket Mach 1.2 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true

-- Register Miax PearlOptions TopOfMarket Mach 1.2 Show Options
omi_miax_pearloptions_topofmarket_mach_v1_2.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_miax_pearloptions_topofmarket_mach_v1_2.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_miax_pearloptions_topofmarket_mach_v1_2.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_miax_pearloptions_topofmarket_mach_v1_2.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

omi_miax_pearloptions_topofmarket_mach_v1_2.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_miax_pearloptions_topofmarket_mach_v1_2.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_miax_pearloptions_topofmarket_mach_v1_2.prefs.show_application_messages then
    show.application_messages = omi_miax_pearloptions_topofmarket_mach_v1_2.prefs.show_application_messages
  end
  if show.headers ~= omi_miax_pearloptions_topofmarket_mach_v1_2.prefs.show_headers then
    show.headers = omi_miax_pearloptions_topofmarket_mach_v1_2.prefs.show_headers
  end
  if show.structs ~= omi_miax_pearloptions_topofmarket_mach_v1_2.prefs.show_structs then
    show.structs = omi_miax_pearloptions_topofmarket_mach_v1_2.prefs.show_structs
  end
  if miax_pearloptions_topofmarket_mach_v1_2.format_timestamp ~= omi_miax_pearloptions_topofmarket_mach_v1_2.prefs.format_timestamp then
    miax_pearloptions_topofmarket_mach_v1_2.format_timestamp = omi_miax_pearloptions_topofmarket_mach_v1_2.prefs.format_timestamp
  end
  if miax_pearloptions_topofmarket_mach_v1_2.absolute_time_base ~= omi_miax_pearloptions_topofmarket_mach_v1_2.prefs.absolute_time_base then
    miax_pearloptions_topofmarket_mach_v1_2.absolute_time_base = omi_miax_pearloptions_topofmarket_mach_v1_2.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
miax_pearloptions_topofmarket_mach_v1_2.conversation = {}
miax_pearloptions_topofmarket_mach_v1_2.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
miax_pearloptions_topofmarket_mach_v1_2.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
miax_pearloptions_topofmarket_mach_v1_2.conversation.data = function(packet)
  local key = miax_pearloptions_topofmarket_mach_v1_2.conversation.key(packet)
  local data = miax_pearloptions_topofmarket_mach_v1_2.conversation.flows[key]
  if data == nil then
    data = { seconds = { last = nil, frames = {} } }
    miax_pearloptions_topofmarket_mach_v1_2.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
miax_pearloptions_topofmarket_mach_v1_2.conversation.current = nil


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
-- Miax PearlOptions TopOfMarket Mach 1.2 Fields
-----------------------------------------------------------------------

-- Active On Pearl
miax_pearloptions_topofmarket_mach_v1_2.active_on_pearl = {}

-- Size: Active On Pearl
miax_pearloptions_topofmarket_mach_v1_2.active_on_pearl.size = 1

-- Display: Active On Pearl
miax_pearloptions_topofmarket_mach_v1_2.active_on_pearl.labels = {
  ["A"] = "Active On Pearl: Active (A)",
  ["I"] = "Active On Pearl: Inactive (I)",
}

miax_pearloptions_topofmarket_mach_v1_2.active_on_pearl.display = function(value)
  return miax_pearloptions_topofmarket_mach_v1_2.active_on_pearl.labels[value] or "Active On Pearl: Unknown("..value..")"
end

-- Dissect: Active On Pearl
miax_pearloptions_topofmarket_mach_v1_2.active_on_pearl.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.active_on_pearl.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_2.active_on_pearl.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.active_on_pearl, range, value, display)

  return offset + length, value
end

-- Application Protocol
miax_pearloptions_topofmarket_mach_v1_2.application_protocol = {}

-- Size: Application Protocol
miax_pearloptions_topofmarket_mach_v1_2.application_protocol.size = 8

-- Display: Application Protocol
miax_pearloptions_topofmarket_mach_v1_2.application_protocol.display = function(value)
  return "Application Protocol: "..value
end

-- Dissect: Application Protocol
miax_pearloptions_topofmarket_mach_v1_2.application_protocol.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.application_protocol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_topofmarket_mach_v1_2.application_protocol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.application_protocol, range, value, display)

  return offset + length, value
end

-- Bid Condition
miax_pearloptions_topofmarket_mach_v1_2.bid_condition = {}

-- Size: Bid Condition
miax_pearloptions_topofmarket_mach_v1_2.bid_condition.size = 1

-- Display: Bid Condition
miax_pearloptions_topofmarket_mach_v1_2.bid_condition.labels = {
  ["A"] = "Bid Condition: Regular (A)",
  ["B"] = "Bid Condition: Public Customer Interest (B)",
  ["C"] = "Bid Condition: Not Firm (C)",
  ["R"] = "Bid Condition: Reserved (R)",
  ["T"] = "Bid Condition: Trading Halt (T)",
}

miax_pearloptions_topofmarket_mach_v1_2.bid_condition.display = function(value)
  return miax_pearloptions_topofmarket_mach_v1_2.bid_condition.labels[value] or "Bid Condition: Unknown("..value..")"
end

-- Dissect: Bid Condition
miax_pearloptions_topofmarket_mach_v1_2.bid_condition.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.bid_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_2.bid_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.bid_condition, range, value, display)

  return offset + length, value
end

-- Bid Price Long
miax_pearloptions_topofmarket_mach_v1_2.bid_price_long = {}

-- Size: Bid Price Long
miax_pearloptions_topofmarket_mach_v1_2.bid_price_long.size = 4

-- Display: Bid Price Long
miax_pearloptions_topofmarket_mach_v1_2.bid_price_long.display = function(value)
  return "Bid Price Long: "..value
end

-- Translate: Bid Price Long
miax_pearloptions_topofmarket_mach_v1_2.bid_price_long.translate = function(raw)
  return raw/10000
end

-- Dissect: Bid Price Long
miax_pearloptions_topofmarket_mach_v1_2.bid_price_long.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.bid_price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_pearloptions_topofmarket_mach_v1_2.bid_price_long.translate(raw)
  local display = miax_pearloptions_topofmarket_mach_v1_2.bid_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.bid_price_long, range, value, display)

  return offset + length, value
end

-- Bid Price Short
miax_pearloptions_topofmarket_mach_v1_2.bid_price_short = {}

-- Size: Bid Price Short
miax_pearloptions_topofmarket_mach_v1_2.bid_price_short.size = 2

-- Display: Bid Price Short
miax_pearloptions_topofmarket_mach_v1_2.bid_price_short.display = function(value)
  return "Bid Price Short: "..value
end

-- Translate: Bid Price Short
miax_pearloptions_topofmarket_mach_v1_2.bid_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price Short
miax_pearloptions_topofmarket_mach_v1_2.bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.bid_price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_pearloptions_topofmarket_mach_v1_2.bid_price_short.translate(raw)
  local display = miax_pearloptions_topofmarket_mach_v1_2.bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Bid Priority Customer Size Long
miax_pearloptions_topofmarket_mach_v1_2.bid_priority_customer_size_long = {}

-- Size: Bid Priority Customer Size Long
miax_pearloptions_topofmarket_mach_v1_2.bid_priority_customer_size_long.size = 4

-- Display: Bid Priority Customer Size Long
miax_pearloptions_topofmarket_mach_v1_2.bid_priority_customer_size_long.display = function(value)
  return "Bid Priority Customer Size Long: "..value
end

-- Dissect: Bid Priority Customer Size Long
miax_pearloptions_topofmarket_mach_v1_2.bid_priority_customer_size_long.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.bid_priority_customer_size_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_2.bid_priority_customer_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.bid_priority_customer_size_long, range, value, display)

  return offset + length, value
end

-- Bid Priority Customer Size Short
miax_pearloptions_topofmarket_mach_v1_2.bid_priority_customer_size_short = {}

-- Size: Bid Priority Customer Size Short
miax_pearloptions_topofmarket_mach_v1_2.bid_priority_customer_size_short.size = 2

-- Display: Bid Priority Customer Size Short
miax_pearloptions_topofmarket_mach_v1_2.bid_priority_customer_size_short.display = function(value)
  return "Bid Priority Customer Size Short: "..value
end

-- Dissect: Bid Priority Customer Size Short
miax_pearloptions_topofmarket_mach_v1_2.bid_priority_customer_size_short.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.bid_priority_customer_size_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_2.bid_priority_customer_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.bid_priority_customer_size_short, range, value, display)

  return offset + length, value
end

-- Bid Size Long
miax_pearloptions_topofmarket_mach_v1_2.bid_size_long = {}

-- Size: Bid Size Long
miax_pearloptions_topofmarket_mach_v1_2.bid_size_long.size = 4

-- Display: Bid Size Long
miax_pearloptions_topofmarket_mach_v1_2.bid_size_long.display = function(value)
  return "Bid Size Long: "..value
end

-- Dissect: Bid Size Long
miax_pearloptions_topofmarket_mach_v1_2.bid_size_long.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.bid_size_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_2.bid_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.bid_size_long, range, value, display)

  return offset + length, value
end

-- Bid Size Short
miax_pearloptions_topofmarket_mach_v1_2.bid_size_short = {}

-- Size: Bid Size Short
miax_pearloptions_topofmarket_mach_v1_2.bid_size_short.size = 2

-- Display: Bid Size Short
miax_pearloptions_topofmarket_mach_v1_2.bid_size_short.display = function(value)
  return "Bid Size Short: "..value
end

-- Dissect: Bid Size Short
miax_pearloptions_topofmarket_mach_v1_2.bid_size_short.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.bid_size_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_2.bid_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.bid_size_short, range, value, display)

  return offset + length, value
end

-- Call Or Put
miax_pearloptions_topofmarket_mach_v1_2.call_or_put = {}

-- Size: Call Or Put
miax_pearloptions_topofmarket_mach_v1_2.call_or_put.size = 1

-- Display: Call Or Put
miax_pearloptions_topofmarket_mach_v1_2.call_or_put.labels = {
  ["C"] = "Call Or Put: Call (C)",
  ["P"] = "Call Or Put: Put (P)",
}

miax_pearloptions_topofmarket_mach_v1_2.call_or_put.display = function(value)
  return miax_pearloptions_topofmarket_mach_v1_2.call_or_put.labels[value] or "Call Or Put: Unknown("..value..")"
end

-- Dissect: Call Or Put
miax_pearloptions_topofmarket_mach_v1_2.call_or_put.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.call_or_put.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_2.call_or_put.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.call_or_put, range, value, display)

  return offset + length, value
end

-- Closing Time
miax_pearloptions_topofmarket_mach_v1_2.closing_time = {}

-- Size: Closing Time
miax_pearloptions_topofmarket_mach_v1_2.closing_time.size = 8

-- Display: Closing Time
miax_pearloptions_topofmarket_mach_v1_2.closing_time.display = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
miax_pearloptions_topofmarket_mach_v1_2.closing_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.closing_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_topofmarket_mach_v1_2.closing_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.closing_time, range, value, display)

  return offset + length, value
end

-- Computer Id
miax_pearloptions_topofmarket_mach_v1_2.computer_id = {}

-- Size: Computer Id
miax_pearloptions_topofmarket_mach_v1_2.computer_id.size = 8

-- Display: Computer Id
miax_pearloptions_topofmarket_mach_v1_2.computer_id.display = function(value)
  return "Computer Id: "..value
end

-- Dissect: Computer Id
miax_pearloptions_topofmarket_mach_v1_2.computer_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.computer_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_topofmarket_mach_v1_2.computer_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.computer_id, range, value, display)

  return offset + length, value
end

-- Correction Number
miax_pearloptions_topofmarket_mach_v1_2.correction_number = {}

-- Size: Correction Number
miax_pearloptions_topofmarket_mach_v1_2.correction_number.size = 1

-- Display: Correction Number
miax_pearloptions_topofmarket_mach_v1_2.correction_number.display = function(value)
  return "Correction Number: "..value
end

-- Dissect: Correction Number
miax_pearloptions_topofmarket_mach_v1_2.correction_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.correction_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_2.correction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.correction_number, range, value, display)

  return offset + length, value
end

-- End Sequence Number
miax_pearloptions_topofmarket_mach_v1_2.end_sequence_number = {}

-- Size: End Sequence Number
miax_pearloptions_topofmarket_mach_v1_2.end_sequence_number.size = 8

-- Display: End Sequence Number
miax_pearloptions_topofmarket_mach_v1_2.end_sequence_number.display = function(value)
  return "End Sequence Number: "..value
end

-- Dissect: End Sequence Number
miax_pearloptions_topofmarket_mach_v1_2.end_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.end_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearloptions_topofmarket_mach_v1_2.end_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.end_sequence_number, range, value, display)

  return offset + length, value
end

-- Event Reason
miax_pearloptions_topofmarket_mach_v1_2.event_reason = {}

-- Size: Event Reason
miax_pearloptions_topofmarket_mach_v1_2.event_reason.size = 1

-- Display: Event Reason
miax_pearloptions_topofmarket_mach_v1_2.event_reason.labels = {
  ["A"] = "Event Reason: Automatic (A)",
  ["M"] = "Event Reason: Manual (M)",
}

miax_pearloptions_topofmarket_mach_v1_2.event_reason.display = function(value)
  return miax_pearloptions_topofmarket_mach_v1_2.event_reason.labels[value] or "Event Reason: Unknown("..value..")"
end

-- Dissect: Event Reason
miax_pearloptions_topofmarket_mach_v1_2.event_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.event_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_2.event_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.event_reason, range, value, display)

  return offset + length, value
end

-- Expected Event Time Nano Seconds Part
miax_pearloptions_topofmarket_mach_v1_2.expected_event_time_nano_seconds_part = {}

-- Size: Expected Event Time Nano Seconds Part
miax_pearloptions_topofmarket_mach_v1_2.expected_event_time_nano_seconds_part.size = 4

-- Display: Expected Event Time Nano Seconds Part
miax_pearloptions_topofmarket_mach_v1_2.expected_event_time_nano_seconds_part.display = function(value)
  return "Expected Event Time Nano Seconds Part: "..value
end

-- Dissect: Expected Event Time Nano Seconds Part
miax_pearloptions_topofmarket_mach_v1_2.expected_event_time_nano_seconds_part.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.expected_event_time_nano_seconds_part.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_2.expected_event_time_nano_seconds_part.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.expected_event_time_nano_seconds_part, range, value, display)

  return offset + length, value
end

-- Expected Event Time Seconds Part
miax_pearloptions_topofmarket_mach_v1_2.expected_event_time_seconds_part = {}

-- Size: Expected Event Time Seconds Part
miax_pearloptions_topofmarket_mach_v1_2.expected_event_time_seconds_part.size = 4

-- Display: Expected Event Time Seconds Part
miax_pearloptions_topofmarket_mach_v1_2.expected_event_time_seconds_part.display = function(value)
  return "Expected Event Time Seconds Part: "..value
end

-- Dissect: Expected Event Time Seconds Part
miax_pearloptions_topofmarket_mach_v1_2.expected_event_time_seconds_part.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.expected_event_time_seconds_part.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_2.expected_event_time_seconds_part.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.expected_event_time_seconds_part, range, value, display)

  return offset + length, value
end

-- Expiration Date
miax_pearloptions_topofmarket_mach_v1_2.expiration_date = {}

-- Size: Expiration Date
miax_pearloptions_topofmarket_mach_v1_2.expiration_date.size = 8

-- Display: Expiration Date
miax_pearloptions_topofmarket_mach_v1_2.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
miax_pearloptions_topofmarket_mach_v1_2.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.expiration_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_topofmarket_mach_v1_2.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Highest Sequence Number
miax_pearloptions_topofmarket_mach_v1_2.highest_sequence_number = {}

-- Size: Highest Sequence Number
miax_pearloptions_topofmarket_mach_v1_2.highest_sequence_number.size = 8

-- Display: Highest Sequence Number
miax_pearloptions_topofmarket_mach_v1_2.highest_sequence_number.display = function(value)
  return "Highest Sequence Number: "..value
end

-- Dissect: Highest Sequence Number
miax_pearloptions_topofmarket_mach_v1_2.highest_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.highest_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearloptions_topofmarket_mach_v1_2.highest_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.highest_sequence_number, range, value, display)

  return offset + length, value
end

-- Liquidity Acceptance Increment Indicator
miax_pearloptions_topofmarket_mach_v1_2.liquidity_acceptance_increment_indicator = {}

-- Size: Liquidity Acceptance Increment Indicator
miax_pearloptions_topofmarket_mach_v1_2.liquidity_acceptance_increment_indicator.size = 1

-- Display: Liquidity Acceptance Increment Indicator
miax_pearloptions_topofmarket_mach_v1_2.liquidity_acceptance_increment_indicator.labels = {
  ["P"] = "Liquidity Acceptance Increment Indicator: Penny (P)",
  ["N"] = "Liquidity Acceptance Increment Indicator: Penny Or Nickel (N)",
  ["D"] = "Liquidity Acceptance Increment Indicator: Nickel Or Dime (D)",
}

miax_pearloptions_topofmarket_mach_v1_2.liquidity_acceptance_increment_indicator.display = function(value)
  return miax_pearloptions_topofmarket_mach_v1_2.liquidity_acceptance_increment_indicator.labels[value] or "Liquidity Acceptance Increment Indicator: Unknown("..value..")"
end

-- Dissect: Liquidity Acceptance Increment Indicator
miax_pearloptions_topofmarket_mach_v1_2.liquidity_acceptance_increment_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.liquidity_acceptance_increment_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_2.liquidity_acceptance_increment_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.liquidity_acceptance_increment_indicator, range, value, display)

  return offset + length, value
end

-- Login Status
miax_pearloptions_topofmarket_mach_v1_2.login_status = {}

-- Size: Login Status
miax_pearloptions_topofmarket_mach_v1_2.login_status.size = 1

-- Display: Login Status
miax_pearloptions_topofmarket_mach_v1_2.login_status.display = function(value)
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
miax_pearloptions_topofmarket_mach_v1_2.login_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.login_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_2.login_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.login_status, range, value, display)

  return offset + length, value
end

-- Logout Reason
miax_pearloptions_topofmarket_mach_v1_2.logout_reason = {}

-- Size: Logout Reason
miax_pearloptions_topofmarket_mach_v1_2.logout_reason.size = 1

-- Display: Logout Reason
miax_pearloptions_topofmarket_mach_v1_2.logout_reason.display = function(value)
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
miax_pearloptions_topofmarket_mach_v1_2.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_2.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Logout Text
miax_pearloptions_topofmarket_mach_v1_2.logout_text = {}

-- Display: Logout Text
miax_pearloptions_topofmarket_mach_v1_2.logout_text.display = function(value)
  return "Logout Text: "..value
end

-- Dissect runtime sized field: Logout Text
miax_pearloptions_topofmarket_mach_v1_2.logout_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_2.logout_text.display(value, packet, parent, size)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.logout_text, range, value, display)

  return offset + size, value
end

-- Long Term Option
miax_pearloptions_topofmarket_mach_v1_2.long_term_option = {}

-- Size: Long Term Option
miax_pearloptions_topofmarket_mach_v1_2.long_term_option.size = 1

-- Display: Long Term Option
miax_pearloptions_topofmarket_mach_v1_2.long_term_option.labels = {
  ["Y"] = "Long Term Option: Far Month Expiration (Y)",
  ["N"] = "Long Term Option: Near Month Expiration (N)",
}

miax_pearloptions_topofmarket_mach_v1_2.long_term_option.display = function(value)
  return miax_pearloptions_topofmarket_mach_v1_2.long_term_option.labels[value] or "Long Term Option: Unknown("..value..")"
end

-- Dissect: Long Term Option
miax_pearloptions_topofmarket_mach_v1_2.long_term_option.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.long_term_option.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_2.long_term_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.long_term_option, range, value, display)

  return offset + length, value
end

-- Matching Engine Id
miax_pearloptions_topofmarket_mach_v1_2.matching_engine_id = {}

-- Size: Matching Engine Id
miax_pearloptions_topofmarket_mach_v1_2.matching_engine_id.size = 1

-- Display: Matching Engine Id
miax_pearloptions_topofmarket_mach_v1_2.matching_engine_id.display = function(value)
  return "Matching Engine Id: "..value
end

-- Dissect: Matching Engine Id
miax_pearloptions_topofmarket_mach_v1_2.matching_engine_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.matching_engine_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearloptions_topofmarket_mach_v1_2.matching_engine_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.matching_engine_id, range, value, display)

  return offset + length, value
end

-- Message Type
miax_pearloptions_topofmarket_mach_v1_2.message_type = {}

-- Size: Message Type
miax_pearloptions_topofmarket_mach_v1_2.message_type.size = 1

-- Display: Message Type
miax_pearloptions_topofmarket_mach_v1_2.message_type.labels = {
  ["1"] = "Message Type: System Time Message (1)",
  ["P"] = "Message Type: Series Update Message (P)",
  ["S"] = "Message Type: System State Message (S)",
  ["B"] = "Message Type: Top Of Market Best Bid Or Offer Compact Format Bid Message (B)",
  ["h"] = "Message Type: Top Of Market Best Bid Or Offer Compact Format Bid Priority Customer Message (h)",
  ["O"] = "Message Type: Top Of Market Best Bid Or Offer Compact Format Offer Message (O)",
  ["i"] = "Message Type: Top Of Market Best Bid Or Offer Compact Format Offer Priority Customer Message (i)",
  ["W"] = "Message Type: Top Of Market Best Bid Or Offer Wide Format Bid Message (W)",
  ["j"] = "Message Type: Top Of Market Best Bid Or Offer Wide Format Bid Priority Customer Message (j)",
  ["A"] = "Message Type: Top Of Market Best Bid Or Offer Wide Format Offer Message (A)",
  ["k"] = "Message Type: Top Of Market Best Bid Or Offer Wide Format Offer Priority Customer Message (k)",
  ["d"] = "Message Type: Double Sided Top Of Market Best Bid Or Offer Compact Format Message (d)",
  ["D"] = "Message Type: Double Sided Top Of Market Best Bid Or Offer Wide Format Message (D)",
  ["T"] = "Message Type: Last Sale Message (T)",
  ["X"] = "Message Type: Trade Cancel Message (X)",
  ["H"] = "Message Type: Underlying Trading Status Notification Message (H)",
}

miax_pearloptions_topofmarket_mach_v1_2.message_type.display = function(value)
  return miax_pearloptions_topofmarket_mach_v1_2.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
miax_pearloptions_topofmarket_mach_v1_2.message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_2.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nanoseconds
miax_pearloptions_topofmarket_mach_v1_2.nanoseconds = {}

-- Size: Nanoseconds
miax_pearloptions_topofmarket_mach_v1_2.nanoseconds.size = 4

-- Display: Nanoseconds
miax_pearloptions_topofmarket_mach_v1_2.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
miax_pearloptions_topofmarket_mach_v1_2.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_2.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Number Of Matching Engines
miax_pearloptions_topofmarket_mach_v1_2.number_of_matching_engines = {}

-- Size: Number Of Matching Engines
miax_pearloptions_topofmarket_mach_v1_2.number_of_matching_engines.size = 1

-- Display: Number Of Matching Engines
miax_pearloptions_topofmarket_mach_v1_2.number_of_matching_engines.display = function(value)
  return "Number Of Matching Engines: "..value
end

-- Dissect: Number Of Matching Engines
miax_pearloptions_topofmarket_mach_v1_2.number_of_matching_engines.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.number_of_matching_engines.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearloptions_topofmarket_mach_v1_2.number_of_matching_engines.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.number_of_matching_engines, range, value, display)

  return offset + length, value
end

-- Offer Condition
miax_pearloptions_topofmarket_mach_v1_2.offer_condition = {}

-- Size: Offer Condition
miax_pearloptions_topofmarket_mach_v1_2.offer_condition.size = 1

-- Display: Offer Condition
miax_pearloptions_topofmarket_mach_v1_2.offer_condition.labels = {
  ["A"] = "Offer Condition: Regular (A)",
  ["B"] = "Offer Condition: Public Customer Interest (B)",
  ["C"] = "Offer Condition: Not Firm (C)",
  ["R"] = "Offer Condition: Reserved (R)",
  ["T"] = "Offer Condition: Trading Halt (T)",
}

miax_pearloptions_topofmarket_mach_v1_2.offer_condition.display = function(value)
  return miax_pearloptions_topofmarket_mach_v1_2.offer_condition.labels[value] or "Offer Condition: Unknown("..value..")"
end

-- Dissect: Offer Condition
miax_pearloptions_topofmarket_mach_v1_2.offer_condition.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.offer_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_2.offer_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.offer_condition, range, value, display)

  return offset + length, value
end

-- Offer Price Long
miax_pearloptions_topofmarket_mach_v1_2.offer_price_long = {}

-- Size: Offer Price Long
miax_pearloptions_topofmarket_mach_v1_2.offer_price_long.size = 4

-- Display: Offer Price Long
miax_pearloptions_topofmarket_mach_v1_2.offer_price_long.display = function(value)
  return "Offer Price Long: "..value
end

-- Translate: Offer Price Long
miax_pearloptions_topofmarket_mach_v1_2.offer_price_long.translate = function(raw)
  return raw/10000
end

-- Dissect: Offer Price Long
miax_pearloptions_topofmarket_mach_v1_2.offer_price_long.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.offer_price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_pearloptions_topofmarket_mach_v1_2.offer_price_long.translate(raw)
  local display = miax_pearloptions_topofmarket_mach_v1_2.offer_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.offer_price_long, range, value, display)

  return offset + length, value
end

-- Offer Price Short
miax_pearloptions_topofmarket_mach_v1_2.offer_price_short = {}

-- Size: Offer Price Short
miax_pearloptions_topofmarket_mach_v1_2.offer_price_short.size = 2

-- Display: Offer Price Short
miax_pearloptions_topofmarket_mach_v1_2.offer_price_short.display = function(value)
  return "Offer Price Short: "..value
end

-- Translate: Offer Price Short
miax_pearloptions_topofmarket_mach_v1_2.offer_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Offer Price Short
miax_pearloptions_topofmarket_mach_v1_2.offer_price_short.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.offer_price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_pearloptions_topofmarket_mach_v1_2.offer_price_short.translate(raw)
  local display = miax_pearloptions_topofmarket_mach_v1_2.offer_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.offer_price_short, range, value, display)

  return offset + length, value
end

-- Offer Priority Customer Size Long
miax_pearloptions_topofmarket_mach_v1_2.offer_priority_customer_size_long = {}

-- Size: Offer Priority Customer Size Long
miax_pearloptions_topofmarket_mach_v1_2.offer_priority_customer_size_long.size = 4

-- Display: Offer Priority Customer Size Long
miax_pearloptions_topofmarket_mach_v1_2.offer_priority_customer_size_long.display = function(value)
  return "Offer Priority Customer Size Long: "..value
end

-- Dissect: Offer Priority Customer Size Long
miax_pearloptions_topofmarket_mach_v1_2.offer_priority_customer_size_long.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.offer_priority_customer_size_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_2.offer_priority_customer_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.offer_priority_customer_size_long, range, value, display)

  return offset + length, value
end

-- Offer Priority Customer Size Short
miax_pearloptions_topofmarket_mach_v1_2.offer_priority_customer_size_short = {}

-- Size: Offer Priority Customer Size Short
miax_pearloptions_topofmarket_mach_v1_2.offer_priority_customer_size_short.size = 2

-- Display: Offer Priority Customer Size Short
miax_pearloptions_topofmarket_mach_v1_2.offer_priority_customer_size_short.display = function(value)
  return "Offer Priority Customer Size Short: "..value
end

-- Dissect: Offer Priority Customer Size Short
miax_pearloptions_topofmarket_mach_v1_2.offer_priority_customer_size_short.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.offer_priority_customer_size_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_2.offer_priority_customer_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.offer_priority_customer_size_short, range, value, display)

  return offset + length, value
end

-- Offer Size Long
miax_pearloptions_topofmarket_mach_v1_2.offer_size_long = {}

-- Size: Offer Size Long
miax_pearloptions_topofmarket_mach_v1_2.offer_size_long.size = 4

-- Display: Offer Size Long
miax_pearloptions_topofmarket_mach_v1_2.offer_size_long.display = function(value)
  return "Offer Size Long: "..value
end

-- Dissect: Offer Size Long
miax_pearloptions_topofmarket_mach_v1_2.offer_size_long.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.offer_size_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_2.offer_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.offer_size_long, range, value, display)

  return offset + length, value
end

-- Offer Size Short
miax_pearloptions_topofmarket_mach_v1_2.offer_size_short = {}

-- Size: Offer Size Short
miax_pearloptions_topofmarket_mach_v1_2.offer_size_short.size = 2

-- Display: Offer Size Short
miax_pearloptions_topofmarket_mach_v1_2.offer_size_short.display = function(value)
  return "Offer Size Short: "..value
end

-- Dissect: Offer Size Short
miax_pearloptions_topofmarket_mach_v1_2.offer_size_short.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.offer_size_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_2.offer_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.offer_size_short, range, value, display)

  return offset + length, value
end

-- Opening Time
miax_pearloptions_topofmarket_mach_v1_2.opening_time = {}

-- Size: Opening Time
miax_pearloptions_topofmarket_mach_v1_2.opening_time.size = 8

-- Display: Opening Time
miax_pearloptions_topofmarket_mach_v1_2.opening_time.display = function(value)
  return "Opening Time: "..value
end

-- Dissect: Opening Time
miax_pearloptions_topofmarket_mach_v1_2.opening_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.opening_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_topofmarket_mach_v1_2.opening_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.opening_time, range, value, display)

  return offset + length, value
end

-- Opening Underlying Market Code
miax_pearloptions_topofmarket_mach_v1_2.opening_underlying_market_code = {}

-- Size: Opening Underlying Market Code
miax_pearloptions_topofmarket_mach_v1_2.opening_underlying_market_code.size = 1

-- Display: Opening Underlying Market Code
miax_pearloptions_topofmarket_mach_v1_2.opening_underlying_market_code.labels = {
  ["A"] = "Opening Underlying Market Code: Nyse Amex (A)",
  ["B"] = "Opening Underlying Market Code: Nasdaq Omx Bx (B)",
  ["C"] = "Opening Underlying Market Code: Nse (C)",
  ["D"] = "Opening Underlying Market Code: Finra Adf (D)",
  ["E"] = "Opening Underlying Market Code: Market Independent (E)",
  ["H"] = "Opening Underlying Market Code: Miax Pearl Equities (H)",
  ["I"] = "Opening Underlying Market Code: Ise (I)",
  ["J"] = "Opening Underlying Market Code: Edga (J)",
  ["K"] = "Opening Underlying Market Code: Edgx (K)",
  ["L"] = "Opening Underlying Market Code: Ltse (L)",
  ["M"] = "Opening Underlying Market Code: Cse (M)",
  ["N"] = "Opening Underlying Market Code: Nyse Euronext (N)",
  ["P"] = "Opening Underlying Market Code: Nyse Arca (P)",
  ["Q"] = "Opening Underlying Market Code: Nasdaq Omx Utp (Q)",
  ["T"] = "Opening Underlying Market Code: Nasdaq Omx Cta (T)",
  ["U"] = "Opening Underlying Market Code: Memx (U)",
  ["V"] = "Opening Underlying Market Code: Iex (V)",
  ["W"] = "Opening Underlying Market Code: Cbsx (W)",
  ["X"] = "Opening Underlying Market Code: Nasdaq Omx Phlx (X)",
  ["Y"] = "Opening Underlying Market Code: Bats Y (Y)",
  ["Z"] = "Opening Underlying Market Code: Bats (Z)",
}

miax_pearloptions_topofmarket_mach_v1_2.opening_underlying_market_code.display = function(value)
  return miax_pearloptions_topofmarket_mach_v1_2.opening_underlying_market_code.labels[value] or "Opening Underlying Market Code: Unknown("..value..")"
end

-- Dissect: Opening Underlying Market Code
miax_pearloptions_topofmarket_mach_v1_2.opening_underlying_market_code.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.opening_underlying_market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_2.opening_underlying_market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.opening_underlying_market_code, range, value, display)

  return offset + length, value
end

-- Packet Length
miax_pearloptions_topofmarket_mach_v1_2.packet_length = {}

-- Size: Packet Length
miax_pearloptions_topofmarket_mach_v1_2.packet_length.size = 2

-- Display: Packet Length
miax_pearloptions_topofmarket_mach_v1_2.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
miax_pearloptions_topofmarket_mach_v1_2.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_2.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Type
miax_pearloptions_topofmarket_mach_v1_2.packet_type = {}

-- Size: Packet Type
miax_pearloptions_topofmarket_mach_v1_2.packet_type.size = 1

-- Display: Packet Type
miax_pearloptions_topofmarket_mach_v1_2.packet_type.labels = {
  [0] = "Packet Type: Heartbeat (0)",
  [1] = "Packet Type: Start Of Session (1)",
  [2] = "Packet Type: End Of Session (2)",
  [3] = "Packet Type: Application Message (3)",
}

miax_pearloptions_topofmarket_mach_v1_2.packet_type.display = function(value)
  return miax_pearloptions_topofmarket_mach_v1_2.packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
miax_pearloptions_topofmarket_mach_v1_2.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.packet_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_2.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Pbbo Condition
miax_pearloptions_topofmarket_mach_v1_2.pbbo_condition = {}

-- Size: Pbbo Condition
miax_pearloptions_topofmarket_mach_v1_2.pbbo_condition.size = 1

-- Display: Pbbo Condition
miax_pearloptions_topofmarket_mach_v1_2.pbbo_condition.labels = {
  ["A"] = "Pbbo Condition: Regular (A)",
  ["B"] = "Pbbo Condition: Public Customer Interest (B)",
  ["C"] = "Pbbo Condition: Not Firm (C)",
  ["R"] = "Pbbo Condition: Reserved (R)",
  ["T"] = "Pbbo Condition: Trading Halt (T)",
}

miax_pearloptions_topofmarket_mach_v1_2.pbbo_condition.display = function(value)
  return miax_pearloptions_topofmarket_mach_v1_2.pbbo_condition.labels[value] or "Pbbo Condition: Unknown("..value..")"
end

-- Dissect: Pbbo Condition
miax_pearloptions_topofmarket_mach_v1_2.pbbo_condition.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.pbbo_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_2.pbbo_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.pbbo_condition, range, value, display)

  return offset + length, value
end

-- PBBO Price Long
miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_long = {}

-- Size: PBBO Price Long
miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_long.size = 4

-- Display: PBBO Price Long
miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_long.display = function(value)
  return "PBBO Price Long: "..value
end

-- Translate: PBBO Price Long
miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_long.translate = function(raw)
  return raw/10000
end

-- Dissect: PBBO Price Long
miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_long.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_long.translate(raw)
  local display = miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.pbbo_price_long, range, value, display)

  return offset + length, value
end

-- PBBO Price Short
miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_short = {}

-- Size: PBBO Price Short
miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_short.size = 2

-- Display: PBBO Price Short
miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_short.display = function(value)
  return "PBBO Price Short: "..value
end

-- Translate: PBBO Price Short
miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: PBBO Price Short
miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_short.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_short.translate(raw)
  local display = miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.pbbo_price_short, range, value, display)

  return offset + length, value
end

-- PBBO Priority Customer Size Long
miax_pearloptions_topofmarket_mach_v1_2.pbbo_priority_customer_size_long = {}

-- Size: PBBO Priority Customer Size Long
miax_pearloptions_topofmarket_mach_v1_2.pbbo_priority_customer_size_long.size = 4

-- Display: PBBO Priority Customer Size Long
miax_pearloptions_topofmarket_mach_v1_2.pbbo_priority_customer_size_long.display = function(value)
  return "PBBO Priority Customer Size Long: "..value
end

-- Dissect: PBBO Priority Customer Size Long
miax_pearloptions_topofmarket_mach_v1_2.pbbo_priority_customer_size_long.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.pbbo_priority_customer_size_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_2.pbbo_priority_customer_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.pbbo_priority_customer_size_long, range, value, display)

  return offset + length, value
end

-- PBBO Priority Customer Size Short
miax_pearloptions_topofmarket_mach_v1_2.pbbo_priority_customer_size_short = {}

-- Size: PBBO Priority Customer Size Short
miax_pearloptions_topofmarket_mach_v1_2.pbbo_priority_customer_size_short.size = 2

-- Display: PBBO Priority Customer Size Short
miax_pearloptions_topofmarket_mach_v1_2.pbbo_priority_customer_size_short.display = function(value)
  return "PBBO Priority Customer Size Short: "..value
end

-- Dissect: PBBO Priority Customer Size Short
miax_pearloptions_topofmarket_mach_v1_2.pbbo_priority_customer_size_short.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.pbbo_priority_customer_size_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_2.pbbo_priority_customer_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.pbbo_priority_customer_size_short, range, value, display)

  return offset + length, value
end

-- PBBO Size Long
miax_pearloptions_topofmarket_mach_v1_2.pbbo_size_long = {}

-- Size: PBBO Size Long
miax_pearloptions_topofmarket_mach_v1_2.pbbo_size_long.size = 4

-- Display: PBBO Size Long
miax_pearloptions_topofmarket_mach_v1_2.pbbo_size_long.display = function(value)
  return "PBBO Size Long: "..value
end

-- Dissect: PBBO Size Long
miax_pearloptions_topofmarket_mach_v1_2.pbbo_size_long.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.pbbo_size_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_2.pbbo_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.pbbo_size_long, range, value, display)

  return offset + length, value
end

-- PBBO Size Short
miax_pearloptions_topofmarket_mach_v1_2.pbbo_size_short = {}

-- Size: PBBO Size Short
miax_pearloptions_topofmarket_mach_v1_2.pbbo_size_short.size = 2

-- Display: PBBO Size Short
miax_pearloptions_topofmarket_mach_v1_2.pbbo_size_short.display = function(value)
  return "PBBO Size Short: "..value
end

-- Dissect: PBBO Size Short
miax_pearloptions_topofmarket_mach_v1_2.pbbo_size_short.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.pbbo_size_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_2.pbbo_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.pbbo_size_short, range, value, display)

  return offset + length, value
end

-- Pearl Bbo Posting Increment Indicator
miax_pearloptions_topofmarket_mach_v1_2.pearl_bbo_posting_increment_indicator = {}

-- Size: Pearl Bbo Posting Increment Indicator
miax_pearloptions_topofmarket_mach_v1_2.pearl_bbo_posting_increment_indicator.size = 1

-- Display: Pearl Bbo Posting Increment Indicator
miax_pearloptions_topofmarket_mach_v1_2.pearl_bbo_posting_increment_indicator.labels = {
  ["P"] = "Pearl Bbo Posting Increment Indicator: Penny (P)",
  ["N"] = "Pearl Bbo Posting Increment Indicator: Penny Or Nickel (N)",
  ["D"] = "Pearl Bbo Posting Increment Indicator: Nickel Or Dime (D)",
}

miax_pearloptions_topofmarket_mach_v1_2.pearl_bbo_posting_increment_indicator.display = function(value)
  return miax_pearloptions_topofmarket_mach_v1_2.pearl_bbo_posting_increment_indicator.labels[value] or "Pearl Bbo Posting Increment Indicator: Unknown("..value..")"
end

-- Dissect: Pearl Bbo Posting Increment Indicator
miax_pearloptions_topofmarket_mach_v1_2.pearl_bbo_posting_increment_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.pearl_bbo_posting_increment_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_2.pearl_bbo_posting_increment_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.pearl_bbo_posting_increment_indicator, range, value, display)

  return offset + length, value
end

-- Product Id
miax_pearloptions_topofmarket_mach_v1_2.product_id = {}

-- Size: Product Id
miax_pearloptions_topofmarket_mach_v1_2.product_id.size = 4

-- Display: Product Id
miax_pearloptions_topofmarket_mach_v1_2.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
miax_pearloptions_topofmarket_mach_v1_2.product_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_2.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.product_id, range, value, display)

  return offset + length, value
end

-- Reference Correction Number
miax_pearloptions_topofmarket_mach_v1_2.reference_correction_number = {}

-- Size: Reference Correction Number
miax_pearloptions_topofmarket_mach_v1_2.reference_correction_number.size = 1

-- Display: Reference Correction Number
miax_pearloptions_topofmarket_mach_v1_2.reference_correction_number.display = function(value)
  return "Reference Correction Number: "..value
end

-- Dissect: Reference Correction Number
miax_pearloptions_topofmarket_mach_v1_2.reference_correction_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.reference_correction_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_2.reference_correction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.reference_correction_number, range, value, display)

  return offset + length, value
end

-- Reference Trade Id
miax_pearloptions_topofmarket_mach_v1_2.reference_trade_id = {}

-- Size: Reference Trade Id
miax_pearloptions_topofmarket_mach_v1_2.reference_trade_id.size = 4

-- Display: Reference Trade Id
miax_pearloptions_topofmarket_mach_v1_2.reference_trade_id.display = function(value)
  return "Reference Trade Id: "..value
end

-- Dissect: Reference Trade Id
miax_pearloptions_topofmarket_mach_v1_2.reference_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.reference_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_2.reference_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.reference_trade_id, range, value, display)

  return offset + length, value
end

-- Refresh Message Type
miax_pearloptions_topofmarket_mach_v1_2.refresh_message_type = {}

-- Size: Refresh Message Type
miax_pearloptions_topofmarket_mach_v1_2.refresh_message_type.size = 1

-- Display: Refresh Message Type
miax_pearloptions_topofmarket_mach_v1_2.refresh_message_type.labels = {
  ["P"] = "Refresh Message Type: Series Update Refresh (P)",
  ["Q"] = "Refresh Message Type: Top Of Market Refresh (Q)",
  ["U"] = "Refresh Message Type: Underlying Trading Status Refresh (U)",
  ["S"] = "Refresh Message Type: System State Refresh (S)",
}

miax_pearloptions_topofmarket_mach_v1_2.refresh_message_type.display = function(value)
  return miax_pearloptions_topofmarket_mach_v1_2.refresh_message_type.labels[value] or "Refresh Message Type: Unknown("..value..")"
end

-- Dissect: Refresh Message Type
miax_pearloptions_topofmarket_mach_v1_2.refresh_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.refresh_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_2.refresh_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.refresh_message_type, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
miax_pearloptions_topofmarket_mach_v1_2.requested_sequence_number = {}

-- Size: Requested Sequence Number
miax_pearloptions_topofmarket_mach_v1_2.requested_sequence_number.size = 8

-- Display: Requested Sequence Number
miax_pearloptions_topofmarket_mach_v1_2.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
miax_pearloptions_topofmarket_mach_v1_2.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearloptions_topofmarket_mach_v1_2.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Trading Session Id
miax_pearloptions_topofmarket_mach_v1_2.requested_trading_session_id = {}

-- Size: Requested Trading Session Id
miax_pearloptions_topofmarket_mach_v1_2.requested_trading_session_id.size = 1

-- Display: Requested Trading Session Id
miax_pearloptions_topofmarket_mach_v1_2.requested_trading_session_id.display = function(value)
  return "Requested Trading Session Id: "..value
end

-- Dissect: Requested Trading Session Id
miax_pearloptions_topofmarket_mach_v1_2.requested_trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.requested_trading_session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearloptions_topofmarket_mach_v1_2.requested_trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.requested_trading_session_id, range, value, display)

  return offset + length, value
end

-- Reserved 12
miax_pearloptions_topofmarket_mach_v1_2.reserved_12 = {}

-- Size: Reserved 12
miax_pearloptions_topofmarket_mach_v1_2.reserved_12.size = 12

-- Display: Reserved 12
miax_pearloptions_topofmarket_mach_v1_2.reserved_12.display = function(value)
  return "Reserved 12: "..value
end

-- Dissect: Reserved 12
miax_pearloptions_topofmarket_mach_v1_2.reserved_12.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.reserved_12.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_pearloptions_topofmarket_mach_v1_2.reserved_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.reserved_12, range, value, display)

  return offset + length, value
end

-- Restricted Option
miax_pearloptions_topofmarket_mach_v1_2.restricted_option = {}

-- Size: Restricted Option
miax_pearloptions_topofmarket_mach_v1_2.restricted_option.size = 1

-- Display: Restricted Option
miax_pearloptions_topofmarket_mach_v1_2.restricted_option.labels = {
  ["Y"] = "Restricted Option: Accept Position Closing (Y)",
  ["N"] = "Restricted Option: Accept Open And Close (N)",
}

miax_pearloptions_topofmarket_mach_v1_2.restricted_option.display = function(value)
  return miax_pearloptions_topofmarket_mach_v1_2.restricted_option.labels[value] or "Restricted Option: Unknown("..value..")"
end

-- Dissect: Restricted Option
miax_pearloptions_topofmarket_mach_v1_2.restricted_option.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.restricted_option.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_2.restricted_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.restricted_option, range, value, display)

  return offset + length, value
end

-- Seconds
miax_pearloptions_topofmarket_mach_v1_2.seconds = {}

-- Size: Seconds
miax_pearloptions_topofmarket_mach_v1_2.seconds.size = 4

-- Store: Seconds
miax_pearloptions_topofmarket_mach_v1_2.seconds.current = nil

-- Generated: Seconds
miax_pearloptions_topofmarket_mach_v1_2.seconds.generated = function(value, range, packet, parent)
  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_miax_pearloptions_topofmarket_mach_v1_2.fields.seconds
  if miax_pearloptions_topofmarket_mach_v1_2.absolute_time_base == 1 then field = omi_miax_pearloptions_topofmarket_mach_v1_2.fields.seconds_utc end
  local seconds = parent:add(field, range, NSTime.new(value, 0))
  seconds:set_generated()
end

-- Dissect: Seconds
miax_pearloptions_topofmarket_mach_v1_2.seconds.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_miax_pearloptions_topofmarket_mach_v1_2.fields.seconds
  if miax_pearloptions_topofmarket_mach_v1_2.absolute_time_base == 1 then field = omi_miax_pearloptions_topofmarket_mach_v1_2.fields.seconds_utc end

  local seconds = value
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Security Symbol
miax_pearloptions_topofmarket_mach_v1_2.security_symbol = {}

-- Size: Security Symbol
miax_pearloptions_topofmarket_mach_v1_2.security_symbol.size = 6

-- Display: Security Symbol
miax_pearloptions_topofmarket_mach_v1_2.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
miax_pearloptions_topofmarket_mach_v1_2.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_topofmarket_mach_v1_2.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sequence Number
miax_pearloptions_topofmarket_mach_v1_2.sequence_number = {}

-- Size: Sequence Number
miax_pearloptions_topofmarket_mach_v1_2.sequence_number.size = 8

-- Display: Sequence Number
miax_pearloptions_topofmarket_mach_v1_2.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_pearloptions_topofmarket_mach_v1_2.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearloptions_topofmarket_mach_v1_2.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
miax_pearloptions_topofmarket_mach_v1_2.sequenced_message_type = {}

-- Size: Sequenced Message Type
miax_pearloptions_topofmarket_mach_v1_2.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
miax_pearloptions_topofmarket_mach_v1_2.sequenced_message_type.display = function(value)
  return "Sequenced Message Type: "..value
end

-- Dissect: Sequenced Message Type
miax_pearloptions_topofmarket_mach_v1_2.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_2.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Sesm Packet Length
miax_pearloptions_topofmarket_mach_v1_2.sesm_packet_length = {}

-- Size: Sesm Packet Length
miax_pearloptions_topofmarket_mach_v1_2.sesm_packet_length.size = 2

-- Display: Sesm Packet Length
miax_pearloptions_topofmarket_mach_v1_2.sesm_packet_length.display = function(value)
  return "Sesm Packet Length: "..value
end

-- Dissect: Sesm Packet Length
miax_pearloptions_topofmarket_mach_v1_2.sesm_packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.sesm_packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_2.sesm_packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.sesm_packet_length, range, value, display)

  return offset + length, value
end

-- Sesm Packet Type
miax_pearloptions_topofmarket_mach_v1_2.sesm_packet_type = {}

-- Size: Sesm Packet Type
miax_pearloptions_topofmarket_mach_v1_2.sesm_packet_type.size = 1

-- Display: Sesm Packet Type
miax_pearloptions_topofmarket_mach_v1_2.sesm_packet_type.labels = {
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

miax_pearloptions_topofmarket_mach_v1_2.sesm_packet_type.display = function(value)
  return miax_pearloptions_topofmarket_mach_v1_2.sesm_packet_type.labels[value] or "Sesm Packet Type: Unknown("..value..")"
end

-- Dissect: Sesm Packet Type
miax_pearloptions_topofmarket_mach_v1_2.sesm_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.sesm_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_2.sesm_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.sesm_packet_type, range, value, display)

  return offset + length, value
end

-- Sesm Version
miax_pearloptions_topofmarket_mach_v1_2.sesm_version = {}

-- Size: Sesm Version
miax_pearloptions_topofmarket_mach_v1_2.sesm_version.size = 5

-- Display: Sesm Version
miax_pearloptions_topofmarket_mach_v1_2.sesm_version.display = function(value)
  return "Sesm Version: "..value
end

-- Dissect: Sesm Version
miax_pearloptions_topofmarket_mach_v1_2.sesm_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.sesm_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_topofmarket_mach_v1_2.sesm_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.sesm_version, range, value, display)

  return offset + length, value
end

-- Session Id
miax_pearloptions_topofmarket_mach_v1_2.session_id = {}

-- Size: Session Id
miax_pearloptions_topofmarket_mach_v1_2.session_id.size = 4

-- Display: Session Id
miax_pearloptions_topofmarket_mach_v1_2.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_pearloptions_topofmarket_mach_v1_2.session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_2.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.session_id, range, value, display)

  return offset + length, value
end

-- Session Number
miax_pearloptions_topofmarket_mach_v1_2.session_number = {}

-- Size: Session Number
miax_pearloptions_topofmarket_mach_v1_2.session_number.size = 1

-- Display: Session Number
miax_pearloptions_topofmarket_mach_v1_2.session_number.display = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
miax_pearloptions_topofmarket_mach_v1_2.session_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.session_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_2.session_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.session_number, range, value, display)

  return offset + length, value
end

-- Start Sequence Number
miax_pearloptions_topofmarket_mach_v1_2.start_sequence_number = {}

-- Size: Start Sequence Number
miax_pearloptions_topofmarket_mach_v1_2.start_sequence_number.size = 8

-- Display: Start Sequence Number
miax_pearloptions_topofmarket_mach_v1_2.start_sequence_number.display = function(value)
  return "Start Sequence Number: "..value
end

-- Dissect: Start Sequence Number
miax_pearloptions_topofmarket_mach_v1_2.start_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.start_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearloptions_topofmarket_mach_v1_2.start_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.start_sequence_number, range, value, display)

  return offset + length, value
end

-- Strike Price
miax_pearloptions_topofmarket_mach_v1_2.strike_price = {}

-- Size: Strike Price
miax_pearloptions_topofmarket_mach_v1_2.strike_price.size = 4

-- Display: Strike Price
miax_pearloptions_topofmarket_mach_v1_2.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
miax_pearloptions_topofmarket_mach_v1_2.strike_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Strike Price
miax_pearloptions_topofmarket_mach_v1_2.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_pearloptions_topofmarket_mach_v1_2.strike_price.translate(raw)
  local display = miax_pearloptions_topofmarket_mach_v1_2.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.strike_price, range, value, display)

  return offset + length, value
end

-- System Status
miax_pearloptions_topofmarket_mach_v1_2.system_status = {}

-- Size: System Status
miax_pearloptions_topofmarket_mach_v1_2.system_status.size = 1

-- Display: System Status
miax_pearloptions_topofmarket_mach_v1_2.system_status.labels = {
  ["S"] = "System Status: Start Of System Hours (S)",
  ["C"] = "System Status: End Of System Hours (C)",
  ["1"] = "System Status: Start Test Session (1)",
  ["2"] = "System Status: End Of Test Session (2)",
}

miax_pearloptions_topofmarket_mach_v1_2.system_status.display = function(value)
  return miax_pearloptions_topofmarket_mach_v1_2.system_status.labels[value] or "System Status: Unknown("..value..")"
end

-- Dissect: System Status
miax_pearloptions_topofmarket_mach_v1_2.system_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.system_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_2.system_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.system_status, range, value, display)

  return offset + length, value
end

-- Test Text
miax_pearloptions_topofmarket_mach_v1_2.test_text = {}

-- Display: Test Text
miax_pearloptions_topofmarket_mach_v1_2.test_text.display = function(value)
  return "Test Text: "..value
end

-- Dissect runtime sized field: Test Text
miax_pearloptions_topofmarket_mach_v1_2.test_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_2.test_text.display(value, packet, parent, size)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.test_text, range, value, display)

  return offset + size, value
end

-- To M Version
miax_pearloptions_topofmarket_mach_v1_2.to_m_version = {}

-- Size: To M Version
miax_pearloptions_topofmarket_mach_v1_2.to_m_version.size = 8

-- Display: To M Version
miax_pearloptions_topofmarket_mach_v1_2.to_m_version.display = function(value)
  return "To M Version: "..value
end

-- Dissect: To M Version
miax_pearloptions_topofmarket_mach_v1_2.to_m_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.to_m_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_topofmarket_mach_v1_2.to_m_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.to_m_version, range, value, display)

  return offset + length, value
end

-- Trade Condition
miax_pearloptions_topofmarket_mach_v1_2.trade_condition = {}

-- Size: Trade Condition
miax_pearloptions_topofmarket_mach_v1_2.trade_condition.size = 1

-- Display: Trade Condition
miax_pearloptions_topofmarket_mach_v1_2.trade_condition.display = function(value)
  if value == " " then
    return "Trade Condition: Regular (<whitespace>)"
  end
  if value == "A" then
    return "Trade Condition: Cancel Of Trade Previously Reported Other Than As The Last Or Opening (A)"
  end
  if value == "B" then
    return "Trade Condition: Late And Is Out Of Sequence (B)"
  end
  if value == "C" then
    return "Trade Condition: Cancel Of The Last Reported Trade (C)"
  end
  if value == "D" then
    return "Trade Condition: Late And Is In Correct Sequence (D)"
  end
  if value == "E" then
    return "Trade Condition: Cancel Of The First Reported Trade (E)"
  end
  if value == "F" then
    return "Trade Condition: Late Report Of The Opening Trade And Is Out Of Sequence (F)"
  end
  if value == "G" then
    return "Trade Condition: Cancel Of The Only Reported Trade (G)"
  end
  if value == "H" then
    return "Trade Condition: Late Report Of The Opening Trade And Is In Correct Sequence (H)"
  end
  if value == "I" then
    return "Trade Condition: Auto (I)"
  end
  if value == "J" then
    return "Trade Condition: Reopening Of An Option (J)"
  end
  if value == "K" then
    return "Trade Condition: Reserved (K)"
  end
  if value == "L" then
    return "Trade Condition: Reserved (L)"
  end
  if value == "M" then
    return "Trade Condition: Reserved (M)"
  end
  if value == "N" then
    return "Trade Condition: Reserved (N)"
  end
  if value == "O" then
    return "Trade Condition: Reserved (O)"
  end
  if value == "P" then
    return "Trade Condition: Reserved (P)"
  end
  if value == "Q" then
    return "Trade Condition: Reserved (Q)"
  end
  if value == "R" then
    return "Trade Condition: Execution Of An Order Which Was Stopped At A Price That Did Not Constitute A Trade Through On Another Market At The Time Of The Stop (R)"
  end
  if value == "S" then
    return "Trade Condition: Execution Of An Iso Order (S)"
  end
  if value == "T" then
    return "Trade Condition: Reserved (T)"
  end
  if value == "X" then
    return "Trade Condition: Trade Through Exempt (X)"
  end
  if value == "a" then
    return "Trade Condition: Paired Prime (a)"
  end
  if value == "b" then
    return "Trade Condition: Reserved (b)"
  end
  if value == "c" then
    return "Trade Condition: Prime Customer To Customer Cross Or Prime Qcc (c)"
  end
  if value == "d" then
    return "Trade Condition: Reserved (d)"
  end
  if value == "e" then
    return "Trade Condition: Reserved (e)"
  end
  if value == "f" then
    return "Trade Condition: Complex Transaction That Is Not Complex Stocktied And Does Not Involve Legging (f)"
  end
  if value == "g" then
    return "Trade Condition: Complex Prime Transaction That Is Not Complex Stocktied And Does Not Involve Legging (g)"
  end
  if value == "h" then
    return "Trade Condition: Complex Prime Customer To Customer Cross Or Complex Prime Qcc Transaction That Is Not Complex Stocktied (h)"
  end
  if value == "i" then
    return "Trade Condition: Reserved (i)"
  end
  if value == "j" then
    return "Trade Condition: Complex Legging Transaction That Is Not Complex Stocktied (j)"
  end
  if value == "k" then
    return "Trade Condition: Complex Prime Stocktied Transaction That Does Not Involve Legging (k)"
  end
  if value == "l" then
    return "Trade Condition: Complex Prime Legging Transaction That Is Not Complex Stocktied (l)"
  end
  if value == "m" then
    return "Trade Condition: Reserved (m)"
  end
  if value == "n" then
    return "Trade Condition: Complex Stocktied Transaction That Does Not Involve Legging (n)"
  end
  if value == "o" then
    return "Trade Condition: Complex Customer To Customer Cross Stocktied Or Complex Qcc Stocktied Transaction (o)"
  end
  if value == "p" then
    return "Trade Condition: Reserved (p)"
  end
  if value == "q" then
    return "Trade Condition: Reserved (q)"
  end
  if value == "r" then
    return "Trade Condition: Reserved (r)"
  end
  if value == "s" then
    return "Trade Condition: Reserved (s)"
  end
  if value == "t" then
    return "Trade Condition: Reserved (t)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
miax_pearloptions_topofmarket_mach_v1_2.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_2.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trade Id
miax_pearloptions_topofmarket_mach_v1_2.trade_id = {}

-- Size: Trade Id
miax_pearloptions_topofmarket_mach_v1_2.trade_id.size = 4

-- Display: Trade Id
miax_pearloptions_topofmarket_mach_v1_2.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
miax_pearloptions_topofmarket_mach_v1_2.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_2.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Price
miax_pearloptions_topofmarket_mach_v1_2.trade_price = {}

-- Size: Trade Price
miax_pearloptions_topofmarket_mach_v1_2.trade_price.size = 4

-- Display: Trade Price
miax_pearloptions_topofmarket_mach_v1_2.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
miax_pearloptions_topofmarket_mach_v1_2.trade_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Trade Price
miax_pearloptions_topofmarket_mach_v1_2.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.trade_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_pearloptions_topofmarket_mach_v1_2.trade_price.translate(raw)
  local display = miax_pearloptions_topofmarket_mach_v1_2.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Size
miax_pearloptions_topofmarket_mach_v1_2.trade_size = {}

-- Size: Trade Size
miax_pearloptions_topofmarket_mach_v1_2.trade_size.size = 4

-- Display: Trade Size
miax_pearloptions_topofmarket_mach_v1_2.trade_size.display = function(value)
  return "Trade Size: "..value
end

-- Dissect: Trade Size
miax_pearloptions_topofmarket_mach_v1_2.trade_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.trade_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_2.trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.trade_size, range, value, display)

  return offset + length, value
end

-- Trading Session Id
miax_pearloptions_topofmarket_mach_v1_2.trading_session_id = {}

-- Size: Trading Session Id
miax_pearloptions_topofmarket_mach_v1_2.trading_session_id.size = 1

-- Display: Trading Session Id
miax_pearloptions_topofmarket_mach_v1_2.trading_session_id.display = function(value)
  return "Trading Session Id: "..value
end

-- Dissect: Trading Session Id
miax_pearloptions_topofmarket_mach_v1_2.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.trading_session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearloptions_topofmarket_mach_v1_2.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Trading Status
miax_pearloptions_topofmarket_mach_v1_2.trading_status = {}

-- Size: Trading Status
miax_pearloptions_topofmarket_mach_v1_2.trading_status.size = 1

-- Display: Trading Status
miax_pearloptions_topofmarket_mach_v1_2.trading_status.labels = {
  ["H"] = "Trading Status: Halted (H)",
  ["R"] = "Trading Status: Resumed (R)",
  ["O"] = "Trading Status: Opened (O)",
}

miax_pearloptions_topofmarket_mach_v1_2.trading_status.display = function(value)
  return miax_pearloptions_topofmarket_mach_v1_2.trading_status.labels[value] or "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
miax_pearloptions_topofmarket_mach_v1_2.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_2.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
miax_pearloptions_topofmarket_mach_v1_2.underlying_symbol = {}

-- Size: Underlying Symbol
miax_pearloptions_topofmarket_mach_v1_2.underlying_symbol.size = 11

-- Display: Underlying Symbol
miax_pearloptions_topofmarket_mach_v1_2.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
miax_pearloptions_topofmarket_mach_v1_2.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_topofmarket_mach_v1_2.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
miax_pearloptions_topofmarket_mach_v1_2.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
miax_pearloptions_topofmarket_mach_v1_2.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
miax_pearloptions_topofmarket_mach_v1_2.unsequenced_message_type.labels = {
  ["R"] = "Unsequenced Message Type: Refresh Request Message (R)",
  ["r"] = "Unsequenced Message Type: Refresh Response Message (r)",
  ["E"] = "Unsequenced Message Type: End Of Refresh Notification Message (E)",
}

miax_pearloptions_topofmarket_mach_v1_2.unsequenced_message_type.display = function(value)
  return miax_pearloptions_topofmarket_mach_v1_2.unsequenced_message_type.labels[value] or "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
miax_pearloptions_topofmarket_mach_v1_2.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_2.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
miax_pearloptions_topofmarket_mach_v1_2.username = {}

-- Size: Username
miax_pearloptions_topofmarket_mach_v1_2.username.size = 5

-- Display: Username
miax_pearloptions_topofmarket_mach_v1_2.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
miax_pearloptions_topofmarket_mach_v1_2.username.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_topofmarket_mach_v1_2.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.username, range, value, display)

  return offset + length, value
end

-- Timestamp
miax_pearloptions_topofmarket_mach_v1_2.timestamp = {}

-- Translate: Timestamp
miax_pearloptions_topofmarket_mach_v1_2.timestamp.translate = function(nanoseconds, stored_seconds)
  return UInt64.new(stored_seconds * 1000000000 + nanoseconds)
end

-- Display: Timestamp
miax_pearloptions_topofmarket_mach_v1_2.timestamp.display = function(nanoseconds, stored_seconds)
  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", stored_seconds)..string.format("%09d", nanoseconds)
end

-- Composite: Timestamp
miax_pearloptions_topofmarket_mach_v1_2.timestamp.composite = function(buffer, offset, stored_seconds, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_2.nanoseconds.size
  local range = buffer(offset, length)
  local nanoseconds = range:le_uint()
  local value = miax_pearloptions_topofmarket_mach_v1_2.timestamp.translate(nanoseconds, stored_seconds)
  local display = miax_pearloptions_topofmarket_mach_v1_2.timestamp.display(nanoseconds, stored_seconds, packet)
  parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.timestamp, range, value, display)

  miax_pearloptions_topofmarket_mach_v1_2.seconds.generated(stored_seconds, range, packet, parent)

  display = miax_pearloptions_topofmarket_mach_v1_2.nanoseconds.display(nanoseconds)
  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.nanoseconds, range, nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
miax_pearloptions_topofmarket_mach_v1_2.timestamp.dissect = function(buffer, offset, packet, parent)
  if miax_pearloptions_topofmarket_mach_v1_2.format_timestamp then
    local stored_seconds = miax_pearloptions_topofmarket_mach_v1_2.seconds.current

    if stored_seconds ~= nil then
      return miax_pearloptions_topofmarket_mach_v1_2.timestamp.composite(buffer, offset, stored_seconds, packet, parent)
    end
  end

  return miax_pearloptions_topofmarket_mach_v1_2.nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Miax PearlOptions TopOfMarket Mach 1.2
-----------------------------------------------------------------------

-- Test Packet
miax_pearloptions_topofmarket_mach_v1_2.test_packet = {}

-- Calculate size of: Test Packet
miax_pearloptions_topofmarket_mach_v1_2.test_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Test Text
  index = index + buffer(offset + index - 3, 2):le_uint()

  return index
end

-- Display: Test Packet
miax_pearloptions_topofmarket_mach_v1_2.test_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Test Packet
miax_pearloptions_topofmarket_mach_v1_2.test_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Test Text
  local size_of_test_text = sesm_packet_length - 1

  -- Test Text: 0 Byte Ascii String
  index, test_text = miax_pearloptions_topofmarket_mach_v1_2.test_text.dissect(buffer, index, packet, parent, size_of_test_text)

  return index
end

-- Dissect: Test Packet
miax_pearloptions_topofmarket_mach_v1_2.test_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.test_packet, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_2.test_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_2.test_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_2.test_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Heartbeat
miax_pearloptions_topofmarket_mach_v1_2.client_heartbeat = {}

-- Display: Client Heartbeat
miax_pearloptions_topofmarket_mach_v1_2.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
miax_pearloptions_topofmarket_mach_v1_2.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_pearloptions_topofmarket_mach_v1_2.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
miax_pearloptions_topofmarket_mach_v1_2.server_heartbeat = {}

-- Display: Server Heartbeat
miax_pearloptions_topofmarket_mach_v1_2.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
miax_pearloptions_topofmarket_mach_v1_2.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_pearloptions_topofmarket_mach_v1_2.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Trading Session Update
miax_pearloptions_topofmarket_mach_v1_2.trading_session_update = {}

-- Display: Trading Session Update
miax_pearloptions_topofmarket_mach_v1_2.trading_session_update.display = function(packet, parent, length)
  return "Trading Session Update"
end


-- Dissect: Trading Session Update
miax_pearloptions_topofmarket_mach_v1_2.trading_session_update.dissect = function(buffer, offset, packet, parent)
  local display = miax_pearloptions_topofmarket_mach_v1_2.trading_session_update.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Goodbye Packet
miax_pearloptions_topofmarket_mach_v1_2.goodbye_packet = {}

-- Calculate size of: Goodbye Packet
miax_pearloptions_topofmarket_mach_v1_2.goodbye_packet.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearloptions_topofmarket_mach_v1_2.logout_reason.size

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Goodbye Packet
miax_pearloptions_topofmarket_mach_v1_2.goodbye_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Goodbye Packet
miax_pearloptions_topofmarket_mach_v1_2.goodbye_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_pearloptions_topofmarket_mach_v1_2.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = sesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_pearloptions_topofmarket_mach_v1_2.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Goodbye Packet
miax_pearloptions_topofmarket_mach_v1_2.goodbye_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.goodbye_packet, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_2.goodbye_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_2.goodbye_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_2.goodbye_packet.fields(buffer, offset, packet, parent)
  end
end

-- Logout Request
miax_pearloptions_topofmarket_mach_v1_2.logout_request = {}

-- Calculate size of: Logout Request
miax_pearloptions_topofmarket_mach_v1_2.logout_request.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearloptions_topofmarket_mach_v1_2.logout_reason.size

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Logout Request
miax_pearloptions_topofmarket_mach_v1_2.logout_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Request
miax_pearloptions_topofmarket_mach_v1_2.logout_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_pearloptions_topofmarket_mach_v1_2.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = sesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_pearloptions_topofmarket_mach_v1_2.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Logout Request
miax_pearloptions_topofmarket_mach_v1_2.logout_request.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.logout_request, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_2.logout_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_2.logout_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_2.logout_request.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request
miax_pearloptions_topofmarket_mach_v1_2.retransmission_request = {}

-- Size: Retransmission Request
miax_pearloptions_topofmarket_mach_v1_2.retransmission_request.size =
  miax_pearloptions_topofmarket_mach_v1_2.start_sequence_number.size + 
  miax_pearloptions_topofmarket_mach_v1_2.end_sequence_number.size

-- Display: Retransmission Request
miax_pearloptions_topofmarket_mach_v1_2.retransmission_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request
miax_pearloptions_topofmarket_mach_v1_2.retransmission_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, start_sequence_number = miax_pearloptions_topofmarket_mach_v1_2.start_sequence_number.dissect(buffer, index, packet, parent)

  -- End Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, end_sequence_number = miax_pearloptions_topofmarket_mach_v1_2.end_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request
miax_pearloptions_topofmarket_mach_v1_2.retransmission_request.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.retransmission_request, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_2.retransmission_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_2.retransmission_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_2.retransmission_request.fields(buffer, offset, packet, parent)
  end
end

-- Synchronization Complete
miax_pearloptions_topofmarket_mach_v1_2.synchronization_complete = {}

-- Size: Synchronization Complete
miax_pearloptions_topofmarket_mach_v1_2.synchronization_complete.size =
  miax_pearloptions_topofmarket_mach_v1_2.number_of_matching_engines.size

-- Display: Synchronization Complete
miax_pearloptions_topofmarket_mach_v1_2.synchronization_complete.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Synchronization Complete
miax_pearloptions_topofmarket_mach_v1_2.synchronization_complete.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Matching Engines: 1 Byte Unsigned Fixed Width Integer
  index, number_of_matching_engines = miax_pearloptions_topofmarket_mach_v1_2.number_of_matching_engines.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Synchronization Complete
miax_pearloptions_topofmarket_mach_v1_2.synchronization_complete.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.synchronization_complete, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_2.synchronization_complete.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_2.synchronization_complete.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_2.synchronization_complete.fields(buffer, offset, packet, parent)
  end
end

-- Login Response
miax_pearloptions_topofmarket_mach_v1_2.login_response = {}

-- Size: Login Response
miax_pearloptions_topofmarket_mach_v1_2.login_response.size =
  miax_pearloptions_topofmarket_mach_v1_2.number_of_matching_engines.size + 
  miax_pearloptions_topofmarket_mach_v1_2.login_status.size + 
  miax_pearloptions_topofmarket_mach_v1_2.trading_session_id.size + 
  miax_pearloptions_topofmarket_mach_v1_2.highest_sequence_number.size

-- Display: Login Response
miax_pearloptions_topofmarket_mach_v1_2.login_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response
miax_pearloptions_topofmarket_mach_v1_2.login_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Matching Engines: 1 Byte Unsigned Fixed Width Integer
  index, number_of_matching_engines = miax_pearloptions_topofmarket_mach_v1_2.number_of_matching_engines.dissect(buffer, index, packet, parent)

  -- Login Status: 1 Byte Ascii String Enum with 8 values
  index, login_status = miax_pearloptions_topofmarket_mach_v1_2.login_status.dissect(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer
  index, trading_session_id = miax_pearloptions_topofmarket_mach_v1_2.trading_session_id.dissect(buffer, index, packet, parent)

  -- Highest Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, highest_sequence_number = miax_pearloptions_topofmarket_mach_v1_2.highest_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
miax_pearloptions_topofmarket_mach_v1_2.login_response.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.login_response, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_2.login_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_2.login_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_2.login_response.fields(buffer, offset, packet, parent)
  end
end

-- Login Request
miax_pearloptions_topofmarket_mach_v1_2.login_request = {}

-- Size: Login Request
miax_pearloptions_topofmarket_mach_v1_2.login_request.size =
  miax_pearloptions_topofmarket_mach_v1_2.sesm_version.size + 
  miax_pearloptions_topofmarket_mach_v1_2.username.size + 
  miax_pearloptions_topofmarket_mach_v1_2.computer_id.size + 
  miax_pearloptions_topofmarket_mach_v1_2.application_protocol.size + 
  miax_pearloptions_topofmarket_mach_v1_2.requested_trading_session_id.size + 
  miax_pearloptions_topofmarket_mach_v1_2.requested_sequence_number.size

-- Display: Login Request
miax_pearloptions_topofmarket_mach_v1_2.login_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request
miax_pearloptions_topofmarket_mach_v1_2.login_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sesm Version: 5 Byte Ascii String
  index, sesm_version = miax_pearloptions_topofmarket_mach_v1_2.sesm_version.dissect(buffer, index, packet, parent)

  -- Username: 5 Byte Ascii String
  index, username = miax_pearloptions_topofmarket_mach_v1_2.username.dissect(buffer, index, packet, parent)

  -- Computer Id: 8 Byte Ascii String
  index, computer_id = miax_pearloptions_topofmarket_mach_v1_2.computer_id.dissect(buffer, index, packet, parent)

  -- Application Protocol: 8 Byte Ascii String
  index, application_protocol = miax_pearloptions_topofmarket_mach_v1_2.application_protocol.dissect(buffer, index, packet, parent)

  -- Requested Trading Session Id: 1 Byte Unsigned Fixed Width Integer
  index, requested_trading_session_id = miax_pearloptions_topofmarket_mach_v1_2.requested_trading_session_id.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, requested_sequence_number = miax_pearloptions_topofmarket_mach_v1_2.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request
miax_pearloptions_topofmarket_mach_v1_2.login_request.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.login_request, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_2.login_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_2.login_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_2.login_request.fields(buffer, offset, packet, parent)
  end
end

-- End Of Refresh Notification Message
miax_pearloptions_topofmarket_mach_v1_2.end_of_refresh_notification_message = {}

-- Size: End Of Refresh Notification Message
miax_pearloptions_topofmarket_mach_v1_2.end_of_refresh_notification_message.size =
  miax_pearloptions_topofmarket_mach_v1_2.refresh_message_type.size

-- Display: End Of Refresh Notification Message
miax_pearloptions_topofmarket_mach_v1_2.end_of_refresh_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Refresh Notification Message
miax_pearloptions_topofmarket_mach_v1_2.end_of_refresh_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Refresh Message Type: Alphanumeric
  index, refresh_message_type = miax_pearloptions_topofmarket_mach_v1_2.refresh_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Refresh Notification Message
miax_pearloptions_topofmarket_mach_v1_2.end_of_refresh_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.end_of_refresh_notification_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_2.end_of_refresh_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_2.end_of_refresh_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_2.end_of_refresh_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Trading Status Notification Message
miax_pearloptions_topofmarket_mach_v1_2.underlying_trading_status_notification_message = {}

-- Size: Underlying Trading Status Notification Message
miax_pearloptions_topofmarket_mach_v1_2.underlying_trading_status_notification_message.size =
  miax_pearloptions_topofmarket_mach_v1_2.nanoseconds.size + 
  miax_pearloptions_topofmarket_mach_v1_2.underlying_symbol.size + 
  miax_pearloptions_topofmarket_mach_v1_2.trading_status.size + 
  miax_pearloptions_topofmarket_mach_v1_2.event_reason.size + 
  miax_pearloptions_topofmarket_mach_v1_2.expected_event_time_seconds_part.size + 
  miax_pearloptions_topofmarket_mach_v1_2.expected_event_time_nano_seconds_part.size

-- Display: Underlying Trading Status Notification Message
miax_pearloptions_topofmarket_mach_v1_2.underlying_trading_status_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Trading Status Notification Message
miax_pearloptions_topofmarket_mach_v1_2.underlying_trading_status_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearloptions_topofmarket_mach_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_pearloptions_topofmarket_mach_v1_2.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Trading Status: Alphanumeric
  index, trading_status = miax_pearloptions_topofmarket_mach_v1_2.trading_status.dissect(buffer, index, packet, parent)

  -- Event Reason: Alphanumeric
  index, event_reason = miax_pearloptions_topofmarket_mach_v1_2.event_reason.dissect(buffer, index, packet, parent)

  -- Expected Event Time Seconds Part: SecTime
  index, expected_event_time_seconds_part = miax_pearloptions_topofmarket_mach_v1_2.expected_event_time_seconds_part.dissect(buffer, index, packet, parent)

  -- Expected Event Time Nano Seconds Part: BinaryU
  index, expected_event_time_nano_seconds_part = miax_pearloptions_topofmarket_mach_v1_2.expected_event_time_nano_seconds_part.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Trading Status Notification Message
miax_pearloptions_topofmarket_mach_v1_2.underlying_trading_status_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.underlying_trading_status_notification_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_2.underlying_trading_status_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_2.underlying_trading_status_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_2.underlying_trading_status_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Message
miax_pearloptions_topofmarket_mach_v1_2.trade_cancel_message = {}

-- Size: Trade Cancel Message
miax_pearloptions_topofmarket_mach_v1_2.trade_cancel_message.size =
  miax_pearloptions_topofmarket_mach_v1_2.nanoseconds.size + 
  miax_pearloptions_topofmarket_mach_v1_2.product_id.size + 
  miax_pearloptions_topofmarket_mach_v1_2.trade_id.size + 
  miax_pearloptions_topofmarket_mach_v1_2.correction_number.size + 
  miax_pearloptions_topofmarket_mach_v1_2.trade_price.size + 
  miax_pearloptions_topofmarket_mach_v1_2.trade_size.size + 
  miax_pearloptions_topofmarket_mach_v1_2.trade_condition.size

-- Display: Trade Cancel Message
miax_pearloptions_topofmarket_mach_v1_2.trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Message
miax_pearloptions_topofmarket_mach_v1_2.trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearloptions_topofmarket_mach_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v1_2.product_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_pearloptions_topofmarket_mach_v1_2.trade_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_pearloptions_topofmarket_mach_v1_2.correction_number.dissect(buffer, index, packet, parent)

  -- Trade Price: BinaryPrc4U
  index, trade_price = miax_pearloptions_topofmarket_mach_v1_2.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Size: BinaryU
  index, trade_size = miax_pearloptions_topofmarket_mach_v1_2.trade_size.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = miax_pearloptions_topofmarket_mach_v1_2.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
miax_pearloptions_topofmarket_mach_v1_2.trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.trade_cancel_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_2.trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_2.trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_2.trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Sale Message
miax_pearloptions_topofmarket_mach_v1_2.last_sale_message = {}

-- Size: Last Sale Message
miax_pearloptions_topofmarket_mach_v1_2.last_sale_message.size =
  miax_pearloptions_topofmarket_mach_v1_2.nanoseconds.size + 
  miax_pearloptions_topofmarket_mach_v1_2.product_id.size + 
  miax_pearloptions_topofmarket_mach_v1_2.trade_id.size + 
  miax_pearloptions_topofmarket_mach_v1_2.correction_number.size + 
  miax_pearloptions_topofmarket_mach_v1_2.reference_trade_id.size + 
  miax_pearloptions_topofmarket_mach_v1_2.reference_correction_number.size + 
  miax_pearloptions_topofmarket_mach_v1_2.trade_price.size + 
  miax_pearloptions_topofmarket_mach_v1_2.trade_size.size + 
  miax_pearloptions_topofmarket_mach_v1_2.trade_condition.size

-- Display: Last Sale Message
miax_pearloptions_topofmarket_mach_v1_2.last_sale_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Sale Message
miax_pearloptions_topofmarket_mach_v1_2.last_sale_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearloptions_topofmarket_mach_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v1_2.product_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_pearloptions_topofmarket_mach_v1_2.trade_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_pearloptions_topofmarket_mach_v1_2.correction_number.dissect(buffer, index, packet, parent)

  -- Reference Trade Id: BinaryU
  index, reference_trade_id = miax_pearloptions_topofmarket_mach_v1_2.reference_trade_id.dissect(buffer, index, packet, parent)

  -- Reference Correction Number: BinaryU
  index, reference_correction_number = miax_pearloptions_topofmarket_mach_v1_2.reference_correction_number.dissect(buffer, index, packet, parent)

  -- Trade Price: BinaryPrc4U
  index, trade_price = miax_pearloptions_topofmarket_mach_v1_2.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Size: BinaryU
  index, trade_size = miax_pearloptions_topofmarket_mach_v1_2.trade_size.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = miax_pearloptions_topofmarket_mach_v1_2.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Sale Message
miax_pearloptions_topofmarket_mach_v1_2.last_sale_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.last_sale_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_2.last_sale_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_2.last_sale_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_2.last_sale_message.fields(buffer, offset, packet, parent)
  end
end

-- Double Sided Top Of Market Best Bid Or Offer Wide Format Message
miax_pearloptions_topofmarket_mach_v1_2.double_sided_top_of_market_best_bid_or_offer_wide_format_message = {}

-- Size: Double Sided Top Of Market Best Bid Or Offer Wide Format Message
miax_pearloptions_topofmarket_mach_v1_2.double_sided_top_of_market_best_bid_or_offer_wide_format_message.size =
  miax_pearloptions_topofmarket_mach_v1_2.nanoseconds.size + 
  miax_pearloptions_topofmarket_mach_v1_2.product_id.size + 
  miax_pearloptions_topofmarket_mach_v1_2.bid_price_long.size + 
  miax_pearloptions_topofmarket_mach_v1_2.bid_size_long.size + 
  miax_pearloptions_topofmarket_mach_v1_2.bid_priority_customer_size_long.size + 
  miax_pearloptions_topofmarket_mach_v1_2.bid_condition.size + 
  miax_pearloptions_topofmarket_mach_v1_2.offer_price_long.size + 
  miax_pearloptions_topofmarket_mach_v1_2.offer_size_long.size + 
  miax_pearloptions_topofmarket_mach_v1_2.offer_priority_customer_size_long.size + 
  miax_pearloptions_topofmarket_mach_v1_2.offer_condition.size

-- Display: Double Sided Top Of Market Best Bid Or Offer Wide Format Message
miax_pearloptions_topofmarket_mach_v1_2.double_sided_top_of_market_best_bid_or_offer_wide_format_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Double Sided Top Of Market Best Bid Or Offer Wide Format Message
miax_pearloptions_topofmarket_mach_v1_2.double_sided_top_of_market_best_bid_or_offer_wide_format_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearloptions_topofmarket_mach_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v1_2.product_id.dissect(buffer, index, packet, parent)

  -- Bid Price Long: BinaryPrc4U
  index, bid_price_long = miax_pearloptions_topofmarket_mach_v1_2.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Size Long: BinaryU
  index, bid_size_long = miax_pearloptions_topofmarket_mach_v1_2.bid_size_long.dissect(buffer, index, packet, parent)

  -- Bid Priority Customer Size Long: BinaryU
  index, bid_priority_customer_size_long = miax_pearloptions_topofmarket_mach_v1_2.bid_priority_customer_size_long.dissect(buffer, index, packet, parent)

  -- Bid Condition: Alphanumeric
  index, bid_condition = miax_pearloptions_topofmarket_mach_v1_2.bid_condition.dissect(buffer, index, packet, parent)

  -- Offer Price Long: BinaryPrc4U
  index, offer_price_long = miax_pearloptions_topofmarket_mach_v1_2.offer_price_long.dissect(buffer, index, packet, parent)

  -- Offer Size Long: BinaryU
  index, offer_size_long = miax_pearloptions_topofmarket_mach_v1_2.offer_size_long.dissect(buffer, index, packet, parent)

  -- Offer Priority Customer Size Long: BinaryU
  index, offer_priority_customer_size_long = miax_pearloptions_topofmarket_mach_v1_2.offer_priority_customer_size_long.dissect(buffer, index, packet, parent)

  -- Offer Condition: Alphanumeric
  index, offer_condition = miax_pearloptions_topofmarket_mach_v1_2.offer_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Double Sided Top Of Market Best Bid Or Offer Wide Format Message
miax_pearloptions_topofmarket_mach_v1_2.double_sided_top_of_market_best_bid_or_offer_wide_format_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.double_sided_top_of_market_best_bid_or_offer_wide_format_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_2.double_sided_top_of_market_best_bid_or_offer_wide_format_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_2.double_sided_top_of_market_best_bid_or_offer_wide_format_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_2.double_sided_top_of_market_best_bid_or_offer_wide_format_message.fields(buffer, offset, packet, parent)
  end
end

-- Double Sided Top Of Market Best Bid Or Offer Compact Format Message
miax_pearloptions_topofmarket_mach_v1_2.double_sided_top_of_market_best_bid_or_offer_compact_format_message = {}

-- Size: Double Sided Top Of Market Best Bid Or Offer Compact Format Message
miax_pearloptions_topofmarket_mach_v1_2.double_sided_top_of_market_best_bid_or_offer_compact_format_message.size =
  miax_pearloptions_topofmarket_mach_v1_2.nanoseconds.size + 
  miax_pearloptions_topofmarket_mach_v1_2.product_id.size + 
  miax_pearloptions_topofmarket_mach_v1_2.bid_price_short.size + 
  miax_pearloptions_topofmarket_mach_v1_2.bid_size_short.size + 
  miax_pearloptions_topofmarket_mach_v1_2.bid_priority_customer_size_short.size + 
  miax_pearloptions_topofmarket_mach_v1_2.bid_condition.size + 
  miax_pearloptions_topofmarket_mach_v1_2.offer_price_short.size + 
  miax_pearloptions_topofmarket_mach_v1_2.offer_size_short.size + 
  miax_pearloptions_topofmarket_mach_v1_2.offer_priority_customer_size_short.size + 
  miax_pearloptions_topofmarket_mach_v1_2.offer_condition.size

-- Display: Double Sided Top Of Market Best Bid Or Offer Compact Format Message
miax_pearloptions_topofmarket_mach_v1_2.double_sided_top_of_market_best_bid_or_offer_compact_format_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Double Sided Top Of Market Best Bid Or Offer Compact Format Message
miax_pearloptions_topofmarket_mach_v1_2.double_sided_top_of_market_best_bid_or_offer_compact_format_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearloptions_topofmarket_mach_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v1_2.product_id.dissect(buffer, index, packet, parent)

  -- Bid Price Short: BinaryPrc2U
  index, bid_price_short = miax_pearloptions_topofmarket_mach_v1_2.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Size Short: BinaryU
  index, bid_size_short = miax_pearloptions_topofmarket_mach_v1_2.bid_size_short.dissect(buffer, index, packet, parent)

  -- Bid Priority Customer Size Short: BinaryU
  index, bid_priority_customer_size_short = miax_pearloptions_topofmarket_mach_v1_2.bid_priority_customer_size_short.dissect(buffer, index, packet, parent)

  -- Bid Condition: Alphanumeric
  index, bid_condition = miax_pearloptions_topofmarket_mach_v1_2.bid_condition.dissect(buffer, index, packet, parent)

  -- Offer Price Short: BinaryPrc2U
  index, offer_price_short = miax_pearloptions_topofmarket_mach_v1_2.offer_price_short.dissect(buffer, index, packet, parent)

  -- Offer Size Short: BinaryU
  index, offer_size_short = miax_pearloptions_topofmarket_mach_v1_2.offer_size_short.dissect(buffer, index, packet, parent)

  -- Offer Priority Customer Size Short: BinaryU
  index, offer_priority_customer_size_short = miax_pearloptions_topofmarket_mach_v1_2.offer_priority_customer_size_short.dissect(buffer, index, packet, parent)

  -- Offer Condition: Alphanumeric
  index, offer_condition = miax_pearloptions_topofmarket_mach_v1_2.offer_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Double Sided Top Of Market Best Bid Or Offer Compact Format Message
miax_pearloptions_topofmarket_mach_v1_2.double_sided_top_of_market_best_bid_or_offer_compact_format_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.double_sided_top_of_market_best_bid_or_offer_compact_format_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_2.double_sided_top_of_market_best_bid_or_offer_compact_format_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_2.double_sided_top_of_market_best_bid_or_offer_compact_format_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_2.double_sided_top_of_market_best_bid_or_offer_compact_format_message.fields(buffer, offset, packet, parent)
  end
end

-- Top Of Market Best Bid Or Offer Wide Format Offer Priority Customer Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_offer_priority_customer_message = {}

-- Size: Top Of Market Best Bid Or Offer Wide Format Offer Priority Customer Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_offer_priority_customer_message.size =
  miax_pearloptions_topofmarket_mach_v1_2.nanoseconds.size + 
  miax_pearloptions_topofmarket_mach_v1_2.product_id.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_long.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_size_long.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_priority_customer_size_long.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_condition.size

-- Display: Top Of Market Best Bid Or Offer Wide Format Offer Priority Customer Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_offer_priority_customer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Of Market Best Bid Or Offer Wide Format Offer Priority Customer Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_offer_priority_customer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearloptions_topofmarket_mach_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v1_2.product_id.dissect(buffer, index, packet, parent)

  -- PBBO Price Long: BinaryPrc4U
  index, pbbo_price_long = miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_long.dissect(buffer, index, packet, parent)

  -- PBBO Size Long: BinaryU
  index, pbbo_size_long = miax_pearloptions_topofmarket_mach_v1_2.pbbo_size_long.dissect(buffer, index, packet, parent)

  -- PBBO Priority Customer Size Long: BinaryU
  index, pbbo_priority_customer_size_long = miax_pearloptions_topofmarket_mach_v1_2.pbbo_priority_customer_size_long.dissect(buffer, index, packet, parent)

  -- Pbbo Condition: Alphanumeric
  index, pbbo_condition = miax_pearloptions_topofmarket_mach_v1_2.pbbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Of Market Best Bid Or Offer Wide Format Offer Priority Customer Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_offer_priority_customer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.top_of_market_best_bid_or_offer_wide_format_offer_priority_customer_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_offer_priority_customer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_offer_priority_customer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_offer_priority_customer_message.fields(buffer, offset, packet, parent)
  end
end

-- Top Of Market Best Bid Or Offer Wide Format Offer Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_offer_message = {}

-- Size: Top Of Market Best Bid Or Offer Wide Format Offer Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_offer_message.size =
  miax_pearloptions_topofmarket_mach_v1_2.nanoseconds.size + 
  miax_pearloptions_topofmarket_mach_v1_2.product_id.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_long.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_size_long.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_priority_customer_size_long.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_condition.size

-- Display: Top Of Market Best Bid Or Offer Wide Format Offer Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_offer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Of Market Best Bid Or Offer Wide Format Offer Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_offer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearloptions_topofmarket_mach_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v1_2.product_id.dissect(buffer, index, packet, parent)

  -- PBBO Price Long: BinaryPrc4U
  index, pbbo_price_long = miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_long.dissect(buffer, index, packet, parent)

  -- PBBO Size Long: BinaryU
  index, pbbo_size_long = miax_pearloptions_topofmarket_mach_v1_2.pbbo_size_long.dissect(buffer, index, packet, parent)

  -- PBBO Priority Customer Size Long: BinaryU
  index, pbbo_priority_customer_size_long = miax_pearloptions_topofmarket_mach_v1_2.pbbo_priority_customer_size_long.dissect(buffer, index, packet, parent)

  -- Pbbo Condition: Alphanumeric
  index, pbbo_condition = miax_pearloptions_topofmarket_mach_v1_2.pbbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Of Market Best Bid Or Offer Wide Format Offer Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_offer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.top_of_market_best_bid_or_offer_wide_format_offer_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_offer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_offer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_offer_message.fields(buffer, offset, packet, parent)
  end
end

-- Top Of Market Best Bid Or Offer Wide Format Bid Priority Customer Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_bid_priority_customer_message = {}

-- Size: Top Of Market Best Bid Or Offer Wide Format Bid Priority Customer Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_bid_priority_customer_message.size =
  miax_pearloptions_topofmarket_mach_v1_2.nanoseconds.size + 
  miax_pearloptions_topofmarket_mach_v1_2.product_id.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_long.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_size_long.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_priority_customer_size_long.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_condition.size

-- Display: Top Of Market Best Bid Or Offer Wide Format Bid Priority Customer Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_bid_priority_customer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Of Market Best Bid Or Offer Wide Format Bid Priority Customer Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_bid_priority_customer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearloptions_topofmarket_mach_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v1_2.product_id.dissect(buffer, index, packet, parent)

  -- PBBO Price Long: BinaryPrc4U
  index, pbbo_price_long = miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_long.dissect(buffer, index, packet, parent)

  -- PBBO Size Long: BinaryU
  index, pbbo_size_long = miax_pearloptions_topofmarket_mach_v1_2.pbbo_size_long.dissect(buffer, index, packet, parent)

  -- PBBO Priority Customer Size Long: BinaryU
  index, pbbo_priority_customer_size_long = miax_pearloptions_topofmarket_mach_v1_2.pbbo_priority_customer_size_long.dissect(buffer, index, packet, parent)

  -- Pbbo Condition: Alphanumeric
  index, pbbo_condition = miax_pearloptions_topofmarket_mach_v1_2.pbbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Of Market Best Bid Or Offer Wide Format Bid Priority Customer Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_bid_priority_customer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.top_of_market_best_bid_or_offer_wide_format_bid_priority_customer_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_bid_priority_customer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_bid_priority_customer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_bid_priority_customer_message.fields(buffer, offset, packet, parent)
  end
end

-- Top Of Market Best Bid Or Offer Wide Format Bid Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_bid_message = {}

-- Size: Top Of Market Best Bid Or Offer Wide Format Bid Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_bid_message.size =
  miax_pearloptions_topofmarket_mach_v1_2.nanoseconds.size + 
  miax_pearloptions_topofmarket_mach_v1_2.product_id.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_long.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_size_long.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_priority_customer_size_long.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_condition.size

-- Display: Top Of Market Best Bid Or Offer Wide Format Bid Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_bid_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Of Market Best Bid Or Offer Wide Format Bid Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_bid_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearloptions_topofmarket_mach_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v1_2.product_id.dissect(buffer, index, packet, parent)

  -- PBBO Price Long: BinaryPrc4U
  index, pbbo_price_long = miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_long.dissect(buffer, index, packet, parent)

  -- PBBO Size Long: BinaryU
  index, pbbo_size_long = miax_pearloptions_topofmarket_mach_v1_2.pbbo_size_long.dissect(buffer, index, packet, parent)

  -- PBBO Priority Customer Size Long: BinaryU
  index, pbbo_priority_customer_size_long = miax_pearloptions_topofmarket_mach_v1_2.pbbo_priority_customer_size_long.dissect(buffer, index, packet, parent)

  -- Pbbo Condition: Alphanumeric
  index, pbbo_condition = miax_pearloptions_topofmarket_mach_v1_2.pbbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Of Market Best Bid Or Offer Wide Format Bid Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_bid_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.top_of_market_best_bid_or_offer_wide_format_bid_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_bid_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_bid_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_bid_message.fields(buffer, offset, packet, parent)
  end
end

-- Top Of Market Best Bid Or Offer Compact Format Offer Priority Customer Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_offer_priority_customer_message = {}

-- Size: Top Of Market Best Bid Or Offer Compact Format Offer Priority Customer Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_offer_priority_customer_message.size =
  miax_pearloptions_topofmarket_mach_v1_2.nanoseconds.size + 
  miax_pearloptions_topofmarket_mach_v1_2.product_id.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_short.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_size_short.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_priority_customer_size_short.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_condition.size

-- Display: Top Of Market Best Bid Or Offer Compact Format Offer Priority Customer Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_offer_priority_customer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Of Market Best Bid Or Offer Compact Format Offer Priority Customer Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_offer_priority_customer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearloptions_topofmarket_mach_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v1_2.product_id.dissect(buffer, index, packet, parent)

  -- PBBO Price Short: BinaryPrc2U
  index, pbbo_price_short = miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_short.dissect(buffer, index, packet, parent)

  -- PBBO Size Short: BinaryU
  index, pbbo_size_short = miax_pearloptions_topofmarket_mach_v1_2.pbbo_size_short.dissect(buffer, index, packet, parent)

  -- PBBO Priority Customer Size Short: BinaryU
  index, pbbo_priority_customer_size_short = miax_pearloptions_topofmarket_mach_v1_2.pbbo_priority_customer_size_short.dissect(buffer, index, packet, parent)

  -- Pbbo Condition: Alphanumeric
  index, pbbo_condition = miax_pearloptions_topofmarket_mach_v1_2.pbbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Of Market Best Bid Or Offer Compact Format Offer Priority Customer Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_offer_priority_customer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.top_of_market_best_bid_or_offer_compact_format_offer_priority_customer_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_offer_priority_customer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_offer_priority_customer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_offer_priority_customer_message.fields(buffer, offset, packet, parent)
  end
end

-- Top Of Market Best Bid Or Offer Compact Format Offer Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_offer_message = {}

-- Size: Top Of Market Best Bid Or Offer Compact Format Offer Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_offer_message.size =
  miax_pearloptions_topofmarket_mach_v1_2.nanoseconds.size + 
  miax_pearloptions_topofmarket_mach_v1_2.product_id.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_short.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_size_short.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_priority_customer_size_short.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_condition.size

-- Display: Top Of Market Best Bid Or Offer Compact Format Offer Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_offer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Of Market Best Bid Or Offer Compact Format Offer Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_offer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearloptions_topofmarket_mach_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v1_2.product_id.dissect(buffer, index, packet, parent)

  -- PBBO Price Short: BinaryPrc2U
  index, pbbo_price_short = miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_short.dissect(buffer, index, packet, parent)

  -- PBBO Size Short: BinaryU
  index, pbbo_size_short = miax_pearloptions_topofmarket_mach_v1_2.pbbo_size_short.dissect(buffer, index, packet, parent)

  -- PBBO Priority Customer Size Short: BinaryU
  index, pbbo_priority_customer_size_short = miax_pearloptions_topofmarket_mach_v1_2.pbbo_priority_customer_size_short.dissect(buffer, index, packet, parent)

  -- Pbbo Condition: Alphanumeric
  index, pbbo_condition = miax_pearloptions_topofmarket_mach_v1_2.pbbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Of Market Best Bid Or Offer Compact Format Offer Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_offer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.top_of_market_best_bid_or_offer_compact_format_offer_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_offer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_offer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_offer_message.fields(buffer, offset, packet, parent)
  end
end

-- Top Of Market Best Bid Or Offer Compact Format Bid Priority Customer Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_bid_priority_customer_message = {}

-- Size: Top Of Market Best Bid Or Offer Compact Format Bid Priority Customer Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_bid_priority_customer_message.size =
  miax_pearloptions_topofmarket_mach_v1_2.nanoseconds.size + 
  miax_pearloptions_topofmarket_mach_v1_2.product_id.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_short.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_size_short.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_priority_customer_size_short.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_condition.size

-- Display: Top Of Market Best Bid Or Offer Compact Format Bid Priority Customer Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_bid_priority_customer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Of Market Best Bid Or Offer Compact Format Bid Priority Customer Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_bid_priority_customer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearloptions_topofmarket_mach_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v1_2.product_id.dissect(buffer, index, packet, parent)

  -- PBBO Price Short: BinaryPrc2U
  index, pbbo_price_short = miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_short.dissect(buffer, index, packet, parent)

  -- PBBO Size Short: BinaryU
  index, pbbo_size_short = miax_pearloptions_topofmarket_mach_v1_2.pbbo_size_short.dissect(buffer, index, packet, parent)

  -- PBBO Priority Customer Size Short: BinaryU
  index, pbbo_priority_customer_size_short = miax_pearloptions_topofmarket_mach_v1_2.pbbo_priority_customer_size_short.dissect(buffer, index, packet, parent)

  -- Pbbo Condition: Alphanumeric
  index, pbbo_condition = miax_pearloptions_topofmarket_mach_v1_2.pbbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Of Market Best Bid Or Offer Compact Format Bid Priority Customer Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_bid_priority_customer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.top_of_market_best_bid_or_offer_compact_format_bid_priority_customer_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_bid_priority_customer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_bid_priority_customer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_bid_priority_customer_message.fields(buffer, offset, packet, parent)
  end
end

-- Top Of Market Best Bid Or Offer Compact Format Bid Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_bid_message = {}

-- Size: Top Of Market Best Bid Or Offer Compact Format Bid Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_bid_message.size =
  miax_pearloptions_topofmarket_mach_v1_2.nanoseconds.size + 
  miax_pearloptions_topofmarket_mach_v1_2.product_id.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_short.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_size_short.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_priority_customer_size_short.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pbbo_condition.size

-- Display: Top Of Market Best Bid Or Offer Compact Format Bid Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_bid_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Of Market Best Bid Or Offer Compact Format Bid Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_bid_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearloptions_topofmarket_mach_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v1_2.product_id.dissect(buffer, index, packet, parent)

  -- PBBO Price Short: BinaryPrc2U
  index, pbbo_price_short = miax_pearloptions_topofmarket_mach_v1_2.pbbo_price_short.dissect(buffer, index, packet, parent)

  -- PBBO Size Short: BinaryU
  index, pbbo_size_short = miax_pearloptions_topofmarket_mach_v1_2.pbbo_size_short.dissect(buffer, index, packet, parent)

  -- PBBO Priority Customer Size Short: BinaryU
  index, pbbo_priority_customer_size_short = miax_pearloptions_topofmarket_mach_v1_2.pbbo_priority_customer_size_short.dissect(buffer, index, packet, parent)

  -- Pbbo Condition: Alphanumeric
  index, pbbo_condition = miax_pearloptions_topofmarket_mach_v1_2.pbbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Of Market Best Bid Or Offer Compact Format Bid Message
miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_bid_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.top_of_market_best_bid_or_offer_compact_format_bid_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_bid_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_bid_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_bid_message.fields(buffer, offset, packet, parent)
  end
end

-- System State Message
miax_pearloptions_topofmarket_mach_v1_2.system_state_message = {}

-- Size: System State Message
miax_pearloptions_topofmarket_mach_v1_2.system_state_message.size =
  miax_pearloptions_topofmarket_mach_v1_2.nanoseconds.size + 
  miax_pearloptions_topofmarket_mach_v1_2.to_m_version.size + 
  miax_pearloptions_topofmarket_mach_v1_2.session_id.size + 
  miax_pearloptions_topofmarket_mach_v1_2.system_status.size

-- Display: System State Message
miax_pearloptions_topofmarket_mach_v1_2.system_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System State Message
miax_pearloptions_topofmarket_mach_v1_2.system_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearloptions_topofmarket_mach_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- To M Version: Alphanumeric
  index, to_m_version = miax_pearloptions_topofmarket_mach_v1_2.to_m_version.dissect(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_pearloptions_topofmarket_mach_v1_2.session_id.dissect(buffer, index, packet, parent)

  -- System Status: Alphanumeric
  index, system_status = miax_pearloptions_topofmarket_mach_v1_2.system_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Message
miax_pearloptions_topofmarket_mach_v1_2.system_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.system_state_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_2.system_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_2.system_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_2.system_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Series Update Message
miax_pearloptions_topofmarket_mach_v1_2.series_update_message = {}

-- Size: Series Update Message
miax_pearloptions_topofmarket_mach_v1_2.series_update_message.size =
  miax_pearloptions_topofmarket_mach_v1_2.nanoseconds.size + 
  miax_pearloptions_topofmarket_mach_v1_2.product_id.size + 
  miax_pearloptions_topofmarket_mach_v1_2.underlying_symbol.size + 
  miax_pearloptions_topofmarket_mach_v1_2.security_symbol.size + 
  miax_pearloptions_topofmarket_mach_v1_2.expiration_date.size + 
  miax_pearloptions_topofmarket_mach_v1_2.strike_price.size + 
  miax_pearloptions_topofmarket_mach_v1_2.call_or_put.size + 
  miax_pearloptions_topofmarket_mach_v1_2.opening_time.size + 
  miax_pearloptions_topofmarket_mach_v1_2.closing_time.size + 
  miax_pearloptions_topofmarket_mach_v1_2.restricted_option.size + 
  miax_pearloptions_topofmarket_mach_v1_2.long_term_option.size + 
  miax_pearloptions_topofmarket_mach_v1_2.active_on_pearl.size + 
  miax_pearloptions_topofmarket_mach_v1_2.pearl_bbo_posting_increment_indicator.size + 
  miax_pearloptions_topofmarket_mach_v1_2.liquidity_acceptance_increment_indicator.size + 
  miax_pearloptions_topofmarket_mach_v1_2.opening_underlying_market_code.size + 
  miax_pearloptions_topofmarket_mach_v1_2.reserved_12.size

-- Display: Series Update Message
miax_pearloptions_topofmarket_mach_v1_2.series_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Series Update Message
miax_pearloptions_topofmarket_mach_v1_2.series_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearloptions_topofmarket_mach_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v1_2.product_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_pearloptions_topofmarket_mach_v1_2.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = miax_pearloptions_topofmarket_mach_v1_2.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Date: Alphanumeric
  index, expiration_date = miax_pearloptions_topofmarket_mach_v1_2.expiration_date.dissect(buffer, index, packet, parent)

  -- Strike Price: BinaryPrc4U
  index, strike_price = miax_pearloptions_topofmarket_mach_v1_2.strike_price.dissect(buffer, index, packet, parent)

  -- Call Or Put: Alphanumeric
  index, call_or_put = miax_pearloptions_topofmarket_mach_v1_2.call_or_put.dissect(buffer, index, packet, parent)

  -- Opening Time: Alphanumeric
  index, opening_time = miax_pearloptions_topofmarket_mach_v1_2.opening_time.dissect(buffer, index, packet, parent)

  -- Closing Time: Alphanumeric
  index, closing_time = miax_pearloptions_topofmarket_mach_v1_2.closing_time.dissect(buffer, index, packet, parent)

  -- Restricted Option: Alphanumeric
  index, restricted_option = miax_pearloptions_topofmarket_mach_v1_2.restricted_option.dissect(buffer, index, packet, parent)

  -- Long Term Option: Alphanumeric
  index, long_term_option = miax_pearloptions_topofmarket_mach_v1_2.long_term_option.dissect(buffer, index, packet, parent)

  -- Active On Pearl: Alphanumeric
  index, active_on_pearl = miax_pearloptions_topofmarket_mach_v1_2.active_on_pearl.dissect(buffer, index, packet, parent)

  -- Pearl Bbo Posting Increment Indicator: Alphanumeric
  index, pearl_bbo_posting_increment_indicator = miax_pearloptions_topofmarket_mach_v1_2.pearl_bbo_posting_increment_indicator.dissect(buffer, index, packet, parent)

  -- Liquidity Acceptance Increment Indicator: Alphanumeric
  index, liquidity_acceptance_increment_indicator = miax_pearloptions_topofmarket_mach_v1_2.liquidity_acceptance_increment_indicator.dissect(buffer, index, packet, parent)

  -- Opening Underlying Market Code: Alphanumeric
  index, opening_underlying_market_code = miax_pearloptions_topofmarket_mach_v1_2.opening_underlying_market_code.dissect(buffer, index, packet, parent)

  -- Reserved 12: BinaryU
  index, reserved_12 = miax_pearloptions_topofmarket_mach_v1_2.reserved_12.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Series Update Message
miax_pearloptions_topofmarket_mach_v1_2.series_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.series_update_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_2.series_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_2.series_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_2.series_update_message.fields(buffer, offset, packet, parent)
  end
end

-- System Time Message
miax_pearloptions_topofmarket_mach_v1_2.system_time_message = {}

-- Size: System Time Message
miax_pearloptions_topofmarket_mach_v1_2.system_time_message.size =
  miax_pearloptions_topofmarket_mach_v1_2.seconds.size

-- Display: System Time Message
miax_pearloptions_topofmarket_mach_v1_2.system_time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Time Message
miax_pearloptions_topofmarket_mach_v1_2.system_time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: SecTime
  index, seconds = miax_pearloptions_topofmarket_mach_v1_2.seconds.dissect(buffer, index, packet, parent)

  -- Store Seconds Value
  miax_pearloptions_topofmarket_mach_v1_2.seconds.current = seconds

  if not packet.visited then
    miax_pearloptions_topofmarket_mach_v1_2.conversation.current.seconds.last = seconds
  end

  return index
end

-- Dissect: System Time Message
miax_pearloptions_topofmarket_mach_v1_2.system_time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.system_time_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_2.system_time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_2.system_time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_2.system_time_message.fields(buffer, offset, packet, parent)
  end
end

-- Data
miax_pearloptions_topofmarket_mach_v1_2.data = {}

-- Dissect: Data
miax_pearloptions_topofmarket_mach_v1_2.data.dispatch = {
  ["1"] = miax_pearloptions_topofmarket_mach_v1_2.system_time_message.dissect,
  ["P"] = miax_pearloptions_topofmarket_mach_v1_2.series_update_message.dissect,
  ["S"] = miax_pearloptions_topofmarket_mach_v1_2.system_state_message.dissect,
  ["B"] = miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_bid_message.dissect,
  ["h"] = miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_bid_priority_customer_message.dissect,
  ["O"] = miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_offer_message.dissect,
  ["i"] = miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_compact_format_offer_priority_customer_message.dissect,
  ["W"] = miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_bid_message.dissect,
  ["j"] = miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_bid_priority_customer_message.dissect,
  ["A"] = miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_offer_message.dissect,
  ["k"] = miax_pearloptions_topofmarket_mach_v1_2.top_of_market_best_bid_or_offer_wide_format_offer_priority_customer_message.dissect,
  ["d"] = miax_pearloptions_topofmarket_mach_v1_2.double_sided_top_of_market_best_bid_or_offer_compact_format_message.dissect,
  ["D"] = miax_pearloptions_topofmarket_mach_v1_2.double_sided_top_of_market_best_bid_or_offer_wide_format_message.dissect,
  ["T"] = miax_pearloptions_topofmarket_mach_v1_2.last_sale_message.dissect,
  ["X"] = miax_pearloptions_topofmarket_mach_v1_2.trade_cancel_message.dissect,
  ["H"] = miax_pearloptions_topofmarket_mach_v1_2.underlying_trading_status_notification_message.dissect,
}

miax_pearloptions_topofmarket_mach_v1_2.data.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = miax_pearloptions_topofmarket_mach_v1_2.data.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Application Message
miax_pearloptions_topofmarket_mach_v1_2.application_message = {}

-- Display: Application Message
miax_pearloptions_topofmarket_mach_v1_2.application_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Application Message
miax_pearloptions_topofmarket_mach_v1_2.application_message.fields = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 16 values
  index, message_type = miax_pearloptions_topofmarket_mach_v1_2.message_type.dissect(buffer, index, packet, parent)

  -- Data: Runtime Type with 16 branches
  index = miax_pearloptions_topofmarket_mach_v1_2.data.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Application Message
miax_pearloptions_topofmarket_mach_v1_2.application_message.dissect = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset + size_of_application_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.application_message, buffer(offset, 0))
    local current = miax_pearloptions_topofmarket_mach_v1_2.application_message.fields(buffer, offset, packet, parent, size_of_application_message)
    parent:set_len(size_of_application_message)
    local display = miax_pearloptions_topofmarket_mach_v1_2.application_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_pearloptions_topofmarket_mach_v1_2.application_message.fields(buffer, offset, packet, parent, size_of_application_message)

    return index
  end
end

-- Refresh Response Message
miax_pearloptions_topofmarket_mach_v1_2.refresh_response_message = {}

-- Calculate size of: Refresh Response Message
miax_pearloptions_topofmarket_mach_v1_2.refresh_response_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearloptions_topofmarket_mach_v1_2.sequence_number.size

  -- Parse runtime size of: Application Message
  index = index + buffer(offset + index - 12, 2):le_uint()

  return index
end

-- Display: Refresh Response Message
miax_pearloptions_topofmarket_mach_v1_2.refresh_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Response Message
miax_pearloptions_topofmarket_mach_v1_2.refresh_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: BinaryU
  index, sequence_number = miax_pearloptions_topofmarket_mach_v1_2.sequence_number.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 4, 2):le_uint()

  -- Runtime Size Of: Application Message
  local size_of_application_message = sesm_packet_length - 12

  -- Application Message: Struct of 2 fields
  index, application_message = miax_pearloptions_topofmarket_mach_v1_2.application_message.dissect(buffer, index, packet, parent, size_of_application_message)

  return index
end

-- Dissect: Refresh Response Message
miax_pearloptions_topofmarket_mach_v1_2.refresh_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.refresh_response_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_2.refresh_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_2.refresh_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_2.refresh_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Request Message
miax_pearloptions_topofmarket_mach_v1_2.refresh_request_message = {}

-- Size: Refresh Request Message
miax_pearloptions_topofmarket_mach_v1_2.refresh_request_message.size =
  miax_pearloptions_topofmarket_mach_v1_2.refresh_message_type.size

-- Display: Refresh Request Message
miax_pearloptions_topofmarket_mach_v1_2.refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
miax_pearloptions_topofmarket_mach_v1_2.refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Refresh Message Type: Alphanumeric
  index, refresh_message_type = miax_pearloptions_topofmarket_mach_v1_2.refresh_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
miax_pearloptions_topofmarket_mach_v1_2.refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.refresh_request_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_2.refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_2.refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_2.refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
miax_pearloptions_topofmarket_mach_v1_2.unsequenced_message = {}

-- Dissect: Unsequenced Message
miax_pearloptions_topofmarket_mach_v1_2.unsequenced_message.dispatch = {
  ["R"] = miax_pearloptions_topofmarket_mach_v1_2.refresh_request_message.dissect,
  ["r"] = miax_pearloptions_topofmarket_mach_v1_2.refresh_response_message.dissect,
  ["E"] = miax_pearloptions_topofmarket_mach_v1_2.end_of_refresh_notification_message.dissect,
}

miax_pearloptions_topofmarket_mach_v1_2.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  local dissect = miax_pearloptions_topofmarket_mach_v1_2.unsequenced_message.dispatch[unsequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
miax_pearloptions_topofmarket_mach_v1_2.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
miax_pearloptions_topofmarket_mach_v1_2.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  return sesm_packet_length - 1
end

-- Display: Unsequenced Data Packet
miax_pearloptions_topofmarket_mach_v1_2.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
miax_pearloptions_topofmarket_mach_v1_2.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String Enum with 3 values
  index, unsequenced_message_type = miax_pearloptions_topofmarket_mach_v1_2.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 3 branches
  index = miax_pearloptions_topofmarket_mach_v1_2.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
miax_pearloptions_topofmarket_mach_v1_2.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = miax_pearloptions_topofmarket_mach_v1_2.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = miax_pearloptions_topofmarket_mach_v1_2.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = miax_pearloptions_topofmarket_mach_v1_2.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_pearloptions_topofmarket_mach_v1_2.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Sequenced Data Packet
miax_pearloptions_topofmarket_mach_v1_2.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
miax_pearloptions_topofmarket_mach_v1_2.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  return sesm_packet_length - 1
end

-- Display: Sequenced Data Packet
miax_pearloptions_topofmarket_mach_v1_2.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
miax_pearloptions_topofmarket_mach_v1_2.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequence Number: BinaryU
  index, sequence_number = miax_pearloptions_topofmarket_mach_v1_2.sequence_number.dissect(buffer, index, packet, parent)

  -- Matching Engine Id: 1 Byte Unsigned Fixed Width Integer
  index, matching_engine_id = miax_pearloptions_topofmarket_mach_v1_2.matching_engine_id.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: 1 Byte Ascii String
  index, sequenced_message_type = miax_pearloptions_topofmarket_mach_v1_2.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message
  index, sequenced_message = miax_pearloptions_topofmarket_mach_v1_2.sequenced_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Data Packet
miax_pearloptions_topofmarket_mach_v1_2.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = miax_pearloptions_topofmarket_mach_v1_2.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.sequenced_data_packet, buffer(offset, 0))
    local current = miax_pearloptions_topofmarket_mach_v1_2.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = miax_pearloptions_topofmarket_mach_v1_2.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_pearloptions_topofmarket_mach_v1_2.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Sesm Payload
miax_pearloptions_topofmarket_mach_v1_2.sesm_payload = {}

-- Dissect: Sesm Payload
miax_pearloptions_topofmarket_mach_v1_2.sesm_payload.dispatch = {
  ["s"] = miax_pearloptions_topofmarket_mach_v1_2.sequenced_data_packet.dissect,
  ["U"] = miax_pearloptions_topofmarket_mach_v1_2.unsequenced_data_packet.dissect,
  ["l"] = miax_pearloptions_topofmarket_mach_v1_2.login_request.dissect,
  ["r"] = miax_pearloptions_topofmarket_mach_v1_2.login_response.dissect,
  ["c"] = miax_pearloptions_topofmarket_mach_v1_2.synchronization_complete.dissect,
  ["a"] = miax_pearloptions_topofmarket_mach_v1_2.retransmission_request.dissect,
  ["X"] = miax_pearloptions_topofmarket_mach_v1_2.logout_request.dissect,
  ["G"] = miax_pearloptions_topofmarket_mach_v1_2.goodbye_packet.dissect,
  ["u"] = miax_pearloptions_topofmarket_mach_v1_2.trading_session_update.dissect,
  ["0"] = miax_pearloptions_topofmarket_mach_v1_2.server_heartbeat.dissect,
  ["1"] = miax_pearloptions_topofmarket_mach_v1_2.client_heartbeat.dissect,
  ["T"] = miax_pearloptions_topofmarket_mach_v1_2.test_packet.dissect,
}

miax_pearloptions_topofmarket_mach_v1_2.sesm_payload.dissect = function(buffer, offset, packet, parent, sesm_packet_type)
  local dissect = miax_pearloptions_topofmarket_mach_v1_2.sesm_payload.dispatch[sesm_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sesm Packet Header
miax_pearloptions_topofmarket_mach_v1_2.sesm_packet_header = {}

-- Size: Sesm Packet Header
miax_pearloptions_topofmarket_mach_v1_2.sesm_packet_header.size =
  miax_pearloptions_topofmarket_mach_v1_2.sesm_packet_length.size + 
  miax_pearloptions_topofmarket_mach_v1_2.sesm_packet_type.size

-- Display: Sesm Packet Header
miax_pearloptions_topofmarket_mach_v1_2.sesm_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sesm Packet Header
miax_pearloptions_topofmarket_mach_v1_2.sesm_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sesm Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, sesm_packet_length = miax_pearloptions_topofmarket_mach_v1_2.sesm_packet_length.dissect(buffer, index, packet, parent)

  -- Sesm Packet Type: 1 Byte Ascii String Enum with 12 values
  index, sesm_packet_type = miax_pearloptions_topofmarket_mach_v1_2.sesm_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sesm Packet Header
miax_pearloptions_topofmarket_mach_v1_2.sesm_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.sesm_packet_header, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_2.sesm_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_2.sesm_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_2.sesm_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Sesm Tcp Packet
miax_pearloptions_topofmarket_mach_v1_2.sesm_tcp_packet = {}

-- Display: Sesm Tcp Packet
miax_pearloptions_topofmarket_mach_v1_2.sesm_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sesm Tcp Packet
miax_pearloptions_topofmarket_mach_v1_2.sesm_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset

  -- Sesm Packet Header: Struct of 2 fields
  index, sesm_packet_header = miax_pearloptions_topofmarket_mach_v1_2.sesm_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Type
  local sesm_packet_type = buffer(index - 1, 1):string()

  -- Sesm Payload: Runtime Type with 12 branches
  index = miax_pearloptions_topofmarket_mach_v1_2.sesm_payload.dissect(buffer, index, packet, parent, sesm_packet_type)

  return index
end

-- Dissect: Sesm Tcp Packet
miax_pearloptions_topofmarket_mach_v1_2.sesm_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset + size_of_sesm_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.sesm_tcp_packet, buffer(offset, 0))
    local current = miax_pearloptions_topofmarket_mach_v1_2.sesm_tcp_packet.fields(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
    parent:set_len(size_of_sesm_tcp_packet)
    local display = miax_pearloptions_topofmarket_mach_v1_2.sesm_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_pearloptions_topofmarket_mach_v1_2.sesm_tcp_packet.fields(buffer, offset, packet, parent, size_of_sesm_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Sesm Tcp Packet
local sesm_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < miax_pearloptions_topofmarket_mach_v1_2.sesm_packet_header.size then
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
miax_pearloptions_topofmarket_mach_v1_2.tcp_packet = {}

-- Verify required size of Tcp packet
miax_pearloptions_topofmarket_mach_v1_2.tcp_packet.requiredsize = function(buffer)
  return buffer:len() >= miax_pearloptions_topofmarket_mach_v1_2.sesm_packet_header.size
end

-- Dissect Tcp Packet
miax_pearloptions_topofmarket_mach_v1_2.tcp_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = miax_pearloptions_topofmarket_mach_v1_2.conversation.data(packet)
  if not packet.visited then
    data.seconds.frames[packet.number] = data.seconds.last
  end
  miax_pearloptions_topofmarket_mach_v1_2.seconds.current = data.seconds.frames[packet.number]
  miax_pearloptions_topofmarket_mach_v1_2.conversation.current = data

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
      index = miax_pearloptions_topofmarket_mach_v1_2.sesm_tcp_packet.dissect(frame, index, packet, parent, size_of_sesm_tcp_packet)
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
miax_pearloptions_topofmarket_mach_v1_2.end_of_session = {}

-- Display: End Of Session
miax_pearloptions_topofmarket_mach_v1_2.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
miax_pearloptions_topofmarket_mach_v1_2.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = miax_pearloptions_topofmarket_mach_v1_2.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Start Of Session
miax_pearloptions_topofmarket_mach_v1_2.start_of_session = {}

-- Display: Start Of Session
miax_pearloptions_topofmarket_mach_v1_2.start_of_session.display = function(packet, parent, length)
  return "Start Of Session"
end


-- Dissect: Start Of Session
miax_pearloptions_topofmarket_mach_v1_2.start_of_session.dissect = function(buffer, offset, packet, parent)
  local display = miax_pearloptions_topofmarket_mach_v1_2.start_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
miax_pearloptions_topofmarket_mach_v1_2.heartbeat = {}

-- Display: Heartbeat
miax_pearloptions_topofmarket_mach_v1_2.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
miax_pearloptions_topofmarket_mach_v1_2.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_pearloptions_topofmarket_mach_v1_2.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Payload
miax_pearloptions_topofmarket_mach_v1_2.payload = {}

-- Dissect: Payload
miax_pearloptions_topofmarket_mach_v1_2.payload.dispatch = {
  [0] = miax_pearloptions_topofmarket_mach_v1_2.heartbeat.dissect,
  [1] = miax_pearloptions_topofmarket_mach_v1_2.start_of_session.dissect,
  [2] = miax_pearloptions_topofmarket_mach_v1_2.end_of_session.dissect,
  [3] = miax_pearloptions_topofmarket_mach_v1_2.application_message.dissect,
}

miax_pearloptions_topofmarket_mach_v1_2.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  local dissect = miax_pearloptions_topofmarket_mach_v1_2.payload.dispatch[packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Mach Packet Header
miax_pearloptions_topofmarket_mach_v1_2.mach_packet_header = {}

-- Size: Mach Packet Header
miax_pearloptions_topofmarket_mach_v1_2.mach_packet_header.size =
  miax_pearloptions_topofmarket_mach_v1_2.sequence_number.size + 
  miax_pearloptions_topofmarket_mach_v1_2.packet_length.size + 
  miax_pearloptions_topofmarket_mach_v1_2.packet_type.size + 
  miax_pearloptions_topofmarket_mach_v1_2.session_number.size

-- Display: Mach Packet Header
miax_pearloptions_topofmarket_mach_v1_2.mach_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mach Packet Header
miax_pearloptions_topofmarket_mach_v1_2.mach_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: BinaryU
  index, sequence_number = miax_pearloptions_topofmarket_mach_v1_2.sequence_number.dissect(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = miax_pearloptions_topofmarket_mach_v1_2.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, packet_type = miax_pearloptions_topofmarket_mach_v1_2.packet_type.dissect(buffer, index, packet, parent)

  -- Session Number: 1 Byte Unsigned Fixed Width Integer
  index, session_number = miax_pearloptions_topofmarket_mach_v1_2.session_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mach Packet Header
miax_pearloptions_topofmarket_mach_v1_2.mach_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.mach_packet_header, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_2.mach_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_2.mach_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_2.mach_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Mach Message
miax_pearloptions_topofmarket_mach_v1_2.mach_message = {}

-- Display: Mach Message
miax_pearloptions_topofmarket_mach_v1_2.mach_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mach Message
miax_pearloptions_topofmarket_mach_v1_2.mach_message.fields = function(buffer, offset, packet, parent, size_of_mach_message)
  local index = offset

  -- Mach Packet Header: Struct of 4 fields
  index, mach_packet_header = miax_pearloptions_topofmarket_mach_v1_2.mach_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 2, 1):le_uint()

  -- Payload: Runtime Type with 4 branches
  index = miax_pearloptions_topofmarket_mach_v1_2.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Mach Message
miax_pearloptions_topofmarket_mach_v1_2.mach_message.dissect = function(buffer, offset, packet, parent, size_of_mach_message)
  local index = offset + size_of_mach_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2.fields.mach_message, buffer(offset, 0))
    local current = miax_pearloptions_topofmarket_mach_v1_2.mach_message.fields(buffer, offset, packet, parent, size_of_mach_message)
    parent:set_len(size_of_mach_message)
    local display = miax_pearloptions_topofmarket_mach_v1_2.mach_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_pearloptions_topofmarket_mach_v1_2.mach_message.fields(buffer, offset, packet, parent, size_of_mach_message)

    return index
  end
end

-- Udp Packet
miax_pearloptions_topofmarket_mach_v1_2.udp_packet = {}

-- Verify required size of Udp packet
miax_pearloptions_topofmarket_mach_v1_2.udp_packet.requiredsize = function(buffer)
  return buffer:len() >= miax_pearloptions_topofmarket_mach_v1_2.mach_packet_header.size
end

-- Dissect Udp Packet
miax_pearloptions_topofmarket_mach_v1_2.udp_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = miax_pearloptions_topofmarket_mach_v1_2.conversation.data(packet)
  if not packet.visited then
    data.seconds.frames[packet.number] = data.seconds.last
  end
  miax_pearloptions_topofmarket_mach_v1_2.seconds.current = data.seconds.frames[packet.number]
  miax_pearloptions_topofmarket_mach_v1_2.conversation.current = data

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
    index, mach_message = miax_pearloptions_topofmarket_mach_v1_2.mach_message.dissect(buffer, index, packet, parent, packet_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_miax_pearloptions_topofmarket_mach_v1_2.init()
  miax_pearloptions_topofmarket_mach_v1_2.seconds.current = nil
  miax_pearloptions_topofmarket_mach_v1_2.conversation.current = nil
  miax_pearloptions_topofmarket_mach_v1_2.conversation.flows = {}
end

-- Dissector for Miax PearlOptions TopOfMarket Mach 1.2
function omi_miax_pearloptions_topofmarket_mach_v1_2.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_miax_pearloptions_topofmarket_mach_v1_2.name

  if packet.port_type == 3 then
    -- Dissect protocol
    local protocol = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2, buffer(), omi_miax_pearloptions_topofmarket_mach_v1_2.description, "("..buffer:len().." Bytes)")
    return miax_pearloptions_topofmarket_mach_v1_2.udp_packet.dissect(buffer, packet, protocol)
  end

  if packet.port_type == 2 then
    -- Dissect protocol
    local protocol = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_2, buffer(), omi_miax_pearloptions_topofmarket_mach_v1_2.description, "("..buffer:len().." Bytes)")
    return miax_pearloptions_topofmarket_mach_v1_2.tcp_packet.dissect(buffer, packet, protocol)
  end
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Miax PearlOptions TopOfMarket Mach 1.2 (Udp)
local function omi_miax_pearloptions_topofmarket_mach_v1_2_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_pearloptions_topofmarket_mach_v1_2.udp_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_pearloptions_topofmarket_mach_v1_2
  omi_miax_pearloptions_topofmarket_mach_v1_2.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Miax PearlOptions TopOfMarket Mach 1.2 (Tcp)
local function omi_miax_pearloptions_topofmarket_mach_v1_2_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_pearloptions_topofmarket_mach_v1_2.tcp_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_pearloptions_topofmarket_mach_v1_2
  omi_miax_pearloptions_topofmarket_mach_v1_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristics for Miax PearlOptions TopOfMarket Mach 1.2
omi_miax_pearloptions_topofmarket_mach_v1_2:register_heuristic("udp", omi_miax_pearloptions_topofmarket_mach_v1_2_udp_heuristic)
omi_miax_pearloptions_topofmarket_mach_v1_2:register_heuristic("tcp", omi_miax_pearloptions_topofmarket_mach_v1_2_tcp_heuristic)

-- Register Miax PearlOptions TopOfMarket Mach 1.2 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_miax_pearloptions_topofmarket_mach_v1_2)

-- Register Miax PearlOptions TopOfMarket Mach 1.2 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_miax_pearloptions_topofmarket_mach_v1_2)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Miami International Holdings
--   Version: 1.2
--   Date: Tuesday, July 25, 2023
--   Specification: Pearl_Top_of_Market_Feed_ToM_v1.2.pdf
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
