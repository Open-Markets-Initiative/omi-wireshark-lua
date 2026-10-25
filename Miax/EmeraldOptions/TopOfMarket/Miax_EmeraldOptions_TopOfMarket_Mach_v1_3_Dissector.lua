-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax EmeraldOptions TopOfMarket Mach 1.3 Protocol
local omi_miax_emeraldoptions_topofmarket_mach_v1_3 = Proto("Omi.Miax.EmeraldOptions.TopOfMarket.Mach.v1.3", "Miax EmeraldOptions TopOfMarket Mach 1.3")

-- Protocol table
local miax_emeraldoptions_topofmarket_mach_v1_3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax EmeraldOptions TopOfMarket Mach 1.3 Fields
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.active_on_miax = ProtoField.new("Active On Miax", "miax.emeraldoptions.topofmarket.mach.v1.3.activeonmiax", ftypes.STRING, nil, nil, nil, "Indicates if this symbol is tradable on Emerald in the current session")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.application_message = ProtoField.new("Application Message", "miax.emeraldoptions.topofmarket.mach.v1.3.applicationmessage", ftypes.STRING)
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.application_protocol = ProtoField.new("Application Protocol", "miax.emeraldoptions.topofmarket.mach.v1.3.applicationprotocol", ftypes.STRING, nil, nil, nil, "Miax Application Protocol")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.bid_condition = ProtoField.new("Bid Condition", "miax.emeraldoptions.topofmarket.mach.v1.3.bidcondition", ftypes.STRING, nil, nil, nil, "Bid Condition Values")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.bid_price_long = ProtoField.new("Bid Price Long", "miax.emeraldoptions.topofmarket.mach.v1.3.bidpricelong", ftypes.DOUBLE, nil, nil, nil, "Emerald best bid price at the time stated in Timestamp and side specified in Message Type")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.bid_price_short = ProtoField.new("Bid Price Short", "miax.emeraldoptions.topofmarket.mach.v1.3.bidpriceshort", ftypes.DOUBLE, nil, nil, nil, "Emerald best bid price at the time stated in Timestamp and side specified in Message Type")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.bid_priority_customer_size_long = ProtoField.new("Bid Priority Customer Size Long", "miax.emeraldoptions.topofmarket.mach.v1.3.bidprioritycustomersizelong", ftypes.UINT32, nil, nil, nil, "Aggregate size of Priority Customer contracts at the Emerald Best Bid Price")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.bid_priority_customer_size_short = ProtoField.new("Bid Priority Customer Size Short", "miax.emeraldoptions.topofmarket.mach.v1.3.bidprioritycustomersizeshort", ftypes.UINT16, nil, nil, nil, "Aggregate size of Priority Customer contracts at the Emerald Best Bid Price")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.bid_size_long = ProtoField.new("Bid Size Long", "miax.emeraldoptions.topofmarket.mach.v1.3.bidsizelong", ftypes.UINT32, nil, nil, nil, "Aggregate size at Emerald best bid Price at the time stated in Timestamp and side specified in Message Type")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.bid_size_short = ProtoField.new("Bid Size Short", "miax.emeraldoptions.topofmarket.mach.v1.3.bidsizeshort", ftypes.UINT16, nil, nil, nil, "Aggregate size at Emerald best bid Price at the time stated in Timestamp and side specified in Message Type")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.call_or_put = ProtoField.new("Call Or Put", "miax.emeraldoptions.topofmarket.mach.v1.3.callorput", ftypes.STRING, nil, nil, nil, "Option Type")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.closing_time = ProtoField.new("Closing Time", "miax.emeraldoptions.topofmarket.mach.v1.3.closingtime", ftypes.STRING, nil, nil, nil, "Expressed in HH:MM:SS format. Eg: 16:15:00")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.computer_id = ProtoField.new("Computer Id", "miax.emeraldoptions.topofmarket.mach.v1.3.computerid", ftypes.STRING, nil, nil, nil, "issued by MIAX Emerald Options Exchange during initial setup")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.correction_number = ProtoField.new("Correction Number", "miax.emeraldoptions.topofmarket.mach.v1.3.correctionnumber", ftypes.UINT8, nil, nil, nil, "Trade correction number. 0 for New trades. Greater than or equal to 0 for trades resulting from corrections/adjustments.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.ebbo_condition = ProtoField.new("Ebbo Condition", "miax.emeraldoptions.topofmarket.mach.v1.3.ebbocondition", ftypes.STRING, nil, nil, nil, "EBBO Condition Values")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.ebbo_price_long = ProtoField.new("EBBO Price Long", "miax.emeraldoptions.topofmarket.mach.v1.3.ebbopricelong", ftypes.DOUBLE, nil, nil, nil, "Emerald Best price at the time stated in Timestamp and side specified in Message Type")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.ebbo_price_short = ProtoField.new("EBBO Price Short", "miax.emeraldoptions.topofmarket.mach.v1.3.ebbopriceshort", ftypes.DOUBLE, nil, nil, nil, "Emerald Best price at the time stated in Timestamp and side specified in Message Type")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.ebbo_priority_customer_size_long = ProtoField.new("EBBO Priority Customer Size Long", "miax.emeraldoptions.topofmarket.mach.v1.3.ebboprioritycustomersizelong", ftypes.UINT32, nil, nil, nil, "Aggregate size of Priority Customer contracts at the Emerald Best Price")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.ebbo_priority_customer_size_short = ProtoField.new("EBBO Priority Customer Size Short", "miax.emeraldoptions.topofmarket.mach.v1.3.ebboprioritycustomersizeshort", ftypes.UINT16, nil, nil, nil, "Aggregate size of Priority Customer contracts at the Emerald Best Price")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.ebbo_size_long = ProtoField.new("EBBO Size Long", "miax.emeraldoptions.topofmarket.mach.v1.3.ebbosizelong", ftypes.UINT32, nil, nil, nil, "Aggregate size at Emerald Best Price at the time stated in Timestamp and side specified in Message Type")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.ebbo_size_short = ProtoField.new("EBBO Size Short", "miax.emeraldoptions.topofmarket.mach.v1.3.ebbosizeshort", ftypes.UINT16, nil, nil, nil, "Aggregate size at Emerald Best Price at the time stated in Timestamp and side specified in Message Type")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.emerald_bbo_posting_increment_indicator = ProtoField.new("Emerald Bbo Posting Increment Indicator", "miax.emeraldoptions.topofmarket.mach.v1.3.emeraldbbopostingincrementindicator", ftypes.STRING, nil, nil, nil, "This is the Minimum Price Variation as agreed to by the Options industry (penny pilot program) and as published by Emerald")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.end_sequence_number = ProtoField.new("End Sequence Number", "miax.emeraldoptions.topofmarket.mach.v1.3.endsequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the last packet to be retransmitted")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.event_reason = ProtoField.new("Event Reason", "miax.emeraldoptions.topofmarket.mach.v1.3.eventreason", ftypes.STRING, nil, nil, nil, "Event Reason value")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.expected_event_time_nano_seconds_part = ProtoField.new("Expected Event Time Nano Seconds Part", "miax.emeraldoptions.topofmarket.mach.v1.3.expectedeventtimenanosecondspart", ftypes.UINT32, nil, nil, nil, "Nano-seconds portion of the expected time of the event. Specifies number of nano-seconds since the seconds specified in \"Expected Event Time Seconds\" field.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.expected_event_time_seconds_part = ProtoField.new("Expected Event Time Seconds Part", "miax.emeraldoptions.topofmarket.mach.v1.3.expectedeventtimesecondspart", ftypes.UINT32, nil, nil, nil, "Seconds portion of the expected time of the event. Always use in conjunction with the Nano-seconds part field.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.expiration_date = ProtoField.new("Expiration Date", "miax.emeraldoptions.topofmarket.mach.v1.3.expirationdate", ftypes.STRING, nil, nil, nil, "Expiration date of the option in YYYYMMDD format")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.goodbye_packet = ProtoField.new("Goodbye Packet", "miax.emeraldoptions.topofmarket.mach.v1.3.goodbyepacket", ftypes.STRING, nil, nil, nil, "The server may send a GoodBye packet to inform the client a reason for termination of the connection just before it terminates the connection")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.highest_sequence_number = ProtoField.new("Highest Sequence Number", "miax.emeraldoptions.topofmarket.mach.v1.3.highestsequencenumber", ftypes.UINT64, nil, nil, nil, "the highest sequence number that the server currently has for the client")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.liquidity_acceptance_increment_indicator = ProtoField.new("Liquidity Acceptance Increment Indicator", "miax.emeraldoptions.topofmarket.mach.v1.3.liquidityacceptanceincrementindicator", ftypes.STRING, nil, nil, nil, "This is the Minimum Price Variation for Quote/Order acceptance as per Emerald rules")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.login_request = ProtoField.new("Login Request", "miax.emeraldoptions.topofmarket.mach.v1.3.loginrequest", ftypes.STRING, nil, nil, nil, "The SesM client must send a Login request packet immediately upon establishing a new TCP/IP socket connection to the server")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.login_response = ProtoField.new("Login Response", "miax.emeraldoptions.topofmarket.mach.v1.3.loginresponse", ftypes.STRING, nil, nil, nil, "The SesM server sends a Login response packet in response a Login request packet from the client")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.login_status = ProtoField.new("Login Status", "miax.emeraldoptions.topofmarket.mach.v1.3.loginstatus", ftypes.STRING)
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.logout_reason = ProtoField.new("Logout Reason", "miax.emeraldoptions.topofmarket.mach.v1.3.logoutreason", ftypes.STRING, nil, nil, nil, "Logout Request Reason")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.logout_request = ProtoField.new("Logout Request", "miax.emeraldoptions.topofmarket.mach.v1.3.logoutrequest", ftypes.STRING, nil, nil, nil, "The client may send a Logout request packet to request the connection be terminated")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.logout_text = ProtoField.new("Logout Text", "miax.emeraldoptions.topofmarket.mach.v1.3.logouttext", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.long_term_option = ProtoField.new("Long Term Option", "miax.emeraldoptions.topofmarket.mach.v1.3.longtermoption", ftypes.STRING, nil, nil, nil, "\"Y\" = Far month expiration (as defined by Emerald rules), \"N\" = Near month expiration (as defined by Emerald rules)")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.matching_engine_id = ProtoField.new("Matching Engine Id", "miax.emeraldoptions.topofmarket.mach.v1.3.matchingengineid", ftypes.UINT8, nil, nil, nil, "Matching Engine that originated the packet")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.message_type = ProtoField.new("Message Type", "miax.emeraldoptions.topofmarket.mach.v1.3.messagetype", ftypes.STRING, nil, nil, nil, "Code identifying this message type")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.nanoseconds = ProtoField.new("Nanoseconds", "miax.emeraldoptions.topofmarket.mach.v1.3.nanoseconds", ftypes.UINT32, nil, nil, nil, "Time at which this product is added/updated on Emerald system today.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.number_of_matching_engines = ProtoField.new("Number Of Matching Engines", "miax.emeraldoptions.topofmarket.mach.v1.3.numberofmatchingengines", ftypes.UINT8, nil, nil, nil, "Count of all Matching Engines for the exchange")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.offer_condition = ProtoField.new("Offer Condition", "miax.emeraldoptions.topofmarket.mach.v1.3.offercondition", ftypes.STRING, nil, nil, nil, "Offer Condition Values")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.offer_price_long = ProtoField.new("Offer Price Long", "miax.emeraldoptions.topofmarket.mach.v1.3.offerpricelong", ftypes.DOUBLE, nil, nil, nil, "Emerald best offer price at the time stated in Timestamp and side specified in Message Type")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.offer_price_short = ProtoField.new("Offer Price Short", "miax.emeraldoptions.topofmarket.mach.v1.3.offerpriceshort", ftypes.DOUBLE, nil, nil, nil, "Emerald best offer price at the time stated in Timestamp and side specified in Message Type")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.offer_priority_customer_size_long = ProtoField.new("Offer Priority Customer Size Long", "miax.emeraldoptions.topofmarket.mach.v1.3.offerprioritycustomersizelong", ftypes.UINT32, nil, nil, nil, "Aggregate size of Priority Customer contracts at the Emerald Best Offer Price")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.offer_priority_customer_size_short = ProtoField.new("Offer Priority Customer Size Short", "miax.emeraldoptions.topofmarket.mach.v1.3.offerprioritycustomersizeshort", ftypes.UINT16, nil, nil, nil, "Aggregate size of Priority Customer contracts at the Emerald Best Offer Price")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.offer_size_long = ProtoField.new("Offer Size Long", "miax.emeraldoptions.topofmarket.mach.v1.3.offersizelong", ftypes.UINT32, nil, nil, nil, "Aggregate size at Emerald best offer Price at the time stated in Timestamp and side specified in Message Type")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.offer_size_short = ProtoField.new("Offer Size Short", "miax.emeraldoptions.topofmarket.mach.v1.3.offersizeshort", ftypes.UINT16, nil, nil, nil, "Aggregate size at Emerald best offer Price at the time stated in Timestamp and side specified in Message Type")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.opening_time = ProtoField.new("Opening Time", "miax.emeraldoptions.topofmarket.mach.v1.3.openingtime", ftypes.STRING, nil, nil, nil, "Expressed in HH:MM:SS format. Eg: 09:30:00")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.opening_underlying_market_code = ProtoField.new("Opening Underlying Market Code", "miax.emeraldoptions.topofmarket.mach.v1.3.openingunderlyingmarketcode", ftypes.STRING, nil, nil, nil, "Options opening will be triggered on receipt of Opening quote/trade from this Underlying market")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.packet_length = ProtoField.new("Packet Length", "miax.emeraldoptions.topofmarket.mach.v1.3.packetlength", ftypes.UINT16, nil, nil, nil, "Length of the packet, including the header and application data")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.packet_type = ProtoField.new("Packet Type", "miax.emeraldoptions.topofmarket.mach.v1.3.packettype", ftypes.UINT8, nil, nil, nil, "protocol packet type")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.priority_quote_width = ProtoField.new("Priority Quote Width", "miax.emeraldoptions.topofmarket.mach.v1.3.priorityquotewidth", ftypes.DOUBLE, nil, nil, nil, "Maximum allowable width for a quote for this Option during regular trading in order to be considered as Priority Quote. 0 when Priority Quote Width is not applicable.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.product_id = ProtoField.new("Product Id", "miax.emeraldoptions.topofmarket.mach.v1.3.productid", ftypes.UINT32, nil, nil, nil, "Emerald Product ID mapped to a given option. It is assigned per trading session and is valid for that session.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.reference_correction_number = ProtoField.new("Reference Correction Number", "miax.emeraldoptions.topofmarket.mach.v1.3.referencecorrectionnumber", ftypes.UINT8, nil, nil, nil, "Correction Number of the trade that was just corrected/adjusted. 0 for new trades.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.reference_trade_id = ProtoField.new("Reference Trade Id", "miax.emeraldoptions.topofmarket.mach.v1.3.referencetradeid", ftypes.UINT32, nil, nil, nil, "0 (zero) if new trade. Trade ID of the original trade if this trade originated as a correction of the original trade.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.refresh_message_type = ProtoField.new("Refresh Message Type", "miax.emeraldoptions.topofmarket.mach.v1.3.refreshmessagetype", ftypes.STRING, nil, nil, nil, "Identifies the data set the firm is requesting a refresh of.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "miax.emeraldoptions.topofmarket.mach.v1.3.requestedsequencenumber", ftypes.UINT64, nil, nil, nil, "Specifies client requested sequence number")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.requested_trading_session_id = ProtoField.new("Requested Trading Session Id", "miax.emeraldoptions.topofmarket.mach.v1.3.requestedtradingsessionid", ftypes.UINT8, nil, nil, nil, "Specifies the session the client would like to log into, or zero to log into the currently active session")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.reserved_8 = ProtoField.new("Reserved 8", "miax.emeraldoptions.topofmarket.mach.v1.3.reserved8", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.restricted_option = ProtoField.new("Restricted Option", "miax.emeraldoptions.topofmarket.mach.v1.3.restrictedoption", ftypes.STRING, nil, nil, nil, "Restricted Option value")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.retransmission_request = ProtoField.new("Retransmission Request", "miax.emeraldoptions.topofmarket.mach.v1.3.retransmissionrequest", ftypes.STRING, nil, nil, nil, "The SesM client uses this packet to request a retransmission server to retransmit a range of packets")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.seconds = ProtoField.new("Seconds", "miax.emeraldoptions.topofmarket.mach.v1.3.seconds", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Seconds part of the time that applies to all messages that gets disseminated until this message gets sent again.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.seconds_utc = ProtoField.new("Seconds", "miax.emeraldoptions.topofmarket.mach.v1.3.seconds.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Seconds part of the time that applies to all messages that gets disseminated until this message gets sent again.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.security_symbol = ProtoField.new("Security Symbol", "miax.emeraldoptions.topofmarket.mach.v1.3.securitysymbol", ftypes.STRING, nil, nil, nil, "Option Security Symbol")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.sequence_number = ProtoField.new("Sequence Number", "miax.emeraldoptions.topofmarket.mach.v1.3.sequencenumber", ftypes.UINT64, nil, nil, nil, "Original sequence number from the live feed.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "miax.emeraldoptions.topofmarket.mach.v1.3.sequenceddatapacket", ftypes.STRING, nil, nil, nil, "The SesM server uses Sequenced data packets to send all messages that must be recoverable by the client in case of a connection loss")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "miax.emeraldoptions.topofmarket.mach.v1.3.sequencedmessagetype", ftypes.STRING, nil, nil, nil, "Market-data application message type carried over the SesM sequenced channel (matches the MACH UDP Message Type byte; Miax Emerald Options uses Ascii message codes)")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.sesm_packet_length = ProtoField.new("Sesm Packet Length", "miax.emeraldoptions.topofmarket.mach.v1.3.sesmpacketlength", ftypes.UINT16, nil, nil, nil, "The length of rest of the packet")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.sesm_packet_type = ProtoField.new("Sesm Packet Type", "miax.emeraldoptions.topofmarket.mach.v1.3.sesmpackettype", ftypes.STRING, nil, nil, nil, "SesM protocol packet type")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.sesm_version = ProtoField.new("Sesm Version", "miax.emeraldoptions.topofmarket.mach.v1.3.sesmversion", ftypes.STRING, nil, nil, nil, "Protocol version")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.session_id = ProtoField.new("Session Id", "miax.emeraldoptions.topofmarket.mach.v1.3.sessionid", ftypes.UINT32, nil, nil, nil, "Emerald assigned ID for the current trading session")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.session_number = ProtoField.new("Session Number", "miax.emeraldoptions.topofmarket.mach.v1.3.sessionnumber", ftypes.UINT8, nil, nil, nil, "protocol packet type")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.start_sequence_number = ProtoField.new("Start Sequence Number", "miax.emeraldoptions.topofmarket.mach.v1.3.startsequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the first packet to be retransmitted")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.strike_price = ProtoField.new("Strike Price", "miax.emeraldoptions.topofmarket.mach.v1.3.strikeprice", ftypes.DOUBLE, nil, nil, nil, "Explicit strike price of the option. Refer to data types for field processing notes")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.synchronization_complete = ProtoField.new("Synchronization Complete", "miax.emeraldoptions.topofmarket.mach.v1.3.synchronizationcomplete", ftypes.STRING, nil, nil, nil, "The SesM server sends a Login response packet in response a Login request packet from the client")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.system_status = ProtoField.new("System Status", "miax.emeraldoptions.topofmarket.mach.v1.3.systemstatus", ftypes.STRING, nil, nil, nil, "Current system status")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.test_packet = ProtoField.new("Test Packet", "miax.emeraldoptions.topofmarket.mach.v1.3.testpacket", ftypes.STRING, nil, nil, nil, "Test packets are intended to provide human readable text that may aid in debugging problems")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.test_text = ProtoField.new("Test Text", "miax.emeraldoptions.topofmarket.mach.v1.3.testtext", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.to_m_version = ProtoField.new("To M Version", "miax.emeraldoptions.topofmarket.mach.v1.3.tomversion", ftypes.STRING, nil, nil, nil, "Eg: TOM1.0")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.trade_condition = ProtoField.new("Trade Condition", "miax.emeraldoptions.topofmarket.mach.v1.3.tradecondition", ftypes.STRING, nil, nil, nil, "Trade Condition Values. Please refer to Appendix A.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.trade_id = ProtoField.new("Trade Id", "miax.emeraldoptions.topofmarket.mach.v1.3.tradeid", ftypes.UINT32, nil, nil, nil, "Unique Trade ID assigned to every Trade.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.trade_price = ProtoField.new("Trade Price", "miax.emeraldoptions.topofmarket.mach.v1.3.tradeprice", ftypes.DOUBLE, nil, nil, nil, "Price at which this product traded")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.trade_size = ProtoField.new("Trade Size", "miax.emeraldoptions.topofmarket.mach.v1.3.tradesize", ftypes.UINT32, nil, nil, nil, "Number of contracts executed in this trade")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.trading_session_id = ProtoField.new("Trading Session Id", "miax.emeraldoptions.topofmarket.mach.v1.3.tradingsessionid", ftypes.UINT8, nil, nil, nil, "The current trading session ID of the corresponding Matching Engine")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.trading_status = ProtoField.new("Trading Status", "miax.emeraldoptions.topofmarket.mach.v1.3.tradingstatus", ftypes.STRING, nil, nil, nil, "Trading Status value")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "miax.emeraldoptions.topofmarket.mach.v1.3.underlyingsymbol", ftypes.STRING, nil, nil, nil, "Stock Symbol for the option.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "miax.emeraldoptions.topofmarket.mach.v1.3.unsequenceddatapacket", ftypes.STRING, nil, nil, nil, "Each unsequenced data packet carries one unsequenced message from the higher-lever protocol")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "miax.emeraldoptions.topofmarket.mach.v1.3.unsequencedmessagetype", ftypes.STRING, nil, nil, nil, "Market-data Refresh request/response discriminator carried over the SesM unsequenced channel (Request Type R, Response Type r, End of Refresh E)")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.username = ProtoField.new("Username", "miax.emeraldoptions.topofmarket.mach.v1.3.username", ftypes.STRING, nil, nil, nil, "issued by MIAX during initial setup")

-- Miax EmeraldOptions TopOfMarket Mach 1.3 Framing
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.mach_message = ProtoField.new("Mach Message", "miax.emeraldoptions.topofmarket.mach.v1.3.machmessage", ftypes.STRING)
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.mach_packet_header = ProtoField.new("Mach Packet Header", "miax.emeraldoptions.topofmarket.mach.v1.3.machpacketheader", ftypes.STRING, nil, nil, nil, "Mach packet header (12 bytes)")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.sesm_packet_header = ProtoField.new("Sesm Packet Header", "miax.emeraldoptions.topofmarket.mach.v1.3.sesmpacketheader", ftypes.STRING)
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.sesm_tcp_packet = ProtoField.new("Sesm Tcp Packet", "miax.emeraldoptions.topofmarket.mach.v1.3.sesmtcppacket", ftypes.STRING)
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.tcp_packet = ProtoField.new("Tcp Packet", "miax.emeraldoptions.topofmarket.mach.v1.3.tcppacket", ftypes.STRING, nil, nil, nil, "SesM Packet")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.udp_packet = ProtoField.new("Udp Packet", "miax.emeraldoptions.topofmarket.mach.v1.3.udppacket", ftypes.STRING)

-- Miax EmeraldOptions TopOfMarket 1.3 Application Messages
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.end_of_refresh_notification_message = ProtoField.new("End Of Refresh Notification Message", "miax.emeraldoptions.topofmarket.mach.v1.3.endofrefreshnotificationmessage", ftypes.STRING, nil, nil, nil, "Sent by MIAX Emerald over the ToM Retransmission Interface (SesM Unsequenced Data Packet) when the refresh response is complete.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.last_sale_message = ProtoField.new("Last Sale Message", "miax.emeraldoptions.topofmarket.mach.v1.3.lastsalemessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate Trades that are resulting from executions on Emerald during the current trading session.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "miax.emeraldoptions.topofmarket.mach.v1.3.refreshrequestmessage", ftypes.STRING, nil, nil, nil, "Sent by the firm over the ToM Retransmission Interface (SesM Unsequenced Data Packet) to request a Last Value Refresh of a particular data set identified by Refresh Message Type.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.refresh_response_message = ProtoField.new("Refresh Response Message", "miax.emeraldoptions.topofmarket.mach.v1.3.refreshresponsemessage", ftypes.STRING, nil, nil, nil, "Sent by MIAX Emerald over the ToM Retransmission Interface (SesM Unsequenced Data Packet) carrying one Application Message that satisfies a previous Refresh Request. Note: MIAX Emerald PDF assigns Response Type \"R\" (uppercase) to this message, colliding with the Request Type \"R\" byte; lowercase \"r\" is used here to match the Pearl convention for case-distinct discrimination.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.simple_double_sided_top_of_market_best_bid_or_offer_compact_message = ProtoField.new("Simple Double Sided Top Of Market Best Bid Or Offer Compact Message", "miax.emeraldoptions.topofmarket.mach.v1.3.simpledoublesidedtopofmarketbestbidoroffercompactmessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used in the real-time feed and refresh service to disseminate both sides of the Emerald Simple Top of Market for options with low premiums and small aggregate Emerald Best Bid or Offer (EBBO) size.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.simple_double_sided_top_of_market_best_bid_or_offer_wide_message = ProtoField.new("Simple Double Sided Top Of Market Best Bid Or Offer Wide Message", "miax.emeraldoptions.topofmarket.mach.v1.3.simpledoublesidedtopofmarketbestbidorofferwidemessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used in the real-time feed and refresh service to disseminate both sides of the Emerald Simple Top of Market for options with high premiums or large aggregate Emerald Best Bid or Offer (EBBO) sizes.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.simple_series_update_message = ProtoField.new("Simple Series Update Message", "miax.emeraldoptions.topofmarket.mach.v1.3.simpleseriesupdatemessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate all Option series traded on Emerald for the current session. The product ID sent in this message is what will be disseminated in Top of Market BBO and Last Sale messages.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.simple_top_of_market_best_bid_or_offer_compact_bid_message = ProtoField.new("Simple Top Of Market Best Bid Or Offer Compact Bid Message", "miax.emeraldoptions.topofmarket.mach.v1.3.simpletopofmarketbestbidoroffercompactbidmessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate each side of the Emerald Simple Top of Market for options with low premiums and small aggregate Emerald Best Bid or Offer (EBBO) size. \"B\" = Simple Top of Market on Bid side.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.simple_top_of_market_best_bid_or_offer_compact_bid_with_priority_customer_message = ProtoField.new("Simple Top Of Market Best Bid Or Offer Compact Bid With Priority Customer Message", "miax.emeraldoptions.topofmarket.mach.v1.3.simpletopofmarketbestbidoroffercompactbidwithprioritycustomermessage", ftypes.STRING, nil, nil, nil, "Simple Top of Market on Bid side with Priority Customer establishing new aggressive price. Compact format for options with low premiums and small aggregate Emerald Best Bid or Offer (EBBO) size.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.simple_top_of_market_best_bid_or_offer_compact_offer_message = ProtoField.new("Simple Top Of Market Best Bid Or Offer Compact Offer Message", "miax.emeraldoptions.topofmarket.mach.v1.3.simpletopofmarketbestbidoroffercompactoffermessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate each side of the Emerald Simple Top of Market for options with low premiums and small aggregate Emerald Best Bid or Offer (EBBO) size. \"O\" = Simple Top of Market on Offer side.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.simple_top_of_market_best_bid_or_offer_compact_offer_with_priority_customer_message = ProtoField.new("Simple Top Of Market Best Bid Or Offer Compact Offer With Priority Customer Message", "miax.emeraldoptions.topofmarket.mach.v1.3.simpletopofmarketbestbidoroffercompactofferwithprioritycustomermessage", ftypes.STRING, nil, nil, nil, "Simple Top of Market on Offer side with Priority Customer establishing new aggressive price. Compact format for options with low premiums and small aggregate Emerald Best Bid or Offer (EBBO) size.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.simple_top_of_market_best_bid_or_offer_wide_bid_message = ProtoField.new("Simple Top Of Market Best Bid Or Offer Wide Bid Message", "miax.emeraldoptions.topofmarket.mach.v1.3.simpletopofmarketbestbidorofferwidebidmessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate Emerald Simple Top of Market for options with high premiums or large aggregate Emerald Best Bid or Offer (EBBO) size. \"W\" = Simple Top of Market on Bid side (wide).")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.simple_top_of_market_best_bid_or_offer_wide_bid_with_priority_customer_message = ProtoField.new("Simple Top Of Market Best Bid Or Offer Wide Bid With Priority Customer Message", "miax.emeraldoptions.topofmarket.mach.v1.3.simpletopofmarketbestbidorofferwidebidwithprioritycustomermessage", ftypes.STRING, nil, nil, nil, "Simple Top of Market on Bid side with Priority Customer establishing new aggressive price. Wide format for options with high premiums or large aggregate Emerald Best Bid or Offer (EBBO) size.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.simple_top_of_market_best_bid_or_offer_wide_offer_message = ProtoField.new("Simple Top Of Market Best Bid Or Offer Wide Offer Message", "miax.emeraldoptions.topofmarket.mach.v1.3.simpletopofmarketbestbidorofferwideoffermessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate Emerald Simple Top of Market for options with high premiums or large aggregate Emerald Best Bid or Offer (EBBO) size. \"A\" = Simple Top of Market on Offer side (wide).")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.simple_top_of_market_best_bid_or_offer_wide_offer_with_priority_customer_message = ProtoField.new("Simple Top Of Market Best Bid Or Offer Wide Offer With Priority Customer Message", "miax.emeraldoptions.topofmarket.mach.v1.3.simpletopofmarketbestbidorofferwideofferwithprioritycustomermessage", ftypes.STRING, nil, nil, nil, "Simple Top of Market on Offer side with Priority Customer establishing new aggressive price. Wide format for options with high premiums or large aggregate Emerald Best Bid or Offer (EBBO) size.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.system_state_message = ProtoField.new("System State Message", "miax.emeraldoptions.topofmarket.mach.v1.3.systemstatemessage", ftypes.STRING, nil, nil, nil, "This message format is used to notify the firms of the state changes of the system. This is a notification that applies to each Underlying group. Firms can use notifications as triggers in their system to ensure electronic synchronization of systems.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.system_time_message = ProtoField.new("System Time Message", "miax.emeraldoptions.topofmarket.mach.v1.3.systemtimemessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate the \"seconds\" part of the timestamp that is applicable to all messages that are sent in the current second.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "miax.emeraldoptions.topofmarket.mach.v1.3.tradecancelmessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate canceled Trades that are resulting from Trade cancellations or corrections on Emerald during the current trading session.")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.underlying_trading_status_notification_message = ProtoField.new("Underlying Trading Status Notification Message", "miax.emeraldoptions.topofmarket.mach.v1.3.underlyingtradingstatusnotificationmessage", ftypes.STRING, nil, nil, nil, "This message format will be used to notify firms of changes to the trading status of all the options of an underlying.")

-- Miax EmeraldOptions TopOfMarket Mach 1.3 Generated Fields
omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.timestamp = ProtoField.new("Timestamp", "miax.emeraldoptions.topofmarket.mach.v1.3.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Miax EmeraldOptions TopOfMarket Mach 1.3 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
miax_emeraldoptions_topofmarket_mach_v1_3.absolute_time_base = 0

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
miax_emeraldoptions_topofmarket_mach_v1_3.format_timestamp = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Miax EmeraldOptions TopOfMarket Mach 1.3 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true

-- Register Miax EmeraldOptions TopOfMarket Mach 1.3 Show Options
omi_miax_emeraldoptions_topofmarket_mach_v1_3.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_miax_emeraldoptions_topofmarket_mach_v1_3.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

omi_miax_emeraldoptions_topofmarket_mach_v1_3.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_miax_emeraldoptions_topofmarket_mach_v1_3.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_miax_emeraldoptions_topofmarket_mach_v1_3.prefs.show_application_messages then
    show.application_messages = omi_miax_emeraldoptions_topofmarket_mach_v1_3.prefs.show_application_messages
  end
  if show.headers ~= omi_miax_emeraldoptions_topofmarket_mach_v1_3.prefs.show_headers then
    show.headers = omi_miax_emeraldoptions_topofmarket_mach_v1_3.prefs.show_headers
  end
  if show.structs ~= omi_miax_emeraldoptions_topofmarket_mach_v1_3.prefs.show_structs then
    show.structs = omi_miax_emeraldoptions_topofmarket_mach_v1_3.prefs.show_structs
  end
  if miax_emeraldoptions_topofmarket_mach_v1_3.format_timestamp ~= omi_miax_emeraldoptions_topofmarket_mach_v1_3.prefs.format_timestamp then
    miax_emeraldoptions_topofmarket_mach_v1_3.format_timestamp = omi_miax_emeraldoptions_topofmarket_mach_v1_3.prefs.format_timestamp
  end
  if miax_emeraldoptions_topofmarket_mach_v1_3.absolute_time_base ~= omi_miax_emeraldoptions_topofmarket_mach_v1_3.prefs.absolute_time_base then
    miax_emeraldoptions_topofmarket_mach_v1_3.absolute_time_base = omi_miax_emeraldoptions_topofmarket_mach_v1_3.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
miax_emeraldoptions_topofmarket_mach_v1_3.conversation = {}
miax_emeraldoptions_topofmarket_mach_v1_3.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
miax_emeraldoptions_topofmarket_mach_v1_3.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
miax_emeraldoptions_topofmarket_mach_v1_3.conversation.data = function(packet)
  local key = miax_emeraldoptions_topofmarket_mach_v1_3.conversation.key(packet)
  local data = miax_emeraldoptions_topofmarket_mach_v1_3.conversation.flows[key]
  if data == nil then
    data = { seconds = { last = nil, frames = {} } }
    miax_emeraldoptions_topofmarket_mach_v1_3.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
miax_emeraldoptions_topofmarket_mach_v1_3.conversation.current = nil


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
-- Miax EmeraldOptions TopOfMarket Mach 1.3 Fields
-----------------------------------------------------------------------

-- Active On Miax
miax_emeraldoptions_topofmarket_mach_v1_3.active_on_miax = {}

-- Size: Active On Miax
miax_emeraldoptions_topofmarket_mach_v1_3.active_on_miax.size = 1

-- Display: Active On Miax
miax_emeraldoptions_topofmarket_mach_v1_3.active_on_miax.labels = {
  ["A"] = "Active On Miax: Active (A)",
  ["I"] = "Active On Miax: Inactive (I)",
}

miax_emeraldoptions_topofmarket_mach_v1_3.active_on_miax.display = function(value)
  return miax_emeraldoptions_topofmarket_mach_v1_3.active_on_miax.labels[value] or "Active On Miax: Unknown("..value..")"
end

-- Dissect: Active On Miax
miax_emeraldoptions_topofmarket_mach_v1_3.active_on_miax.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.active_on_miax.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.active_on_miax.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.active_on_miax, range, value, display)

  return offset + length, value
end

-- Application Protocol
miax_emeraldoptions_topofmarket_mach_v1_3.application_protocol = {}

-- Size: Application Protocol
miax_emeraldoptions_topofmarket_mach_v1_3.application_protocol.size = 8

-- Display: Application Protocol
miax_emeraldoptions_topofmarket_mach_v1_3.application_protocol.display = function(value)
  return "Application Protocol: "..value
end

-- Dissect: Application Protocol
miax_emeraldoptions_topofmarket_mach_v1_3.application_protocol.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.application_protocol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.application_protocol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.application_protocol, range, value, display)

  return offset + length, value
end

-- Bid Condition
miax_emeraldoptions_topofmarket_mach_v1_3.bid_condition = {}

-- Size: Bid Condition
miax_emeraldoptions_topofmarket_mach_v1_3.bid_condition.size = 1

-- Display: Bid Condition
miax_emeraldoptions_topofmarket_mach_v1_3.bid_condition.labels = {
  ["A"] = "Bid Condition: Regular (A)",
  ["B"] = "Bid Condition: Public Customer Interest (B)",
  ["C"] = "Bid Condition: Not Firm (C)",
  ["R"] = "Bid Condition: Reserved (R)",
  ["T"] = "Bid Condition: Trading Halt (T)",
}

miax_emeraldoptions_topofmarket_mach_v1_3.bid_condition.display = function(value)
  return miax_emeraldoptions_topofmarket_mach_v1_3.bid_condition.labels[value] or "Bid Condition: Unknown("..value..")"
end

-- Dissect: Bid Condition
miax_emeraldoptions_topofmarket_mach_v1_3.bid_condition.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.bid_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.bid_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.bid_condition, range, value, display)

  return offset + length, value
end

-- Bid Price Long
miax_emeraldoptions_topofmarket_mach_v1_3.bid_price_long = {}

-- Size: Bid Price Long
miax_emeraldoptions_topofmarket_mach_v1_3.bid_price_long.size = 4

-- Display: Bid Price Long
miax_emeraldoptions_topofmarket_mach_v1_3.bid_price_long.display = function(value)
  return "Bid Price Long: "..value
end

-- Translate: Bid Price Long
miax_emeraldoptions_topofmarket_mach_v1_3.bid_price_long.translate = function(raw)
  return raw/10000
end

-- Dissect: Bid Price Long
miax_emeraldoptions_topofmarket_mach_v1_3.bid_price_long.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.bid_price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_emeraldoptions_topofmarket_mach_v1_3.bid_price_long.translate(raw)
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.bid_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.bid_price_long, range, value, display)

  return offset + length, value
end

-- Bid Price Short
miax_emeraldoptions_topofmarket_mach_v1_3.bid_price_short = {}

-- Size: Bid Price Short
miax_emeraldoptions_topofmarket_mach_v1_3.bid_price_short.size = 2

-- Display: Bid Price Short
miax_emeraldoptions_topofmarket_mach_v1_3.bid_price_short.display = function(value)
  return "Bid Price Short: "..value
end

-- Translate: Bid Price Short
miax_emeraldoptions_topofmarket_mach_v1_3.bid_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price Short
miax_emeraldoptions_topofmarket_mach_v1_3.bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.bid_price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_emeraldoptions_topofmarket_mach_v1_3.bid_price_short.translate(raw)
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Bid Priority Customer Size Long
miax_emeraldoptions_topofmarket_mach_v1_3.bid_priority_customer_size_long = {}

-- Size: Bid Priority Customer Size Long
miax_emeraldoptions_topofmarket_mach_v1_3.bid_priority_customer_size_long.size = 4

-- Display: Bid Priority Customer Size Long
miax_emeraldoptions_topofmarket_mach_v1_3.bid_priority_customer_size_long.display = function(value)
  return "Bid Priority Customer Size Long: "..value
end

-- Dissect: Bid Priority Customer Size Long
miax_emeraldoptions_topofmarket_mach_v1_3.bid_priority_customer_size_long.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.bid_priority_customer_size_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.bid_priority_customer_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.bid_priority_customer_size_long, range, value, display)

  return offset + length, value
end

-- Bid Priority Customer Size Short
miax_emeraldoptions_topofmarket_mach_v1_3.bid_priority_customer_size_short = {}

-- Size: Bid Priority Customer Size Short
miax_emeraldoptions_topofmarket_mach_v1_3.bid_priority_customer_size_short.size = 2

-- Display: Bid Priority Customer Size Short
miax_emeraldoptions_topofmarket_mach_v1_3.bid_priority_customer_size_short.display = function(value)
  return "Bid Priority Customer Size Short: "..value
end

-- Dissect: Bid Priority Customer Size Short
miax_emeraldoptions_topofmarket_mach_v1_3.bid_priority_customer_size_short.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.bid_priority_customer_size_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.bid_priority_customer_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.bid_priority_customer_size_short, range, value, display)

  return offset + length, value
end

-- Bid Size Long
miax_emeraldoptions_topofmarket_mach_v1_3.bid_size_long = {}

-- Size: Bid Size Long
miax_emeraldoptions_topofmarket_mach_v1_3.bid_size_long.size = 4

-- Display: Bid Size Long
miax_emeraldoptions_topofmarket_mach_v1_3.bid_size_long.display = function(value)
  return "Bid Size Long: "..value
end

-- Dissect: Bid Size Long
miax_emeraldoptions_topofmarket_mach_v1_3.bid_size_long.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.bid_size_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.bid_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.bid_size_long, range, value, display)

  return offset + length, value
end

-- Bid Size Short
miax_emeraldoptions_topofmarket_mach_v1_3.bid_size_short = {}

-- Size: Bid Size Short
miax_emeraldoptions_topofmarket_mach_v1_3.bid_size_short.size = 2

-- Display: Bid Size Short
miax_emeraldoptions_topofmarket_mach_v1_3.bid_size_short.display = function(value)
  return "Bid Size Short: "..value
end

-- Dissect: Bid Size Short
miax_emeraldoptions_topofmarket_mach_v1_3.bid_size_short.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.bid_size_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.bid_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.bid_size_short, range, value, display)

  return offset + length, value
end

-- Call Or Put
miax_emeraldoptions_topofmarket_mach_v1_3.call_or_put = {}

-- Size: Call Or Put
miax_emeraldoptions_topofmarket_mach_v1_3.call_or_put.size = 1

-- Display: Call Or Put
miax_emeraldoptions_topofmarket_mach_v1_3.call_or_put.labels = {
  ["C"] = "Call Or Put: Call (C)",
  ["P"] = "Call Or Put: Put (P)",
}

miax_emeraldoptions_topofmarket_mach_v1_3.call_or_put.display = function(value)
  return miax_emeraldoptions_topofmarket_mach_v1_3.call_or_put.labels[value] or "Call Or Put: Unknown("..value..")"
end

-- Dissect: Call Or Put
miax_emeraldoptions_topofmarket_mach_v1_3.call_or_put.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.call_or_put.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.call_or_put.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.call_or_put, range, value, display)

  return offset + length, value
end

-- Closing Time
miax_emeraldoptions_topofmarket_mach_v1_3.closing_time = {}

-- Size: Closing Time
miax_emeraldoptions_topofmarket_mach_v1_3.closing_time.size = 8

-- Display: Closing Time
miax_emeraldoptions_topofmarket_mach_v1_3.closing_time.display = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
miax_emeraldoptions_topofmarket_mach_v1_3.closing_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.closing_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.closing_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.closing_time, range, value, display)

  return offset + length, value
end

-- Computer Id
miax_emeraldoptions_topofmarket_mach_v1_3.computer_id = {}

-- Size: Computer Id
miax_emeraldoptions_topofmarket_mach_v1_3.computer_id.size = 8

-- Display: Computer Id
miax_emeraldoptions_topofmarket_mach_v1_3.computer_id.display = function(value)
  return "Computer Id: "..value
end

-- Dissect: Computer Id
miax_emeraldoptions_topofmarket_mach_v1_3.computer_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.computer_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.computer_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.computer_id, range, value, display)

  return offset + length, value
end

-- Correction Number
miax_emeraldoptions_topofmarket_mach_v1_3.correction_number = {}

-- Size: Correction Number
miax_emeraldoptions_topofmarket_mach_v1_3.correction_number.size = 1

-- Display: Correction Number
miax_emeraldoptions_topofmarket_mach_v1_3.correction_number.display = function(value)
  return "Correction Number: "..value
end

-- Dissect: Correction Number
miax_emeraldoptions_topofmarket_mach_v1_3.correction_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.correction_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.correction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.correction_number, range, value, display)

  return offset + length, value
end

-- Ebbo Condition
miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_condition = {}

-- Size: Ebbo Condition
miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_condition.size = 1

-- Display: Ebbo Condition
miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_condition.labels = {
  ["A"] = "Ebbo Condition: Regular (A)",
  ["B"] = "Ebbo Condition: Public Customer Interest (B)",
  ["C"] = "Ebbo Condition: Not Firm (C)",
  ["R"] = "Ebbo Condition: Reserved (R)",
  ["T"] = "Ebbo Condition: Trading Halt (T)",
}

miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_condition.display = function(value)
  return miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_condition.labels[value] or "Ebbo Condition: Unknown("..value..")"
end

-- Dissect: Ebbo Condition
miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_condition.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.ebbo_condition, range, value, display)

  return offset + length, value
end

-- EBBO Price Long
miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_long = {}

-- Size: EBBO Price Long
miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_long.size = 4

-- Display: EBBO Price Long
miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_long.display = function(value)
  return "EBBO Price Long: "..value
end

-- Translate: EBBO Price Long
miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_long.translate = function(raw)
  return raw/10000
end

-- Dissect: EBBO Price Long
miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_long.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_long.translate(raw)
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.ebbo_price_long, range, value, display)

  return offset + length, value
