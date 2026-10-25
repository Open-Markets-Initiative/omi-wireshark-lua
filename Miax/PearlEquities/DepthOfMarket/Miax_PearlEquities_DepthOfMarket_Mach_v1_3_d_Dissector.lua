-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax PearlEquities DepthOfMarket Mach 1.3.d Protocol
local omi_miax_pearlequities_depthofmarket_mach_v1_3_d = Proto("Omi.Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d", "Miax PearlEquities DepthOfMarket Mach 1.3.d")

-- Protocol table
local miax_pearlequities_depthofmarket_mach_v1_3_d = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax PearlEquities DepthOfMarket Mach 1.3.d Fields
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.application_message = ProtoField.new("Application Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.applicationmessage", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.application_protocol = ProtoField.new("Application Protocol", "miax.pearlequities.depthofmarket.mach.v1.3.d.applicationprotocol", ftypes.STRING, nil, nil, nil, "Miax Application Protocol")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.attributable_id = ProtoField.new("Attributable Id", "miax.pearlequities.depthofmarket.mach.v1.3.d.attributableid", ftypes.STRING, nil, nil, nil, "MPID of the firm if attributed; \"RTAL\" if attributed as such; space-filled if no attribution specified.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.closing_time = ProtoField.new("Closing Time", "miax.pearlequities.depthofmarket.mach.v1.3.d.closingtime", ftypes.STRING, nil, nil, nil, "Expressed in HH:MM:SS format. Eg: 20:00:00.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.computer_id = ProtoField.new("Computer Id", "miax.pearlequities.depthofmarket.mach.v1.3.d.computerid", ftypes.STRING, nil, nil, nil, "issued by MIAX Futures Exchange during initial setup")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.correction_number = ProtoField.new("Correction Number", "miax.pearlequities.depthofmarket.mach.v1.3.d.correctionnumber", ftypes.UINT8, nil, nil, nil, "Trade correction number. Set to zero for new trades. Increments by 1 for each subsequent correction.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.do_m_version = ProtoField.new("Do M Version", "miax.pearlequities.depthofmarket.mach.v1.3.d.domversion", ftypes.STRING, nil, nil, nil, "Eg: DoM1.0.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.end_sequence_number = ProtoField.new("End Sequence Number", "miax.pearlequities.depthofmarket.mach.v1.3.d.endsequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the last packet to be retransmitted")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.esesm_packet_length = ProtoField.new("Esesm Packet Length", "miax.pearlequities.depthofmarket.mach.v1.3.d.esesmpacketlength", ftypes.UINT16, nil, nil, nil, "The length of rest of the packet")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.esesm_packet_type = ProtoField.new("Esesm Packet Type", "miax.pearlequities.depthofmarket.mach.v1.3.d.esesmpackettype", ftypes.STRING, nil, nil, nil, "ESesM protocol packet type")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.esesm_version = ProtoField.new("Esesm Version", "miax.pearlequities.depthofmarket.mach.v1.3.d.esesmversion", ftypes.STRING, nil, nil, nil, "Protocol version")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.goodbye_packet = ProtoField.new("Goodbye Packet", "miax.pearlequities.depthofmarket.mach.v1.3.d.goodbyepacket", ftypes.STRING, nil, nil, nil, "The server may send a GoodBye packet to inform the client a reason for termination of the connection just before it terminates the connection")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.highest_sequence_number = ProtoField.new("Highest Sequence Number", "miax.pearlequities.depthofmarket.mach.v1.3.d.highestsequencenumber", ftypes.UINT64, nil, nil, nil, "the highest sequence number that the server currently has for the client")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.login_request = ProtoField.new("Login Request", "miax.pearlequities.depthofmarket.mach.v1.3.d.loginrequest", ftypes.STRING, nil, nil, nil, "The SesM client must send a Login request packet immediately upon establishing a new TCP/IP socket connection to the server")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.login_response = ProtoField.new("Login Response", "miax.pearlequities.depthofmarket.mach.v1.3.d.loginresponse", ftypes.STRING, nil, nil, nil, "The SesM server sends a Login response packet in response a Login request packet from the client")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.login_status = ProtoField.new("Login Status", "miax.pearlequities.depthofmarket.mach.v1.3.d.loginstatus", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.logout_reason = ProtoField.new("Logout Reason", "miax.pearlequities.depthofmarket.mach.v1.3.d.logoutreason", ftypes.STRING, nil, nil, nil, "Logout Request Reason")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.logout_request = ProtoField.new("Logout Request", "miax.pearlequities.depthofmarket.mach.v1.3.d.logoutrequest", ftypes.STRING, nil, nil, nil, "The client may send a Logout request packet to request the connection be terminated")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.logout_text = ProtoField.new("Logout Text", "miax.pearlequities.depthofmarket.mach.v1.3.d.logouttext", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.lot_size = ProtoField.new("Lot Size", "miax.pearlequities.depthofmarket.mach.v1.3.d.lotsize", ftypes.UINT16, nil, nil, nil, "Round Lot size in shares.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.mach_packet_length = ProtoField.new("Mach Packet Length", "miax.pearlequities.depthofmarket.mach.v1.3.d.machpacketlength", ftypes.UINT16, nil, nil, nil, "Length of the packet")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.mach_packet_type = ProtoField.new("Mach Packet Type", "miax.pearlequities.depthofmarket.mach.v1.3.d.machpackettype", ftypes.UINT8)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.market_state = ProtoField.new("Market State", "miax.pearlequities.depthofmarket.mach.v1.3.d.marketstate", ftypes.UINT8, nil, nil, nil, "Current market state.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.matching_engine_id = ProtoField.new("Matching Engine Id", "miax.pearlequities.depthofmarket.mach.v1.3.d.matchingengineid", ftypes.UINT8, nil, nil, nil, "Matching Engine that originated the packet")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.message_type = ProtoField.new("Message Type", "miax.pearlequities.depthofmarket.mach.v1.3.d.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying this message type")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.modify_order_flags = ProtoField.new("Modify Order Flags", "miax.pearlequities.depthofmarket.mach.v1.3.d.modifyorderflags", ftypes.STRING, nil, nil, nil, "Modify Order flags. Bit 0 indicates Order Position; bits 1-7 are undefined.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.nanoseconds = ProtoField.new("Nanoseconds", "miax.pearlequities.depthofmarket.mach.v1.3.d.nanoseconds", ftypes.UINT32, nil, nil, nil, "Nanosecond part of Matching Engine time.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.number_of_matching_engines = ProtoField.new("Number Of Matching Engines", "miax.pearlequities.depthofmarket.mach.v1.3.d.numberofmatchingengines", ftypes.UINT8, nil, nil, nil, "Count of all Matching Engines for the exchange")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.opening_time = ProtoField.new("Opening Time", "miax.pearlequities.depthofmarket.mach.v1.3.d.openingtime", ftypes.STRING, nil, nil, nil, "Expressed in HH:MM:SS format. Eg: 04:00:00.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.order_execution_flags = ProtoField.new("Order Execution Flags", "miax.pearlequities.depthofmarket.mach.v1.3.d.orderexecutionflags", ftypes.STRING, nil, nil, nil, "Order Execution flags. Bit 0 indicates SIP reportability; bit 1 indicates Traded Against Retail; bits 2-7 are reserved.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.order_id = ProtoField.new("Order Id", "miax.pearlequities.depthofmarket.mach.v1.3.d.orderid", ftypes.UINT64, nil, nil, nil, "Matching engine assigned Order ID.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.order_position = ProtoField.new("Order Position", "miax.pearlequities.depthofmarket.mach.v1.3.d.orderposition", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01, "0 - Order kept its position in the book; 1 - Order lost its position in the book.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.order_side = ProtoField.new("Order Side", "miax.pearlequities.depthofmarket.mach.v1.3.d.orderside", ftypes.STRING, nil, nil, nil, "Side of order. B - Buy, S - Sell.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.price = ProtoField.new("Price", "miax.pearlequities.depthofmarket.mach.v1.3.d.price", ftypes.DOUBLE, nil, nil, nil, "Displayed price.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.primary_market_code = ProtoField.new("Primary Market Code", "miax.pearlequities.depthofmarket.mach.v1.3.d.primarymarketcode", ftypes.STRING, nil, nil, nil, "Primary listing exchange code for the security.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.refresh_message_type = ProtoField.new("Refresh Message Type", "miax.pearlequities.depthofmarket.mach.v1.3.d.refreshmessagetype", ftypes.STRING, nil, nil, nil, "Identifies the data set the firm is requesting a refresh of.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "miax.pearlequities.depthofmarket.mach.v1.3.d.requestedsequencenumber", ftypes.UINT64, nil, nil, nil, "Specifies client requested sequence number")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.requested_trading_session_id = ProtoField.new("Requested Trading Session Id", "miax.pearlequities.depthofmarket.mach.v1.3.d.requestedtradingsessionid", ftypes.UINT8, nil, nil, nil, "Specifies the session the client would like to log into, or zero to log into the currently active session")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.reserved_1 = ProtoField.new("Reserved 1", "miax.pearlequities.depthofmarket.mach.v1.3.d.reserved1", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.reserved_6 = ProtoField.new("Reserved 6", "miax.pearlequities.depthofmarket.mach.v1.3.d.reserved6", ftypes.UINT8, nil, base.DEC, 0xFC, "Reserved for future use.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.reserved_7 = ProtoField.new("Reserved 7", "miax.pearlequities.depthofmarket.mach.v1.3.d.reserved7", ftypes.UINT8, nil, base.DEC, 0xFE, "Undefined.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.retail_trade_indicator = ProtoField.new("Retail Trade Indicator", "miax.pearlequities.depthofmarket.mach.v1.3.d.retailtradeindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02, "0 - Neither side is Retail; 1 - At least one side is Retail.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.retransmission_request = ProtoField.new("Retransmission Request", "miax.pearlequities.depthofmarket.mach.v1.3.d.retransmissionrequest", ftypes.STRING, nil, nil, nil, "The ESesM client uses this packet to request a retransmission server to retransmit a range of packets")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.second_reserved_1 = ProtoField.new("Second Reserved 1", "miax.pearlequities.depthofmarket.mach.v1.3.d.secondreserved1", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.seconds = ProtoField.new("Seconds", "miax.pearlequities.depthofmarket.mach.v1.3.d.seconds", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Seconds part of the time that applies to all messages that gets disseminated until this message gets sent again.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.seconds_utc = ProtoField.new("Seconds", "miax.pearlequities.depthofmarket.mach.v1.3.d.seconds.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Seconds part of the time that applies to all messages that gets disseminated until this message gets sent again.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.sequence_number = ProtoField.new("Sequence Number", "miax.pearlequities.depthofmarket.mach.v1.3.d.sequencenumber", ftypes.UINT64, nil, nil, nil, "For Symbol Update/Trading Status/System State refreshes this is the original sequence number from the live feed; for Order Book refresh this is the last sequence number on the live feed at the time of the refresh request.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "miax.pearlequities.depthofmarket.mach.v1.3.d.sequenceddatapacket", ftypes.STRING, nil, nil, nil, "The ESesM server uses Sequenced data packets to send all messages that must be recoverable by the client in case of a connection loss")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "miax.pearlequities.depthofmarket.mach.v1.3.d.sequencedmessagetype", ftypes.UINT8, nil, nil, nil, "Market-data application message type carried over the ESesM sequenced channel (matches the MACH UDP Message Type byte)")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.session_id = ProtoField.new("Session Id", "miax.pearlequities.depthofmarket.mach.v1.3.d.sessionid", ftypes.UINT8, nil, nil, nil, "Current trading session identifier.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.session_number = ProtoField.new("Session Number", "miax.pearlequities.depthofmarket.mach.v1.3.d.sessionnumber", ftypes.UINT8, nil, nil, nil, "protocol packet type")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.short_sale_restriction = ProtoField.new("Short Sale Restriction", "miax.pearlequities.depthofmarket.mach.v1.3.d.shortsalerestriction", ftypes.STRING, nil, nil, nil, "Current state of short sale restriction.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.sip_reporting = ProtoField.new("Sip Reporting", "miax.pearlequities.depthofmarket.mach.v1.3.d.sipreporting", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01, "0 - Not reportable to the SIP; 1 - Reportable to the SIP.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.size = ProtoField.new("Size", "miax.pearlequities.depthofmarket.mach.v1.3.d.size", ftypes.UINT32, nil, nil, nil, "Number of displayed shares of the order.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.start_sequence_number = ProtoField.new("Start Sequence Number", "miax.pearlequities.depthofmarket.mach.v1.3.d.startsequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the first packet to be retransmitted")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.symbol_id = ProtoField.new("Symbol Id", "miax.pearlequities.depthofmarket.mach.v1.3.d.symbolid", ftypes.UINT32, nil, nil, nil, "Symbol ID mapped to a given symbol. It is assigned per trading session and is valid for that session.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.synchronization_complete = ProtoField.new("Synchronization Complete", "miax.pearlequities.depthofmarket.mach.v1.3.d.synchronizationcomplete", ftypes.STRING, nil, nil, nil, "The ESesM server sends a Login response packet in response a Login request packet from the client")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.system_status = ProtoField.new("System Status", "miax.pearlequities.depthofmarket.mach.v1.3.d.systemstatus", ftypes.STRING, nil, nil, nil, "Current state of the system.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.test_packet = ProtoField.new("Test Packet", "miax.pearlequities.depthofmarket.mach.v1.3.d.testpacket", ftypes.STRING, nil, nil, nil, "Test packets are intended to provide human readable text that may aid in debugging problems")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.test_security_indicator = ProtoField.new("Test Security Indicator", "miax.pearlequities.depthofmarket.mach.v1.3.d.testsecurityindicator", ftypes.STRING, nil, nil, nil, "Y - Yes, N - No.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.test_text = ProtoField.new("Test Text", "miax.pearlequities.depthofmarket.mach.v1.3.d.testtext", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.ticker_symbol = ProtoField.new("Ticker Symbol", "miax.pearlequities.depthofmarket.mach.v1.3.d.tickersymbol", ftypes.STRING, nil, nil, nil, "Ticker symbol for the security in NASDAQ Integrated Platform format.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.trade_flags = ProtoField.new("Trade Flags", "miax.pearlequities.depthofmarket.mach.v1.3.d.tradeflags", ftypes.STRING, nil, nil, nil, "Trade flags. Bit 0 indicates SIP reportability; bit 1 indicates Retail Trade participation; bits 2-7 are reserved.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.trade_id = ProtoField.new("Trade Id", "miax.pearlequities.depthofmarket.mach.v1.3.d.tradeid", ftypes.UINT64, nil, nil, nil, "Unique ID assigned by the Matching Engine.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.traded_against_retail = ProtoField.new("Traded Against Retail", "miax.pearlequities.depthofmarket.mach.v1.3.d.tradedagainstretail", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02, "0 - Did not trade against Retail; 1 - Traded against Retail.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.trading_session_id = ProtoField.new("Trading Session Id", "miax.pearlequities.depthofmarket.mach.v1.3.d.tradingsessionid", ftypes.UINT8, nil, nil, nil, "The current trading session ID of the corresponding Matching Engine")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.trading_status = ProtoField.new("Trading Status", "miax.pearlequities.depthofmarket.mach.v1.3.d.tradingstatus", ftypes.UINT8, nil, nil, nil, "Current trading status of the security.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "miax.pearlequities.depthofmarket.mach.v1.3.d.unsequenceddatapacket", ftypes.STRING, nil, nil, nil, "Each unsequenced data packet carries one unsequenced message from the higher-lever protocol")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "miax.pearlequities.depthofmarket.mach.v1.3.d.unsequencedmessagetype", ftypes.STRING, nil, nil, nil, "Market-data Refresh request/response discriminator carried over the ESesM unsequenced channel (Request Type R, Response Type r, End of Refresh E)")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.username = ProtoField.new("Username", "miax.pearlequities.depthofmarket.mach.v1.3.d.username", ftypes.STRING, nil, nil, nil, "issued by MIAX during initial setup")

-- Miax PearlEquities DepthOfMarket Mach 1.3.d Framing
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.esesm_packet_header = ProtoField.new("Esesm Packet Header", "miax.pearlequities.depthofmarket.mach.v1.3.d.esesmpacketheader", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.esesm_tcp_packet = ProtoField.new("Esesm Tcp Packet", "miax.pearlequities.depthofmarket.mach.v1.3.d.esesmtcppacket", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.mach_message = ProtoField.new("Mach Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.machmessage", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.mach_packet_header = ProtoField.new("Mach Packet Header", "miax.pearlequities.depthofmarket.mach.v1.3.d.machpacketheader", ftypes.STRING, nil, nil, nil, "Mach packet header (12 bytes)")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.tcp_packet = ProtoField.new("Tcp Packet", "miax.pearlequities.depthofmarket.mach.v1.3.d.tcppacket", ftypes.STRING, nil, nil, nil, "ESesM Packet")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.udp_packet = ProtoField.new("Udp Packet", "miax.pearlequities.depthofmarket.mach.v1.3.d.udppacket", ftypes.STRING)

-- Miax PearlEquities DepthOfMarket 1.3.d Application Messages
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.add_order_message = ProtoField.new("Add Order Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.addordermessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used when a displayed order is received and added to MIAX Pearl Equities book. It includes an Order ID that is unique to the order across the exchange and across trading days.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.delete_order_message = ProtoField.new("Delete Order Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.deleteordermessage", ftypes.STRING, nil, nil, nil, "This message format is used to indicate that a displayed order has been removed from the MIAX Pearl Equities book.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.end_of_refresh_notification_message = ProtoField.new("End Of Refresh Notification Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.endofrefreshnotificationmessage", ftypes.STRING, nil, nil, nil, "Sent by MIAX Pearl Equities over the DoM Retransmission Interface (ESeSM Unsequenced Data Packet) when the refresh response is complete.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.modify_order_message = ProtoField.new("Modify Order Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.modifyordermessage", ftypes.STRING, nil, nil, nil, "This message format is used to publish price/size changes for an existing displayed order on MIAX Pearl Equities book.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.order_execution_message = ProtoField.new("Order Execution Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.orderexecutionmessage", ftypes.STRING, nil, nil, nil, "This message format is used when a displayed order on the book executes in whole or in part. The execution is identified by a unique Trade ID that is unique across the exchange for the trading day. Subsequent partial executions of the order would be published with the same Order ID but different Trade ID.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.refreshrequestmessage", ftypes.STRING, nil, nil, nil, "Sent by the firm over the DoM Retransmission Interface (ESeSM Unsequenced Data Packet) to request a Last Value Refresh of a particular data set identified by Refresh Message Type.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.refresh_response_message = ProtoField.new("Refresh Response Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.refreshresponsemessage", ftypes.STRING, nil, nil, nil, "Sent by MIAX Pearl Equities over the DoM Retransmission Interface (ESeSM Unsequenced Data Packet) carrying one Application Message that satisfies a previous Refresh Request.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.security_trading_status_notification_message = ProtoField.new("Security Trading Status Notification Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.securitytradingstatusnotificationmessage", ftypes.STRING, nil, nil, nil, "This message is used to notify firms of changes to the trading status of a particular security.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.symbolclearmessage", ftypes.STRING, nil, nil, nil, "This message format is used to indicate that the MIAX Pearl Equities book for a symbol has been cleared of all orders.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.symbol_update_message = ProtoField.new("Symbol Update Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.symbolupdatemessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate all security symbols traded on MIAX Pearl Equities for the current trading session. The Symbol ID sent in this message will be disseminated in Depth of Market messages.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.system_state_message = ProtoField.new("System State Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.systemstatemessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to notify firms of the state changes of the system. This is a notification that applies to all symbols on the feed.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.system_time_message = ProtoField.new("System Time Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.systemtimemessage", ftypes.STRING, nil, nil, nil, "This message is used to disseminate the \"seconds\" part of the timestamp that is applicable to all messages that are sent in the current second.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.tradecancelmessage", ftypes.STRING, nil, nil, nil, "This message format is used to publish cancellation of a trade which was previously published via an Order Execution Message or a Trade Message.")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.trade_message = ProtoField.new("Trade Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.trademessage", ftypes.STRING, nil, nil, nil, "This message format is used to publish trade executions for orders not displayed on the book. Executions for orders routed and executed in another trading center and trade corrections are also published using this message.")

-- Miax PearlEquities DepthOfMarket Mach 1.3.d Generated Fields
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.timestamp = ProtoField.new("Timestamp", "miax.pearlequities.depthofmarket.mach.v1.3.d.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Miax PearlEquities DepthOfMarket Mach 1.3.d Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
miax_pearlequities_depthofmarket_mach_v1_3_d.absolute_time_base = 0

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
miax_pearlequities_depthofmarket_mach_v1_3_d.format_timestamp = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Miax PearlEquities DepthOfMarket Mach 1.3.d Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true

-- Register Miax PearlEquities DepthOfMarket Mach 1.3.d Show Options
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_application_messages then
    show.application_messages = omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_application_messages
  end
  if show.headers ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_headers then
    show.headers = omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_headers
  end
  if show.structs ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_structs then
    show.structs = omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_structs
  end
  if miax_pearlequities_depthofmarket_mach_v1_3_d.format_timestamp ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.format_timestamp then
    miax_pearlequities_depthofmarket_mach_v1_3_d.format_timestamp = omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.format_timestamp
  end
  if miax_pearlequities_depthofmarket_mach_v1_3_d.absolute_time_base ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.absolute_time_base then
    miax_pearlequities_depthofmarket_mach_v1_3_d.absolute_time_base = omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
miax_pearlequities_depthofmarket_mach_v1_3_d.conversation = {}
miax_pearlequities_depthofmarket_mach_v1_3_d.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
miax_pearlequities_depthofmarket_mach_v1_3_d.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
miax_pearlequities_depthofmarket_mach_v1_3_d.conversation.data = function(packet)
  local key = miax_pearlequities_depthofmarket_mach_v1_3_d.conversation.key(packet)
  local data = miax_pearlequities_depthofmarket_mach_v1_3_d.conversation.flows[key]
  if data == nil then
    data = { seconds = { last = nil, frames = {} } }
    miax_pearlequities_depthofmarket_mach_v1_3_d.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
miax_pearlequities_depthofmarket_mach_v1_3_d.conversation.current = nil


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
-- Miax PearlEquities DepthOfMarket Mach 1.3.d Fields
-----------------------------------------------------------------------

-- Application Protocol
miax_pearlequities_depthofmarket_mach_v1_3_d.application_protocol = {}

-- Size: Application Protocol
miax_pearlequities_depthofmarket_mach_v1_3_d.application_protocol.size = 8

-- Display: Application Protocol
miax_pearlequities_depthofmarket_mach_v1_3_d.application_protocol.display = function(value)
  return "Application Protocol: "..value
end

-- Dissect: Application Protocol
miax_pearlequities_depthofmarket_mach_v1_3_d.application_protocol.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.application_protocol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.application_protocol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.application_protocol, range, value, display)

  return offset + length, value
end

-- Attributable Id
miax_pearlequities_depthofmarket_mach_v1_3_d.attributable_id = {}

-- Size: Attributable Id
miax_pearlequities_depthofmarket_mach_v1_3_d.attributable_id.size = 4

-- Display: Attributable Id
miax_pearlequities_depthofmarket_mach_v1_3_d.attributable_id.display = function(value)
  return "Attributable Id: "..value
end

-- Dissect: Attributable Id
miax_pearlequities_depthofmarket_mach_v1_3_d.attributable_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.attributable_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.attributable_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.attributable_id, range, value, display)

  return offset + length, value
end

-- Closing Time
miax_pearlequities_depthofmarket_mach_v1_3_d.closing_time = {}

-- Size: Closing Time
miax_pearlequities_depthofmarket_mach_v1_3_d.closing_time.size = 8

-- Display: Closing Time
miax_pearlequities_depthofmarket_mach_v1_3_d.closing_time.display = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
miax_pearlequities_depthofmarket_mach_v1_3_d.closing_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.closing_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.closing_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.closing_time, range, value, display)

  return offset + length, value
end

-- Computer Id
miax_pearlequities_depthofmarket_mach_v1_3_d.computer_id = {}

-- Size: Computer Id
miax_pearlequities_depthofmarket_mach_v1_3_d.computer_id.size = 8

-- Display: Computer Id
miax_pearlequities_depthofmarket_mach_v1_3_d.computer_id.display = function(value)
  return "Computer Id: "..value
end

-- Dissect: Computer Id
miax_pearlequities_depthofmarket_mach_v1_3_d.computer_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.computer_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.computer_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.computer_id, range, value, display)

  return offset + length, value
end

-- Correction Number
miax_pearlequities_depthofmarket_mach_v1_3_d.correction_number = {}

-- Size: Correction Number
miax_pearlequities_depthofmarket_mach_v1_3_d.correction_number.size = 1

-- Display: Correction Number
miax_pearlequities_depthofmarket_mach_v1_3_d.correction_number.display = function(value)
  return "Correction Number: "..value
end

-- Dissect: Correction Number
miax_pearlequities_depthofmarket_mach_v1_3_d.correction_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.correction_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.correction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.correction_number, range, value, display)

  return offset + length, value
end

-- Do M Version
miax_pearlequities_depthofmarket_mach_v1_3_d.do_m_version = {}

-- Size: Do M Version
miax_pearlequities_depthofmarket_mach_v1_3_d.do_m_version.size = 8

-- Display: Do M Version
miax_pearlequities_depthofmarket_mach_v1_3_d.do_m_version.display = function(value)
  return "Do M Version: "..value
end

-- Dissect: Do M Version
miax_pearlequities_depthofmarket_mach_v1_3_d.do_m_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.do_m_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.do_m_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.do_m_version, range, value, display)

  return offset + length, value
end

-- End Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.end_sequence_number = {}

-- Size: End Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.end_sequence_number.size = 8

-- Display: End Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.end_sequence_number.display = function(value)
  return "End Sequence Number: "..value
end

-- Dissect: End Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.end_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.end_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.end_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.end_sequence_number, range, value, display)

  return offset + length, value
end

-- Esesm Packet Length
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_length = {}

-- Size: Esesm Packet Length
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_length.size = 2

-- Display: Esesm Packet Length
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_length.display = function(value)
  return "Esesm Packet Length: "..value
end

-- Dissect: Esesm Packet Length
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.esesm_packet_length, range, value, display)

  return offset + length, value
end

-- Esesm Packet Type
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_type = {}

-- Size: Esesm Packet Type
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_type.size = 1

-- Display: Esesm Packet Type
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_type.labels = {
  ["s"] = "Esesm Packet Type: Sequenced Data Packet (s)",
  ["U"] = "Esesm Packet Type: Unsequenced Data Packet (U)",
  ["l"] = "Esesm Packet Type: Login Request (l)",
  ["r"] = "Esesm Packet Type: Login Response (r)",
  ["c"] = "Esesm Packet Type: Synchronization Complete (c)",
  ["a"] = "Esesm Packet Type: Retransmission Request (a)",
  ["X"] = "Esesm Packet Type: Logout Request (X)",
  ["G"] = "Esesm Packet Type: Goodbye Packet (G)",
  ["u"] = "Esesm Packet Type: Trading Session Update (u)",
  ["0"] = "Esesm Packet Type: Server Heartbeat (0)",
  ["1"] = "Esesm Packet Type: Client Heartbeat (1)",
  ["T"] = "Esesm Packet Type: Test Packet (T)",
}

miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_type.display = function(value)
  return miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_type.labels[value] or "Esesm Packet Type: Unknown("..value..")"
end

-- Dissect: Esesm Packet Type
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.esesm_packet_type, range, value, display)

  return offset + length, value
end

-- Esesm Version
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_version = {}

-- Size: Esesm Version
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_version.size = 5

-- Display: Esesm Version
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_version.display = function(value)
  return "Esesm Version: "..value
end

-- Dissect: Esesm Version
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.esesm_version, range, value, display)

  return offset + length, value
end

-- Highest Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.highest_sequence_number = {}

-- Size: Highest Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.highest_sequence_number.size = 8

-- Display: Highest Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.highest_sequence_number.display = function(value)
  return "Highest Sequence Number: "..value
end

-- Dissect: Highest Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.highest_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.highest_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.highest_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.highest_sequence_number, range, value, display)

  return offset + length, value
end

-- Login Status
miax_pearlequities_depthofmarket_mach_v1_3_d.login_status = {}

-- Size: Login Status
miax_pearlequities_depthofmarket_mach_v1_3_d.login_status.size = 1

-- Display: Login Status
miax_pearlequities_depthofmarket_mach_v1_3_d.login_status.display = function(value)
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
miax_pearlequities_depthofmarket_mach_v1_3_d.login_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.login_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.login_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.login_status, range, value, display)

  return offset + length, value
end

-- Logout Reason
miax_pearlequities_depthofmarket_mach_v1_3_d.logout_reason = {}

-- Size: Logout Reason
miax_pearlequities_depthofmarket_mach_v1_3_d.logout_reason.size = 1

-- Display: Logout Reason
miax_pearlequities_depthofmarket_mach_v1_3_d.logout_reason.display = function(value)
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
miax_pearlequities_depthofmarket_mach_v1_3_d.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Logout Text
miax_pearlequities_depthofmarket_mach_v1_3_d.logout_text = {}

-- Display: Logout Text
miax_pearlequities_depthofmarket_mach_v1_3_d.logout_text.display = function(value)
  return "Logout Text: "..value
end

-- Dissect runtime sized field: Logout Text
miax_pearlequities_depthofmarket_mach_v1_3_d.logout_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.logout_text.display(value, packet, parent, size)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.logout_text, range, value, display)

  return offset + size, value
end

-- Lot Size
miax_pearlequities_depthofmarket_mach_v1_3_d.lot_size = {}

-- Size: Lot Size
miax_pearlequities_depthofmarket_mach_v1_3_d.lot_size.size = 2

-- Display: Lot Size
miax_pearlequities_depthofmarket_mach_v1_3_d.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
miax_pearlequities_depthofmarket_mach_v1_3_d.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Mach Packet Length
miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_length = {}

-- Size: Mach Packet Length
miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_length.size = 2

-- Display: Mach Packet Length
miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_length.display = function(value)
  return "Mach Packet Length: "..value
end

-- Dissect: Mach Packet Length
miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.mach_packet_length, range, value, display)

  return offset + length, value
end

-- Mach Packet Type
miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_type = {}

-- Size: Mach Packet Type
miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_type.size = 1

-- Display: Mach Packet Type
miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_type.labels = {
  [0] = "Mach Packet Type: Heartbeat (0)",
  [1] = "Mach Packet Type: Start Of Session (1)",
  [2] = "Mach Packet Type: End Of Session (2)",
  [3] = "Mach Packet Type: Application Message (3)",
}

miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_type.display = function(value)
  return miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_type.labels[value] or "Mach Packet Type: Unknown("..value..")"
end

-- Dissect: Mach Packet Type
miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.mach_packet_type, range, value, display)

  return offset + length, value
end

-- Market State
miax_pearlequities_depthofmarket_mach_v1_3_d.market_state = {}

-- Size: Market State
miax_pearlequities_depthofmarket_mach_v1_3_d.market_state.size = 1

-- Display: Market State
miax_pearlequities_depthofmarket_mach_v1_3_d.market_state.labels = {
  [1] = "Market State: Pre Opening (1)",
  [2] = "Market State: Early Trading Session (2)",
  [3] = "Market State: Regular Trading Session (3)",
  [4] = "Market State: Late Trading Session (4)",
}

miax_pearlequities_depthofmarket_mach_v1_3_d.market_state.display = function(value)
  return miax_pearlequities_depthofmarket_mach_v1_3_d.market_state.labels[value] or "Market State: Unknown("..value..")"
end

-- Dissect: Market State
miax_pearlequities_depthofmarket_mach_v1_3_d.market_state.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.market_state.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.market_state, range, value, display)

  return offset + length, value
end

-- Matching Engine Id
miax_pearlequities_depthofmarket_mach_v1_3_d.matching_engine_id = {}

-- Size: Matching Engine Id
miax_pearlequities_depthofmarket_mach_v1_3_d.matching_engine_id.size = 1

-- Display: Matching Engine Id
miax_pearlequities_depthofmarket_mach_v1_3_d.matching_engine_id.display = function(value)
  return "Matching Engine Id: "..value
end

-- Dissect: Matching Engine Id
miax_pearlequities_depthofmarket_mach_v1_3_d.matching_engine_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.matching_engine_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.matching_engine_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.matching_engine_id, range, value, display)

  return offset + length, value
end

-- Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.message_type = {}

-- Size: Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.message_type.size = 1

-- Display: Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.message_type.labels = {
  [49] = "Message Type: System Time Message (49)",
  [1] = "Message Type: Symbol Update Message (1)",
  [83] = "Message Type: System State Message (83)",
  [4] = "Message Type: Security Trading Status Notification Message (4)",
  [5] = "Message Type: Symbol Clear Message (5)",
  [20] = "Message Type: Add Order Message (20)",
  [21] = "Message Type: Modify Order Message (21)",
  [23] = "Message Type: Delete Order Message (23)",
  [24] = "Message Type: Order Execution Message (24)",
  [10] = "Message Type: Trade Message (10)",
  [11] = "Message Type: Trade Cancel Message (11)",
}

miax_pearlequities_depthofmarket_mach_v1_3_d.message_type.display = function(value)
  return miax_pearlequities_depthofmarket_mach_v1_3_d.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nanoseconds
miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds = {}

-- Size: Nanoseconds
miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.size = 4

-- Display: Nanoseconds
miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Number Of Matching Engines
miax_pearlequities_depthofmarket_mach_v1_3_d.number_of_matching_engines = {}

-- Size: Number Of Matching Engines
miax_pearlequities_depthofmarket_mach_v1_3_d.number_of_matching_engines.size = 1

-- Display: Number Of Matching Engines
miax_pearlequities_depthofmarket_mach_v1_3_d.number_of_matching_engines.display = function(value)
  return "Number Of Matching Engines: "..value
end

-- Dissect: Number Of Matching Engines
miax_pearlequities_depthofmarket_mach_v1_3_d.number_of_matching_engines.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.number_of_matching_engines.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.number_of_matching_engines.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.number_of_matching_engines, range, value, display)

  return offset + length, value
end

-- Opening Time
miax_pearlequities_depthofmarket_mach_v1_3_d.opening_time = {}

-- Size: Opening Time
miax_pearlequities_depthofmarket_mach_v1_3_d.opening_time.size = 8

-- Display: Opening Time
miax_pearlequities_depthofmarket_mach_v1_3_d.opening_time.display = function(value)
  return "Opening Time: "..value
end

-- Dissect: Opening Time
miax_pearlequities_depthofmarket_mach_v1_3_d.opening_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.opening_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.opening_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.opening_time, range, value, display)

  return offset + length, value
end

-- Order Id
miax_pearlequities_depthofmarket_mach_v1_3_d.order_id = {}

-- Size: Order Id
miax_pearlequities_depthofmarket_mach_v1_3_d.order_id.size = 8

-- Display: Order Id
miax_pearlequities_depthofmarket_mach_v1_3_d.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
miax_pearlequities_depthofmarket_mach_v1_3_d.order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Side
miax_pearlequities_depthofmarket_mach_v1_3_d.order_side = {}

-- Size: Order Side
miax_pearlequities_depthofmarket_mach_v1_3_d.order_side.size = 1

-- Display: Order Side
miax_pearlequities_depthofmarket_mach_v1_3_d.order_side.labels = {
  ["B"] = "Order Side: Buy (B)",
  ["S"] = "Order Side: Sell (S)",
}

miax_pearlequities_depthofmarket_mach_v1_3_d.order_side.display = function(value)
  return miax_pearlequities_depthofmarket_mach_v1_3_d.order_side.labels[value] or "Order Side: Unknown("..value..")"
end

-- Dissect: Order Side
miax_pearlequities_depthofmarket_mach_v1_3_d.order_side.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.order_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.order_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.order_side, range, value, display)

  return offset + length, value
end

-- Price
miax_pearlequities_depthofmarket_mach_v1_3_d.price = {}

-- Size: Price
miax_pearlequities_depthofmarket_mach_v1_3_d.price.size = 8

-- Display: Price
miax_pearlequities_depthofmarket_mach_v1_3_d.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
miax_pearlequities_depthofmarket_mach_v1_3_d.price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
miax_pearlequities_depthofmarket_mach_v1_3_d.price.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = miax_pearlequities_depthofmarket_mach_v1_3_d.price.translate(raw)
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.price, range, value, display)

  return offset + length, value
end

-- Primary Market Code
miax_pearlequities_depthofmarket_mach_v1_3_d.primary_market_code = {}

-- Size: Primary Market Code
miax_pearlequities_depthofmarket_mach_v1_3_d.primary_market_code.size = 1

-- Display: Primary Market Code
miax_pearlequities_depthofmarket_mach_v1_3_d.primary_market_code.labels = {
  ["A"] = "Primary Market Code: Nyse American (A)",
  ["B"] = "Primary Market Code: Nasdaq Texas (B)",
  ["C"] = "Primary Market Code: Nyse National (C)",
  ["F"] = "Primary Market Code: Texas Stock Exchange (F)",
  ["G"] = "Primary Market Code: 24X Exchange (G)",
  ["H"] = "Primary Market Code: Miax Pearl Equities (H)",
  ["I"] = "Primary Market Code: Nasdaq Ise (I)",
  ["J"] = "Primary Market Code: Cboe Edga Exchange (J)",
  ["K"] = "Primary Market Code: Cboe Edgx Exchange (K)",
  ["L"] = "Primary Market Code: Long Term Stock Exchange (L)",
  ["M"] = "Primary Market Code: Nyse Texas (M)",
  ["N"] = "Primary Market Code: New York Stock Exchange (N)",
  ["P"] = "Primary Market Code: Nyse Arca (P)",
  ["Q"] = "Primary Market Code: Nasdaq (Q)",
  ["U"] = "Primary Market Code: Members Exchange (U)",
  ["V"] = "Primary Market Code: Investors Exchange (V)",
  ["W"] = "Primary Market Code: Cboe Stock Exchange (W)",
  ["X"] = "Primary Market Code: Nasdaq Phlx (X)",
  ["Y"] = "Primary Market Code: Cboe Byx Exchange (Y)",
  ["Z"] = "Primary Market Code: Cboe Bzx Exchange (Z)",
}

miax_pearlequities_depthofmarket_mach_v1_3_d.primary_market_code.display = function(value)
  return miax_pearlequities_depthofmarket_mach_v1_3_d.primary_market_code.labels[value] or "Primary Market Code: Unknown("..value..")"
end

-- Dissect: Primary Market Code
miax_pearlequities_depthofmarket_mach_v1_3_d.primary_market_code.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.primary_market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.primary_market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.primary_market_code, range, value, display)

  return offset + length, value
end

-- Refresh Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_message_type = {}

-- Size: Refresh Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_message_type.size = 1

-- Display: Refresh Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_message_type.labels = {
  ["S"] = "Refresh Message Type: Symbol Update Refresh (S)",
  ["t"] = "Refresh Message Type: Security Trading Status Refresh (t)",
  ["s"] = "Refresh Message Type: System State Refresh (s)",
  ["O"] = "Refresh Message Type: Order Book Refresh (O)",
}

miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_message_type.display = function(value)
  return miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_message_type.labels[value] or "Refresh Message Type: Unknown("..value..")"
end

-- Dissect: Refresh Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.refresh_message_type, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.requested_sequence_number = {}

-- Size: Requested Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.requested_sequence_number.size = 8

-- Display: Requested Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Trading Session Id
miax_pearlequities_depthofmarket_mach_v1_3_d.requested_trading_session_id = {}

-- Size: Requested Trading Session Id
miax_pearlequities_depthofmarket_mach_v1_3_d.requested_trading_session_id.size = 1

-- Display: Requested Trading Session Id
miax_pearlequities_depthofmarket_mach_v1_3_d.requested_trading_session_id.display = function(value)
  return "Requested Trading Session Id: "..value
end

-- Dissect: Requested Trading Session Id
miax_pearlequities_depthofmarket_mach_v1_3_d.requested_trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.requested_trading_session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.requested_trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.requested_trading_session_id, range, value, display)

  return offset + length, value
end

-- Reserved 1
miax_pearlequities_depthofmarket_mach_v1_3_d.reserved_1 = {}

-- Size: Reserved 1
miax_pearlequities_depthofmarket_mach_v1_3_d.reserved_1.size = 1

-- Display: Reserved 1
miax_pearlequities_depthofmarket_mach_v1_3_d.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
miax_pearlequities_depthofmarket_mach_v1_3_d.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Second Reserved 1
miax_pearlequities_depthofmarket_mach_v1_3_d.second_reserved_1 = {}

-- Size: Second Reserved 1
miax_pearlequities_depthofmarket_mach_v1_3_d.second_reserved_1.size = 1

-- Display: Second Reserved 1
miax_pearlequities_depthofmarket_mach_v1_3_d.second_reserved_1.display = function(value)
  return "Second Reserved 1: "..value
end

-- Dissect: Second Reserved 1
miax_pearlequities_depthofmarket_mach_v1_3_d.second_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.second_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.second_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.second_reserved_1, range, value, display)

  return offset + length, value
end

-- Seconds
miax_pearlequities_depthofmarket_mach_v1_3_d.seconds = {}

-- Size: Seconds
miax_pearlequities_depthofmarket_mach_v1_3_d.seconds.size = 4

-- Store: Seconds
miax_pearlequities_depthofmarket_mach_v1_3_d.seconds.current = nil

-- Generated: Seconds
miax_pearlequities_depthofmarket_mach_v1_3_d.seconds.generated = function(value, range, packet, parent)
  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.seconds
  if miax_pearlequities_depthofmarket_mach_v1_3_d.absolute_time_base == 1 then field = omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.seconds_utc end
  local seconds = parent:add(field, range, NSTime.new(value, 0))
  seconds:set_generated()
end

-- Dissect: Seconds
miax_pearlequities_depthofmarket_mach_v1_3_d.seconds.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.seconds
  if miax_pearlequities_depthofmarket_mach_v1_3_d.absolute_time_base == 1 then field = omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.seconds_utc end

  local seconds = value
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.sequence_number = {}

-- Size: Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.sequence_number.size = 8

-- Display: Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_message_type = {}

-- Size: Sequenced Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_message_type.display = function(value)
  return "Sequenced Message Type: "..value
end

-- Dissect: Sequenced Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Session Id
miax_pearlequities_depthofmarket_mach_v1_3_d.session_id = {}

-- Size: Session Id
miax_pearlequities_depthofmarket_mach_v1_3_d.session_id.size = 1

-- Display: Session Id
miax_pearlequities_depthofmarket_mach_v1_3_d.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_pearlequities_depthofmarket_mach_v1_3_d.session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.session_id, range, value, display)

  return offset + length, value
end

-- Session Number
miax_pearlequities_depthofmarket_mach_v1_3_d.session_number = {}

-- Size: Session Number
miax_pearlequities_depthofmarket_mach_v1_3_d.session_number.size = 1

-- Display: Session Number
miax_pearlequities_depthofmarket_mach_v1_3_d.session_number.display = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
miax_pearlequities_depthofmarket_mach_v1_3_d.session_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.session_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.session_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.session_number, range, value, display)

  return offset + length, value