end

-- EBBO Price Short
miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_short = {}

-- Size: EBBO Price Short
miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_short.size = 2

-- Display: EBBO Price Short
miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_short.display = function(value)
  return "EBBO Price Short: "..value
end

-- Translate: EBBO Price Short
miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: EBBO Price Short
miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_short.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_short.translate(raw)
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.ebbo_price_short, range, value, display)

  return offset + length, value
end

-- EBBO Priority Customer Size Long
miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_priority_customer_size_long = {}

-- Size: EBBO Priority Customer Size Long
miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_priority_customer_size_long.size = 4

-- Display: EBBO Priority Customer Size Long
miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_priority_customer_size_long.display = function(value)
  return "EBBO Priority Customer Size Long: "..value
end

-- Dissect: EBBO Priority Customer Size Long
miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_priority_customer_size_long.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_priority_customer_size_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_priority_customer_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.ebbo_priority_customer_size_long, range, value, display)

  return offset + length, value
end

-- EBBO Priority Customer Size Short
miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_priority_customer_size_short = {}

-- Size: EBBO Priority Customer Size Short
miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_priority_customer_size_short.size = 2

-- Display: EBBO Priority Customer Size Short
miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_priority_customer_size_short.display = function(value)
  return "EBBO Priority Customer Size Short: "..value
end

-- Dissect: EBBO Priority Customer Size Short
miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_priority_customer_size_short.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_priority_customer_size_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_priority_customer_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.ebbo_priority_customer_size_short, range, value, display)

  return offset + length, value
end

-- EBBO Size Long
miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_size_long = {}

-- Size: EBBO Size Long
miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_size_long.size = 4

-- Display: EBBO Size Long
miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_size_long.display = function(value)
  return "EBBO Size Long: "..value
end

-- Dissect: EBBO Size Long
miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_size_long.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_size_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.ebbo_size_long, range, value, display)

  return offset + length, value
end

-- EBBO Size Short
miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_size_short = {}

-- Size: EBBO Size Short
miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_size_short.size = 2

-- Display: EBBO Size Short
miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_size_short.display = function(value)
  return "EBBO Size Short: "..value
end

-- Dissect: EBBO Size Short
miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_size_short.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_size_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.ebbo_size_short, range, value, display)

  return offset + length, value
end

-- Emerald Bbo Posting Increment Indicator
miax_emeraldoptions_topofmarket_mach_v1_3.emerald_bbo_posting_increment_indicator = {}

-- Size: Emerald Bbo Posting Increment Indicator
miax_emeraldoptions_topofmarket_mach_v1_3.emerald_bbo_posting_increment_indicator.size = 1

-- Display: Emerald Bbo Posting Increment Indicator
miax_emeraldoptions_topofmarket_mach_v1_3.emerald_bbo_posting_increment_indicator.labels = {
  ["P"] = "Emerald Bbo Posting Increment Indicator: Penny (P)",
  ["N"] = "Emerald Bbo Posting Increment Indicator: Penny Or Nickel (N)",
  ["D"] = "Emerald Bbo Posting Increment Indicator: Nickel Or Dime (D)",
}

miax_emeraldoptions_topofmarket_mach_v1_3.emerald_bbo_posting_increment_indicator.display = function(value)
  return miax_emeraldoptions_topofmarket_mach_v1_3.emerald_bbo_posting_increment_indicator.labels[value] or "Emerald Bbo Posting Increment Indicator: Unknown("..value..")"
end

-- Dissect: Emerald Bbo Posting Increment Indicator
miax_emeraldoptions_topofmarket_mach_v1_3.emerald_bbo_posting_increment_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.emerald_bbo_posting_increment_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.emerald_bbo_posting_increment_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.emerald_bbo_posting_increment_indicator, range, value, display)

  return offset + length, value
end

-- End Sequence Number
miax_emeraldoptions_topofmarket_mach_v1_3.end_sequence_number = {}

-- Size: End Sequence Number
miax_emeraldoptions_topofmarket_mach_v1_3.end_sequence_number.size = 8

-- Display: End Sequence Number
miax_emeraldoptions_topofmarket_mach_v1_3.end_sequence_number.display = function(value)
  return "End Sequence Number: "..value
end

-- Dissect: End Sequence Number
miax_emeraldoptions_topofmarket_mach_v1_3.end_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.end_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.end_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.end_sequence_number, range, value, display)

  return offset + length, value
end

-- Event Reason
miax_emeraldoptions_topofmarket_mach_v1_3.event_reason = {}

-- Size: Event Reason
miax_emeraldoptions_topofmarket_mach_v1_3.event_reason.size = 1

-- Display: Event Reason
miax_emeraldoptions_topofmarket_mach_v1_3.event_reason.labels = {
  ["A"] = "Event Reason: Automatic (A)",
  ["M"] = "Event Reason: Manual (M)",
}

miax_emeraldoptions_topofmarket_mach_v1_3.event_reason.display = function(value)
  return miax_emeraldoptions_topofmarket_mach_v1_3.event_reason.labels[value] or "Event Reason: Unknown("..value..")"
end

-- Dissect: Event Reason
miax_emeraldoptions_topofmarket_mach_v1_3.event_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.event_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.event_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.event_reason, range, value, display)

  return offset + length, value
end

-- Expected Event Time Nano Seconds Part
miax_emeraldoptions_topofmarket_mach_v1_3.expected_event_time_nano_seconds_part = {}

-- Size: Expected Event Time Nano Seconds Part
miax_emeraldoptions_topofmarket_mach_v1_3.expected_event_time_nano_seconds_part.size = 4

-- Display: Expected Event Time Nano Seconds Part
miax_emeraldoptions_topofmarket_mach_v1_3.expected_event_time_nano_seconds_part.display = function(value)
  return "Expected Event Time Nano Seconds Part: "..value
end

-- Dissect: Expected Event Time Nano Seconds Part
miax_emeraldoptions_topofmarket_mach_v1_3.expected_event_time_nano_seconds_part.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.expected_event_time_nano_seconds_part.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.expected_event_time_nano_seconds_part.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.expected_event_time_nano_seconds_part, range, value, display)

  return offset + length, value
end

-- Expected Event Time Seconds Part
miax_emeraldoptions_topofmarket_mach_v1_3.expected_event_time_seconds_part = {}

-- Size: Expected Event Time Seconds Part
miax_emeraldoptions_topofmarket_mach_v1_3.expected_event_time_seconds_part.size = 4

-- Display: Expected Event Time Seconds Part
miax_emeraldoptions_topofmarket_mach_v1_3.expected_event_time_seconds_part.display = function(value)
  return "Expected Event Time Seconds Part: "..value
end

-- Dissect: Expected Event Time Seconds Part
miax_emeraldoptions_topofmarket_mach_v1_3.expected_event_time_seconds_part.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.expected_event_time_seconds_part.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.expected_event_time_seconds_part.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.expected_event_time_seconds_part, range, value, display)

  return offset + length, value
end

-- Expiration Date
miax_emeraldoptions_topofmarket_mach_v1_3.expiration_date = {}

-- Size: Expiration Date
miax_emeraldoptions_topofmarket_mach_v1_3.expiration_date.size = 8

-- Display: Expiration Date
miax_emeraldoptions_topofmarket_mach_v1_3.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
miax_emeraldoptions_topofmarket_mach_v1_3.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.expiration_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Highest Sequence Number
miax_emeraldoptions_topofmarket_mach_v1_3.highest_sequence_number = {}

-- Size: Highest Sequence Number
miax_emeraldoptions_topofmarket_mach_v1_3.highest_sequence_number.size = 8

-- Display: Highest Sequence Number
miax_emeraldoptions_topofmarket_mach_v1_3.highest_sequence_number.display = function(value)
  return "Highest Sequence Number: "..value
end

-- Dissect: Highest Sequence Number
miax_emeraldoptions_topofmarket_mach_v1_3.highest_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.highest_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.highest_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.highest_sequence_number, range, value, display)

  return offset + length, value
end

-- Liquidity Acceptance Increment Indicator
miax_emeraldoptions_topofmarket_mach_v1_3.liquidity_acceptance_increment_indicator = {}

-- Size: Liquidity Acceptance Increment Indicator
miax_emeraldoptions_topofmarket_mach_v1_3.liquidity_acceptance_increment_indicator.size = 1

-- Display: Liquidity Acceptance Increment Indicator
miax_emeraldoptions_topofmarket_mach_v1_3.liquidity_acceptance_increment_indicator.labels = {
  ["P"] = "Liquidity Acceptance Increment Indicator: Penny (P)",
  ["N"] = "Liquidity Acceptance Increment Indicator: Penny Or Nickel (N)",
  ["D"] = "Liquidity Acceptance Increment Indicator: Nickel Or Dime (D)",
}

miax_emeraldoptions_topofmarket_mach_v1_3.liquidity_acceptance_increment_indicator.display = function(value)
  return miax_emeraldoptions_topofmarket_mach_v1_3.liquidity_acceptance_increment_indicator.labels[value] or "Liquidity Acceptance Increment Indicator: Unknown("..value..")"
end

-- Dissect: Liquidity Acceptance Increment Indicator
miax_emeraldoptions_topofmarket_mach_v1_3.liquidity_acceptance_increment_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.liquidity_acceptance_increment_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.liquidity_acceptance_increment_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.liquidity_acceptance_increment_indicator, range, value, display)

  return offset + length, value
end

-- Login Status
miax_emeraldoptions_topofmarket_mach_v1_3.login_status = {}

-- Size: Login Status
miax_emeraldoptions_topofmarket_mach_v1_3.login_status.size = 1

-- Display: Login Status
miax_emeraldoptions_topofmarket_mach_v1_3.login_status.display = function(value)
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
miax_emeraldoptions_topofmarket_mach_v1_3.login_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.login_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.login_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.login_status, range, value, display)

  return offset + length, value
end

-- Logout Reason
miax_emeraldoptions_topofmarket_mach_v1_3.logout_reason = {}

-- Size: Logout Reason
miax_emeraldoptions_topofmarket_mach_v1_3.logout_reason.size = 1

-- Display: Logout Reason
miax_emeraldoptions_topofmarket_mach_v1_3.logout_reason.display = function(value)
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
miax_emeraldoptions_topofmarket_mach_v1_3.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Logout Text
miax_emeraldoptions_topofmarket_mach_v1_3.logout_text = {}

-- Display: Logout Text
miax_emeraldoptions_topofmarket_mach_v1_3.logout_text.display = function(value)
  return "Logout Text: "..value
end

-- Dissect runtime sized field: Logout Text
miax_emeraldoptions_topofmarket_mach_v1_3.logout_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.logout_text.display(value, packet, parent, size)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.logout_text, range, value, display)

  return offset + size, value
end

-- Long Term Option
miax_emeraldoptions_topofmarket_mach_v1_3.long_term_option = {}

-- Size: Long Term Option
miax_emeraldoptions_topofmarket_mach_v1_3.long_term_option.size = 1

-- Display: Long Term Option
miax_emeraldoptions_topofmarket_mach_v1_3.long_term_option.labels = {
  ["Y"] = "Long Term Option: Far Month Expiration (Y)",
  ["N"] = "Long Term Option: Near Month Expiration (N)",
}

miax_emeraldoptions_topofmarket_mach_v1_3.long_term_option.display = function(value)
  return miax_emeraldoptions_topofmarket_mach_v1_3.long_term_option.labels[value] or "Long Term Option: Unknown("..value..")"
end

-- Dissect: Long Term Option
miax_emeraldoptions_topofmarket_mach_v1_3.long_term_option.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.long_term_option.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.long_term_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.long_term_option, range, value, display)

  return offset + length, value
end

-- Matching Engine Id
miax_emeraldoptions_topofmarket_mach_v1_3.matching_engine_id = {}

-- Size: Matching Engine Id
miax_emeraldoptions_topofmarket_mach_v1_3.matching_engine_id.size = 1

-- Display: Matching Engine Id
miax_emeraldoptions_topofmarket_mach_v1_3.matching_engine_id.display = function(value)
  return "Matching Engine Id: "..value
end

-- Dissect: Matching Engine Id
miax_emeraldoptions_topofmarket_mach_v1_3.matching_engine_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.matching_engine_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.matching_engine_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.matching_engine_id, range, value, display)

  return offset + length, value
end

-- Message Type
miax_emeraldoptions_topofmarket_mach_v1_3.message_type = {}

-- Size: Message Type
miax_emeraldoptions_topofmarket_mach_v1_3.message_type.size = 1

-- Display: Message Type
miax_emeraldoptions_topofmarket_mach_v1_3.message_type.labels = {
  ["1"] = "Message Type: System Time Message (1)",
  ["P"] = "Message Type: Simple Series Update Message (P)",
  ["S"] = "Message Type: System State Message (S)",
  ["B"] = "Message Type: Simple Top Of Market Best Bid Or Offer Compact Bid Message (B)",
  ["h"] = "Message Type: Simple Top Of Market Best Bid Or Offer Compact Bid With Priority Customer Message (h)",
  ["O"] = "Message Type: Simple Top Of Market Best Bid Or Offer Compact Offer Message (O)",
  ["i"] = "Message Type: Simple Top Of Market Best Bid Or Offer Compact Offer With Priority Customer Message (i)",
  ["W"] = "Message Type: Simple Top Of Market Best Bid Or Offer Wide Bid Message (W)",
  ["j"] = "Message Type: Simple Top Of Market Best Bid Or Offer Wide Bid With Priority Customer Message (j)",
  ["A"] = "Message Type: Simple Top Of Market Best Bid Or Offer Wide Offer Message (A)",
  ["k"] = "Message Type: Simple Top Of Market Best Bid Or Offer Wide Offer With Priority Customer Message (k)",
  ["d"] = "Message Type: Simple Double Sided Top Of Market Best Bid Or Offer Compact Message (d)",
  ["D"] = "Message Type: Simple Double Sided Top Of Market Best Bid Or Offer Wide Message (D)",
  ["T"] = "Message Type: Last Sale Message (T)",
  ["X"] = "Message Type: Trade Cancel Message (X)",
  ["H"] = "Message Type: Underlying Trading Status Notification Message (H)",
}