end

-- Short Sale Restriction
miax_pearlequities_depthofmarket_mach_v1_3_d.short_sale_restriction = {}

-- Size: Short Sale Restriction
miax_pearlequities_depthofmarket_mach_v1_3_d.short_sale_restriction.size = 1

-- Display: Short Sale Restriction
miax_pearlequities_depthofmarket_mach_v1_3_d.short_sale_restriction.labels = {
  ["Y"] = "Short Sale Restriction: Short Sale Restriction Is In Effect (Y)",
  ["N"] = "Short Sale Restriction: Short Sale Restriction Is Not In Effect (N)",
}

miax_pearlequities_depthofmarket_mach_v1_3_d.short_sale_restriction.display = function(value)
  return miax_pearlequities_depthofmarket_mach_v1_3_d.short_sale_restriction.labels[value] or "Short Sale Restriction: Unknown("..value..")"
end

-- Dissect: Short Sale Restriction
miax_pearlequities_depthofmarket_mach_v1_3_d.short_sale_restriction.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.short_sale_restriction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.short_sale_restriction.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.short_sale_restriction, range, value, display)

  return offset + length, value
end

-- Size
miax_pearlequities_depthofmarket_mach_v1_3_d.size = {}

-- Size: Size
miax_pearlequities_depthofmarket_mach_v1_3_d.size.size = 4

-- Display: Size
miax_pearlequities_depthofmarket_mach_v1_3_d.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
miax_pearlequities_depthofmarket_mach_v1_3_d.size.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.size, range, value, display)

  return offset + length, value
end

-- Start Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.start_sequence_number = {}

-- Size: Start Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.start_sequence_number.size = 8

-- Display: Start Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.start_sequence_number.display = function(value)
  return "Start Sequence Number: "..value
end

-- Dissect: Start Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.start_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.start_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.start_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.start_sequence_number, range, value, display)

  return offset + length, value
end

-- Symbol Id
miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id = {}

-- Size: Symbol Id
miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.size = 4

-- Display: Symbol Id
miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.display = function(value)
  return "Symbol Id: "..value
end

-- Dissect: Symbol Id
miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.symbol_id, range, value, display)

  return offset + length, value
end

-- System Status
miax_pearlequities_depthofmarket_mach_v1_3_d.system_status = {}

-- Size: System Status
miax_pearlequities_depthofmarket_mach_v1_3_d.system_status.size = 1

-- Display: System Status
miax_pearlequities_depthofmarket_mach_v1_3_d.system_status.labels = {
  ["S"] = "System Status: Start Of System Hours (S)",
  ["C"] = "System Status: End Of System Hours (C)",
  ["1"] = "System Status: Start Of Test Session (1)",
  ["2"] = "System Status: End Of Test Session (2)",
}