miax_emeraldoptions_topofmarket_mach_v1_3.message_type.display = function(value)
  return miax_emeraldoptions_topofmarket_mach_v1_3.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
miax_emeraldoptions_topofmarket_mach_v1_3.message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nanoseconds
miax_emeraldoptions_topofmarket_mach_v1_3.nanoseconds = {}

-- Size: Nanoseconds
miax_emeraldoptions_topofmarket_mach_v1_3.nanoseconds.size = 4

-- Display: Nanoseconds
miax_emeraldoptions_topofmarket_mach_v1_3.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
miax_emeraldoptions_topofmarket_mach_v1_3.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Number Of Matching Engines
miax_emeraldoptions_topofmarket_mach_v1_3.number_of_matching_engines = {}

-- Size: Number Of Matching Engines
miax_emeraldoptions_topofmarket_mach_v1_3.number_of_matching_engines.size = 1

-- Display: Number Of Matching Engines
miax_emeraldoptions_topofmarket_mach_v1_3.number_of_matching_engines.display = function(value)
  return "Number Of Matching Engines: "..value
end

-- Dissect: Number Of Matching Engines
miax_emeraldoptions_topofmarket_mach_v1_3.number_of_matching_engines.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.number_of_matching_engines.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.number_of_matching_engines.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.number_of_matching_engines, range, value, display)

  return offset + length, value
end

-- Offer Condition
miax_emeraldoptions_topofmarket_mach_v1_3.offer_condition = {}

-- Size: Offer Condition
miax_emeraldoptions_topofmarket_mach_v1_3.offer_condition.size = 1

-- Display: Offer Condition
miax_emeraldoptions_topofmarket_mach_v1_3.offer_condition.labels = {
  ["A"] = "Offer Condition: Regular (A)",
  ["B"] = "Offer Condition: Public Customer Interest (B)",
  ["C"] = "Offer Condition: Not Firm (C)",
  ["R"] = "Offer Condition: Reserved (R)",
  ["T"] = "Offer Condition: Trading Halt (T)",
}

miax_emeraldoptions_topofmarket_mach_v1_3.offer_condition.display = function(value)
  return miax_emeraldoptions_topofmarket_mach_v1_3.offer_condition.labels[value] or "Offer Condition: Unknown("..value..")"
end

-- Dissect: Offer Condition
miax_emeraldoptions_topofmarket_mach_v1_3.offer_condition.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.offer_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.offer_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.offer_condition, range, value, display)

  return offset + length, value
end

-- Offer Price Long
miax_emeraldoptions_topofmarket_mach_v1_3.offer_price_long = {}

-- Size: Offer Price Long
miax_emeraldoptions_topofmarket_mach_v1_3.offer_price_long.size = 4

-- Display: Offer Price Long
miax_emeraldoptions_topofmarket_mach_v1_3.offer_price_long.display = function(value)
  return "Offer Price Long: "..value
end

-- Translate: Offer Price Long
miax_emeraldoptions_topofmarket_mach_v1_3.offer_price_long.translate = function(raw)
  return raw/10000
end

-- Dissect: Offer Price Long
miax_emeraldoptions_topofmarket_mach_v1_3.offer_price_long.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.offer_price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_emeraldoptions_topofmarket_mach_v1_3.offer_price_long.translate(raw)
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.offer_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.offer_price_long, range, value, display)

  return offset + length, value
end

-- Offer Price Short
miax_emeraldoptions_topofmarket_mach_v1_3.offer_price_short = {}

-- Size: Offer Price Short
miax_emeraldoptions_topofmarket_mach_v1_3.offer_price_short.size = 2

-- Display: Offer Price Short
miax_emeraldoptions_topofmarket_mach_v1_3.offer_price_short.display = function(value)
  return "Offer Price Short: "..value
end

-- Translate: Offer Price Short
miax_emeraldoptions_topofmarket_mach_v1_3.offer_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Offer Price Short
miax_emeraldoptions_topofmarket_mach_v1_3.offer_price_short.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.offer_price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_emeraldoptions_topofmarket_mach_v1_3.offer_price_short.translate(raw)
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.offer_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.offer_price_short, range, value, display)

  return offset + length, value
end

-- Offer Priority Customer Size Long
miax_emeraldoptions_topofmarket_mach_v1_3.offer_priority_customer_size_long = {}

-- Size: Offer Priority Customer Size Long
miax_emeraldoptions_topofmarket_mach_v1_3.offer_priority_customer_size_long.size = 4

-- Display: Offer Priority Customer Size Long
miax_emeraldoptions_topofmarket_mach_v1_3.offer_priority_customer_size_long.display = function(value)
  return "Offer Priority Customer Size Long: "..value
end

-- Dissect: Offer Priority Customer Size Long
miax_emeraldoptions_topofmarket_mach_v1_3.offer_priority_customer_size_long.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.offer_priority_customer_size_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.offer_priority_customer_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.offer_priority_customer_size_long, range, value, display)

  return offset + length, value
end

-- Offer Priority Customer Size Short
miax_emeraldoptions_topofmarket_mach_v1_3.offer_priority_customer_size_short = {}

-- Size: Offer Priority Customer Size Short
miax_emeraldoptions_topofmarket_mach_v1_3.offer_priority_customer_size_short.size = 2

-- Display: Offer Priority Customer Size Short
miax_emeraldoptions_topofmarket_mach_v1_3.offer_priority_customer_size_short.display = function(value)
  return "Offer Priority Customer Size Short: "..value
end

-- Dissect: Offer Priority Customer Size Short
miax_emeraldoptions_topofmarket_mach_v1_3.offer_priority_customer_size_short.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.offer_priority_customer_size_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.offer_priority_customer_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.offer_priority_customer_size_short, range, value, display)

  return offset + length, value
end

-- Offer Size Long
miax_emeraldoptions_topofmarket_mach_v1_3.offer_size_long = {}

-- Size: Offer Size Long
miax_emeraldoptions_topofmarket_mach_v1_3.offer_size_long.size = 4

-- Display: Offer Size Long
miax_emeraldoptions_topofmarket_mach_v1_3.offer_size_long.display = function(value)
  return "Offer Size Long: "..value
end

-- Dissect: Offer Size Long
miax_emeraldoptions_topofmarket_mach_v1_3.offer_size_long.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.offer_size_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.offer_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.offer_size_long, range, value, display)

  return offset + length, value
end

-- Offer Size Short
miax_emeraldoptions_topofmarket_mach_v1_3.offer_size_short = {}

-- Size: Offer Size Short
miax_emeraldoptions_topofmarket_mach_v1_3.offer_size_short.size = 2

-- Display: Offer Size Short
miax_emeraldoptions_topofmarket_mach_v1_3.offer_size_short.display = function(value)
  return "Offer Size Short: "..value
end

-- Dissect: Offer Size Short
miax_emeraldoptions_topofmarket_mach_v1_3.offer_size_short.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.offer_size_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.offer_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.offer_size_short, range, value, display)

  return offset + length, value
end

-- Opening Time
miax_emeraldoptions_topofmarket_mach_v1_3.opening_time = {}

-- Size: Opening Time
miax_emeraldoptions_topofmarket_mach_v1_3.opening_time.size = 8

-- Display: Opening Time
miax_emeraldoptions_topofmarket_mach_v1_3.opening_time.display = function(value)
  return "Opening Time: "..value
end

-- Dissect: Opening Time
miax_emeraldoptions_topofmarket_mach_v1_3.opening_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.opening_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.opening_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.opening_time, range, value, display)

  return offset + length, value
end

-- Opening Underlying Market Code
miax_emeraldoptions_topofmarket_mach_v1_3.opening_underlying_market_code = {}

-- Size: Opening Underlying Market Code
miax_emeraldoptions_topofmarket_mach_v1_3.opening_underlying_market_code.size = 1

-- Display: Opening Underlying Market Code
miax_emeraldoptions_topofmarket_mach_v1_3.opening_underlying_market_code.labels = {
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
  ["Y"] = "Opening Underlying Market Code: Bats Y (Y)",
  ["Z"] = "Opening Underlying Market Code: Bats (Z)",
}

miax_emeraldoptions_topofmarket_mach_v1_3.opening_underlying_market_code.display = function(value)
  return miax_emeraldoptions_topofmarket_mach_v1_3.opening_underlying_market_code.labels[value] or "Opening Underlying Market Code: Unknown("..value..")"
end

-- Dissect: Opening Underlying Market Code
miax_emeraldoptions_topofmarket_mach_v1_3.opening_underlying_market_code.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.opening_underlying_market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.opening_underlying_market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.opening_underlying_market_code, range, value, display)

  return offset + length, value
end

-- Packet Length
miax_emeraldoptions_topofmarket_mach_v1_3.packet_length = {}

-- Size: Packet Length
miax_emeraldoptions_topofmarket_mach_v1_3.packet_length.size = 2

-- Display: Packet Length
miax_emeraldoptions_topofmarket_mach_v1_3.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
miax_emeraldoptions_topofmarket_mach_v1_3.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Type
miax_emeraldoptions_topofmarket_mach_v1_3.packet_type = {}

-- Size: Packet Type
miax_emeraldoptions_topofmarket_mach_v1_3.packet_type.size = 1

-- Display: Packet Type
miax_emeraldoptions_topofmarket_mach_v1_3.packet_type.labels = {
  [0] = "Packet Type: Heartbeat (0)",
  [1] = "Packet Type: Start Of Session (1)",
  [2] = "Packet Type: End Of Session (2)",
  [3] = "Packet Type: Application Message (3)",
}

miax_emeraldoptions_topofmarket_mach_v1_3.packet_type.display = function(value)
  return miax_emeraldoptions_topofmarket_mach_v1_3.packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
miax_emeraldoptions_topofmarket_mach_v1_3.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.packet_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Priority Quote Width
miax_emeraldoptions_topofmarket_mach_v1_3.priority_quote_width = {}

-- Size: Priority Quote Width
miax_emeraldoptions_topofmarket_mach_v1_3.priority_quote_width.size = 4

-- Display: Priority Quote Width
miax_emeraldoptions_topofmarket_mach_v1_3.priority_quote_width.display = function(value)
  return "Priority Quote Width: "..value
end

-- Translate: Priority Quote Width
miax_emeraldoptions_topofmarket_mach_v1_3.priority_quote_width.translate = function(raw)
  return raw/10000
end

-- Dissect: Priority Quote Width
miax_emeraldoptions_topofmarket_mach_v1_3.priority_quote_width.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.priority_quote_width.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_emeraldoptions_topofmarket_mach_v1_3.priority_quote_width.translate(raw)
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.priority_quote_width.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.priority_quote_width, range, value, display)

  return offset + length, value
end

-- Product Id
miax_emeraldoptions_topofmarket_mach_v1_3.product_id = {}

-- Size: Product Id
miax_emeraldoptions_topofmarket_mach_v1_3.product_id.size = 4

-- Display: Product Id
miax_emeraldoptions_topofmarket_mach_v1_3.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
miax_emeraldoptions_topofmarket_mach_v1_3.product_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.product_id, range, value, display)

  return offset + length, value
end

-- Reference Correction Number
miax_emeraldoptions_topofmarket_mach_v1_3.reference_correction_number = {}

-- Size: Reference Correction Number
miax_emeraldoptions_topofmarket_mach_v1_3.reference_correction_number.size = 1

-- Display: Reference Correction Number
miax_emeraldoptions_topofmarket_mach_v1_3.reference_correction_number.display = function(value)
  return "Reference Correction Number: "..value
end

-- Dissect: Reference Correction Number
miax_emeraldoptions_topofmarket_mach_v1_3.reference_correction_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.reference_correction_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.reference_correction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.reference_correction_number, range, value, display)

  return offset + length, value
end

-- Reference Trade Id
miax_emeraldoptions_topofmarket_mach_v1_3.reference_trade_id = {}

-- Size: Reference Trade Id
miax_emeraldoptions_topofmarket_mach_v1_3.reference_trade_id.size = 4

-- Display: Reference Trade Id
miax_emeraldoptions_topofmarket_mach_v1_3.reference_trade_id.display = function(value)
  return "Reference Trade Id: "..value
end

-- Dissect: Reference Trade Id
miax_emeraldoptions_topofmarket_mach_v1_3.reference_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.reference_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.reference_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.reference_trade_id, range, value, display)

  return offset + length, value
end

-- Refresh Message Type
miax_emeraldoptions_topofmarket_mach_v1_3.refresh_message_type = {}

-- Size: Refresh Message Type
miax_emeraldoptions_topofmarket_mach_v1_3.refresh_message_type.size = 1

-- Display: Refresh Message Type
miax_emeraldoptions_topofmarket_mach_v1_3.refresh_message_type.labels = {
  ["P"] = "Refresh Message Type: Simple Series Update Refresh (P)",
  ["Q"] = "Refresh Message Type: Simple Top Of Market Refresh (Q)",
  ["U"] = "Refresh Message Type: Underlying Trading Status Refresh (U)",
  ["S"] = "Refresh Message Type: System State Refresh (S)",
}

miax_emeraldoptions_topofmarket_mach_v1_3.refresh_message_type.display = function(value)
  return miax_emeraldoptions_topofmarket_mach_v1_3.refresh_message_type.labels[value] or "Refresh Message Type: Unknown("..value..")"
end

-- Dissect: Refresh Message Type
miax_emeraldoptions_topofmarket_mach_v1_3.refresh_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.refresh_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.refresh_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.refresh_message_type, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
miax_emeraldoptions_topofmarket_mach_v1_3.requested_sequence_number = {}

-- Size: Requested Sequence Number
miax_emeraldoptions_topofmarket_mach_v1_3.requested_sequence_number.size = 8

-- Display: Requested Sequence Number
miax_emeraldoptions_topofmarket_mach_v1_3.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
miax_emeraldoptions_topofmarket_mach_v1_3.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Trading Session Id
miax_emeraldoptions_topofmarket_mach_v1_3.requested_trading_session_id = {}

-- Size: Requested Trading Session Id
miax_emeraldoptions_topofmarket_mach_v1_3.requested_trading_session_id.size = 1

-- Display: Requested Trading Session Id
miax_emeraldoptions_topofmarket_mach_v1_3.requested_trading_session_id.display = function(value)
  return "Requested Trading Session Id: "..value
end

-- Dissect: Requested Trading Session Id
miax_emeraldoptions_topofmarket_mach_v1_3.requested_trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.requested_trading_session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.requested_trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.requested_trading_session_id, range, value, display)

  return offset + length, value
end

-- Reserved 8
miax_emeraldoptions_topofmarket_mach_v1_3.reserved_8 = {}

-- Size: Reserved 8
miax_emeraldoptions_topofmarket_mach_v1_3.reserved_8.size = 8

-- Display: Reserved 8
miax_emeraldoptions_topofmarket_mach_v1_3.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
miax_emeraldoptions_topofmarket_mach_v1_3.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Restricted Option
miax_emeraldoptions_topofmarket_mach_v1_3.restricted_option = {}

-- Size: Restricted Option
miax_emeraldoptions_topofmarket_mach_v1_3.restricted_option.size = 1

-- Display: Restricted Option
miax_emeraldoptions_topofmarket_mach_v1_3.restricted_option.labels = {
  ["Y"] = "Restricted Option: Accept Position Closing (Y)",
  ["N"] = "Restricted Option: Accept Open And Close (N)",
}

miax_emeraldoptions_topofmarket_mach_v1_3.restricted_option.display = function(value)
  return miax_emeraldoptions_topofmarket_mach_v1_3.restricted_option.labels[value] or "Restricted Option: Unknown("..value..")"
end

-- Dissect: Restricted Option
miax_emeraldoptions_topofmarket_mach_v1_3.restricted_option.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.restricted_option.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.restricted_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.restricted_option, range, value, display)

  return offset + length, value
end

-- Seconds
miax_emeraldoptions_topofmarket_mach_v1_3.seconds = {}

-- Size: Seconds
miax_emeraldoptions_topofmarket_mach_v1_3.seconds.size = 4

-- Store: Seconds
miax_emeraldoptions_topofmarket_mach_v1_3.seconds.current = nil

-- Generated: Seconds
miax_emeraldoptions_topofmarket_mach_v1_3.seconds.generated = function(value, range, packet, parent)
  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.seconds
  if miax_emeraldoptions_topofmarket_mach_v1_3.absolute_time_base == 1 then field = omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.seconds_utc end
  local seconds = parent:add(field, range, NSTime.new(value, 0))
  seconds:set_generated()
end

-- Dissect: Seconds
miax_emeraldoptions_topofmarket_mach_v1_3.seconds.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.seconds
  if miax_emeraldoptions_topofmarket_mach_v1_3.absolute_time_base == 1 then field = omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.seconds_utc end

  local seconds = value
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Security Symbol
miax_emeraldoptions_topofmarket_mach_v1_3.security_symbol = {}

-- Size: Security Symbol
miax_emeraldoptions_topofmarket_mach_v1_3.security_symbol.size = 6

-- Display: Security Symbol
miax_emeraldoptions_topofmarket_mach_v1_3.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
miax_emeraldoptions_topofmarket_mach_v1_3.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sequence Number
miax_emeraldoptions_topofmarket_mach_v1_3.sequence_number = {}

-- Size: Sequence Number
miax_emeraldoptions_topofmarket_mach_v1_3.sequence_number.size = 8

-- Display: Sequence Number
miax_emeraldoptions_topofmarket_mach_v1_3.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_emeraldoptions_topofmarket_mach_v1_3.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
miax_emeraldoptions_topofmarket_mach_v1_3.sequenced_message_type = {}

-- Size: Sequenced Message Type
miax_emeraldoptions_topofmarket_mach_v1_3.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
miax_emeraldoptions_topofmarket_mach_v1_3.sequenced_message_type.display = function(value)
  return "Sequenced Message Type: "..value
end

-- Dissect: Sequenced Message Type
miax_emeraldoptions_topofmarket_mach_v1_3.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Sesm Packet Length
miax_emeraldoptions_topofmarket_mach_v1_3.sesm_packet_length = {}

-- Size: Sesm Packet Length
miax_emeraldoptions_topofmarket_mach_v1_3.sesm_packet_length.size = 2

-- Display: Sesm Packet Length
miax_emeraldoptions_topofmarket_mach_v1_3.sesm_packet_length.display = function(value)
  return "Sesm Packet Length: "..value
end

-- Dissect: Sesm Packet Length
miax_emeraldoptions_topofmarket_mach_v1_3.sesm_packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.sesm_packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.sesm_packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.sesm_packet_length, range, value, display)

  return offset + length, value
end

-- Sesm Packet Type
miax_emeraldoptions_topofmarket_mach_v1_3.sesm_packet_type = {}

-- Size: Sesm Packet Type
miax_emeraldoptions_topofmarket_mach_v1_3.sesm_packet_type.size = 1