miax_pearlequities_depthofmarket_mach_v1_3_d.system_status.display = function(value)
  return miax_pearlequities_depthofmarket_mach_v1_3_d.system_status.labels[value] or "System Status: Unknown("..value..")"
end

-- Dissect: System Status
miax_pearlequities_depthofmarket_mach_v1_3_d.system_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.system_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.system_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.system_status, range, value, display)

  return offset + length, value
end

-- Test Security Indicator
miax_pearlequities_depthofmarket_mach_v1_3_d.test_security_indicator = {}

-- Size: Test Security Indicator
miax_pearlequities_depthofmarket_mach_v1_3_d.test_security_indicator.size = 1

-- Display: Test Security Indicator
miax_pearlequities_depthofmarket_mach_v1_3_d.test_security_indicator.labels = {
  ["Y"] = "Test Security Indicator: Yes (Y)",
  ["N"] = "Test Security Indicator: No (N)",
}

miax_pearlequities_depthofmarket_mach_v1_3_d.test_security_indicator.display = function(value)
  return miax_pearlequities_depthofmarket_mach_v1_3_d.test_security_indicator.labels[value] or "Test Security Indicator: Unknown("..value..")"
end

-- Dissect: Test Security Indicator
miax_pearlequities_depthofmarket_mach_v1_3_d.test_security_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.test_security_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.test_security_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.test_security_indicator, range, value, display)

  return offset + length, value
end

-- Test Text
miax_pearlequities_depthofmarket_mach_v1_3_d.test_text = {}

-- Display: Test Text
miax_pearlequities_depthofmarket_mach_v1_3_d.test_text.display = function(value)
  return "Test Text: "..value
end

-- Dissect runtime sized field: Test Text
miax_pearlequities_depthofmarket_mach_v1_3_d.test_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.test_text.display(value, packet, parent, size)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.test_text, range, value, display)

  return offset + size, value
end

-- Ticker Symbol
miax_pearlequities_depthofmarket_mach_v1_3_d.ticker_symbol = {}

-- Size: Ticker Symbol
miax_pearlequities_depthofmarket_mach_v1_3_d.ticker_symbol.size = 11

-- Display: Ticker Symbol
miax_pearlequities_depthofmarket_mach_v1_3_d.ticker_symbol.display = function(value)
  return "Ticker Symbol: "..value
end

-- Dissect: Ticker Symbol
miax_pearlequities_depthofmarket_mach_v1_3_d.ticker_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.ticker_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.ticker_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.ticker_symbol, range, value, display)

  return offset + length, value
end

-- Trade Id
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_id = {}

-- Size: Trade Id
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_id.size = 8

-- Display: Trade Id
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trading Session Id
miax_pearlequities_depthofmarket_mach_v1_3_d.trading_session_id = {}

-- Size: Trading Session Id
miax_pearlequities_depthofmarket_mach_v1_3_d.trading_session_id.size = 1

-- Display: Trading Session Id
miax_pearlequities_depthofmarket_mach_v1_3_d.trading_session_id.display = function(value)
  return "Trading Session Id: "..value
end

-- Dissect: Trading Session Id
miax_pearlequities_depthofmarket_mach_v1_3_d.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.trading_session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Trading Status
miax_pearlequities_depthofmarket_mach_v1_3_d.trading_status = {}

-- Size: Trading Status
miax_pearlequities_depthofmarket_mach_v1_3_d.trading_status.size = 1

-- Display: Trading Status
miax_pearlequities_depthofmarket_mach_v1_3_d.trading_status.labels = {
  [1] = "Trading Status: Pre Open (1)",
  [2] = "Trading Status: Trading (2)",
  [3] = "Trading Status: Halt (3)",
  [4] = "Trading Status: Operational Halt (4)",
  [5] = "Trading Status: Closed (5)",
}

miax_pearlequities_depthofmarket_mach_v1_3_d.trading_status.display = function(value)
  return miax_pearlequities_depthofmarket_mach_v1_3_d.trading_status.labels[value] or "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
miax_pearlequities_depthofmarket_mach_v1_3_d.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_message_type.labels = {
  ["R"] = "Unsequenced Message Type: Refresh Request Message (R)",
  ["r"] = "Unsequenced Message Type: Refresh Response Message (r)",
  ["E"] = "Unsequenced Message Type: End Of Refresh Notification Message (E)",
}

miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_message_type.display = function(value)
  return miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_message_type.labels[value] or "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
miax_pearlequities_depthofmarket_mach_v1_3_d.username = {}

-- Size: Username
miax_pearlequities_depthofmarket_mach_v1_3_d.username.size = 5

-- Display: Username
miax_pearlequities_depthofmarket_mach_v1_3_d.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
miax_pearlequities_depthofmarket_mach_v1_3_d.username.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.username, range, value, display)

  return offset + length, value
end

-- Timestamp
miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp = {}

-- Translate: Timestamp
miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.translate = function(nanoseconds, stored_seconds)
  return UInt64.new(stored_seconds * 1000000000 + nanoseconds)
end

-- Display: Timestamp
miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.display = function(nanoseconds, stored_seconds)
  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", stored_seconds)..string.format("%09d", nanoseconds)
end

-- Composite: Timestamp
miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.composite = function(buffer, offset, stored_seconds, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.size
  local range = buffer(offset, length)
  local nanoseconds = range:le_uint()
  local value = miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.translate(nanoseconds, stored_seconds)
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.display(nanoseconds, stored_seconds, packet)
  parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.timestamp, range, value, display)

  miax_pearlequities_depthofmarket_mach_v1_3_d.seconds.generated(stored_seconds, range, packet, parent)

  display = miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.display(nanoseconds)
  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.nanoseconds, range, nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.dissect = function(buffer, offset, packet, parent)
  if miax_pearlequities_depthofmarket_mach_v1_3_d.format_timestamp then
    local stored_seconds = miax_pearlequities_depthofmarket_mach_v1_3_d.seconds.current

    if stored_seconds ~= nil then
      return miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.composite(buffer, offset, stored_seconds, packet, parent)
    end
  end

  return miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Miax PearlEquities DepthOfMarket Mach 1.3.d
-----------------------------------------------------------------------

-- Test Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.test_packet = {}

-- Calculate size of: Test Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.test_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Test Text
  index = index + buffer(offset + index - 3, 2):le_uint()

  return index
end

-- Display: Test Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.test_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Test Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.test_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Esesm Packet Length
  local esesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Test Text
  local size_of_test_text = esesm_packet_length - 1

  -- Test Text: 0 Byte Ascii String
  index, test_text = miax_pearlequities_depthofmarket_mach_v1_3_d.test_text.dissect(buffer, index, packet, parent, size_of_test_text)

  return index
end

-- Dissect: Test Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.test_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.test_packet, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.test_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.test_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.test_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Heartbeat
miax_pearlequities_depthofmarket_mach_v1_3_d.client_heartbeat = {}

-- Display: Client Heartbeat
miax_pearlequities_depthofmarket_mach_v1_3_d.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
miax_pearlequities_depthofmarket_mach_v1_3_d.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
miax_pearlequities_depthofmarket_mach_v1_3_d.server_heartbeat = {}

-- Display: Server Heartbeat
miax_pearlequities_depthofmarket_mach_v1_3_d.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
miax_pearlequities_depthofmarket_mach_v1_3_d.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Trading Session Update
miax_pearlequities_depthofmarket_mach_v1_3_d.trading_session_update = {}

-- Display: Trading Session Update
miax_pearlequities_depthofmarket_mach_v1_3_d.trading_session_update.display = function(packet, parent, length)
  return "Trading Session Update"
end


-- Dissect: Trading Session Update
miax_pearlequities_depthofmarket_mach_v1_3_d.trading_session_update.dissect = function(buffer, offset, packet, parent)
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.trading_session_update.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Goodbye Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.goodbye_packet = {}

-- Calculate size of: Goodbye Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.goodbye_packet.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_d.logout_reason.size

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Goodbye Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.goodbye_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Goodbye Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.goodbye_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_pearlequities_depthofmarket_mach_v1_3_d.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Esesm Packet Length
  local esesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = esesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_pearlequities_depthofmarket_mach_v1_3_d.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Goodbye Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.goodbye_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.goodbye_packet, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.goodbye_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.goodbye_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.goodbye_packet.fields(buffer, offset, packet, parent)
  end
end

-- Logout Request
miax_pearlequities_depthofmarket_mach_v1_3_d.logout_request = {}

-- Calculate size of: Logout Request
miax_pearlequities_depthofmarket_mach_v1_3_d.logout_request.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_d.logout_reason.size

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Logout Request
miax_pearlequities_depthofmarket_mach_v1_3_d.logout_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Request
miax_pearlequities_depthofmarket_mach_v1_3_d.logout_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_pearlequities_depthofmarket_mach_v1_3_d.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Esesm Packet Length
  local esesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = esesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_pearlequities_depthofmarket_mach_v1_3_d.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Logout Request
miax_pearlequities_depthofmarket_mach_v1_3_d.logout_request.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.logout_request, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.logout_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.logout_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.logout_request.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request
miax_pearlequities_depthofmarket_mach_v1_3_d.retransmission_request = {}

-- Size: Retransmission Request
miax_pearlequities_depthofmarket_mach_v1_3_d.retransmission_request.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.start_sequence_number.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.end_sequence_number.size

-- Display: Retransmission Request
miax_pearlequities_depthofmarket_mach_v1_3_d.retransmission_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request
miax_pearlequities_depthofmarket_mach_v1_3_d.retransmission_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, start_sequence_number = miax_pearlequities_depthofmarket_mach_v1_3_d.start_sequence_number.dissect(buffer, index, packet, parent)

  -- End Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, end_sequence_number = miax_pearlequities_depthofmarket_mach_v1_3_d.end_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request
miax_pearlequities_depthofmarket_mach_v1_3_d.retransmission_request.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.retransmission_request, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.retransmission_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.retransmission_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.retransmission_request.fields(buffer, offset, packet, parent)
  end
end

-- Synchronization Complete
miax_pearlequities_depthofmarket_mach_v1_3_d.synchronization_complete = {}

-- Size: Synchronization Complete
miax_pearlequities_depthofmarket_mach_v1_3_d.synchronization_complete.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.number_of_matching_engines.size

-- Display: Synchronization Complete
miax_pearlequities_depthofmarket_mach_v1_3_d.synchronization_complete.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Synchronization Complete
miax_pearlequities_depthofmarket_mach_v1_3_d.synchronization_complete.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Matching Engines: 1 Byte Unsigned Fixed Width Integer
  index, number_of_matching_engines = miax_pearlequities_depthofmarket_mach_v1_3_d.number_of_matching_engines.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Synchronization Complete
miax_pearlequities_depthofmarket_mach_v1_3_d.synchronization_complete.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.synchronization_complete, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.synchronization_complete.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.synchronization_complete.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.synchronization_complete.fields(buffer, offset, packet, parent)
  end
end