-- Display: Sesm Packet Type
miax_emeraldoptions_topofmarket_mach_v1_3.sesm_packet_type.labels = {
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

miax_emeraldoptions_topofmarket_mach_v1_3.sesm_packet_type.display = function(value)
  return miax_emeraldoptions_topofmarket_mach_v1_3.sesm_packet_type.labels[value] or "Sesm Packet Type: Unknown("..value..")"
end

-- Dissect: Sesm Packet Type
miax_emeraldoptions_topofmarket_mach_v1_3.sesm_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.sesm_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.sesm_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.sesm_packet_type, range, value, display)

  return offset + length, value
end

-- Sesm Version
miax_emeraldoptions_topofmarket_mach_v1_3.sesm_version = {}

-- Size: Sesm Version
miax_emeraldoptions_topofmarket_mach_v1_3.sesm_version.size = 5

-- Display: Sesm Version
miax_emeraldoptions_topofmarket_mach_v1_3.sesm_version.display = function(value)
  return "Sesm Version: "..value
end

-- Dissect: Sesm Version
miax_emeraldoptions_topofmarket_mach_v1_3.sesm_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.sesm_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.sesm_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.sesm_version, range, value, display)

  return offset + length, value
end

-- Session Id
miax_emeraldoptions_topofmarket_mach_v1_3.session_id = {}

-- Size: Session Id
miax_emeraldoptions_topofmarket_mach_v1_3.session_id.size = 4

-- Display: Session Id
miax_emeraldoptions_topofmarket_mach_v1_3.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_emeraldoptions_topofmarket_mach_v1_3.session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.session_id, range, value, display)

  return offset + length, value
end

-- Session Number
miax_emeraldoptions_topofmarket_mach_v1_3.session_number = {}

-- Size: Session Number
miax_emeraldoptions_topofmarket_mach_v1_3.session_number.size = 1

-- Display: Session Number
miax_emeraldoptions_topofmarket_mach_v1_3.session_number.display = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
miax_emeraldoptions_topofmarket_mach_v1_3.session_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.session_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.session_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.session_number, range, value, display)

  return offset + length, value
end

-- Start Sequence Number
miax_emeraldoptions_topofmarket_mach_v1_3.start_sequence_number = {}

-- Size: Start Sequence Number
miax_emeraldoptions_topofmarket_mach_v1_3.start_sequence_number.size = 8

-- Display: Start Sequence Number
miax_emeraldoptions_topofmarket_mach_v1_3.start_sequence_number.display = function(value)
  return "Start Sequence Number: "..value
end

-- Dissect: Start Sequence Number
miax_emeraldoptions_topofmarket_mach_v1_3.start_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.start_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.start_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.start_sequence_number, range, value, display)

  return offset + length, value
end

-- Strike Price
miax_emeraldoptions_topofmarket_mach_v1_3.strike_price = {}

-- Size: Strike Price
miax_emeraldoptions_topofmarket_mach_v1_3.strike_price.size = 4

-- Display: Strike Price
miax_emeraldoptions_topofmarket_mach_v1_3.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
miax_emeraldoptions_topofmarket_mach_v1_3.strike_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Strike Price
miax_emeraldoptions_topofmarket_mach_v1_3.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_emeraldoptions_topofmarket_mach_v1_3.strike_price.translate(raw)
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.strike_price, range, value, display)

  return offset + length, value
end

-- System Status
miax_emeraldoptions_topofmarket_mach_v1_3.system_status = {}

-- Size: System Status
miax_emeraldoptions_topofmarket_mach_v1_3.system_status.size = 1

-- Display: System Status
miax_emeraldoptions_topofmarket_mach_v1_3.system_status.labels = {
  ["S"] = "System Status: Start Of System Hours (S)",
  ["C"] = "System Status: End Of System Hours (C)",
  ["1"] = "System Status: Start Of Test Session (1)",
  ["2"] = "System Status: End Of Test Session (2)",
}

miax_emeraldoptions_topofmarket_mach_v1_3.system_status.display = function(value)
  return miax_emeraldoptions_topofmarket_mach_v1_3.system_status.labels[value] or "System Status: Unknown("..value..")"
end

-- Dissect: System Status
miax_emeraldoptions_topofmarket_mach_v1_3.system_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.system_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.system_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.system_status, range, value, display)

  return offset + length, value
end

-- Test Text
miax_emeraldoptions_topofmarket_mach_v1_3.test_text = {}

-- Display: Test Text
miax_emeraldoptions_topofmarket_mach_v1_3.test_text.display = function(value)
  return "Test Text: "..value
end

-- Dissect runtime sized field: Test Text
miax_emeraldoptions_topofmarket_mach_v1_3.test_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.test_text.display(value, packet, parent, size)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.test_text, range, value, display)

  return offset + size, value
end

-- To M Version
miax_emeraldoptions_topofmarket_mach_v1_3.to_m_version = {}

-- Size: To M Version
miax_emeraldoptions_topofmarket_mach_v1_3.to_m_version.size = 8

-- Display: To M Version
miax_emeraldoptions_topofmarket_mach_v1_3.to_m_version.display = function(value)
  return "To M Version: "..value
end

-- Dissect: To M Version
miax_emeraldoptions_topofmarket_mach_v1_3.to_m_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.to_m_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.to_m_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.to_m_version, range, value, display)

  return offset + length, value
end

-- Trade Condition
miax_emeraldoptions_topofmarket_mach_v1_3.trade_condition = {}

-- Size: Trade Condition
miax_emeraldoptions_topofmarket_mach_v1_3.trade_condition.size = 1

-- Display: Trade Condition
miax_emeraldoptions_topofmarket_mach_v1_3.trade_condition.labels = {
  ["A"] = "Trade Condition: Cancel Of Trade Previously Reported Other Than As The Last Or Opening (A)",
  ["B"] = "Trade Condition: Late And Is Out Of Sequence (B)",
  ["C"] = "Trade Condition: Cancel Of The Last Reported Trade (C)",
  ["D"] = "Trade Condition: Late And Is In Correct Sequence (D)",
  ["E"] = "Trade Condition: Cancel Of The First Reported Trade (E)",
  ["F"] = "Trade Condition: Late Report Of The Opening Trade And Is Out Of Sequence (F)",
  ["G"] = "Trade Condition: Cancel Of The Only Reported Trade (G)",
  ["H"] = "Trade Condition: Late Report Of The Opening Trade And Is In Correct Sequence (H)",
  ["I"] = "Trade Condition: Auto (I)",
  ["J"] = "Trade Condition: Reopening Of An Option (J)",
  ["K"] = "Trade Condition: Reserved (K)",
  ["L"] = "Trade Condition: A Buy And A Sell In The Same Class (L)",
  ["M"] = "Trade Condition: A Buy And A Sell In A Put And A Call (M)",
  ["N"] = "Trade Condition: Reserved (N)",
  ["O"] = "Trade Condition: Reserved (O)",
  ["P"] = "Trade Condition: Buy Or Sell Of A Call Or Put (P)",
  ["Q"] = "Trade Condition: Buy Of A Call And A Sell Of A Put For The Same Underlying Stock Or Index (Q)",
  ["R"] = "Trade Condition: Execution Of An Order Which Was Stopped At A Price That Did Not Constitute A Trade Through On Another Market At The Time Of The Stop (R)",
  ["S"] = "Trade Condition: Execution Of An Iso Order (S)",
  ["T"] = "Trade Condition: Reserved (T)",
  ["X"] = "Trade Condition: Trade Through Exempt (X)",
  ["a"] = "Trade Condition: Paired Prime (a)",
  ["b"] = "Trade Condition: Iso Paired Prime (b)",
  ["c"] = "Trade Condition: Prime Customer To Customer Cross Or Prime Qcc (c)",
  ["d"] = "Trade Condition: Reserved (d)",
  ["e"] = "Trade Condition: Reserved (e)",
  ["f"] = "Trade Condition: Complex Transaction That Is Not Complex Stock Tied And Does Not Involve Legging (f)",
  ["g"] = "Trade Condition: Complex Prime Transaction That Is Not Complex Stock Tied And Does Not Involve Legging (g)",
  ["h"] = "Trade Condition: Complex Prime Customer To Customer Cross Or Complex Prime Qcc Transaction That Is Not Complex Stock Tied (h)",
  ["i"] = "Trade Condition: Reserved (i)",
  ["j"] = "Trade Condition: Complex Legging Transaction That Is Not Complex Stock Tied (j)",
  ["k"] = "Trade Condition: Complex Prime Stock Tied Transaction That Does Not Involve Legging (k)",
  ["l"] = "Trade Condition: Complex Prime Legging Transaction That Is Not Complex Stock Tied (l)",
  ["m"] = "Trade Condition: Reserved (m)",
  ["n"] = "Trade Condition: Complex Stock Tied Transaction That Does Not Involve Legging (n)",
  ["o"] = "Trade Condition: Complex Customer To Customer Cross Stock Tied Or Complex Qcc Stock Tied Transaction (o)",
  ["p"] = "Trade Condition: Reserved (p)",
  ["q"] = "Trade Condition: Reserved (q)",
  ["r"] = "Trade Condition: Reserved (r)",
  ["s"] = "Trade Condition: Reserved (s)",
  ["t"] = "Trade Condition: Reserved (t)",
}

miax_emeraldoptions_topofmarket_mach_v1_3.trade_condition.display = function(value)
  return miax_emeraldoptions_topofmarket_mach_v1_3.trade_condition.labels[value] or "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
miax_emeraldoptions_topofmarket_mach_v1_3.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trade Id
miax_emeraldoptions_topofmarket_mach_v1_3.trade_id = {}

-- Size: Trade Id
miax_emeraldoptions_topofmarket_mach_v1_3.trade_id.size = 4

-- Display: Trade Id
miax_emeraldoptions_topofmarket_mach_v1_3.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
miax_emeraldoptions_topofmarket_mach_v1_3.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Price
miax_emeraldoptions_topofmarket_mach_v1_3.trade_price = {}

-- Size: Trade Price
miax_emeraldoptions_topofmarket_mach_v1_3.trade_price.size = 4

-- Display: Trade Price
miax_emeraldoptions_topofmarket_mach_v1_3.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
miax_emeraldoptions_topofmarket_mach_v1_3.trade_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Trade Price
miax_emeraldoptions_topofmarket_mach_v1_3.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.trade_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_emeraldoptions_topofmarket_mach_v1_3.trade_price.translate(raw)
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Size
miax_emeraldoptions_topofmarket_mach_v1_3.trade_size = {}

-- Size: Trade Size
miax_emeraldoptions_topofmarket_mach_v1_3.trade_size.size = 4

-- Display: Trade Size
miax_emeraldoptions_topofmarket_mach_v1_3.trade_size.display = function(value)
  return "Trade Size: "..value
end

-- Dissect: Trade Size
miax_emeraldoptions_topofmarket_mach_v1_3.trade_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.trade_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.trade_size, range, value, display)

  return offset + length, value
end

-- Trading Session Id
miax_emeraldoptions_topofmarket_mach_v1_3.trading_session_id = {}

-- Size: Trading Session Id
miax_emeraldoptions_topofmarket_mach_v1_3.trading_session_id.size = 1

-- Display: Trading Session Id
miax_emeraldoptions_topofmarket_mach_v1_3.trading_session_id.display = function(value)
  return "Trading Session Id: "..value
end

-- Dissect: Trading Session Id
miax_emeraldoptions_topofmarket_mach_v1_3.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.trading_session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Trading Status
miax_emeraldoptions_topofmarket_mach_v1_3.trading_status = {}

-- Size: Trading Status
miax_emeraldoptions_topofmarket_mach_v1_3.trading_status.size = 1

-- Display: Trading Status
miax_emeraldoptions_topofmarket_mach_v1_3.trading_status.labels = {
  ["H"] = "Trading Status: Halted (H)",
  ["R"] = "Trading Status: Resumed (R)",
  ["O"] = "Trading Status: Opened (O)",
}

miax_emeraldoptions_topofmarket_mach_v1_3.trading_status.display = function(value)
  return miax_emeraldoptions_topofmarket_mach_v1_3.trading_status.labels[value] or "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
miax_emeraldoptions_topofmarket_mach_v1_3.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
miax_emeraldoptions_topofmarket_mach_v1_3.underlying_symbol = {}

-- Size: Underlying Symbol
miax_emeraldoptions_topofmarket_mach_v1_3.underlying_symbol.size = 11

-- Display: Underlying Symbol
miax_emeraldoptions_topofmarket_mach_v1_3.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
miax_emeraldoptions_topofmarket_mach_v1_3.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
miax_emeraldoptions_topofmarket_mach_v1_3.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
miax_emeraldoptions_topofmarket_mach_v1_3.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
miax_emeraldoptions_topofmarket_mach_v1_3.unsequenced_message_type.labels = {
  ["R"] = "Unsequenced Message Type: Refresh Request Message (R)",
  ["r"] = "Unsequenced Message Type: Refresh Response Message (r)",
  ["E"] = "Unsequenced Message Type: End Of Refresh Notification Message (E)",
}

miax_emeraldoptions_topofmarket_mach_v1_3.unsequenced_message_type.display = function(value)
  return miax_emeraldoptions_topofmarket_mach_v1_3.unsequenced_message_type.labels[value] or "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
miax_emeraldoptions_topofmarket_mach_v1_3.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
miax_emeraldoptions_topofmarket_mach_v1_3.username = {}

-- Size: Username
miax_emeraldoptions_topofmarket_mach_v1_3.username.size = 5

-- Display: Username
miax_emeraldoptions_topofmarket_mach_v1_3.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
miax_emeraldoptions_topofmarket_mach_v1_3.username.dissect = function(buffer, offset, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.username, range, value, display)

  return offset + length, value
end

-- Timestamp
miax_emeraldoptions_topofmarket_mach_v1_3.timestamp = {}

-- Translate: Timestamp
miax_emeraldoptions_topofmarket_mach_v1_3.timestamp.translate = function(nanoseconds, stored_seconds)
  return UInt64.new(stored_seconds * 1000000000 + nanoseconds)
end

-- Display: Timestamp
miax_emeraldoptions_topofmarket_mach_v1_3.timestamp.display = function(nanoseconds, stored_seconds)
  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", stored_seconds)..string.format("%09d", nanoseconds)
end

-- Composite: Timestamp
miax_emeraldoptions_topofmarket_mach_v1_3.timestamp.composite = function(buffer, offset, stored_seconds, packet, parent)
  local length = miax_emeraldoptions_topofmarket_mach_v1_3.nanoseconds.size
  local range = buffer(offset, length)
  local nanoseconds = range:le_uint()
  local value = miax_emeraldoptions_topofmarket_mach_v1_3.timestamp.translate(nanoseconds, stored_seconds)
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.timestamp.display(nanoseconds, stored_seconds, packet)
  parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.timestamp, range, value, display)

  miax_emeraldoptions_topofmarket_mach_v1_3.seconds.generated(stored_seconds, range, packet, parent)

  display = miax_emeraldoptions_topofmarket_mach_v1_3.nanoseconds.display(nanoseconds)
  parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.nanoseconds, range, nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
miax_emeraldoptions_topofmarket_mach_v1_3.timestamp.dissect = function(buffer, offset, packet, parent)
  if miax_emeraldoptions_topofmarket_mach_v1_3.format_timestamp then
    local stored_seconds = miax_emeraldoptions_topofmarket_mach_v1_3.seconds.current

    if stored_seconds ~= nil then
      return miax_emeraldoptions_topofmarket_mach_v1_3.timestamp.composite(buffer, offset, stored_seconds, packet, parent)
    end
  end

  return miax_emeraldoptions_topofmarket_mach_v1_3.nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Miax EmeraldOptions TopOfMarket Mach 1.3
-----------------------------------------------------------------------

-- Test Packet
miax_emeraldoptions_topofmarket_mach_v1_3.test_packet = {}

-- Calculate size of: Test Packet
miax_emeraldoptions_topofmarket_mach_v1_3.test_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Test Text
  index = index + buffer(offset + index - 3, 2):le_uint()

  return index
end

-- Display: Test Packet
miax_emeraldoptions_topofmarket_mach_v1_3.test_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Test Packet
miax_emeraldoptions_topofmarket_mach_v1_3.test_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Test Text
  local size_of_test_text = sesm_packet_length - 1

  -- Test Text: 0 Byte Ascii String
  index, test_text = miax_emeraldoptions_topofmarket_mach_v1_3.test_text.dissect(buffer, index, packet, parent, size_of_test_text)

  return index
end

-- Dissect: Test Packet
miax_emeraldoptions_topofmarket_mach_v1_3.test_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.test_packet, buffer(offset, 0))
    local index = miax_emeraldoptions_topofmarket_mach_v1_3.test_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.test_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_emeraldoptions_topofmarket_mach_v1_3.test_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Heartbeat
miax_emeraldoptions_topofmarket_mach_v1_3.client_heartbeat = {}

-- Display: Client Heartbeat
miax_emeraldoptions_topofmarket_mach_v1_3.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
miax_emeraldoptions_topofmarket_mach_v1_3.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
miax_emeraldoptions_topofmarket_mach_v1_3.server_heartbeat = {}

-- Display: Server Heartbeat
miax_emeraldoptions_topofmarket_mach_v1_3.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
miax_emeraldoptions_topofmarket_mach_v1_3.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Trading Session Update
miax_emeraldoptions_topofmarket_mach_v1_3.trading_session_update = {}

-- Display: Trading Session Update
miax_emeraldoptions_topofmarket_mach_v1_3.trading_session_update.display = function(packet, parent, length)
  return "Trading Session Update"
end


-- Dissect: Trading Session Update
miax_emeraldoptions_topofmarket_mach_v1_3.trading_session_update.dissect = function(buffer, offset, packet, parent)
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.trading_session_update.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Goodbye Packet
miax_emeraldoptions_topofmarket_mach_v1_3.goodbye_packet = {}

-- Calculate size of: Goodbye Packet
miax_emeraldoptions_topofmarket_mach_v1_3.goodbye_packet.size = function(buffer, offset)
  local index = 0

  index = index + miax_emeraldoptions_topofmarket_mach_v1_3.logout_reason.size

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Goodbye Packet
miax_emeraldoptions_topofmarket_mach_v1_3.goodbye_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Goodbye Packet
miax_emeraldoptions_topofmarket_mach_v1_3.goodbye_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_emeraldoptions_topofmarket_mach_v1_3.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = sesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_emeraldoptions_topofmarket_mach_v1_3.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Goodbye Packet
miax_emeraldoptions_topofmarket_mach_v1_3.goodbye_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.goodbye_packet, buffer(offset, 0))
    local index = miax_emeraldoptions_topofmarket_mach_v1_3.goodbye_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.goodbye_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_emeraldoptions_topofmarket_mach_v1_3.goodbye_packet.fields(buffer, offset, packet, parent)
  end
end

-- Logout Request
miax_emeraldoptions_topofmarket_mach_v1_3.logout_request = {}

-- Calculate size of: Logout Request
miax_emeraldoptions_topofmarket_mach_v1_3.logout_request.size = function(buffer, offset)
  local index = 0

  index = index + miax_emeraldoptions_topofmarket_mach_v1_3.logout_reason.size

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Logout Request
miax_emeraldoptions_topofmarket_mach_v1_3.logout_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Request
miax_emeraldoptions_topofmarket_mach_v1_3.logout_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_emeraldoptions_topofmarket_mach_v1_3.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = sesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_emeraldoptions_topofmarket_mach_v1_3.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Logout Request
miax_emeraldoptions_topofmarket_mach_v1_3.logout_request.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.logout_request, buffer(offset, 0))
    local index = miax_emeraldoptions_topofmarket_mach_v1_3.logout_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.logout_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_emeraldoptions_topofmarket_mach_v1_3.logout_request.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request
miax_emeraldoptions_topofmarket_mach_v1_3.retransmission_request = {}

-- Size: Retransmission Request
miax_emeraldoptions_topofmarket_mach_v1_3.retransmission_request.size =
  miax_emeraldoptions_topofmarket_mach_v1_3.start_sequence_number.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.end_sequence_number.size

-- Display: Retransmission Request
miax_emeraldoptions_topofmarket_mach_v1_3.retransmission_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request
miax_emeraldoptions_topofmarket_mach_v1_3.retransmission_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, start_sequence_number = miax_emeraldoptions_topofmarket_mach_v1_3.start_sequence_number.dissect(buffer, index, packet, parent)

  -- End Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, end_sequence_number = miax_emeraldoptions_topofmarket_mach_v1_3.end_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request
miax_emeraldoptions_topofmarket_mach_v1_3.retransmission_request.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.retransmission_request, buffer(offset, 0))
    local index = miax_emeraldoptions_topofmarket_mach_v1_3.retransmission_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.retransmission_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_emeraldoptions_topofmarket_mach_v1_3.retransmission_request.fields(buffer, offset, packet, parent)
  end
end

-- Synchronization Complete
miax_emeraldoptions_topofmarket_mach_v1_3.synchronization_complete = {}

-- Size: Synchronization Complete
miax_emeraldoptions_topofmarket_mach_v1_3.synchronization_complete.size =
  miax_emeraldoptions_topofmarket_mach_v1_3.number_of_matching_engines.size

-- Display: Synchronization Complete
miax_emeraldoptions_topofmarket_mach_v1_3.synchronization_complete.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Synchronization Complete
miax_emeraldoptions_topofmarket_mach_v1_3.synchronization_complete.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Matching Engines: 1 Byte Unsigned Fixed Width Integer
  index, number_of_matching_engines = miax_emeraldoptions_topofmarket_mach_v1_3.number_of_matching_engines.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Synchronization Complete
miax_emeraldoptions_topofmarket_mach_v1_3.synchronization_complete.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.synchronization_complete, buffer(offset, 0))
    local index = miax_emeraldoptions_topofmarket_mach_v1_3.synchronization_complete.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.synchronization_complete.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_emeraldoptions_topofmarket_mach_v1_3.synchronization_complete.fields(buffer, offset, packet, parent)
  end
end

-- Login Response
miax_emeraldoptions_topofmarket_mach_v1_3.login_response = {}

-- Size: Login Response
miax_emeraldoptions_topofmarket_mach_v1_3.login_response.size =
  miax_emeraldoptions_topofmarket_mach_v1_3.number_of_matching_engines.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.login_status.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.trading_session_id.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.highest_sequence_number.size

-- Display: Login Response
miax_emeraldoptions_topofmarket_mach_v1_3.login_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response
miax_emeraldoptions_topofmarket_mach_v1_3.login_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Matching Engines: 1 Byte Unsigned Fixed Width Integer
  index, number_of_matching_engines = miax_emeraldoptions_topofmarket_mach_v1_3.number_of_matching_engines.dissect(buffer, index, packet, parent)

  -- Login Status: 1 Byte Ascii String Enum with 8 values
  index, login_status = miax_emeraldoptions_topofmarket_mach_v1_3.login_status.dissect(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer
  index, trading_session_id = miax_emeraldoptions_topofmarket_mach_v1_3.trading_session_id.dissect(buffer, index, packet, parent)

  -- Highest Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, highest_sequence_number = miax_emeraldoptions_topofmarket_mach_v1_3.highest_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
miax_emeraldoptions_topofmarket_mach_v1_3.login_response.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.login_response, buffer(offset, 0))
    local index = miax_emeraldoptions_topofmarket_mach_v1_3.login_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.login_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_emeraldoptions_topofmarket_mach_v1_3.login_response.fields(buffer, offset, packet, parent)
  end
end

-- Login Request
miax_emeraldoptions_topofmarket_mach_v1_3.login_request = {}

-- Size: Login Request
miax_emeraldoptions_topofmarket_mach_v1_3.login_request.size =
  miax_emeraldoptions_topofmarket_mach_v1_3.sesm_version.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.username.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.computer_id.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.application_protocol.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.requested_trading_session_id.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.requested_sequence_number.size

-- Display: Login Request
miax_emeraldoptions_topofmarket_mach_v1_3.login_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request
miax_emeraldoptions_topofmarket_mach_v1_3.login_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sesm Version: 5 Byte Ascii String
  index, sesm_version = miax_emeraldoptions_topofmarket_mach_v1_3.sesm_version.dissect(buffer, index, packet, parent)

  -- Username: 5 Byte Ascii String
  index, username = miax_emeraldoptions_topofmarket_mach_v1_3.username.dissect(buffer, index, packet, parent)

  -- Computer Id: 8 Byte Ascii String
  index, computer_id = miax_emeraldoptions_topofmarket_mach_v1_3.computer_id.dissect(buffer, index, packet, parent)

  -- Application Protocol: 8 Byte Ascii String
  index, application_protocol = miax_emeraldoptions_topofmarket_mach_v1_3.application_protocol.dissect(buffer, index, packet, parent)

  -- Requested Trading Session Id: 1 Byte Unsigned Fixed Width Integer
  index, requested_trading_session_id = miax_emeraldoptions_topofmarket_mach_v1_3.requested_trading_session_id.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, requested_sequence_number = miax_emeraldoptions_topofmarket_mach_v1_3.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request
miax_emeraldoptions_topofmarket_mach_v1_3.login_request.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.login_request, buffer(offset, 0))
    local index = miax_emeraldoptions_topofmarket_mach_v1_3.login_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.login_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_emeraldoptions_topofmarket_mach_v1_3.login_request.fields(buffer, offset, packet, parent)
  end
end

-- End Of Refresh Notification Message
miax_emeraldoptions_topofmarket_mach_v1_3.end_of_refresh_notification_message = {}

-- Size: End Of Refresh Notification Message
miax_emeraldoptions_topofmarket_mach_v1_3.end_of_refresh_notification_message.size =
  miax_emeraldoptions_topofmarket_mach_v1_3.refresh_message_type.size

-- Display: End Of Refresh Notification Message
miax_emeraldoptions_topofmarket_mach_v1_3.end_of_refresh_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Refresh Notification Message
miax_emeraldoptions_topofmarket_mach_v1_3.end_of_refresh_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Refresh Message Type: Alphanumeric
  index, refresh_message_type = miax_emeraldoptions_topofmarket_mach_v1_3.refresh_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Refresh Notification Message
miax_emeraldoptions_topofmarket_mach_v1_3.end_of_refresh_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.end_of_refresh_notification_message, buffer(offset, 0))
    local index = miax_emeraldoptions_topofmarket_mach_v1_3.end_of_refresh_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.end_of_refresh_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_emeraldoptions_topofmarket_mach_v1_3.end_of_refresh_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Trading Status Notification Message
miax_emeraldoptions_topofmarket_mach_v1_3.underlying_trading_status_notification_message = {}

-- Size: Underlying Trading Status Notification Message
miax_emeraldoptions_topofmarket_mach_v1_3.underlying_trading_status_notification_message.size =
  miax_emeraldoptions_topofmarket_mach_v1_3.nanoseconds.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.underlying_symbol.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.trading_status.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.event_reason.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.expected_event_time_seconds_part.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.expected_event_time_nano_seconds_part.size

-- Display: Underlying Trading Status Notification Message
miax_emeraldoptions_topofmarket_mach_v1_3.underlying_trading_status_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Trading Status Notification Message
miax_emeraldoptions_topofmarket_mach_v1_3.underlying_trading_status_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_emeraldoptions_topofmarket_mach_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_emeraldoptions_topofmarket_mach_v1_3.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Trading Status: Alphanumeric
  index, trading_status = miax_emeraldoptions_topofmarket_mach_v1_3.trading_status.dissect(buffer, index, packet, parent)

  -- Event Reason: Alphanumeric
  index, event_reason = miax_emeraldoptions_topofmarket_mach_v1_3.event_reason.dissect(buffer, index, packet, parent)

  -- Expected Event Time Seconds Part: SecTime
  index, expected_event_time_seconds_part = miax_emeraldoptions_topofmarket_mach_v1_3.expected_event_time_seconds_part.dissect(buffer, index, packet, parent)

  -- Expected Event Time Nano Seconds Part: BinaryU
  index, expected_event_time_nano_seconds_part = miax_emeraldoptions_topofmarket_mach_v1_3.expected_event_time_nano_seconds_part.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Trading Status Notification Message
miax_emeraldoptions_topofmarket_mach_v1_3.underlying_trading_status_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.underlying_trading_status_notification_message, buffer(offset, 0))
    local index = miax_emeraldoptions_topofmarket_mach_v1_3.underlying_trading_status_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.underlying_trading_status_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_emeraldoptions_topofmarket_mach_v1_3.underlying_trading_status_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Message
miax_emeraldoptions_topofmarket_mach_v1_3.trade_cancel_message = {}

-- Size: Trade Cancel Message
miax_emeraldoptions_topofmarket_mach_v1_3.trade_cancel_message.size =
  miax_emeraldoptions_topofmarket_mach_v1_3.nanoseconds.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.product_id.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.trade_id.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.correction_number.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.trade_price.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.trade_size.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.trade_condition.size

-- Display: Trade Cancel Message
miax_emeraldoptions_topofmarket_mach_v1_3.trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Message
miax_emeraldoptions_topofmarket_mach_v1_3.trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_emeraldoptions_topofmarket_mach_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_emeraldoptions_topofmarket_mach_v1_3.product_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_emeraldoptions_topofmarket_mach_v1_3.trade_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_emeraldoptions_topofmarket_mach_v1_3.correction_number.dissect(buffer, index, packet, parent)

  -- Trade Price: BinaryPrc4U
  index, trade_price = miax_emeraldoptions_topofmarket_mach_v1_3.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Size: BinaryU
  index, trade_size = miax_emeraldoptions_topofmarket_mach_v1_3.trade_size.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = miax_emeraldoptions_topofmarket_mach_v1_3.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
miax_emeraldoptions_topofmarket_mach_v1_3.trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.trade_cancel_message, buffer(offset, 0))
    local index = miax_emeraldoptions_topofmarket_mach_v1_3.trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_emeraldoptions_topofmarket_mach_v1_3.trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Sale Message
miax_emeraldoptions_topofmarket_mach_v1_3.last_sale_message = {}

-- Size: Last Sale Message
miax_emeraldoptions_topofmarket_mach_v1_3.last_sale_message.size =
  miax_emeraldoptions_topofmarket_mach_v1_3.nanoseconds.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.product_id.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.trade_id.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.correction_number.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.reference_trade_id.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.reference_correction_number.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.trade_price.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.trade_size.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.trade_condition.size

-- Display: Last Sale Message
miax_emeraldoptions_topofmarket_mach_v1_3.last_sale_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Sale Message
miax_emeraldoptions_topofmarket_mach_v1_3.last_sale_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_emeraldoptions_topofmarket_mach_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_emeraldoptions_topofmarket_mach_v1_3.product_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_emeraldoptions_topofmarket_mach_v1_3.trade_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_emeraldoptions_topofmarket_mach_v1_3.correction_number.dissect(buffer, index, packet, parent)

  -- Reference Trade Id: BinaryU
  index, reference_trade_id = miax_emeraldoptions_topofmarket_mach_v1_3.reference_trade_id.dissect(buffer, index, packet, parent)

  -- Reference Correction Number: BinaryU
  index, reference_correction_number = miax_emeraldoptions_topofmarket_mach_v1_3.reference_correction_number.dissect(buffer, index, packet, parent)

  -- Trade Price: BinaryPrc4U
  index, trade_price = miax_emeraldoptions_topofmarket_mach_v1_3.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Size: BinaryU
  index, trade_size = miax_emeraldoptions_topofmarket_mach_v1_3.trade_size.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = miax_emeraldoptions_topofmarket_mach_v1_3.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Sale Message
miax_emeraldoptions_topofmarket_mach_v1_3.last_sale_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.last_sale_message, buffer(offset, 0))
    local index = miax_emeraldoptions_topofmarket_mach_v1_3.last_sale_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.last_sale_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_emeraldoptions_topofmarket_mach_v1_3.last_sale_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Double Sided Top Of Market Best Bid Or Offer Wide Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_double_sided_top_of_market_best_bid_or_offer_wide_message = {}

-- Size: Simple Double Sided Top Of Market Best Bid Or Offer Wide Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_double_sided_top_of_market_best_bid_or_offer_wide_message.size =
  miax_emeraldoptions_topofmarket_mach_v1_3.nanoseconds.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.product_id.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.bid_price_long.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.bid_size_long.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.bid_priority_customer_size_long.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.bid_condition.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.offer_price_long.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.offer_size_long.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.offer_priority_customer_size_long.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.offer_condition.size

-- Display: Simple Double Sided Top Of Market Best Bid Or Offer Wide Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_double_sided_top_of_market_best_bid_or_offer_wide_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Double Sided Top Of Market Best Bid Or Offer Wide Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_double_sided_top_of_market_best_bid_or_offer_wide_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_emeraldoptions_topofmarket_mach_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_emeraldoptions_topofmarket_mach_v1_3.product_id.dissect(buffer, index, packet, parent)

  -- Bid Price Long: BinaryPrc4U
  index, bid_price_long = miax_emeraldoptions_topofmarket_mach_v1_3.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Size Long: BinaryU
  index, bid_size_long = miax_emeraldoptions_topofmarket_mach_v1_3.bid_size_long.dissect(buffer, index, packet, parent)

  -- Bid Priority Customer Size Long: BinaryU
  index, bid_priority_customer_size_long = miax_emeraldoptions_topofmarket_mach_v1_3.bid_priority_customer_size_long.dissect(buffer, index, packet, parent)

  -- Bid Condition: Alphanumeric
  index, bid_condition = miax_emeraldoptions_topofmarket_mach_v1_3.bid_condition.dissect(buffer, index, packet, parent)

  -- Offer Price Long: BinaryPrc4U
  index, offer_price_long = miax_emeraldoptions_topofmarket_mach_v1_3.offer_price_long.dissect(buffer, index, packet, parent)

  -- Offer Size Long: BinaryU
  index, offer_size_long = miax_emeraldoptions_topofmarket_mach_v1_3.offer_size_long.dissect(buffer, index, packet, parent)

  -- Offer Priority Customer Size Long: BinaryU
  index, offer_priority_customer_size_long = miax_emeraldoptions_topofmarket_mach_v1_3.offer_priority_customer_size_long.dissect(buffer, index, packet, parent)

  -- Offer Condition: Alphanumeric
  index, offer_condition = miax_emeraldoptions_topofmarket_mach_v1_3.offer_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Double Sided Top Of Market Best Bid Or Offer Wide Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_double_sided_top_of_market_best_bid_or_offer_wide_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.simple_double_sided_top_of_market_best_bid_or_offer_wide_message, buffer(offset, 0))
    local index = miax_emeraldoptions_topofmarket_mach_v1_3.simple_double_sided_top_of_market_best_bid_or_offer_wide_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.simple_double_sided_top_of_market_best_bid_or_offer_wide_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_emeraldoptions_topofmarket_mach_v1_3.simple_double_sided_top_of_market_best_bid_or_offer_wide_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Double Sided Top Of Market Best Bid Or Offer Compact Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_double_sided_top_of_market_best_bid_or_offer_compact_message = {}

-- Size: Simple Double Sided Top Of Market Best Bid Or Offer Compact Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_double_sided_top_of_market_best_bid_or_offer_compact_message.size =
  miax_emeraldoptions_topofmarket_mach_v1_3.nanoseconds.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.product_id.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.bid_price_short.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.bid_size_short.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.bid_priority_customer_size_short.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.bid_condition.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.offer_price_short.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.offer_size_short.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.offer_priority_customer_size_short.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.offer_condition.size

-- Display: Simple Double Sided Top Of Market Best Bid Or Offer Compact Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_double_sided_top_of_market_best_bid_or_offer_compact_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Double Sided Top Of Market Best Bid Or Offer Compact Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_double_sided_top_of_market_best_bid_or_offer_compact_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_emeraldoptions_topofmarket_mach_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_emeraldoptions_topofmarket_mach_v1_3.product_id.dissect(buffer, index, packet, parent)

  -- Bid Price Short: BinaryPrc2U
  index, bid_price_short = miax_emeraldoptions_topofmarket_mach_v1_3.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Size Short: BinaryU
  index, bid_size_short = miax_emeraldoptions_topofmarket_mach_v1_3.bid_size_short.dissect(buffer, index, packet, parent)

  -- Bid Priority Customer Size Short: BinaryU
  index, bid_priority_customer_size_short = miax_emeraldoptions_topofmarket_mach_v1_3.bid_priority_customer_size_short.dissect(buffer, index, packet, parent)

  -- Bid Condition: Alphanumeric
  index, bid_condition = miax_emeraldoptions_topofmarket_mach_v1_3.bid_condition.dissect(buffer, index, packet, parent)

  -- Offer Price Short: BinaryPrc2U
  index, offer_price_short = miax_emeraldoptions_topofmarket_mach_v1_3.offer_price_short.dissect(buffer, index, packet, parent)

  -- Offer Size Short: BinaryU
  index, offer_size_short = miax_emeraldoptions_topofmarket_mach_v1_3.offer_size_short.dissect(buffer, index, packet, parent)

  -- Offer Priority Customer Size Short: BinaryU
  index, offer_priority_customer_size_short = miax_emeraldoptions_topofmarket_mach_v1_3.offer_priority_customer_size_short.dissect(buffer, index, packet, parent)

  -- Offer Condition: Alphanumeric
  index, offer_condition = miax_emeraldoptions_topofmarket_mach_v1_3.offer_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Double Sided Top Of Market Best Bid Or Offer Compact Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_double_sided_top_of_market_best_bid_or_offer_compact_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.simple_double_sided_top_of_market_best_bid_or_offer_compact_message, buffer(offset, 0))
    local index = miax_emeraldoptions_topofmarket_mach_v1_3.simple_double_sided_top_of_market_best_bid_or_offer_compact_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.simple_double_sided_top_of_market_best_bid_or_offer_compact_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_emeraldoptions_topofmarket_mach_v1_3.simple_double_sided_top_of_market_best_bid_or_offer_compact_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Top Of Market Best Bid Or Offer Wide Offer With Priority Customer Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_offer_with_priority_customer_message = {}

-- Size: Simple Top Of Market Best Bid Or Offer Wide Offer With Priority Customer Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_offer_with_priority_customer_message.size =
  miax_emeraldoptions_topofmarket_mach_v1_3.nanoseconds.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.product_id.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_long.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_size_long.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_priority_customer_size_long.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_condition.size

-- Display: Simple Top Of Market Best Bid Or Offer Wide Offer With Priority Customer Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_offer_with_priority_customer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Top Of Market Best Bid Or Offer Wide Offer With Priority Customer Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_offer_with_priority_customer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_emeraldoptions_topofmarket_mach_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_emeraldoptions_topofmarket_mach_v1_3.product_id.dissect(buffer, index, packet, parent)

  -- EBBO Price Long: BinaryPrc4U
  index, ebbo_price_long = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_long.dissect(buffer, index, packet, parent)

  -- EBBO Size Long: BinaryU
  index, ebbo_size_long = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_size_long.dissect(buffer, index, packet, parent)

  -- EBBO Priority Customer Size Long: BinaryU
  index, ebbo_priority_customer_size_long = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_priority_customer_size_long.dissect(buffer, index, packet, parent)

  -- Ebbo Condition: Alphanumeric
  index, ebbo_condition = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Top Of Market Best Bid Or Offer Wide Offer With Priority Customer Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_offer_with_priority_customer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.simple_top_of_market_best_bid_or_offer_wide_offer_with_priority_customer_message, buffer(offset, 0))
    local index = miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_offer_with_priority_customer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_offer_with_priority_customer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_offer_with_priority_customer_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Top Of Market Best Bid Or Offer Wide Offer Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_offer_message = {}