-- Login Response
miax_pearlequities_depthofmarket_mach_v1_3_d.login_response = {}

-- Size: Login Response
miax_pearlequities_depthofmarket_mach_v1_3_d.login_response.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.number_of_matching_engines.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.login_status.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.trading_session_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.highest_sequence_number.size

-- Display: Login Response
miax_pearlequities_depthofmarket_mach_v1_3_d.login_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response
miax_pearlequities_depthofmarket_mach_v1_3_d.login_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Matching Engines: 1 Byte Unsigned Fixed Width Integer
  index, number_of_matching_engines = miax_pearlequities_depthofmarket_mach_v1_3_d.number_of_matching_engines.dissect(buffer, index, packet, parent)

  -- Login Status: 1 Byte Ascii String Enum with 8 values
  index, login_status = miax_pearlequities_depthofmarket_mach_v1_3_d.login_status.dissect(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer
  index, trading_session_id = miax_pearlequities_depthofmarket_mach_v1_3_d.trading_session_id.dissect(buffer, index, packet, parent)

  -- Highest Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, highest_sequence_number = miax_pearlequities_depthofmarket_mach_v1_3_d.highest_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
miax_pearlequities_depthofmarket_mach_v1_3_d.login_response.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.login_response, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.login_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.login_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.login_response.fields(buffer, offset, packet, parent)
  end
end

-- Login Request
miax_pearlequities_depthofmarket_mach_v1_3_d.login_request = {}

-- Size: Login Request
miax_pearlequities_depthofmarket_mach_v1_3_d.login_request.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_version.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.username.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.computer_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.application_protocol.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.requested_trading_session_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.requested_sequence_number.size

-- Display: Login Request
miax_pearlequities_depthofmarket_mach_v1_3_d.login_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request
miax_pearlequities_depthofmarket_mach_v1_3_d.login_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Esesm Version: 5 Byte Ascii String
  index, esesm_version = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_version.dissect(buffer, index, packet, parent)

  -- Username: 5 Byte Ascii String
  index, username = miax_pearlequities_depthofmarket_mach_v1_3_d.username.dissect(buffer, index, packet, parent)

  -- Computer Id: 8 Byte Ascii String
  index, computer_id = miax_pearlequities_depthofmarket_mach_v1_3_d.computer_id.dissect(buffer, index, packet, parent)

  -- Application Protocol: 8 Byte Ascii String
  index, application_protocol = miax_pearlequities_depthofmarket_mach_v1_3_d.application_protocol.dissect(buffer, index, packet, parent)

  -- Requested Trading Session Id: 1 Byte Unsigned Fixed Width Integer
  index, requested_trading_session_id = miax_pearlequities_depthofmarket_mach_v1_3_d.requested_trading_session_id.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, requested_sequence_number = miax_pearlequities_depthofmarket_mach_v1_3_d.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request
miax_pearlequities_depthofmarket_mach_v1_3_d.login_request.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.login_request, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.login_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.login_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.login_request.fields(buffer, offset, packet, parent)
  end
end

-- End Of Refresh Notification Message
miax_pearlequities_depthofmarket_mach_v1_3_d.end_of_refresh_notification_message = {}

-- Size: End Of Refresh Notification Message
miax_pearlequities_depthofmarket_mach_v1_3_d.end_of_refresh_notification_message.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_message_type.size

-- Display: End Of Refresh Notification Message
miax_pearlequities_depthofmarket_mach_v1_3_d.end_of_refresh_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Refresh Notification Message
miax_pearlequities_depthofmarket_mach_v1_3_d.end_of_refresh_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Refresh Message Type: Alphanumeric
  index, refresh_message_type = miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Refresh Notification Message
miax_pearlequities_depthofmarket_mach_v1_3_d.end_of_refresh_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.end_of_refresh_notification_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.end_of_refresh_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.end_of_refresh_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.end_of_refresh_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Response Message
miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_response_message = {}

-- Size: Refresh Response Message
miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_response_message.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.sequence_number.size

-- Display: Refresh Response Message
miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Response Message
miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: BinaryU
  index, sequence_number = miax_pearlequities_depthofmarket_mach_v1_3_d.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Response Message
miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.refresh_response_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Request Message
miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_request_message = {}

-- Size: Refresh Request Message
miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_request_message.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_message_type.size

-- Display: Refresh Request Message
miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Refresh Message Type: Alphanumeric
  index, refresh_message_type = miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.refresh_request_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_message = {}

-- Dissect: Unsequenced Message
miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_message.dispatch = {
  ["R"] = miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_request_message.dissect,
  ["r"] = miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_response_message.dissect,
  ["E"] = miax_pearlequities_depthofmarket_mach_v1_3_d.end_of_refresh_notification_message.dissect,
}

miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  local dissect = miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_message.dispatch[unsequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Esesm Packet Length
  local esesm_packet_length = buffer(offset - 3, 2):le_uint()

  return esesm_packet_length - 1
end

-- Display: Unsequenced Data Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String Enum with 3 values
  index, unsequenced_message_type = miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 3 branches
  index = miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Sequenced Data Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Esesm Packet Length
  local esesm_packet_length = buffer(offset - 3, 2):le_uint()

  return esesm_packet_length - 1
end

-- Display: Sequenced Data Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequence Number: BinaryU
  index, sequence_number = miax_pearlequities_depthofmarket_mach_v1_3_d.sequence_number.dissect(buffer, index, packet, parent)

  -- Matching Engine Id: 1 Byte Unsigned Fixed Width Integer
  index, matching_engine_id = miax_pearlequities_depthofmarket_mach_v1_3_d.matching_engine_id.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: 1 Byte Unsigned Fixed Width Integer
  index, sequenced_message_type = miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message
  index, sequenced_message = miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Data Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.sequenced_data_packet, buffer(offset, 0))
    local current = miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Esesm Payload
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_payload = {}

-- Dissect: Esesm Payload
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_payload.dispatch = {
  ["s"] = miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_data_packet.dissect,
  ["U"] = miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_data_packet.dissect,
  ["l"] = miax_pearlequities_depthofmarket_mach_v1_3_d.login_request.dissect,
  ["r"] = miax_pearlequities_depthofmarket_mach_v1_3_d.login_response.dissect,
  ["c"] = miax_pearlequities_depthofmarket_mach_v1_3_d.synchronization_complete.dissect,
  ["a"] = miax_pearlequities_depthofmarket_mach_v1_3_d.retransmission_request.dissect,
  ["X"] = miax_pearlequities_depthofmarket_mach_v1_3_d.logout_request.dissect,
  ["G"] = miax_pearlequities_depthofmarket_mach_v1_3_d.goodbye_packet.dissect,
  ["u"] = miax_pearlequities_depthofmarket_mach_v1_3_d.trading_session_update.dissect,
  ["0"] = miax_pearlequities_depthofmarket_mach_v1_3_d.server_heartbeat.dissect,
  ["1"] = miax_pearlequities_depthofmarket_mach_v1_3_d.client_heartbeat.dissect,
  ["T"] = miax_pearlequities_depthofmarket_mach_v1_3_d.test_packet.dissect,
}

miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_payload.dissect = function(buffer, offset, packet, parent, esesm_packet_type)
  local dissect = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_payload.dispatch[esesm_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Esesm Packet Header
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_header = {}

-- Size: Esesm Packet Header
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_header.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_length.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_type.size

-- Display: Esesm Packet Header
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Esesm Packet Header
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Esesm Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, esesm_packet_length = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_length.dissect(buffer, index, packet, parent)

  -- Esesm Packet Type: Alphanumeric
  index, esesm_packet_type = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Esesm Packet Header
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.esesm_packet_header, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Esesm Tcp Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_tcp_packet = {}

-- Display: Esesm Tcp Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Esesm Tcp Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_esesm_tcp_packet)
  local index = offset

  -- Esesm Packet Header: Struct of 2 fields
  index, esesm_packet_header = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Esesm Packet Type
  local esesm_packet_type = buffer(index - 1, 1):string()

  -- Esesm Payload: Runtime Type with 12 branches
  index = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_payload.dissect(buffer, index, packet, parent, esesm_packet_type)

  return index
end

-- Dissect: Esesm Tcp Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_esesm_tcp_packet)
  local index = offset + size_of_esesm_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.esesm_tcp_packet, buffer(offset, 0))
    local current = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_tcp_packet.fields(buffer, offset, packet, parent, size_of_esesm_tcp_packet)
    parent:set_len(size_of_esesm_tcp_packet)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_tcp_packet.fields(buffer, offset, packet, parent, size_of_esesm_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Esesm Tcp Packet
local esesm_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_header.size then
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
miax_pearlequities_depthofmarket_mach_v1_3_d.tcp_packet = {}

-- Verify required size of Tcp packet
miax_pearlequities_depthofmarket_mach_v1_3_d.tcp_packet.requiredsize = function(buffer)
  return buffer:len() >= miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_header.size
end

-- Dissect Tcp Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.tcp_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Esesm Tcp Packet
  local end_of_payload = buffer:len()

  -- Esesm Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_esesm_tcp_packet = esesm_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_esesm_tcp_packet):tvb()
      index = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_tcp_packet.dissect(frame, index, packet, parent, size_of_esesm_tcp_packet)
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

-- Trade Cancel Message
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_cancel_message = {}

-- Size: Trade Cancel Message
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_cancel_message.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.trade_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.correction_number.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.price.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.size.size

-- Display: Trade Cancel Message
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Message
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_pearlequities_depthofmarket_mach_v1_3_d.trade_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_pearlequities_depthofmarket_mach_v1_3_d.correction_number.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrc6U
  index, price = miax_pearlequities_depthofmarket_mach_v1_3_d.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearlequities_depthofmarket_mach_v1_3_d.size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.trade_cancel_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Flags
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_flags = {}

-- Size: Trade Flags
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_flags.size = 1

-- Display: Trade Flags
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Sip Reporting flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Sip Reporting"
  end
  -- Is Retail Trade Indicator flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Retail Trade Indicator"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trade Flags
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_flags.bits = function(range, value, packet, parent)

  -- Sip Reporting: 1 Bit
  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.sip_reporting, range, value)

  -- Retail Trade Indicator: 1 Bit
  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.retail_trade_indicator, range, value)

  -- Reserved 6: 6 Bit
  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.reserved_6, range, value)
end

-- Dissect: Trade Flags
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_flags.dissect = function(buffer, offset, packet, parent)
  local size = miax_pearlequities_depthofmarket_mach_v1_3_d.trade_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.trade_flags.display(range, value, packet, parent)
  local element = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.trade_flags, range, display)

  if show.structs then
    miax_pearlequities_depthofmarket_mach_v1_3_d.trade_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Message
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_message = {}

-- Size: Trade Message
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_message.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.trade_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.correction_number.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.price.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.size.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.trade_flags.size

-- Display: Trade Message
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_pearlequities_depthofmarket_mach_v1_3_d.trade_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_pearlequities_depthofmarket_mach_v1_3_d.correction_number.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrc6U
  index, price = miax_pearlequities_depthofmarket_mach_v1_3_d.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearlequities_depthofmarket_mach_v1_3_d.size.dissect(buffer, index, packet, parent)

  -- Trade Flags: Struct of 3 fields
  index, trade_flags = miax_pearlequities_depthofmarket_mach_v1_3_d.trade_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.trade_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Execution Flags
miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_flags = {}

-- Size: Order Execution Flags
miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_flags.size = 1

-- Display: Order Execution Flags
miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Sip Reporting flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Sip Reporting"
  end
  -- Is Traded Against Retail flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Traded Against Retail"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Order Execution Flags
miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_flags.bits = function(range, value, packet, parent)

  -- Sip Reporting: 1 Bit
  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.sip_reporting, range, value)

  -- Traded Against Retail: 1 Bit
  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.traded_against_retail, range, value)

  -- Reserved 6: 6 Bit
  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.reserved_6, range, value)
end

-- Dissect: Order Execution Flags
miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_flags.dissect = function(buffer, offset, packet, parent)
  local size = miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_flags.display(range, value, packet, parent)
  local element = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.order_execution_flags, range, display)

  if show.structs then
    miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Execution Message
miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_message = {}

-- Size: Order Execution Message
miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_message.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.order_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.trade_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.price.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.size.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_flags.size

-- Display: Order Execution Message
miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution Message
miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_depthofmarket_mach_v1_3_d.order_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_pearlequities_depthofmarket_mach_v1_3_d.trade_id.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrc6U
  index, price = miax_pearlequities_depthofmarket_mach_v1_3_d.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearlequities_depthofmarket_mach_v1_3_d.size.dissect(buffer, index, packet, parent)

  -- Order Execution Flags: Struct of 3 fields
  index, order_execution_flags = miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution Message
miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.order_execution_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
miax_pearlequities_depthofmarket_mach_v1_3_d.delete_order_message = {}

-- Size: Delete Order Message
miax_pearlequities_depthofmarket_mach_v1_3_d.delete_order_message.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.order_id.size

-- Display: Delete Order Message
miax_pearlequities_depthofmarket_mach_v1_3_d.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
miax_pearlequities_depthofmarket_mach_v1_3_d.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_depthofmarket_mach_v1_3_d.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
miax_pearlequities_depthofmarket_mach_v1_3_d.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.delete_order_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Flags
miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_flags = {}

-- Size: Modify Order Flags
miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_flags.size = 1

-- Display: Modify Order Flags
miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Order Position flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Order Position"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Modify Order Flags
miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_flags.bits = function(range, value, packet, parent)

  -- Order Position: 1 Bit
  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.order_position, range, value)

  -- Reserved 7: 7 Bit
  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.reserved_7, range, value)
end

-- Dissect: Modify Order Flags
miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_flags.display(range, value, packet, parent)
  local element = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.modify_order_flags, range, display)

  if show.structs then
    miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Modify Order Message
miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_message = {}

-- Size: Modify Order Message
miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_message.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.order_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.price.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.size.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_flags.size

-- Display: Modify Order Message
miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Message
miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_depthofmarket_mach_v1_3_d.order_id.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrc6U
  index, price = miax_pearlequities_depthofmarket_mach_v1_3_d.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearlequities_depthofmarket_mach_v1_3_d.size.dissect(buffer, index, packet, parent)

  -- Modify Order Flags: Struct of 2 fields
  index, modify_order_flags = miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Message
miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.modify_order_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
miax_pearlequities_depthofmarket_mach_v1_3_d.add_order_message = {}

-- Size: Add Order Message
miax_pearlequities_depthofmarket_mach_v1_3_d.add_order_message.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.order_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.order_side.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.price.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.size.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.attributable_id.size

-- Display: Add Order Message
miax_pearlequities_depthofmarket_mach_v1_3_d.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
miax_pearlequities_depthofmarket_mach_v1_3_d.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_depthofmarket_mach_v1_3_d.order_id.dissect(buffer, index, packet, parent)

  -- Order Side: Alphanumeric
  index, order_side = miax_pearlequities_depthofmarket_mach_v1_3_d.order_side.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrc6U
  index, price = miax_pearlequities_depthofmarket_mach_v1_3_d.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearlequities_depthofmarket_mach_v1_3_d.size.dissect(buffer, index, packet, parent)

  -- Attributable Id: Alphanumeric
  index, attributable_id = miax_pearlequities_depthofmarket_mach_v1_3_d.attributable_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
miax_pearlequities_depthofmarket_mach_v1_3_d.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.add_order_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Clear Message
miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_clear_message = {}

-- Size: Symbol Clear Message
miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_clear_message.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.size

-- Display: Symbol Clear Message
miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Clear Message
miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.symbol_clear_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Trading Status Notification Message
miax_pearlequities_depthofmarket_mach_v1_3_d.security_trading_status_notification_message = {}

-- Size: Security Trading Status Notification Message
miax_pearlequities_depthofmarket_mach_v1_3_d.security_trading_status_notification_message.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.trading_status.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.market_state.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.short_sale_restriction.size

-- Display: Security Trading Status Notification Message
miax_pearlequities_depthofmarket_mach_v1_3_d.security_trading_status_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Trading Status Notification Message
miax_pearlequities_depthofmarket_mach_v1_3_d.security_trading_status_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.dissect(buffer, index, packet, parent)

  -- Trading Status: BinaryU
  index, trading_status = miax_pearlequities_depthofmarket_mach_v1_3_d.trading_status.dissect(buffer, index, packet, parent)

  -- Market State: BinaryU
  index, market_state = miax_pearlequities_depthofmarket_mach_v1_3_d.market_state.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction: Alphanumeric
  index, short_sale_restriction = miax_pearlequities_depthofmarket_mach_v1_3_d.short_sale_restriction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Trading Status Notification Message
miax_pearlequities_depthofmarket_mach_v1_3_d.security_trading_status_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.security_trading_status_notification_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.security_trading_status_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.security_trading_status_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.security_trading_status_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- System State Message
miax_pearlequities_depthofmarket_mach_v1_3_d.system_state_message = {}

-- Size: System State Message
miax_pearlequities_depthofmarket_mach_v1_3_d.system_state_message.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.do_m_version.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.session_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.system_status.size

-- Display: System State Message
miax_pearlequities_depthofmarket_mach_v1_3_d.system_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System State Message
miax_pearlequities_depthofmarket_mach_v1_3_d.system_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.dissect(buffer, index, packet, parent)

  -- Do M Version: Alphanumeric
  index, do_m_version = miax_pearlequities_depthofmarket_mach_v1_3_d.do_m_version.dissect(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_pearlequities_depthofmarket_mach_v1_3_d.session_id.dissect(buffer, index, packet, parent)

  -- System Status: Alphanumeric
  index, system_status = miax_pearlequities_depthofmarket_mach_v1_3_d.system_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Message
miax_pearlequities_depthofmarket_mach_v1_3_d.system_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.system_state_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.system_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.system_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.system_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Update Message
miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_update_message = {}

-- Size: Symbol Update Message
miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_update_message.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.ticker_symbol.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.reserved_1.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.test_security_indicator.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.second_reserved_1.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.lot_size.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.opening_time.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.closing_time.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.primary_market_code.size

-- Display: Symbol Update Message
miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Update Message
miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.dissect(buffer, index, packet, parent)

  -- Ticker Symbol: Alphanumeric
  index, ticker_symbol = miax_pearlequities_depthofmarket_mach_v1_3_d.ticker_symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: BinaryU
  index, reserved_1 = miax_pearlequities_depthofmarket_mach_v1_3_d.reserved_1.dissect(buffer, index, packet, parent)

  -- Test Security Indicator: Alphanumeric
  index, test_security_indicator = miax_pearlequities_depthofmarket_mach_v1_3_d.test_security_indicator.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: BinaryU
  index, second_reserved_1 = miax_pearlequities_depthofmarket_mach_v1_3_d.second_reserved_1.dissect(buffer, index, packet, parent)

  -- Lot Size: BinaryU
  index, lot_size = miax_pearlequities_depthofmarket_mach_v1_3_d.lot_size.dissect(buffer, index, packet, parent)

  -- Opening Time: Alphanumeric
  index, opening_time = miax_pearlequities_depthofmarket_mach_v1_3_d.opening_time.dissect(buffer, index, packet, parent)

  -- Closing Time: Alphanumeric
  index, closing_time = miax_pearlequities_depthofmarket_mach_v1_3_d.closing_time.dissect(buffer, index, packet, parent)

  -- Primary Market Code: Alphanumeric
  index, primary_market_code = miax_pearlequities_depthofmarket_mach_v1_3_d.primary_market_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Update Message
miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.symbol_update_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_update_message.fields(buffer, offset, packet, parent)
  end
end

-- System Time Message
miax_pearlequities_depthofmarket_mach_v1_3_d.system_time_message = {}

-- Size: System Time Message
miax_pearlequities_depthofmarket_mach_v1_3_d.system_time_message.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.seconds.size

-- Display: System Time Message
miax_pearlequities_depthofmarket_mach_v1_3_d.system_time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Time Message
miax_pearlequities_depthofmarket_mach_v1_3_d.system_time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: SecTime
  index, seconds = miax_pearlequities_depthofmarket_mach_v1_3_d.seconds.dissect(buffer, index, packet, parent)

  -- Store Seconds Value
  miax_pearlequities_depthofmarket_mach_v1_3_d.seconds.current = seconds

  if not packet.visited then
    miax_pearlequities_depthofmarket_mach_v1_3_d.conversation.current.seconds.last = seconds
  end

  return index
end

-- Dissect: System Time Message
miax_pearlequities_depthofmarket_mach_v1_3_d.system_time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.system_time_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.system_time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.system_time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.system_time_message.fields(buffer, offset, packet, parent)
  end
end

-- Data
miax_pearlequities_depthofmarket_mach_v1_3_d.data = {}

-- Dissect: Data
miax_pearlequities_depthofmarket_mach_v1_3_d.data.dispatch = {
  [49] = miax_pearlequities_depthofmarket_mach_v1_3_d.system_time_message.dissect,
  [1] = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_update_message.dissect,
  [83] = miax_pearlequities_depthofmarket_mach_v1_3_d.system_state_message.dissect,
  [4] = miax_pearlequities_depthofmarket_mach_v1_3_d.security_trading_status_notification_message.dissect,
  [5] = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_clear_message.dissect,
  [20] = miax_pearlequities_depthofmarket_mach_v1_3_d.add_order_message.dissect,
  [21] = miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_message.dissect,
  [23] = miax_pearlequities_depthofmarket_mach_v1_3_d.delete_order_message.dissect,
  [24] = miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_message.dissect,
  [10] = miax_pearlequities_depthofmarket_mach_v1_3_d.trade_message.dissect,
  [11] = miax_pearlequities_depthofmarket_mach_v1_3_d.trade_cancel_message.dissect,
}

miax_pearlequities_depthofmarket_mach_v1_3_d.data.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = miax_pearlequities_depthofmarket_mach_v1_3_d.data.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Application Message
miax_pearlequities_depthofmarket_mach_v1_3_d.application_message = {}

-- Read runtime size of: Application Message
miax_pearlequities_depthofmarket_mach_v1_3_d.application_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Mach Packet Length
  local mach_packet_length = buffer(offset - 4, 2):le_uint()

  return mach_packet_length - 12
end

-- Display: Application Message
miax_pearlequities_depthofmarket_mach_v1_3_d.application_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Application Message
miax_pearlequities_depthofmarket_mach_v1_3_d.application_message.fields = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, message_type = miax_pearlequities_depthofmarket_mach_v1_3_d.message_type.dissect(buffer, index, packet, parent)

  -- Data: Runtime Type with 11 branches
  index = miax_pearlequities_depthofmarket_mach_v1_3_d.data.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Application Message
miax_pearlequities_depthofmarket_mach_v1_3_d.application_message.dissect = function(buffer, offset, packet, parent, size_of_application_message)
  local size_of_application_message = miax_pearlequities_depthofmarket_mach_v1_3_d.application_message.size(buffer, offset)
  local index = offset + size_of_application_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.application_message, buffer(offset, 0))
    local current = miax_pearlequities_depthofmarket_mach_v1_3_d.application_message.fields(buffer, offset, packet, parent, size_of_application_message)
    parent:set_len(size_of_application_message)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.application_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_pearlequities_depthofmarket_mach_v1_3_d.application_message.fields(buffer, offset, packet, parent, size_of_application_message)

    return index
  end