-- Size: Simple Top Of Market Best Bid Or Offer Wide Offer Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_offer_message.size =
  miax_emeraldoptions_topofmarket_mach_v1_3.nanoseconds.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.product_id.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_long.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_size_long.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_priority_customer_size_long.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_condition.size

-- Display: Simple Top Of Market Best Bid Or Offer Wide Offer Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_offer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Top Of Market Best Bid Or Offer Wide Offer Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_offer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_emeraldoptions_topofmarket_mach_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_emeraldoptions_topofmarket_mach_v1_3.product_id.dissect(buffer, index, packet, parent)

  -- EBBO Price Long: BinaryPrc4U
  index, ebbo_price_long = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_long.dissect(buffer, index, packet, parent)

  -- EBBO Size Long: BinaryU
  index, ebbo_size_long = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_size_long.dissect(buffer, index, packet, parent)

  -- EBBO Priority Customer Size Long: BinaryU
  index, ebbo_priority_customer_size_long = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_priority_customer_size_long.dissect(buffer, index, packet, parent)

  -- Ebbo Condition: Alphanumeric
  index, ebbo_condition = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Top Of Market Best Bid Or Offer Wide Offer Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_offer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.simple_top_of_market_best_bid_or_offer_wide_offer_message, buffer(offset, 0))
    local index = miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_offer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_offer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_offer_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Top Of Market Best Bid Or Offer Wide Bid With Priority Customer Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_bid_with_priority_customer_message = {}

-- Size: Simple Top Of Market Best Bid Or Offer Wide Bid With Priority Customer Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_bid_with_priority_customer_message.size =
  miax_emeraldoptions_topofmarket_mach_v1_3.nanoseconds.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.product_id.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_long.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_size_long.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_priority_customer_size_long.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_condition.size

-- Display: Simple Top Of Market Best Bid Or Offer Wide Bid With Priority Customer Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_bid_with_priority_customer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Top Of Market Best Bid Or Offer Wide Bid With Priority Customer Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_bid_with_priority_customer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_emeraldoptions_topofmarket_mach_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_emeraldoptions_topofmarket_mach_v1_3.product_id.dissect(buffer, index, packet, parent)

  -- EBBO Price Long: BinaryPrc4U
  index, ebbo_price_long = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_long.dissect(buffer, index, packet, parent)

  -- EBBO Size Long: BinaryU
  index, ebbo_size_long = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_size_long.dissect(buffer, index, packet, parent)

  -- EBBO Priority Customer Size Long: BinaryU
  index, ebbo_priority_customer_size_long = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_priority_customer_size_long.dissect(buffer, index, packet, parent)

  -- Ebbo Condition: Alphanumeric
  index, ebbo_condition = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Top Of Market Best Bid Or Offer Wide Bid With Priority Customer Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_bid_with_priority_customer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.simple_top_of_market_best_bid_or_offer_wide_bid_with_priority_customer_message, buffer(offset, 0))
    local index = miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_bid_with_priority_customer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_bid_with_priority_customer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_bid_with_priority_customer_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Top Of Market Best Bid Or Offer Wide Bid Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_bid_message = {}

-- Size: Simple Top Of Market Best Bid Or Offer Wide Bid Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_bid_message.size =
  miax_emeraldoptions_topofmarket_mach_v1_3.nanoseconds.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.product_id.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_long.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_size_long.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_priority_customer_size_long.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_condition.size

-- Display: Simple Top Of Market Best Bid Or Offer Wide Bid Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_bid_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Top Of Market Best Bid Or Offer Wide Bid Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_bid_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_emeraldoptions_topofmarket_mach_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_emeraldoptions_topofmarket_mach_v1_3.product_id.dissect(buffer, index, packet, parent)

  -- EBBO Price Long: BinaryPrc4U
  index, ebbo_price_long = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_long.dissect(buffer, index, packet, parent)

  -- EBBO Size Long: BinaryU
  index, ebbo_size_long = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_size_long.dissect(buffer, index, packet, parent)

  -- EBBO Priority Customer Size Long: BinaryU
  index, ebbo_priority_customer_size_long = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_priority_customer_size_long.dissect(buffer, index, packet, parent)

  -- Ebbo Condition: Alphanumeric
  index, ebbo_condition = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Top Of Market Best Bid Or Offer Wide Bid Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_bid_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.simple_top_of_market_best_bid_or_offer_wide_bid_message, buffer(offset, 0))
    local index = miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_bid_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_bid_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_bid_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Top Of Market Best Bid Or Offer Compact Offer With Priority Customer Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_offer_with_priority_customer_message = {}

-- Size: Simple Top Of Market Best Bid Or Offer Compact Offer With Priority Customer Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_offer_with_priority_customer_message.size =
  miax_emeraldoptions_topofmarket_mach_v1_3.nanoseconds.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.product_id.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_short.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_size_short.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_priority_customer_size_short.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_condition.size

-- Display: Simple Top Of Market Best Bid Or Offer Compact Offer With Priority Customer Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_offer_with_priority_customer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Top Of Market Best Bid Or Offer Compact Offer With Priority Customer Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_offer_with_priority_customer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_emeraldoptions_topofmarket_mach_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_emeraldoptions_topofmarket_mach_v1_3.product_id.dissect(buffer, index, packet, parent)

  -- EBBO Price Short: BinaryPrc2U
  index, ebbo_price_short = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_short.dissect(buffer, index, packet, parent)

  -- EBBO Size Short: BinaryU
  index, ebbo_size_short = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_size_short.dissect(buffer, index, packet, parent)

  -- EBBO Priority Customer Size Short: BinaryU
  index, ebbo_priority_customer_size_short = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_priority_customer_size_short.dissect(buffer, index, packet, parent)

  -- Ebbo Condition: Alphanumeric
  index, ebbo_condition = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Top Of Market Best Bid Or Offer Compact Offer With Priority Customer Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_offer_with_priority_customer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.simple_top_of_market_best_bid_or_offer_compact_offer_with_priority_customer_message, buffer(offset, 0))
    local index = miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_offer_with_priority_customer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_offer_with_priority_customer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_offer_with_priority_customer_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Top Of Market Best Bid Or Offer Compact Offer Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_offer_message = {}

-- Size: Simple Top Of Market Best Bid Or Offer Compact Offer Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_offer_message.size =
  miax_emeraldoptions_topofmarket_mach_v1_3.nanoseconds.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.product_id.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_short.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_size_short.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_priority_customer_size_short.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_condition.size

-- Display: Simple Top Of Market Best Bid Or Offer Compact Offer Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_offer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Top Of Market Best Bid Or Offer Compact Offer Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_offer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_emeraldoptions_topofmarket_mach_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_emeraldoptions_topofmarket_mach_v1_3.product_id.dissect(buffer, index, packet, parent)

  -- EBBO Price Short: BinaryPrc2U
  index, ebbo_price_short = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_short.dissect(buffer, index, packet, parent)

  -- EBBO Size Short: BinaryU
  index, ebbo_size_short = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_size_short.dissect(buffer, index, packet, parent)

  -- EBBO Priority Customer Size Short: BinaryU
  index, ebbo_priority_customer_size_short = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_priority_customer_size_short.dissect(buffer, index, packet, parent)

  -- Ebbo Condition: Alphanumeric
  index, ebbo_condition = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Top Of Market Best Bid Or Offer Compact Offer Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_offer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.simple_top_of_market_best_bid_or_offer_compact_offer_message, buffer(offset, 0))
    local index = miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_offer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_offer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_offer_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Top Of Market Best Bid Or Offer Compact Bid With Priority Customer Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_bid_with_priority_customer_message = {}

-- Size: Simple Top Of Market Best Bid Or Offer Compact Bid With Priority Customer Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_bid_with_priority_customer_message.size =
  miax_emeraldoptions_topofmarket_mach_v1_3.nanoseconds.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.product_id.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_short.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_size_short.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_priority_customer_size_short.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_condition.size

-- Display: Simple Top Of Market Best Bid Or Offer Compact Bid With Priority Customer Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_bid_with_priority_customer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Top Of Market Best Bid Or Offer Compact Bid With Priority Customer Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_bid_with_priority_customer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_emeraldoptions_topofmarket_mach_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_emeraldoptions_topofmarket_mach_v1_3.product_id.dissect(buffer, index, packet, parent)

  -- EBBO Price Short: BinaryPrc2U
  index, ebbo_price_short = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_short.dissect(buffer, index, packet, parent)

  -- EBBO Size Short: BinaryU
  index, ebbo_size_short = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_size_short.dissect(buffer, index, packet, parent)

  -- EBBO Priority Customer Size Short: BinaryU
  index, ebbo_priority_customer_size_short = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_priority_customer_size_short.dissect(buffer, index, packet, parent)

  -- Ebbo Condition: Alphanumeric
  index, ebbo_condition = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Top Of Market Best Bid Or Offer Compact Bid With Priority Customer Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_bid_with_priority_customer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.simple_top_of_market_best_bid_or_offer_compact_bid_with_priority_customer_message, buffer(offset, 0))
    local index = miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_bid_with_priority_customer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_bid_with_priority_customer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_bid_with_priority_customer_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Top Of Market Best Bid Or Offer Compact Bid Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_bid_message = {}

-- Size: Simple Top Of Market Best Bid Or Offer Compact Bid Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_bid_message.size =
  miax_emeraldoptions_topofmarket_mach_v1_3.nanoseconds.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.product_id.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_short.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_size_short.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_priority_customer_size_short.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_condition.size

-- Display: Simple Top Of Market Best Bid Or Offer Compact Bid Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_bid_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Top Of Market Best Bid Or Offer Compact Bid Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_bid_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_emeraldoptions_topofmarket_mach_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_emeraldoptions_topofmarket_mach_v1_3.product_id.dissect(buffer, index, packet, parent)

  -- EBBO Price Short: BinaryPrc2U
  index, ebbo_price_short = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_price_short.dissect(buffer, index, packet, parent)

  -- EBBO Size Short: BinaryU
  index, ebbo_size_short = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_size_short.dissect(buffer, index, packet, parent)

  -- EBBO Priority Customer Size Short: BinaryU
  index, ebbo_priority_customer_size_short = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_priority_customer_size_short.dissect(buffer, index, packet, parent)

  -- Ebbo Condition: Alphanumeric
  index, ebbo_condition = miax_emeraldoptions_topofmarket_mach_v1_3.ebbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Top Of Market Best Bid Or Offer Compact Bid Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_bid_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.simple_top_of_market_best_bid_or_offer_compact_bid_message, buffer(offset, 0))
    local index = miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_bid_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_bid_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_bid_message.fields(buffer, offset, packet, parent)
  end
end

-- System State Message
miax_emeraldoptions_topofmarket_mach_v1_3.system_state_message = {}

-- Size: System State Message
miax_emeraldoptions_topofmarket_mach_v1_3.system_state_message.size =
  miax_emeraldoptions_topofmarket_mach_v1_3.nanoseconds.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.to_m_version.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.session_id.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.system_status.size

-- Display: System State Message
miax_emeraldoptions_topofmarket_mach_v1_3.system_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System State Message
miax_emeraldoptions_topofmarket_mach_v1_3.system_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_emeraldoptions_topofmarket_mach_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- To M Version: Alphanumeric
  index, to_m_version = miax_emeraldoptions_topofmarket_mach_v1_3.to_m_version.dissect(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_emeraldoptions_topofmarket_mach_v1_3.session_id.dissect(buffer, index, packet, parent)

  -- System Status: Alphanumeric
  index, system_status = miax_emeraldoptions_topofmarket_mach_v1_3.system_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Message
miax_emeraldoptions_topofmarket_mach_v1_3.system_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.system_state_message, buffer(offset, 0))
    local index = miax_emeraldoptions_topofmarket_mach_v1_3.system_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.system_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_emeraldoptions_topofmarket_mach_v1_3.system_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Series Update Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_series_update_message = {}

-- Size: Simple Series Update Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_series_update_message.size =
  miax_emeraldoptions_topofmarket_mach_v1_3.nanoseconds.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.product_id.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.underlying_symbol.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.security_symbol.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.expiration_date.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.strike_price.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.call_or_put.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.opening_time.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.closing_time.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.restricted_option.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.long_term_option.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.active_on_miax.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.emerald_bbo_posting_increment_indicator.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.liquidity_acceptance_increment_indicator.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.opening_underlying_market_code.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.priority_quote_width.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.reserved_8.size

-- Display: Simple Series Update Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_series_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Series Update Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_series_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_emeraldoptions_topofmarket_mach_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_emeraldoptions_topofmarket_mach_v1_3.product_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_emeraldoptions_topofmarket_mach_v1_3.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = miax_emeraldoptions_topofmarket_mach_v1_3.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Date: Alphanumeric
  index, expiration_date = miax_emeraldoptions_topofmarket_mach_v1_3.expiration_date.dissect(buffer, index, packet, parent)

  -- Strike Price: BinaryPrc4U
  index, strike_price = miax_emeraldoptions_topofmarket_mach_v1_3.strike_price.dissect(buffer, index, packet, parent)

  -- Call Or Put: Alphanumeric
  index, call_or_put = miax_emeraldoptions_topofmarket_mach_v1_3.call_or_put.dissect(buffer, index, packet, parent)

  -- Opening Time: Alphanumeric
  index, opening_time = miax_emeraldoptions_topofmarket_mach_v1_3.opening_time.dissect(buffer, index, packet, parent)

  -- Closing Time: Alphanumeric
  index, closing_time = miax_emeraldoptions_topofmarket_mach_v1_3.closing_time.dissect(buffer, index, packet, parent)

  -- Restricted Option: Alphanumeric
  index, restricted_option = miax_emeraldoptions_topofmarket_mach_v1_3.restricted_option.dissect(buffer, index, packet, parent)

  -- Long Term Option: Alphanumeric
  index, long_term_option = miax_emeraldoptions_topofmarket_mach_v1_3.long_term_option.dissect(buffer, index, packet, parent)

  -- Active On Miax: Alphanumeric
  index, active_on_miax = miax_emeraldoptions_topofmarket_mach_v1_3.active_on_miax.dissect(buffer, index, packet, parent)

  -- Emerald Bbo Posting Increment Indicator: Alphanumeric
  index, emerald_bbo_posting_increment_indicator = miax_emeraldoptions_topofmarket_mach_v1_3.emerald_bbo_posting_increment_indicator.dissect(buffer, index, packet, parent)

  -- Liquidity Acceptance Increment Indicator: Alphanumeric
  index, liquidity_acceptance_increment_indicator = miax_emeraldoptions_topofmarket_mach_v1_3.liquidity_acceptance_increment_indicator.dissect(buffer, index, packet, parent)

  -- Opening Underlying Market Code: Alphanumeric
  index, opening_underlying_market_code = miax_emeraldoptions_topofmarket_mach_v1_3.opening_underlying_market_code.dissect(buffer, index, packet, parent)

  -- Priority Quote Width: BinaryPrc4U
  index, priority_quote_width = miax_emeraldoptions_topofmarket_mach_v1_3.priority_quote_width.dissect(buffer, index, packet, parent)

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_emeraldoptions_topofmarket_mach_v1_3.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Series Update Message
miax_emeraldoptions_topofmarket_mach_v1_3.simple_series_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.simple_series_update_message, buffer(offset, 0))
    local index = miax_emeraldoptions_topofmarket_mach_v1_3.simple_series_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.simple_series_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_emeraldoptions_topofmarket_mach_v1_3.simple_series_update_message.fields(buffer, offset, packet, parent)
  end
end

-- System Time Message
miax_emeraldoptions_topofmarket_mach_v1_3.system_time_message = {}

-- Size: System Time Message
miax_emeraldoptions_topofmarket_mach_v1_3.system_time_message.size =
  miax_emeraldoptions_topofmarket_mach_v1_3.seconds.size

-- Display: System Time Message
miax_emeraldoptions_topofmarket_mach_v1_3.system_time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Time Message
miax_emeraldoptions_topofmarket_mach_v1_3.system_time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: SecTime
  index, seconds = miax_emeraldoptions_topofmarket_mach_v1_3.seconds.dissect(buffer, index, packet, parent)

  -- Store Seconds Value
  miax_emeraldoptions_topofmarket_mach_v1_3.seconds.current = seconds

  if not packet.visited then
    miax_emeraldoptions_topofmarket_mach_v1_3.conversation.current.seconds.last = seconds
  end

  return index
end

-- Dissect: System Time Message
miax_emeraldoptions_topofmarket_mach_v1_3.system_time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.system_time_message, buffer(offset, 0))
    local index = miax_emeraldoptions_topofmarket_mach_v1_3.system_time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.system_time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_emeraldoptions_topofmarket_mach_v1_3.system_time_message.fields(buffer, offset, packet, parent)
  end
end

-- Data
miax_emeraldoptions_topofmarket_mach_v1_3.data = {}

-- Dissect: Data
miax_emeraldoptions_topofmarket_mach_v1_3.data.dispatch = {
  ["1"] = miax_emeraldoptions_topofmarket_mach_v1_3.system_time_message.dissect,
  ["P"] = miax_emeraldoptions_topofmarket_mach_v1_3.simple_series_update_message.dissect,
  ["S"] = miax_emeraldoptions_topofmarket_mach_v1_3.system_state_message.dissect,
  ["B"] = miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_bid_message.dissect,
  ["h"] = miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_bid_with_priority_customer_message.dissect,
  ["O"] = miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_offer_message.dissect,
  ["i"] = miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_compact_offer_with_priority_customer_message.dissect,
  ["W"] = miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_bid_message.dissect,
  ["j"] = miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_bid_with_priority_customer_message.dissect,
  ["A"] = miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_offer_message.dissect,
  ["k"] = miax_emeraldoptions_topofmarket_mach_v1_3.simple_top_of_market_best_bid_or_offer_wide_offer_with_priority_customer_message.dissect,
  ["d"] = miax_emeraldoptions_topofmarket_mach_v1_3.simple_double_sided_top_of_market_best_bid_or_offer_compact_message.dissect,
  ["D"] = miax_emeraldoptions_topofmarket_mach_v1_3.simple_double_sided_top_of_market_best_bid_or_offer_wide_message.dissect,
  ["T"] = miax_emeraldoptions_topofmarket_mach_v1_3.last_sale_message.dissect,
  ["X"] = miax_emeraldoptions_topofmarket_mach_v1_3.trade_cancel_message.dissect,
  ["H"] = miax_emeraldoptions_topofmarket_mach_v1_3.underlying_trading_status_notification_message.dissect,
}

miax_emeraldoptions_topofmarket_mach_v1_3.data.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = miax_emeraldoptions_topofmarket_mach_v1_3.data.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Application Message
miax_emeraldoptions_topofmarket_mach_v1_3.application_message = {}

-- Display: Application Message
miax_emeraldoptions_topofmarket_mach_v1_3.application_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Application Message
miax_emeraldoptions_topofmarket_mach_v1_3.application_message.fields = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 16 values
  index, message_type = miax_emeraldoptions_topofmarket_mach_v1_3.message_type.dissect(buffer, index, packet, parent)

  -- Data: Runtime Type with 16 branches
  index = miax_emeraldoptions_topofmarket_mach_v1_3.data.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Application Message
miax_emeraldoptions_topofmarket_mach_v1_3.application_message.dissect = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset + size_of_application_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.application_message, buffer(offset, 0))
    local current = miax_emeraldoptions_topofmarket_mach_v1_3.application_message.fields(buffer, offset, packet, parent, size_of_application_message)
    parent:set_len(size_of_application_message)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.application_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_emeraldoptions_topofmarket_mach_v1_3.application_message.fields(buffer, offset, packet, parent, size_of_application_message)

    return index
  end
end

-- Refresh Response Message
miax_emeraldoptions_topofmarket_mach_v1_3.refresh_response_message = {}

-- Calculate size of: Refresh Response Message
miax_emeraldoptions_topofmarket_mach_v1_3.refresh_response_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_emeraldoptions_topofmarket_mach_v1_3.sequence_number.size

  -- Parse runtime size of: Application Message
  index = index + buffer(offset + index - 12, 2):le_uint()

  return index
end

-- Display: Refresh Response Message
miax_emeraldoptions_topofmarket_mach_v1_3.refresh_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Response Message
miax_emeraldoptions_topofmarket_mach_v1_3.refresh_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: BinaryU
  index, sequence_number = miax_emeraldoptions_topofmarket_mach_v1_3.sequence_number.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 4, 2):le_uint()

  -- Runtime Size Of: Application Message
  local size_of_application_message = sesm_packet_length - 12

  -- Application Message: Struct of 2 fields
  index, application_message = miax_emeraldoptions_topofmarket_mach_v1_3.application_message.dissect(buffer, index, packet, parent, size_of_application_message)

  return index
end

-- Dissect: Refresh Response Message
miax_emeraldoptions_topofmarket_mach_v1_3.refresh_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.refresh_response_message, buffer(offset, 0))
    local index = miax_emeraldoptions_topofmarket_mach_v1_3.refresh_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.refresh_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_emeraldoptions_topofmarket_mach_v1_3.refresh_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Request Message
miax_emeraldoptions_topofmarket_mach_v1_3.refresh_request_message = {}

-- Size: Refresh Request Message
miax_emeraldoptions_topofmarket_mach_v1_3.refresh_request_message.size =
  miax_emeraldoptions_topofmarket_mach_v1_3.refresh_message_type.size

-- Display: Refresh Request Message
miax_emeraldoptions_topofmarket_mach_v1_3.refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
miax_emeraldoptions_topofmarket_mach_v1_3.refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Refresh Message Type: Alphanumeric
  index, refresh_message_type = miax_emeraldoptions_topofmarket_mach_v1_3.refresh_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
miax_emeraldoptions_topofmarket_mach_v1_3.refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.refresh_request_message, buffer(offset, 0))
    local index = miax_emeraldoptions_topofmarket_mach_v1_3.refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_emeraldoptions_topofmarket_mach_v1_3.refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
miax_emeraldoptions_topofmarket_mach_v1_3.unsequenced_message = {}

-- Dissect: Unsequenced Message
miax_emeraldoptions_topofmarket_mach_v1_3.unsequenced_message.dispatch = {
  ["R"] = miax_emeraldoptions_topofmarket_mach_v1_3.refresh_request_message.dissect,
  ["r"] = miax_emeraldoptions_topofmarket_mach_v1_3.refresh_response_message.dissect,
  ["E"] = miax_emeraldoptions_topofmarket_mach_v1_3.end_of_refresh_notification_message.dissect,
}

miax_emeraldoptions_topofmarket_mach_v1_3.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  local dissect = miax_emeraldoptions_topofmarket_mach_v1_3.unsequenced_message.dispatch[unsequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
miax_emeraldoptions_topofmarket_mach_v1_3.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
miax_emeraldoptions_topofmarket_mach_v1_3.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  return sesm_packet_length - 1
end

-- Display: Unsequenced Data Packet
miax_emeraldoptions_topofmarket_mach_v1_3.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
miax_emeraldoptions_topofmarket_mach_v1_3.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String Enum with 3 values
  index, unsequenced_message_type = miax_emeraldoptions_topofmarket_mach_v1_3.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 3 branches
  index = miax_emeraldoptions_topofmarket_mach_v1_3.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
miax_emeraldoptions_topofmarket_mach_v1_3.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = miax_emeraldoptions_topofmarket_mach_v1_3.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = miax_emeraldoptions_topofmarket_mach_v1_3.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_emeraldoptions_topofmarket_mach_v1_3.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Sequenced Data Packet
miax_emeraldoptions_topofmarket_mach_v1_3.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
miax_emeraldoptions_topofmarket_mach_v1_3.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  return sesm_packet_length - 1
end

-- Display: Sequenced Data Packet
miax_emeraldoptions_topofmarket_mach_v1_3.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
miax_emeraldoptions_topofmarket_mach_v1_3.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequence Number: BinaryU
  index, sequence_number = miax_emeraldoptions_topofmarket_mach_v1_3.sequence_number.dissect(buffer, index, packet, parent)

  -- Matching Engine Id: 1 Byte Unsigned Fixed Width Integer
  index, matching_engine_id = miax_emeraldoptions_topofmarket_mach_v1_3.matching_engine_id.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: 1 Byte Ascii String
  index, sequenced_message_type = miax_emeraldoptions_topofmarket_mach_v1_3.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message
  index, sequenced_message = miax_emeraldoptions_topofmarket_mach_v1_3.sequenced_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Data Packet
miax_emeraldoptions_topofmarket_mach_v1_3.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = miax_emeraldoptions_topofmarket_mach_v1_3.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.sequenced_data_packet, buffer(offset, 0))
    local current = miax_emeraldoptions_topofmarket_mach_v1_3.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_emeraldoptions_topofmarket_mach_v1_3.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Sesm Payload
miax_emeraldoptions_topofmarket_mach_v1_3.sesm_payload = {}

-- Dissect: Sesm Payload
miax_emeraldoptions_topofmarket_mach_v1_3.sesm_payload.dispatch = {
  ["s"] = miax_emeraldoptions_topofmarket_mach_v1_3.sequenced_data_packet.dissect,
  ["U"] = miax_emeraldoptions_topofmarket_mach_v1_3.unsequenced_data_packet.dissect,
  ["l"] = miax_emeraldoptions_topofmarket_mach_v1_3.login_request.dissect,
  ["r"] = miax_emeraldoptions_topofmarket_mach_v1_3.login_response.dissect,
  ["c"] = miax_emeraldoptions_topofmarket_mach_v1_3.synchronization_complete.dissect,
  ["a"] = miax_emeraldoptions_topofmarket_mach_v1_3.retransmission_request.dissect,
  ["X"] = miax_emeraldoptions_topofmarket_mach_v1_3.logout_request.dissect,
  ["G"] = miax_emeraldoptions_topofmarket_mach_v1_3.goodbye_packet.dissect,
  ["u"] = miax_emeraldoptions_topofmarket_mach_v1_3.trading_session_update.dissect,
  ["0"] = miax_emeraldoptions_topofmarket_mach_v1_3.server_heartbeat.dissect,
  ["1"] = miax_emeraldoptions_topofmarket_mach_v1_3.client_heartbeat.dissect,
  ["T"] = miax_emeraldoptions_topofmarket_mach_v1_3.test_packet.dissect,
}

miax_emeraldoptions_topofmarket_mach_v1_3.sesm_payload.dissect = function(buffer, offset, packet, parent, sesm_packet_type)
  local dissect = miax_emeraldoptions_topofmarket_mach_v1_3.sesm_payload.dispatch[sesm_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sesm Packet Header
miax_emeraldoptions_topofmarket_mach_v1_3.sesm_packet_header = {}

-- Size: Sesm Packet Header
miax_emeraldoptions_topofmarket_mach_v1_3.sesm_packet_header.size =
  miax_emeraldoptions_topofmarket_mach_v1_3.sesm_packet_length.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.sesm_packet_type.size

-- Display: Sesm Packet Header
miax_emeraldoptions_topofmarket_mach_v1_3.sesm_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sesm Packet Header
miax_emeraldoptions_topofmarket_mach_v1_3.sesm_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sesm Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, sesm_packet_length = miax_emeraldoptions_topofmarket_mach_v1_3.sesm_packet_length.dissect(buffer, index, packet, parent)

  -- Sesm Packet Type: 1 Byte Ascii String Enum with 12 values
  index, sesm_packet_type = miax_emeraldoptions_topofmarket_mach_v1_3.sesm_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sesm Packet Header
miax_emeraldoptions_topofmarket_mach_v1_3.sesm_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.sesm_packet_header, buffer(offset, 0))
    local index = miax_emeraldoptions_topofmarket_mach_v1_3.sesm_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.sesm_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_emeraldoptions_topofmarket_mach_v1_3.sesm_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Sesm Tcp Packet
miax_emeraldoptions_topofmarket_mach_v1_3.sesm_tcp_packet = {}

-- Display: Sesm Tcp Packet
miax_emeraldoptions_topofmarket_mach_v1_3.sesm_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sesm Tcp Packet
miax_emeraldoptions_topofmarket_mach_v1_3.sesm_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset

  -- Sesm Packet Header: Struct of 2 fields
  index, sesm_packet_header = miax_emeraldoptions_topofmarket_mach_v1_3.sesm_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Type
  local sesm_packet_type = buffer(index - 1, 1):string()

  -- Sesm Payload: Runtime Type with 12 branches
  index = miax_emeraldoptions_topofmarket_mach_v1_3.sesm_payload.dissect(buffer, index, packet, parent, sesm_packet_type)

  return index
end

-- Dissect: Sesm Tcp Packet
miax_emeraldoptions_topofmarket_mach_v1_3.sesm_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset + size_of_sesm_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.sesm_tcp_packet, buffer(offset, 0))
    local current = miax_emeraldoptions_topofmarket_mach_v1_3.sesm_tcp_packet.fields(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
    parent:set_len(size_of_sesm_tcp_packet)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.sesm_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_emeraldoptions_topofmarket_mach_v1_3.sesm_tcp_packet.fields(buffer, offset, packet, parent, size_of_sesm_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Sesm Tcp Packet
local sesm_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < miax_emeraldoptions_topofmarket_mach_v1_3.sesm_packet_header.size then
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
miax_emeraldoptions_topofmarket_mach_v1_3.tcp_packet = {}

-- Verify required size of Tcp packet
miax_emeraldoptions_topofmarket_mach_v1_3.tcp_packet.requiredsize = function(buffer)
  return buffer:len() >= miax_emeraldoptions_topofmarket_mach_v1_3.sesm_packet_header.size
end

-- Dissect Tcp Packet
miax_emeraldoptions_topofmarket_mach_v1_3.tcp_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = miax_emeraldoptions_topofmarket_mach_v1_3.conversation.data(packet)
  if not packet.visited then
    data.seconds.frames[packet.number] = data.seconds.last
  end
  miax_emeraldoptions_topofmarket_mach_v1_3.seconds.current = data.seconds.frames[packet.number]
  miax_emeraldoptions_topofmarket_mach_v1_3.conversation.current = data

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
      index = miax_emeraldoptions_topofmarket_mach_v1_3.sesm_tcp_packet.dissect(frame, index, packet, parent, size_of_sesm_tcp_packet)
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
miax_emeraldoptions_topofmarket_mach_v1_3.end_of_session = {}

-- Display: End Of Session
miax_emeraldoptions_topofmarket_mach_v1_3.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
miax_emeraldoptions_topofmarket_mach_v1_3.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Start Of Session
miax_emeraldoptions_topofmarket_mach_v1_3.start_of_session = {}

-- Display: Start Of Session
miax_emeraldoptions_topofmarket_mach_v1_3.start_of_session.display = function(packet, parent, length)
  return "Start Of Session"
end


-- Dissect: Start Of Session
miax_emeraldoptions_topofmarket_mach_v1_3.start_of_session.dissect = function(buffer, offset, packet, parent)
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.start_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
miax_emeraldoptions_topofmarket_mach_v1_3.heartbeat = {}

-- Display: Heartbeat
miax_emeraldoptions_topofmarket_mach_v1_3.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
miax_emeraldoptions_topofmarket_mach_v1_3.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_emeraldoptions_topofmarket_mach_v1_3.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Payload
miax_emeraldoptions_topofmarket_mach_v1_3.payload = {}

-- Dissect: Payload
miax_emeraldoptions_topofmarket_mach_v1_3.payload.dispatch = {
  [0] = miax_emeraldoptions_topofmarket_mach_v1_3.heartbeat.dissect,
  [1] = miax_emeraldoptions_topofmarket_mach_v1_3.start_of_session.dissect,
  [2] = miax_emeraldoptions_topofmarket_mach_v1_3.end_of_session.dissect,
  [3] = miax_emeraldoptions_topofmarket_mach_v1_3.application_message.dissect,
}

miax_emeraldoptions_topofmarket_mach_v1_3.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  local dissect = miax_emeraldoptions_topofmarket_mach_v1_3.payload.dispatch[packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Mach Packet Header
miax_emeraldoptions_topofmarket_mach_v1_3.mach_packet_header = {}

-- Size: Mach Packet Header
miax_emeraldoptions_topofmarket_mach_v1_3.mach_packet_header.size =
  miax_emeraldoptions_topofmarket_mach_v1_3.sequence_number.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.packet_length.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.packet_type.size + 
  miax_emeraldoptions_topofmarket_mach_v1_3.session_number.size

-- Display: Mach Packet Header
miax_emeraldoptions_topofmarket_mach_v1_3.mach_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mach Packet Header
miax_emeraldoptions_topofmarket_mach_v1_3.mach_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: BinaryU
  index, sequence_number = miax_emeraldoptions_topofmarket_mach_v1_3.sequence_number.dissect(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = miax_emeraldoptions_topofmarket_mach_v1_3.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, packet_type = miax_emeraldoptions_topofmarket_mach_v1_3.packet_type.dissect(buffer, index, packet, parent)

  -- Session Number: 1 Byte Unsigned Fixed Width Integer
  index, session_number = miax_emeraldoptions_topofmarket_mach_v1_3.session_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mach Packet Header
miax_emeraldoptions_topofmarket_mach_v1_3.mach_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.mach_packet_header, buffer(offset, 0))
    local index = miax_emeraldoptions_topofmarket_mach_v1_3.mach_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.mach_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_emeraldoptions_topofmarket_mach_v1_3.mach_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Mach Message
miax_emeraldoptions_topofmarket_mach_v1_3.mach_message = {}

-- Display: Mach Message
miax_emeraldoptions_topofmarket_mach_v1_3.mach_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mach Message
miax_emeraldoptions_topofmarket_mach_v1_3.mach_message.fields = function(buffer, offset, packet, parent, size_of_mach_message)
  local index = offset

  -- Mach Packet Header: Struct of 4 fields
  index, mach_packet_header = miax_emeraldoptions_topofmarket_mach_v1_3.mach_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 2, 1):le_uint()

  -- Payload: Runtime Type with 4 branches
  index = miax_emeraldoptions_topofmarket_mach_v1_3.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Mach Message
miax_emeraldoptions_topofmarket_mach_v1_3.mach_message.dissect = function(buffer, offset, packet, parent, size_of_mach_message)
  local index = offset + size_of_mach_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3.fields.mach_message, buffer(offset, 0))
    local current = miax_emeraldoptions_topofmarket_mach_v1_3.mach_message.fields(buffer, offset, packet, parent, size_of_mach_message)
    parent:set_len(size_of_mach_message)
    local display = miax_emeraldoptions_topofmarket_mach_v1_3.mach_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_emeraldoptions_topofmarket_mach_v1_3.mach_message.fields(buffer, offset, packet, parent, size_of_mach_message)

    return index
  end
end

-- Udp Packet
miax_emeraldoptions_topofmarket_mach_v1_3.udp_packet = {}

-- Verify required size of Udp packet
miax_emeraldoptions_topofmarket_mach_v1_3.udp_packet.requiredsize = function(buffer)
  return buffer:len() >= miax_emeraldoptions_topofmarket_mach_v1_3.mach_packet_header.size
end

-- Dissect Udp Packet
miax_emeraldoptions_topofmarket_mach_v1_3.udp_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = miax_emeraldoptions_topofmarket_mach_v1_3.conversation.data(packet)
  if not packet.visited then
    data.seconds.frames[packet.number] = data.seconds.last
  end
  miax_emeraldoptions_topofmarket_mach_v1_3.seconds.current = data.seconds.frames[packet.number]
  miax_emeraldoptions_topofmarket_mach_v1_3.conversation.current = data

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
    index, mach_message = miax_emeraldoptions_topofmarket_mach_v1_3.mach_message.dissect(buffer, index, packet, parent, packet_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_miax_emeraldoptions_topofmarket_mach_v1_3.init()
  miax_emeraldoptions_topofmarket_mach_v1_3.seconds.current = nil
  miax_emeraldoptions_topofmarket_mach_v1_3.conversation.current = nil
  miax_emeraldoptions_topofmarket_mach_v1_3.conversation.flows = {}
end

-- Dissector for Miax EmeraldOptions TopOfMarket Mach 1.3
function omi_miax_emeraldoptions_topofmarket_mach_v1_3.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_miax_emeraldoptions_topofmarket_mach_v1_3.name

  if packet.port_type == 3 then
    -- Dissect protocol
    local protocol = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3, buffer(), omi_miax_emeraldoptions_topofmarket_mach_v1_3.description, "("..buffer:len().." Bytes)")
    return miax_emeraldoptions_topofmarket_mach_v1_3.udp_packet.dissect(buffer, packet, protocol)
  end

  if packet.port_type == 2 then
    -- Dissect protocol
    local protocol = parent:add(omi_miax_emeraldoptions_topofmarket_mach_v1_3, buffer(), omi_miax_emeraldoptions_topofmarket_mach_v1_3.description, "("..buffer:len().." Bytes)")
    return miax_emeraldoptions_topofmarket_mach_v1_3.tcp_packet.dissect(buffer, packet, protocol)
  end
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Miax EmeraldOptions TopOfMarket Mach 1.3 (Udp)
local function omi_miax_emeraldoptions_topofmarket_mach_v1_3_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_emeraldoptions_topofmarket_mach_v1_3.udp_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_emeraldoptions_topofmarket_mach_v1_3
  omi_miax_emeraldoptions_topofmarket_mach_v1_3.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Miax EmeraldOptions TopOfMarket Mach 1.3 (Tcp)
local function omi_miax_emeraldoptions_topofmarket_mach_v1_3_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_emeraldoptions_topofmarket_mach_v1_3.tcp_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_emeraldoptions_topofmarket_mach_v1_3
  omi_miax_emeraldoptions_topofmarket_mach_v1_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristics for Miax EmeraldOptions TopOfMarket Mach 1.3
omi_miax_emeraldoptions_topofmarket_mach_v1_3:register_heuristic("udp", omi_miax_emeraldoptions_topofmarket_mach_v1_3_udp_heuristic)
omi_miax_emeraldoptions_topofmarket_mach_v1_3:register_heuristic("tcp", omi_miax_emeraldoptions_topofmarket_mach_v1_3_tcp_heuristic)

-- Register Miax EmeraldOptions TopOfMarket Mach 1.3 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_miax_emeraldoptions_topofmarket_mach_v1_3)

-- Register Miax EmeraldOptions TopOfMarket Mach 1.3 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_miax_emeraldoptions_topofmarket_mach_v1_3)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Miami International Holdings
--   Version: 1.3
--   Date: Monday, April 24, 2023
--   Specification: Top Of Market Feed ToM v1.3.pdf
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