end

-- End Of Session
miax_pearlequities_depthofmarket_mach_v1_3_d.end_of_session = {}

-- Display: End Of Session
miax_pearlequities_depthofmarket_mach_v1_3_d.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
miax_pearlequities_depthofmarket_mach_v1_3_d.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Start Of Session
miax_pearlequities_depthofmarket_mach_v1_3_d.start_of_session = {}

-- Display: Start Of Session
miax_pearlequities_depthofmarket_mach_v1_3_d.start_of_session.display = function(packet, parent, length)
  return "Start Of Session"
end


-- Dissect: Start Of Session
miax_pearlequities_depthofmarket_mach_v1_3_d.start_of_session.dissect = function(buffer, offset, packet, parent)
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.start_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
miax_pearlequities_depthofmarket_mach_v1_3_d.heartbeat = {}

-- Display: Heartbeat
miax_pearlequities_depthofmarket_mach_v1_3_d.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
miax_pearlequities_depthofmarket_mach_v1_3_d.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Payload
miax_pearlequities_depthofmarket_mach_v1_3_d.payload = {}

-- Dissect: Payload
miax_pearlequities_depthofmarket_mach_v1_3_d.payload.dispatch = {
  [0] = miax_pearlequities_depthofmarket_mach_v1_3_d.heartbeat.dissect,
  [1] = miax_pearlequities_depthofmarket_mach_v1_3_d.start_of_session.dissect,
  [2] = miax_pearlequities_depthofmarket_mach_v1_3_d.end_of_session.dissect,
  [3] = miax_pearlequities_depthofmarket_mach_v1_3_d.application_message.dissect,
}

miax_pearlequities_depthofmarket_mach_v1_3_d.payload.dissect = function(buffer, offset, packet, parent, mach_packet_type)
  local dissect = miax_pearlequities_depthofmarket_mach_v1_3_d.payload.dispatch[mach_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Mach Packet Header
miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_header = {}

-- Size: Mach Packet Header
miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_header.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.sequence_number.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_length.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_type.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.session_number.size

-- Display: Mach Packet Header
miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mach Packet Header
miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: BinaryU
  index, sequence_number = miax_pearlequities_depthofmarket_mach_v1_3_d.sequence_number.dissect(buffer, index, packet, parent)

  -- Mach Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, mach_packet_length = miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_length.dissect(buffer, index, packet, parent)

  -- Mach Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, mach_packet_type = miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_type.dissect(buffer, index, packet, parent)

  -- Session Number: 1 Byte Unsigned Fixed Width Integer
  index, session_number = miax_pearlequities_depthofmarket_mach_v1_3_d.session_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mach Packet Header
miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.mach_packet_header, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Mach Message
miax_pearlequities_depthofmarket_mach_v1_3_d.mach_message = {}

-- Display: Mach Message
miax_pearlequities_depthofmarket_mach_v1_3_d.mach_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mach Message
miax_pearlequities_depthofmarket_mach_v1_3_d.mach_message.fields = function(buffer, offset, packet, parent, size_of_mach_message)
  local index = offset

  -- Mach Packet Header: Struct of 4 fields
  index, mach_packet_header = miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Mach Packet Type
  local mach_packet_type = buffer(index - 2, 1):le_uint()

  -- Payload: Runtime Type with 4 branches
  index = miax_pearlequities_depthofmarket_mach_v1_3_d.payload.dissect(buffer, index, packet, parent, mach_packet_type)

  return index
end

-- Dissect: Mach Message
miax_pearlequities_depthofmarket_mach_v1_3_d.mach_message.dissect = function(buffer, offset, packet, parent, size_of_mach_message)
  local index = offset + size_of_mach_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.mach_message, buffer(offset, 0))
    local current = miax_pearlequities_depthofmarket_mach_v1_3_d.mach_message.fields(buffer, offset, packet, parent, size_of_mach_message)
    parent:set_len(size_of_mach_message)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.mach_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_pearlequities_depthofmarket_mach_v1_3_d.mach_message.fields(buffer, offset, packet, parent, size_of_mach_message)

    return index
  end
end

-- Udp Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.udp_packet = {}

-- Verify required size of Udp packet
miax_pearlequities_depthofmarket_mach_v1_3_d.udp_packet.requiredsize = function(buffer)
  return buffer:len() >= miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_header.size
end

-- Dissect Udp Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.udp_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = miax_pearlequities_depthofmarket_mach_v1_3_d.conversation.data(packet)
  if not packet.visited then
    data.seconds.frames[packet.number] = data.seconds.last
  end
  miax_pearlequities_depthofmarket_mach_v1_3_d.seconds.current = data.seconds.frames[packet.number]
  miax_pearlequities_depthofmarket_mach_v1_3_d.conversation.current = data

  local index = 0

  -- Dependency for Mach Message
  local end_of_payload = buffer:len()

  -- Mach Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Mach Packet Length
    local mach_packet_length = buffer(index + 8, 2):le_uint()

    -- Runtime Size Of: Mach Message
    index, mach_message = miax_pearlequities_depthofmarket_mach_v1_3_d.mach_message.dissect(buffer, index, packet, parent, mach_packet_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_miax_pearlequities_depthofmarket_mach_v1_3_d.init()
  miax_pearlequities_depthofmarket_mach_v1_3_d.seconds.current = nil
  miax_pearlequities_depthofmarket_mach_v1_3_d.conversation.current = nil
  miax_pearlequities_depthofmarket_mach_v1_3_d.conversation.flows = {}
end

-- Dissector for Miax PearlEquities DepthOfMarket Mach 1.3.d
function omi_miax_pearlequities_depthofmarket_mach_v1_3_d.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_miax_pearlequities_depthofmarket_mach_v1_3_d.name

  if packet.port_type == 3 then
    -- Dissect protocol
    local protocol = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d, buffer(), omi_miax_pearlequities_depthofmarket_mach_v1_3_d.description, "("..buffer:len().." Bytes)")
    return miax_pearlequities_depthofmarket_mach_v1_3_d.udp_packet.dissect(buffer, packet, protocol)
  end

  if packet.port_type == 2 then
    -- Dissect protocol
    local protocol = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d, buffer(), omi_miax_pearlequities_depthofmarket_mach_v1_3_d.description, "("..buffer:len().." Bytes)")
    return miax_pearlequities_depthofmarket_mach_v1_3_d.tcp_packet.dissect(buffer, packet, protocol)
  end
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Udp Packet: would its message dispatch accept this frame?
miax_pearlequities_depthofmarket_mach_v1_3_d.udp_packet.fingerprint = function(buffer)
  if buffer:len() < 11 then
    return false
  end

  local mach_packet_type = buffer(10, 1):le_uint()

  -- Heartbeat
  if mach_packet_type == 0 then
    return true
  end

  -- Start Of Session
  if mach_packet_type == 1 then
    return true
  end

  -- End Of Session
  if mach_packet_type == 2 then
    return true
  end

  -- Application Message: carries the application messages, which tell this protocol from others sharing the session framing
  if mach_packet_type == 3 then
    if buffer:len() < 13 then
      return false
    end

    local message_type = buffer(12, 1):uint()

    -- System Time Message
    if message_type == 49 then
      return true
    end

    -- Symbol Update Message
    if message_type == 1 then
      return true
    end

    -- System State Message
    if message_type == 83 then
      return true
    end

    -- Security Trading Status Notification Message
    if message_type == 4 then
      return true
    end

    -- Symbol Clear Message
    if message_type == 5 then
      return true
    end

    -- Add Order Message
    if message_type == 20 then
      return true
    end

    -- Modify Order Message
    if message_type == 21 then
      return true
    end

    -- Delete Order Message
    if message_type == 23 then
      return true
    end

    -- Order Execution Message
    if message_type == 24 then
      return true
    end

    -- Trade Message
    if message_type == 10 then
      return true
    end

    -- Trade Cancel Message
    if message_type == 11 then
      return true
    end

    return false
  end

  return false
end

-- Fingerprint of Tcp Packet: would its message dispatch accept this frame?
miax_pearlequities_depthofmarket_mach_v1_3_d.tcp_packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end

  local esesm_packet_type = buffer(2, 1):string()

  -- Sequenced Data Packet
  if esesm_packet_type == "s" then
    return true
  end

  -- Unsequenced Data Packet: carries the application messages, which tell this protocol from others sharing the session framing
  if esesm_packet_type == "U" then
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
  if esesm_packet_type == "l" then
    return true
  end

  -- Login Response
  if esesm_packet_type == "r" then
    return true
  end

  -- Synchronization Complete
  if esesm_packet_type == "c" then
    return true
  end

  -- Retransmission Request
  if esesm_packet_type == "a" then
    return true
  end

  -- Logout Request
  if esesm_packet_type == "X" then
    return true
  end

  -- Goodbye Packet
  if esesm_packet_type == "G" then
    return true
  end

  -- Trading Session Update
  if esesm_packet_type == "u" then
    return true
  end

  -- Server Heartbeat
  if esesm_packet_type == "0" then
    return true
  end

  -- Client Heartbeat
  if esesm_packet_type == "1" then
    return true
  end

  -- Test Packet
  if esesm_packet_type == "T" then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Miax PearlEquities DepthOfMarket Mach 1.3.d (Udp)
local function omi_miax_pearlequities_depthofmarket_mach_v1_3_d_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_pearlequities_depthofmarket_mach_v1_3_d.udp_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp udp packet message dispatch
  if not miax_pearlequities_depthofmarket_mach_v1_3_d.udp_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_pearlequities_depthofmarket_mach_v1_3_d
  omi_miax_pearlequities_depthofmarket_mach_v1_3_d.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Miax PearlEquities DepthOfMarket Mach 1.3.d (Tcp)
local function omi_miax_pearlequities_depthofmarket_mach_v1_3_d_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_pearlequities_depthofmarket_mach_v1_3_d.tcp_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp tcp packet message dispatch
  if not miax_pearlequities_depthofmarket_mach_v1_3_d.tcp_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_pearlequities_depthofmarket_mach_v1_3_d
  omi_miax_pearlequities_depthofmarket_mach_v1_3_d.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristics for Miax PearlEquities DepthOfMarket Mach 1.3.d
omi_miax_pearlequities_depthofmarket_mach_v1_3_d:register_heuristic("udp", omi_miax_pearlequities_depthofmarket_mach_v1_3_d_udp_heuristic)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d:register_heuristic("tcp", omi_miax_pearlequities_depthofmarket_mach_v1_3_d_tcp_heuristic)

-- Register Miax PearlEquities DepthOfMarket Mach 1.3.d for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_miax_pearlequities_depthofmarket_mach_v1_3_d)

-- Register Miax PearlEquities DepthOfMarket Mach 1.3.d for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_miax_pearlequities_depthofmarket_mach_v1_3_d)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Miami International Holdings
--   Version: 1.3.d
--   Date: Wednesday, February 4, 2026
--   Specification: pearl_equities_dom_feed.pdf
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
