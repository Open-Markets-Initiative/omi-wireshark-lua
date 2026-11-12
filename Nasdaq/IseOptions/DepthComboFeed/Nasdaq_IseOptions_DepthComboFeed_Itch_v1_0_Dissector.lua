-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq IseOptions DepthComboFeed Itch 1.0 Protocol
local omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0 = Proto("Omi.Nasdaq.IseOptions.DepthComboFeed.Itch.v1.0", "Nasdaq IseOptions DepthComboFeed Itch 1.0")

-- Protocol table
local nasdaq_iseoptions_depthcombofeed_itch_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq IseOptions DepthComboFeed Itch 1.0 Fields
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.acceptedsequencenumber", ftypes.UINT64, nil, nil, nil, "The sequence number in ASCII of the next Sequenced Message to be sent. Left padded with spaces.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.accepted_session = ProtoField.new("Accepted Session", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.acceptedsession", ftypes.STRING, nil, nil, nil, "The session ID of the session that is now logged into. Left padded with spaces.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.ask_market_size = ProtoField.new("Ask Market Size", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.askmarketsize", ftypes.UINT32, nil, nil, nil, "The aggregate market size on Ask side.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.ask_ntt_market_size = ProtoField.new("Ask Ntt Market Size", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.asknttmarketsize", ftypes.UINT32, nil, nil, nil, "The aggregate market size on Ask side.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.bid_market_size = ProtoField.new("Bid Market Size", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.bidmarketsize", ftypes.UINT32, nil, nil, nil, "The aggregate market size on Bid side.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.bid_ntt_market_size = ProtoField.new("Bid Ntt Market Size", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.bidnttmarketsize", ftypes.UINT32, nil, nil, nil, "The aggregate market size on Bid side.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.client_packet_type = ProtoField.new("Packet Type", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.clientpackettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type sent by the client")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.current_day = ProtoField.new("Current Day", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.currentday", ftypes.UINT8, nil, nil, nil, "The current calendar day, with values 1 to 31 inclusive.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.current_month = ProtoField.new("Current Month", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.currentmonth", ftypes.UINT8, nil, nil, nil, "The current calendar month, with values 1 to 12 inclusive, January=1, etc.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.currenttradingstate", ftypes.STRING, nil, nil, nil, "Reflects the current trading state for the strategy on the ISE market.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.current_year = ProtoField.new("Current Year", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.currentyear", ftypes.UINT16, nil, nil, nil, "The current calendar year (example: 2016).")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.cust_size = ProtoField.new("Cust Size", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.custsize", ftypes.UINT32, nil, nil, nil, "Aggregated Customer Professional quantity in the price level. Present for New and Change Update Actions only.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.debug_text = ProtoField.new("Debug Text", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.debugtext", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.depth_incrementals = ProtoField.new("Depth Incrementals", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.depthincrementals", ftypes.STRING, nil, nil, nil, "One update of one side of one price level. The Price, Size, Cust Size, ProCust Size and NTTSize fields are present for New and Change Update Actions only; if Update Action is Delete or Delete From they are absent, so the entry is 23 or 3 bytes long.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.depth_side = ProtoField.new("Depth Side", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.depthside", ftypes.STRING, nil, nil, nil, "The side of the book the update is on")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.event_code = ProtoField.new("Event Code", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.eventcode", ftypes.STRING, nil, nil, nil, "Refer to System Event Codes below")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.expiration_day = ProtoField.new("Expiration Day", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.expirationday", ftypes.UINT8, nil, nil, nil, "Day of the Month of expiration (1-31)")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.expirationmonth", ftypes.UINT8, nil, nil, nil, "Expiration Month of the option (1-12)")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.expirationyear", ftypes.UINT8, nil, nil, nil, "Last two digits of the year of the option expiration")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.explicitstrikeprice", ftypes.DOUBLE, nil, nil, nil, "Denotes the explicit strike price of the option. Refer to Data Types for field processing notes. Zero (0) for Stock Leg.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.first = ProtoField.new("First", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.first", ftypes.DOUBLE, nil, nil, nil, "Opening price for the day")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.high = ProtoField.new("High", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.high", ftypes.DOUBLE, nil, nil, nil, "High price for the day.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.last_price = ProtoField.new("Last Price", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.lastprice", ftypes.DOUBLE, nil, nil, nil, "Most recent price.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.leg_id = ProtoField.new("Leg Id", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.legid", ftypes.UINT8, nil, nil, nil, "Leg identifier within this strategy. This is an exchange-assigned 0-based index. E.g. Nth leg has LegId=N-1.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.leg_information = ProtoField.new("Leg Information", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.leginformation", ftypes.STRING, nil, nil, nil, "Leg information, legs repeated. n = 0, 1 and so on...")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.leg_ratio = ProtoField.new("Leg Ratio", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.legratio", ftypes.UINT32)
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.level = ProtoField.new("Level", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.level", ftypes.UINT8, nil, nil, nil, "The numeric order of the price level, where “1” is the (best) price level. With is feed, this field has a value from 1 to 5 inclusive.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.low = ProtoField.new("Low", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.low", ftypes.DOUBLE, nil, nil, nil, "Low price for the day.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.message_count = ProtoField.new("Message Count", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.messagecount", ftypes.UINT16, nil, nil, nil, "Number of messages to follow this header")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.message_length = ProtoField.new("Message Length", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.messagelength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.message_type = ProtoField.new("Message Type", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.messagetype", ftypes.STRING, nil, nil, nil, "Code identifying this message type")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.ntt_size = ProtoField.new("Ntt Size", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.nttsize", ftypes.UINT32, nil, nil, nil, "Limit size that can’t be traded through. Present for New and Change Update Actions only.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.number_of_depth_incrementals = ProtoField.new("Number Of Depth Incrementals", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.numberofdepthincrementals", ftypes.UINT8, nil, nil, nil, "Number of times the following 7 fields repeat. If the number of incrementals is N (the value of this field), then the offsets are evaluated “N” times, with values 0 to N-1 inclusive.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.number_of_legs = ProtoField.new("Number Of Legs", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.numberoflegs", ftypes.UINT8, nil, nil, nil, "Number of legs in the strategy")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.open_state = ProtoField.new("Open State", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.openstate", ftypes.STRING, nil, nil, nil, "Reflects the current eligibility for auto execution of the options security in the options market.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.option_id = ProtoField.new("Option Id", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.optionid", ftypes.UINT32, nil, nil, nil, "ISE’s Option ID for this leg, valid for the trading day. The same ID as the corresponding Option in the Options Directory Message. Zero (0) for Stock Leg.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.option_type = ProtoField.new("Option Type", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.optiontype", ftypes.STRING)
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.packetlength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.password = ProtoField.new("Password", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.password", ftypes.STRING, nil, nil, nil, "Login password")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.price = ProtoField.new("Price", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.price", ftypes.DOUBLE, nil, nil, nil, "Price level’s price (fixed point format with 6 whole number places followed by 4 decimal digits). Present for New and Change Update Actions only.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.pro_cust_size = ProtoField.new("Pro Cust Size", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.procustsize", ftypes.UINT32, nil, nil, nil, "Aggregated Customer quantity in the price level. Present for New and Change Update Actions only.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.quote_condition = ProtoField.new("Quote Condition", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.quotecondition", ftypes.STRING, nil, nil, nil, "Whether the strategy is quoting regularly or is pre-open or halted")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.rejectreasoncode", ftypes.STRING, nil, nil, nil, "Login Reject Codes")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.requestedsequencenumber", ftypes.UINT64, nil, nil, nil, "Specifies the next sequence number in ASCII the client wants to receive upon connection, or 0 to start receiving the most recently generated message.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.requestedsession", ftypes.STRING, nil, nil, nil, "Specifies the session the client would like to log into, or all blanks to log into the currently active session.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.securitysymbol", ftypes.STRING, nil, nil, nil, "Denotes the option root symbol (security symbol)")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.sequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the first message to follow this header")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.sequencedmessagetype", ftypes.STRING, nil, nil, nil, "Value identifying sequenced message type")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.server_packet_type = ProtoField.new("Packet Type", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.serverpackettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type sent by the server")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.session = ProtoField.new("Session", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.session", ftypes.STRING, nil, nil, nil, "Identity of the multicast session")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.side = ProtoField.new("Side", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.side", ftypes.STRING, nil, nil, nil, "Indicates the side of the leg")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.size = ProtoField.new("Size", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.size", ftypes.UINT32, nil, nil, nil, "Last traded quantity.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.source = ProtoField.new("Source", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.source", ftypes.UINT8, nil, nil, nil, "Identifies the source of the Strategy, valid for the trading day")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.strategy_id = ProtoField.new("Strategy Id", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.strategyid", ftypes.UINT32, nil, nil, nil, "ISE’s Strategy ID assigned daily, valid while there are any open complex orders for the day")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.strategy_type = ProtoField.new("Strategy Type", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.strategytype", ftypes.STRING, nil, nil, nil, "The kind of strategy the legs below make up")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.sub_version = ProtoField.new("Sub Version", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.subversion", ftypes.UINT8, nil, nil, nil, "Sub-version of this interface. Currently set to 0.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.timestamp", ftypes.UINT64, nil, nil, nil, "The time, expressed as the number of nanoseconds after midnight.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.trade_condition = ProtoField.new("Trade Condition", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.tradecondition", ftypes.STRING, nil, nil, nil, "Same value as the Trade Condition sent to OPRA for this trade. To obtain a list of Trade Conditions, refer to the NOTES below.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.underlyingsymbol", ftypes.STRING, nil, nil, nil, "Underlying Symbol for the strategy. All legs in this strategy belong to this Underlying")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.unsequencedmessage", ftypes.BYTES, nil, nil, nil, "The unsequenced (client to server) message carried by the packet, opaque bytes unless an application source dispatches it")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.unsequencedmessagetype", ftypes.STRING, nil, nil, nil, "Value identifying unsequenced message type")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.update_action = ProtoField.new("Update Action", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.updateaction", ftypes.STRING, nil, nil, nil, "What the update does to the price level")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.username = ProtoField.new("Username", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.username", ftypes.STRING, nil, nil, nil, "Session username")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.version = ProtoField.new("Version", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.version", ftypes.UINT8, nil, nil, nil, "Version of this interface. Currently set to 1.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.volume = ProtoField.new("Volume", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.volume", ftypes.UINT32, nil, nil, nil, "Total traded quantity.")

-- Nasdaq IseOptions DepthComboFeed Itch 1.0 Framing
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.client_packet = ProtoField.new("Packet", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.clientpacket", ftypes.STRING, nil, nil, nil, "SoupBinTCP Packet sent by the client")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.client_packet_header = ProtoField.new("Packet Header", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.clientpacketheader", ftypes.STRING, nil, nil, nil, "Packet header of a packet sent by the client")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.clientsoupbintcppacket", ftypes.STRING, nil, nil, nil, "Soup Bin Tcp Packet sent by the client")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.message = ProtoField.new("Message", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.message", ftypes.STRING, nil, nil, nil, "Mold Udp64 Message")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.message_header = ProtoField.new("Message Header", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.messageheader", ftypes.STRING, nil, nil, nil, "Mold Udp 64 Message Header")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.packet = ProtoField.new("Packet", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.packet", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.packetheader", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet Header")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.server_packet = ProtoField.new("Packet", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.serverpacket", ftypes.STRING, nil, nil, nil, "SoupBinTCP Packet sent by the server")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.server_packet_header = ProtoField.new("Packet Header", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.serverpacketheader", ftypes.STRING, nil, nil, nil, "Packet header of a packet sent by the server")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.serversoupbintcppacket", ftypes.STRING, nil, nil, nil, "Soup Bin Tcp Packet sent by the server")

-- Nasdaq IseOptions DepthComboFeed 1.0 Session Messages
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.clientheartbeat", ftypes.BYTES, nil, nil, nil, "SoupBinTCP client sends a heartbeat to indicate the connection is alive; carries no payload")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.debugpacket", ftypes.STRING, nil, nil, nil, "Debug packets are intended to provide human readable text that may aid in debugging problems")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.endofsession", ftypes.BYTES, nil, nil, nil, "Mold Udp64 end of session")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.heartbeat = ProtoField.new("Heartbeat", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.heartbeat", ftypes.BYTES, nil, nil, nil, "Mold Udp64 heartbeat")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.loginacceptedpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP server sends a Login Accepted Packet in response to receiving a valid Login Request from the client")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.loginrejectedpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP server sends this packet in response to an invalid Login Request Packet from the client")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.loginrequestpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP client must send a Login Request Packet immediately upon establishing a new TCP/IP socket connection to the server")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.logout_request = ProtoField.new("Logout Request", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.logoutrequest", ftypes.BYTES, nil, nil, nil, "SoupBinTCP client requests session logout; server completes any in-flight messages then closes. Carries no payload")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.sequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Sequenced Data Packets act as an envelope to carry the actual sequenced data messages that are transferred from the server to the client. Each Sequenced Data Packet carries one message from the higher-lever protocol")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.serverheartbeat", ftypes.BYTES, nil, nil, nil, "SoupBinTCP server sends a heartbeat to indicate the connection is alive; carries no payload")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.unsequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Unsequenced Data Packets act as an envelope to carry the actual data messages that are transferred from the client to the server")

-- Nasdaq IseOptions DepthComboFeed 1.0 Application Messages
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.complex_strategy_directory_message = ProtoField.new("Complex Strategy Directory Message", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.complexstrategydirectorymessage", ftypes.STRING, nil, nil, nil, "Whenever a complex order is added in the system for an underlying, the order is normalized and results in either the creation of a new complex strategy or is added to an existing strategy. A Complex Strategy Message containing the strategy definition will be sent.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.complex_strategy_ticker_message = ProtoField.new("Complex Strategy Ticker Message", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.complexstrategytickermessage", ftypes.STRING, nil, nil, nil, "The ticker message is used to send real time trade information.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.strategy_depth_incremental_message = ProtoField.new("Strategy Depth Incremental Message", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.strategydepthincrementalmessage", ftypes.STRING, nil, nil, nil, "This message is used to send information regarding any of the top five price levels of an option’s order book. The message may contain multiple repeating items, each of which updates one side of one price level. All repeating items within the message relate to the same option.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.strategy_open_closed_message = ProtoField.new("Strategy Open Closed Message", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.strategyopenclosedmessage", ftypes.STRING, nil, nil, nil, "The options system uses this administrative message to indicate when a strategy has completed the opening process and is now available for auto execution or when the option has closed and is no longer available for auto execution.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.strategy_trading_action_message = ProtoField.new("Strategy Trading Action Message", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.strategytradingactionmessage", ftypes.STRING, nil, nil, nil, "ISE uses this administrative message to indicate the current trading status of a strategy within the ISE Options Market. Messages will be sent when the strategy is halted or is released for trading.")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.systemeventmessage", ftypes.STRING, nil, nil, nil, "The system event message type is used to signal a market or data feed handler event.")

-- Nasdaq IseOptions DepthComboFeed Itch 1.0 Generated Fields
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.depth_incrementals_index = ProtoField.new("Depth Incrementals Index", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.depthincrementalsindex", ftypes.UINT16)
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.leg_information_index = ProtoField.new("Leg Information Index", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.leginformationindex", ftypes.UINT16)
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.message_index = ProtoField.new("Message Index", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.messageindex", ftypes.UINT16)
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.messagesequencenumber", ftypes.UINT64)
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "nasdaq.iseoptions.depthcombofeed.itch.v1.0.sequenceddatapacketsequencenumber", ftypes.UINT64)

-- Nasdaq IseOptions DepthComboFeed Itch 1.0 Expert Info
nasdaq_iseoptions_depthcombofeed_itch_v1_0.experts = {}
nasdaq_iseoptions_depthcombofeed_itch_v1_0.experts.not_a_number = ProtoExpert.new("nasdaq.iseoptions.depthcombofeed.itch.v1.0.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.experts = { nasdaq_iseoptions_depthcombofeed_itch_v1_0.experts.not_a_number }

-----------------------------------------------------------------------
-- Nasdaq IseOptions DepthComboFeed Itch 1.0 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime Local", 2 },
  { 4, "Full DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=Full DateTime Local, 3=Full DateTime Utc
nasdaq_iseoptions_depthcombofeed_itch_v1_0.timestamp_format = 2

-- assumed connection role
local role_enum = {
  { 1, "Resolve from the conversation", 0 },
  { 2, "Initiator", 1 },
  { 3, "Acceptor", 2 }
}


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq IseOptions DepthComboFeed Itch 1.0 Element Dissection Options
show.structs = true
show.headers = true
show.application_messages = true
show.session_messages = true
show.repeating_groups = true
show.indexes = true
show.sequences = true

-- Register Nasdaq IseOptions DepthComboFeed Itch 1.0 Show Options
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.show_headers then
    show.headers = omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.show_headers
  end
  if show.repeating_groups ~= omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.show_repeating_groups then
    show.repeating_groups = omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.show_repeating_groups
  end
  if show.session_messages ~= omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.show_session_messages
  end
  if show.structs ~= omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.show_structs then
    show.structs = omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.show_indexes then
    show.indexes = omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.show_indexes
  end
  if show.sequences ~= omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.show_sequences then
    show.sequences = omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.show_sequences
  end
  if nasdaq_iseoptions_depthcombofeed_itch_v1_0.timestamp_format ~= omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.timestamp_format then
    nasdaq_iseoptions_depthcombofeed_itch_v1_0.timestamp_format = omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.timestamp_format
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nasdaq_iseoptions_depthcombofeed_itch_v1_0.conversation = {}
nasdaq_iseoptions_depthcombofeed_itch_v1_0.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
nasdaq_iseoptions_depthcombofeed_itch_v1_0.stream_frame = nil
nasdaq_iseoptions_depthcombofeed_itch_v1_0.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
nasdaq_iseoptions_depthcombofeed_itch_v1_0.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nasdaq_iseoptions_depthcombofeed_itch_v1_0.conversation.data = function(packet)
  local key = nasdaq_iseoptions_depthcombofeed_itch_v1_0.conversation.key(packet)
  local data = nasdaq_iseoptions_depthcombofeed_itch_v1_0.conversation.flows[key]
  if data == nil then
    data = { accepted_sequence_number = { last = nil, frames = {} }, sequence = { next = nil, frames = {} } }
    nasdaq_iseoptions_depthcombofeed_itch_v1_0.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nasdaq_iseoptions_depthcombofeed_itch_v1_0.conversation.current = nil


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

-- trim leading spaces
trim_left_spaces = function(str)
  local start = 1

  while start <= str:len() and str:byte(start) == 0x20 do
    start = start + 1
  end

  return str:sub(start)
end

-- ascii digits as an unsigned 64 bit value, nil when the run is no number
ascii_to_uint64 = function(str)
  -- UInt64.new reads a leading zero as octal, so "0045296" would read as 298
  local significant = str:match("^%s*0*(%d+)%s*$")

  if significant == nil then
    return nil
  end

  local value = UInt64.new(significant)

  -- UInt64.new stops at its maximum rather than failing, so a wider run is read back
  if #significant > 19 and tostring(value) ~= significant then
    return nil
  end

  return value
end


-----------------------------------------------------------------------
-- Nasdaq IseOptions DepthComboFeed Itch 1.0 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
nasdaq_iseoptions_depthcombofeed_itch_v1_0.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
nasdaq_iseoptions_depthcombofeed_itch_v1_0.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
nasdaq_iseoptions_depthcombofeed_itch_v1_0.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
nasdaq_iseoptions_depthcombofeed_itch_v1_0.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.accepted_sequence_number, range, value, "Accepted Sequence Number: Not Applicable")
    item:add_proto_expert_info(nasdaq_iseoptions_depthcombofeed_itch_v1_0.experts.not_a_number, "Accepted Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
nasdaq_iseoptions_depthcombofeed_itch_v1_0.accepted_session = {}

-- Size: Accepted Session
nasdaq_iseoptions_depthcombofeed_itch_v1_0.accepted_session.size = 10

-- Display: Accepted Session
nasdaq_iseoptions_depthcombofeed_itch_v1_0.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
nasdaq_iseoptions_depthcombofeed_itch_v1_0.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.accepted_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Ask Market Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.ask_market_size = {}

-- Size: Ask Market Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.ask_market_size.size = 4

-- Display: Ask Market Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.ask_market_size.display = function(value)
  return "Ask Market Size: "..value
end

-- Dissect: Ask Market Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.ask_market_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.ask_market_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.ask_market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.ask_market_size, range, value, display)

  return offset + length, value
end

-- Ask Ntt Market Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.ask_ntt_market_size = {}

-- Size: Ask Ntt Market Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.ask_ntt_market_size.size = 4

-- Display: Ask Ntt Market Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.ask_ntt_market_size.display = function(value)
  return "Ask Ntt Market Size: "..value
end

-- Dissect: Ask Ntt Market Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.ask_ntt_market_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.ask_ntt_market_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.ask_ntt_market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.ask_ntt_market_size, range, value, display)

  return offset + length, value
end

-- Bid Market Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.bid_market_size = {}

-- Size: Bid Market Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.bid_market_size.size = 4

-- Display: Bid Market Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.bid_market_size.display = function(value)
  return "Bid Market Size: "..value
end

-- Dissect: Bid Market Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.bid_market_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.bid_market_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.bid_market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.bid_market_size, range, value, display)

  return offset + length, value
end

-- Bid Ntt Market Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.bid_ntt_market_size = {}

-- Size: Bid Ntt Market Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.bid_ntt_market_size.size = 4

-- Display: Bid Ntt Market Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.bid_ntt_market_size.display = function(value)
  return "Bid Ntt Market Size: "..value
end

-- Dissect: Bid Ntt Market Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.bid_ntt_market_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.bid_ntt_market_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.bid_ntt_market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.bid_ntt_market_size, range, value, display)

  return offset + length, value
end

-- Client Packet Type
nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_packet_type = {}

-- Size: Client Packet Type
nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_packet_type.size = 1

-- Display: Client Packet Type
nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_packet_type.labels = {
  ["+"] = "Packet Type: Debug Packet (+)",
  ["L"] = "Packet Type: Login Request Packet (L)",
  ["U"] = "Packet Type: Unsequenced Data Packet (U)",
  ["R"] = "Packet Type: Client Heartbeat Packet (R)",
  ["O"] = "Packet Type: Logout Request Packet (O)",
}

nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_packet_type.display = function(value)
  return nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Client Packet Type
nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Current Day
nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_day = {}

-- Size: Current Day
nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_day.size = 1

-- Display: Current Day
nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_day.display = function(value)
  return "Current Day: "..value
end

-- Dissect: Current Day
nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_day.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_day.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.current_day, range, value, display)

  return offset + length, value
end

-- Current Month
nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_month = {}

-- Size: Current Month
nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_month.size = 1

-- Display: Current Month
nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_month.display = function(value)
  return "Current Month: "..value
end

-- Dissect: Current Month
nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_month.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_month.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.current_month, range, value, display)

  return offset + length, value
end

-- Current Trading State
nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_trading_state = {}

-- Size: Current Trading State
nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_trading_state.labels = {
  ["H"] = "Current Trading State: Halt In Effect (H)",
  ["T"] = "Current Trading State: Trading (T)",
}

nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_trading_state.display = function(value)
  return nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_trading_state.labels[value] or "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Current Year
nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_year = {}

-- Size: Current Year
nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_year.size = 2

-- Display: Current Year
nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_year.display = function(value)
  return "Current Year: "..value
end

-- Dissect: Current Year
nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_year.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.current_year, range, value, display)

  return offset + length, value
end

-- Cust Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.cust_size = {}

-- Size: Cust Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.cust_size.size = 4

-- Display: Cust Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.cust_size.display = function(value)
  return "Cust Size: "..value
end

-- Dissect: Cust Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.cust_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.cust_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.cust_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.cust_size, range, value, display)

  return offset + length, value
end

-- Debug Text
nasdaq_iseoptions_depthcombofeed_itch_v1_0.debug_text = {}

-- Display: Debug Text
nasdaq_iseoptions_depthcombofeed_itch_v1_0.debug_text.display = function(value)
  return "Debug Text: "..value
end

-- Dissect runtime sized field: Debug Text
nasdaq_iseoptions_depthcombofeed_itch_v1_0.debug_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.debug_text.display(value, packet, parent, size)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.debug_text, range, value, display)

  return offset + size, value
end

-- Depth Side
nasdaq_iseoptions_depthcombofeed_itch_v1_0.depth_side = {}

-- Size: Depth Side
nasdaq_iseoptions_depthcombofeed_itch_v1_0.depth_side.size = 1

-- Display: Depth Side
nasdaq_iseoptions_depthcombofeed_itch_v1_0.depth_side.labels = {
  ["B"] = "Depth Side: Bid (B)",
  ["A"] = "Depth Side: Ask (A)",
}

nasdaq_iseoptions_depthcombofeed_itch_v1_0.depth_side.display = function(value)
  return nasdaq_iseoptions_depthcombofeed_itch_v1_0.depth_side.labels[value] or "Depth Side: Unknown("..value..")"
end

-- Dissect: Depth Side
nasdaq_iseoptions_depthcombofeed_itch_v1_0.depth_side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.depth_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.depth_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.depth_side, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_iseoptions_depthcombofeed_itch_v1_0.event_code = {}

-- Size: Event Code
nasdaq_iseoptions_depthcombofeed_itch_v1_0.event_code.size = 1

-- Display: Event Code
nasdaq_iseoptions_depthcombofeed_itch_v1_0.event_code.labels = {
  ["O"] = "Event Code: Start Of Messages (O)",
  ["S"] = "Event Code: Start Of System Hours (S)",
  ["Q"] = "Event Code: Start Of Opening Process (Q)",
  ["N"] = "Event Code: Start Of Normal Hours Closing Process (N)",
  ["L"] = "Event Code: Start Of Late Hours Closing Process (L)",
  ["E"] = "Event Code: End Of System Hours (E)",
  ["C"] = "Event Code: End Of Messages (C)",
  ["W"] = "Event Code: End Of Wco Early Closing (W)",
}

nasdaq_iseoptions_depthcombofeed_itch_v1_0.event_code.display = function(value)
  return nasdaq_iseoptions_depthcombofeed_itch_v1_0.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_iseoptions_depthcombofeed_itch_v1_0.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.event_code, range, value, display)

  return offset + length, value
end

-- Expiration Day
nasdaq_iseoptions_depthcombofeed_itch_v1_0.expiration_day = {}

-- Size: Expiration Day
nasdaq_iseoptions_depthcombofeed_itch_v1_0.expiration_day.size = 1

-- Display: Expiration Day
nasdaq_iseoptions_depthcombofeed_itch_v1_0.expiration_day.display = function(value)
  return "Expiration Day: "..value
end

-- Dissect: Expiration Day
nasdaq_iseoptions_depthcombofeed_itch_v1_0.expiration_day.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.expiration_day.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.expiration_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.expiration_day, range, value, display)

  return offset + length, value
end

-- Expiration Month
nasdaq_iseoptions_depthcombofeed_itch_v1_0.expiration_month = {}

-- Size: Expiration Month
nasdaq_iseoptions_depthcombofeed_itch_v1_0.expiration_month.size = 1

-- Display: Expiration Month
nasdaq_iseoptions_depthcombofeed_itch_v1_0.expiration_month.display = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
nasdaq_iseoptions_depthcombofeed_itch_v1_0.expiration_month.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.expiration_month.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.expiration_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Expiration Year
nasdaq_iseoptions_depthcombofeed_itch_v1_0.expiration_year = {}

-- Size: Expiration Year
nasdaq_iseoptions_depthcombofeed_itch_v1_0.expiration_year.size = 1

-- Display: Expiration Year
nasdaq_iseoptions_depthcombofeed_itch_v1_0.expiration_year.display = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
nasdaq_iseoptions_depthcombofeed_itch_v1_0.expiration_year.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.expiration_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.expiration_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Explicit Strike Price
nasdaq_iseoptions_depthcombofeed_itch_v1_0.explicit_strike_price = {}

-- Size: Explicit Strike Price
nasdaq_iseoptions_depthcombofeed_itch_v1_0.explicit_strike_price.size = 8

-- Display: Explicit Strike Price
nasdaq_iseoptions_depthcombofeed_itch_v1_0.explicit_strike_price.display = function(value)
  return "Explicit Strike Price: "..value
end

-- Translate: Explicit Strike Price
nasdaq_iseoptions_depthcombofeed_itch_v1_0.explicit_strike_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Explicit Strike Price
nasdaq_iseoptions_depthcombofeed_itch_v1_0.explicit_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.explicit_strike_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_iseoptions_depthcombofeed_itch_v1_0.explicit_strike_price.translate(raw)
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.explicit_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.explicit_strike_price, range, value, display)

  return offset + length, value
end

-- First
nasdaq_iseoptions_depthcombofeed_itch_v1_0.first = {}

-- Size: First
nasdaq_iseoptions_depthcombofeed_itch_v1_0.first.size = 8

-- Display: First
nasdaq_iseoptions_depthcombofeed_itch_v1_0.first.display = function(value)
  return "First: "..value
end

-- Translate: First
nasdaq_iseoptions_depthcombofeed_itch_v1_0.first.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: First
nasdaq_iseoptions_depthcombofeed_itch_v1_0.first.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.first.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_iseoptions_depthcombofeed_itch_v1_0.first.translate(raw)
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.first.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.first, range, value, display)

  return offset + length, value
end

-- High
nasdaq_iseoptions_depthcombofeed_itch_v1_0.high = {}

-- Size: High
nasdaq_iseoptions_depthcombofeed_itch_v1_0.high.size = 8

-- Display: High
nasdaq_iseoptions_depthcombofeed_itch_v1_0.high.display = function(value)
  return "High: "..value
end

-- Translate: High
nasdaq_iseoptions_depthcombofeed_itch_v1_0.high.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: High
nasdaq_iseoptions_depthcombofeed_itch_v1_0.high.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.high.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_iseoptions_depthcombofeed_itch_v1_0.high.translate(raw)
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.high.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.high, range, value, display)

  return offset + length, value
end

-- Last Price
nasdaq_iseoptions_depthcombofeed_itch_v1_0.last_price = {}

-- Size: Last Price
nasdaq_iseoptions_depthcombofeed_itch_v1_0.last_price.size = 8

-- Display: Last Price
nasdaq_iseoptions_depthcombofeed_itch_v1_0.last_price.display = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
nasdaq_iseoptions_depthcombofeed_itch_v1_0.last_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Price
nasdaq_iseoptions_depthcombofeed_itch_v1_0.last_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.last_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_iseoptions_depthcombofeed_itch_v1_0.last_price.translate(raw)
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.last_price, range, value, display)

  return offset + length, value
end

-- Leg Id
nasdaq_iseoptions_depthcombofeed_itch_v1_0.leg_id = {}

-- Size: Leg Id
nasdaq_iseoptions_depthcombofeed_itch_v1_0.leg_id.size = 1

-- Display: Leg Id
nasdaq_iseoptions_depthcombofeed_itch_v1_0.leg_id.display = function(value)
  return "Leg Id: "..value
end

-- Dissect: Leg Id
nasdaq_iseoptions_depthcombofeed_itch_v1_0.leg_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.leg_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.leg_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.leg_id, range, value, display)

  return offset + length, value
end

-- Leg Ratio
nasdaq_iseoptions_depthcombofeed_itch_v1_0.leg_ratio = {}

-- Size: Leg Ratio
nasdaq_iseoptions_depthcombofeed_itch_v1_0.leg_ratio.size = 4

-- Display: Leg Ratio
nasdaq_iseoptions_depthcombofeed_itch_v1_0.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
nasdaq_iseoptions_depthcombofeed_itch_v1_0.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Level
nasdaq_iseoptions_depthcombofeed_itch_v1_0.level = {}

-- Size: Level
nasdaq_iseoptions_depthcombofeed_itch_v1_0.level.size = 1

-- Display: Level
nasdaq_iseoptions_depthcombofeed_itch_v1_0.level.display = function(value)
  return "Level: "..value
end

-- Dissect: Level
nasdaq_iseoptions_depthcombofeed_itch_v1_0.level.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.level.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.level.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.level, range, value, display)

  return offset + length, value
end

-- Low
nasdaq_iseoptions_depthcombofeed_itch_v1_0.low = {}

-- Size: Low
nasdaq_iseoptions_depthcombofeed_itch_v1_0.low.size = 8

-- Display: Low
nasdaq_iseoptions_depthcombofeed_itch_v1_0.low.display = function(value)
  return "Low: "..value
end

-- Translate: Low
nasdaq_iseoptions_depthcombofeed_itch_v1_0.low.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Low
nasdaq_iseoptions_depthcombofeed_itch_v1_0.low.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.low.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_iseoptions_depthcombofeed_itch_v1_0.low.translate(raw)
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.low.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.low, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_count = {}

-- Size: Message Count
nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_count.size = 2

-- Display: Message Count
nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_length = {}

-- Size: Message Length
nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_length.size = 2

-- Display: Message Length
nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_type = {}

-- Size: Message Type
nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_type.size = 1

-- Display: Message Type
nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_type.labels = {
  ["S"] = "Message Type: System Event Message (S)",
  ["R"] = "Message Type: Complex Strategy Directory Message (R)",
  ["H"] = "Message Type: Strategy Trading Action Message (H)",
  ["O"] = "Message Type: Strategy Open Closed Message (O)",
  ["K"] = "Message Type: Strategy Depth Incremental Message (K)",
  ["t"] = "Message Type: Complex Strategy Ticker Message (t)",
}

nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_type.display = function(value)
  return nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Ntt Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.ntt_size = {}

-- Size: Ntt Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.ntt_size.size = 4

-- Display: Ntt Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.ntt_size.display = function(value)
  return "Ntt Size: "..value
end

-- Dissect: Ntt Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.ntt_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.ntt_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.ntt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.ntt_size, range, value, display)

  return offset + length, value
end

-- Number Of Depth Incrementals
nasdaq_iseoptions_depthcombofeed_itch_v1_0.number_of_depth_incrementals = {}

-- Size: Number Of Depth Incrementals
nasdaq_iseoptions_depthcombofeed_itch_v1_0.number_of_depth_incrementals.size = 1

-- Display: Number Of Depth Incrementals
nasdaq_iseoptions_depthcombofeed_itch_v1_0.number_of_depth_incrementals.display = function(value)
  return "Number Of Depth Incrementals: "..value
end

-- Dissect: Number Of Depth Incrementals
nasdaq_iseoptions_depthcombofeed_itch_v1_0.number_of_depth_incrementals.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.number_of_depth_incrementals.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.number_of_depth_incrementals.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.number_of_depth_incrementals, range, value, display)

  return offset + length, value
end

-- Number Of Legs
nasdaq_iseoptions_depthcombofeed_itch_v1_0.number_of_legs = {}

-- Size: Number Of Legs
nasdaq_iseoptions_depthcombofeed_itch_v1_0.number_of_legs.size = 1

-- Display: Number Of Legs
nasdaq_iseoptions_depthcombofeed_itch_v1_0.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
nasdaq_iseoptions_depthcombofeed_itch_v1_0.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Open State
nasdaq_iseoptions_depthcombofeed_itch_v1_0.open_state = {}

-- Size: Open State
nasdaq_iseoptions_depthcombofeed_itch_v1_0.open_state.size = 1

-- Display: Open State
nasdaq_iseoptions_depthcombofeed_itch_v1_0.open_state.labels = {
  ["Y"] = "Open State: Open (Y)",
  ["N"] = "Open State: Closed (N)",
}

nasdaq_iseoptions_depthcombofeed_itch_v1_0.open_state.display = function(value)
  return nasdaq_iseoptions_depthcombofeed_itch_v1_0.open_state.labels[value] or "Open State: Unknown("..value..")"
end

-- Dissect: Open State
nasdaq_iseoptions_depthcombofeed_itch_v1_0.open_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.open_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.open_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.open_state, range, value, display)

  return offset + length, value
end

-- Option Id
nasdaq_iseoptions_depthcombofeed_itch_v1_0.option_id = {}

-- Size: Option Id
nasdaq_iseoptions_depthcombofeed_itch_v1_0.option_id.size = 4

-- Display: Option Id
nasdaq_iseoptions_depthcombofeed_itch_v1_0.option_id.display = function(value)
  return "Option Id: "..value
end

-- Dissect: Option Id
nasdaq_iseoptions_depthcombofeed_itch_v1_0.option_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.option_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.option_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.option_id, range, value, display)

  return offset + length, value
end

-- Option Type
nasdaq_iseoptions_depthcombofeed_itch_v1_0.option_type = {}

-- Size: Option Type
nasdaq_iseoptions_depthcombofeed_itch_v1_0.option_type.size = 1

-- Display: Option Type
nasdaq_iseoptions_depthcombofeed_itch_v1_0.option_type.display = function(value)
  if value == "C" then
    return "Option Type: Call (C)"
  end
  if value == "P" then
    return "Option Type: Put (P)"
  end
  if value == " " then
    return "Option Type: Na (<whitespace>)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nasdaq_iseoptions_depthcombofeed_itch_v1_0.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.option_type, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_iseoptions_depthcombofeed_itch_v1_0.packet_length = {}

-- Size: Packet Length
nasdaq_iseoptions_depthcombofeed_itch_v1_0.packet_length.size = 2

-- Display: Packet Length
nasdaq_iseoptions_depthcombofeed_itch_v1_0.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_iseoptions_depthcombofeed_itch_v1_0.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_iseoptions_depthcombofeed_itch_v1_0.password = {}

-- Size: Password
nasdaq_iseoptions_depthcombofeed_itch_v1_0.password.size = 10

-- Display: Password
nasdaq_iseoptions_depthcombofeed_itch_v1_0.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_iseoptions_depthcombofeed_itch_v1_0.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.password, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_iseoptions_depthcombofeed_itch_v1_0.price = {}

-- Size: Price
nasdaq_iseoptions_depthcombofeed_itch_v1_0.price.size = 4

-- Display: Price
nasdaq_iseoptions_depthcombofeed_itch_v1_0.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nasdaq_iseoptions_depthcombofeed_itch_v1_0.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
nasdaq_iseoptions_depthcombofeed_itch_v1_0.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_iseoptions_depthcombofeed_itch_v1_0.price.translate(raw)
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.price, range, value, display)

  return offset + length, value
end

-- Pro Cust Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.pro_cust_size = {}

-- Size: Pro Cust Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.pro_cust_size.size = 4

-- Display: Pro Cust Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.pro_cust_size.display = function(value)
  return "Pro Cust Size: "..value
end

-- Dissect: Pro Cust Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.pro_cust_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.pro_cust_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.pro_cust_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.pro_cust_size, range, value, display)

  return offset + length, value
end

-- Quote Condition
nasdaq_iseoptions_depthcombofeed_itch_v1_0.quote_condition = {}

-- Size: Quote Condition
nasdaq_iseoptions_depthcombofeed_itch_v1_0.quote_condition.size = 1

-- Display: Quote Condition
nasdaq_iseoptions_depthcombofeed_itch_v1_0.quote_condition.display = function(value)
  if value == " " then
    return "Quote Condition: Regular Quote (<whitespace>)"
  end
  if value == "X" then
    return "Quote Condition: Halted (X)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
nasdaq_iseoptions_depthcombofeed_itch_v1_0.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_iseoptions_depthcombofeed_itch_v1_0.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_iseoptions_depthcombofeed_itch_v1_0.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_iseoptions_depthcombofeed_itch_v1_0.reject_reason_code.labels = {
  ["A"] = "Reject Reason Code: Not Authorized (A)",
  ["S"] = "Reject Reason Code: Session Not Available (S)",
}

nasdaq_iseoptions_depthcombofeed_itch_v1_0.reject_reason_code.display = function(value)
  return nasdaq_iseoptions_depthcombofeed_itch_v1_0.reject_reason_code.labels[value] or "Reject Reason Code: Unknown("..value..")"
end

-- Dissect: Reject Reason Code
nasdaq_iseoptions_depthcombofeed_itch_v1_0.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_iseoptions_depthcombofeed_itch_v1_0.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_iseoptions_depthcombofeed_itch_v1_0.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_iseoptions_depthcombofeed_itch_v1_0.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_iseoptions_depthcombofeed_itch_v1_0.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.requested_sequence_number, range, value, "Requested Sequence Number: Not Applicable")
    item:add_proto_expert_info(nasdaq_iseoptions_depthcombofeed_itch_v1_0.experts.not_a_number, "Requested Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_iseoptions_depthcombofeed_itch_v1_0.requested_session = {}

-- Size: Requested Session
nasdaq_iseoptions_depthcombofeed_itch_v1_0.requested_session.size = 10

-- Display: Requested Session
nasdaq_iseoptions_depthcombofeed_itch_v1_0.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_iseoptions_depthcombofeed_itch_v1_0.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.requested_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Security Symbol
nasdaq_iseoptions_depthcombofeed_itch_v1_0.security_symbol = {}

-- Size: Security Symbol
nasdaq_iseoptions_depthcombofeed_itch_v1_0.security_symbol.size = 6

-- Display: Security Symbol
nasdaq_iseoptions_depthcombofeed_itch_v1_0.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_iseoptions_depthcombofeed_itch_v1_0.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequence_number = {}

-- Size: Sequence Number
nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequenced_message_type = {}

-- Size: Sequenced Message Type
nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequenced_message_type.labels = {
  ["S"] = "Sequenced Message Type: System Event Message (S)",
  ["R"] = "Sequenced Message Type: Complex Strategy Directory Message (R)",
  ["H"] = "Sequenced Message Type: Strategy Trading Action Message (H)",
  ["O"] = "Sequenced Message Type: Strategy Open Closed Message (O)",
  ["K"] = "Sequenced Message Type: Strategy Depth Incremental Message (K)",
  ["t"] = "Sequenced Message Type: Complex Strategy Ticker Message (t)",
}

nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequenced_message_type.display = function(value)
  return nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequenced_message_type.labels[value] or "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_packet_type = {}

-- Size: Server Packet Type
nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_packet_type.size = 1

-- Display: Server Packet Type
nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_packet_type.labels = {
  ["+"] = "Packet Type: Debug Packet (+)",
  ["A"] = "Packet Type: Login Accepted Packet (A)",
  ["J"] = "Packet Type: Login Rejected Packet (J)",
  ["S"] = "Packet Type: Sequenced Data Packet (S)",
  ["H"] = "Packet Type: Server Heartbeat Packet (H)",
  ["Z"] = "Packet Type: End Of Session Packet (Z)",
}

nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_packet_type.display = function(value)
  return nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Server Packet Type
nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_iseoptions_depthcombofeed_itch_v1_0.session = {}

-- Size: Session
nasdaq_iseoptions_depthcombofeed_itch_v1_0.session.size = 10

-- Display: Session
nasdaq_iseoptions_depthcombofeed_itch_v1_0.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_iseoptions_depthcombofeed_itch_v1_0.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.session.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.session, range, value, display)

  return offset + length, value
end

-- Side
nasdaq_iseoptions_depthcombofeed_itch_v1_0.side = {}

-- Size: Side
nasdaq_iseoptions_depthcombofeed_itch_v1_0.side.size = 1

-- Display: Side
nasdaq_iseoptions_depthcombofeed_itch_v1_0.side.labels = {
  ["B"] = "Side: Buy (B)",
  ["S"] = "Side: Sell (S)",
}

nasdaq_iseoptions_depthcombofeed_itch_v1_0.side.display = function(value)
  return nasdaq_iseoptions_depthcombofeed_itch_v1_0.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
nasdaq_iseoptions_depthcombofeed_itch_v1_0.side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.side, range, value, display)

  return offset + length, value
end

-- Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.size = {}

-- Size: Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.size.size = 4

-- Display: Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
nasdaq_iseoptions_depthcombofeed_itch_v1_0.size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.size, range, value, display)

  return offset + length, value
end

-- Source
nasdaq_iseoptions_depthcombofeed_itch_v1_0.source = {}

-- Size: Source
nasdaq_iseoptions_depthcombofeed_itch_v1_0.source.size = 1

-- Display: Source
nasdaq_iseoptions_depthcombofeed_itch_v1_0.source.display = function(value)
  return "Source: "..value
end

-- Dissect: Source
nasdaq_iseoptions_depthcombofeed_itch_v1_0.source.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.source.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.source.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.source, range, value, display)

  return offset + length, value
end

-- Strategy Id
nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_id = {}

-- Size: Strategy Id
nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_id.size = 4

-- Display: Strategy Id
nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_id.display = function(value)
  return "Strategy Id: "..value
end

-- Dissect: Strategy Id
nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.strategy_id, range, value, display)

  return offset + length, value
end

-- Strategy Type
nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_type = {}

-- Size: Strategy Type
nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_type.size = 1

-- Display: Strategy Type
nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_type.labels = {
  ["V"] = "Strategy Type: Vertical Spread (V)",
  ["T"] = "Strategy Type: Time Spread (T)",
  ["D"] = "Strategy Type: Diagonal Spread (D)",
  ["S"] = "Strategy Type: Straddle (S)",
  ["G"] = "Strategy Type: Strangle (G)",
  ["C"] = "Strategy Type: Combo (C)",
  ["R"] = "Strategy Type: Risk Reversal (R)",
  ["A"] = "Strategy Type: Ratio Spread (A)",
  ["U"] = "Strategy Type: Custom (U)",
}

nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_type.display = function(value)
  return nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_type.labels[value] or "Strategy Type: Unknown("..value..")"
end

-- Dissect: Strategy Type
nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.strategy_type, range, value, display)

  return offset + length, value
end

-- Sub Version
nasdaq_iseoptions_depthcombofeed_itch_v1_0.sub_version = {}

-- Size: Sub Version
nasdaq_iseoptions_depthcombofeed_itch_v1_0.sub_version.size = 1

-- Display: Sub Version
nasdaq_iseoptions_depthcombofeed_itch_v1_0.sub_version.display = function(value)
  return "Sub Version: "..value
end

-- Dissect: Sub Version
nasdaq_iseoptions_depthcombofeed_itch_v1_0.sub_version.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.sub_version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.sub_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.sub_version, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_iseoptions_depthcombofeed_itch_v1_0.timestamp = {}

-- Size: Timestamp
nasdaq_iseoptions_depthcombofeed_itch_v1_0.timestamp.size = 6

-- Display: Timestamp
nasdaq_iseoptions_depthcombofeed_itch_v1_0.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_iseoptions_depthcombofeed_itch_v1_0.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (the day the frame that carried it settled on)
  if nasdaq_iseoptions_depthcombofeed_itch_v1_0.timestamp_format >= 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - seconds) / 900 + 0.5) * 900

      local midnight = math.floor(settled / 86400 + 0.5) * 86400

      local format = nasdaq_iseoptions_depthcombofeed_itch_v1_0.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
      return "Timestamp: "..os.date(format, midnight + seconds)..string.format("%09d", nanoseconds)
    end
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
nasdaq_iseoptions_depthcombofeed_itch_v1_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Condition
nasdaq_iseoptions_depthcombofeed_itch_v1_0.trade_condition = {}

-- Size: Trade Condition
nasdaq_iseoptions_depthcombofeed_itch_v1_0.trade_condition.size = 1

-- Display: Trade Condition
nasdaq_iseoptions_depthcombofeed_itch_v1_0.trade_condition.display = function(value)
  return "Trade Condition: "..value
end

-- Dissect: Trade Condition
nasdaq_iseoptions_depthcombofeed_itch_v1_0.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nasdaq_iseoptions_depthcombofeed_itch_v1_0.underlying_symbol = {}

-- Size: Underlying Symbol
nasdaq_iseoptions_depthcombofeed_itch_v1_0.underlying_symbol.size = 13

-- Display: Underlying Symbol
nasdaq_iseoptions_depthcombofeed_itch_v1_0.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_iseoptions_depthcombofeed_itch_v1_0.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.unsequenced_message = {}

-- Display: Unsequenced Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.unsequenced_message, range, value, display)

  return offset + size, value
end

-- Unsequenced Message Type
nasdaq_iseoptions_depthcombofeed_itch_v1_0.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nasdaq_iseoptions_depthcombofeed_itch_v1_0.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
nasdaq_iseoptions_depthcombofeed_itch_v1_0.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
nasdaq_iseoptions_depthcombofeed_itch_v1_0.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Update Action
nasdaq_iseoptions_depthcombofeed_itch_v1_0.update_action = {}

-- Size: Update Action
nasdaq_iseoptions_depthcombofeed_itch_v1_0.update_action.size = 1

-- Display: Update Action
nasdaq_iseoptions_depthcombofeed_itch_v1_0.update_action.labels = {
  ["N"] = "Update Action: New (N)",
  ["C"] = "Update Action: Change (C)",
  ["D"] = "Update Action: Delete (D)",
  ["F"] = "Update Action: Delete From (F)",
}

nasdaq_iseoptions_depthcombofeed_itch_v1_0.update_action.display = function(value)
  return nasdaq_iseoptions_depthcombofeed_itch_v1_0.update_action.labels[value] or "Update Action: Unknown("..value..")"
end

-- Dissect: Update Action
nasdaq_iseoptions_depthcombofeed_itch_v1_0.update_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.update_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.update_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.update_action, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_iseoptions_depthcombofeed_itch_v1_0.username = {}

-- Size: Username
nasdaq_iseoptions_depthcombofeed_itch_v1_0.username.size = 6

-- Display: Username
nasdaq_iseoptions_depthcombofeed_itch_v1_0.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_iseoptions_depthcombofeed_itch_v1_0.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.username, range, value, display)

  return offset + length, value
end

-- Version
nasdaq_iseoptions_depthcombofeed_itch_v1_0.version = {}

-- Size: Version
nasdaq_iseoptions_depthcombofeed_itch_v1_0.version.size = 1

-- Display: Version
nasdaq_iseoptions_depthcombofeed_itch_v1_0.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
nasdaq_iseoptions_depthcombofeed_itch_v1_0.version.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.version, range, value, display)

  return offset + length, value
end

-- Volume
nasdaq_iseoptions_depthcombofeed_itch_v1_0.volume = {}

-- Size: Volume
nasdaq_iseoptions_depthcombofeed_itch_v1_0.volume.size = 4

-- Display: Volume
nasdaq_iseoptions_depthcombofeed_itch_v1_0.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nasdaq_iseoptions_depthcombofeed_itch_v1_0.volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.volume, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq IseOptions DepthComboFeed Itch 1.0
-----------------------------------------------------------------------

-- Complex Strategy Ticker Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.complex_strategy_ticker_message = {}

-- Size: Complex Strategy Ticker Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.complex_strategy_ticker_message.size =
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.timestamp.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_id.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.last_price.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.size.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.volume.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.high.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.low.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.first.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.trade_condition.size

-- Display: Complex Strategy Ticker Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.complex_strategy_ticker_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Strategy Ticker Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.complex_strategy_ticker_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_depthcombofeed_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_id.dissect(buffer, index, packet, parent)

  -- Last Price: Integer
  index, last_price = nasdaq_iseoptions_depthcombofeed_itch_v1_0.last_price.dissect(buffer, index, packet, parent)

  -- Size: Integer
  index, size = nasdaq_iseoptions_depthcombofeed_itch_v1_0.size.dissect(buffer, index, packet, parent)

  -- Volume: Integer
  index, volume = nasdaq_iseoptions_depthcombofeed_itch_v1_0.volume.dissect(buffer, index, packet, parent)

  -- High: Integer
  index, high = nasdaq_iseoptions_depthcombofeed_itch_v1_0.high.dissect(buffer, index, packet, parent)

  -- Low: Integer
  index, low = nasdaq_iseoptions_depthcombofeed_itch_v1_0.low.dissect(buffer, index, packet, parent)

  -- First: Integer
  index, first = nasdaq_iseoptions_depthcombofeed_itch_v1_0.first.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alpha
  index, trade_condition = nasdaq_iseoptions_depthcombofeed_itch_v1_0.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Strategy Ticker Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.complex_strategy_ticker_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.complex_strategy_ticker_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_depthcombofeed_itch_v1_0.complex_strategy_ticker_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.complex_strategy_ticker_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_depthcombofeed_itch_v1_0.complex_strategy_ticker_message.fields(buffer, offset, packet, parent)
  end
end

-- Depth Incrementals
nasdaq_iseoptions_depthcombofeed_itch_v1_0.depth_incrementals = {}

-- Calculate size of: Depth Incrementals
nasdaq_iseoptions_depthcombofeed_itch_v1_0.depth_incrementals.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_depthcombofeed_itch_v1_0.update_action.size

  index = index + nasdaq_iseoptions_depthcombofeed_itch_v1_0.depth_side.size

  index = index + nasdaq_iseoptions_depthcombofeed_itch_v1_0.level.size

  local update_action = buffer(offset + 0, 1):string()

  if update_action == "N" or update_action == "C" then
    index = index + nasdaq_iseoptions_depthcombofeed_itch_v1_0.price.size

  end

  local update_action = buffer(offset + 0, 1):string()

  if update_action == "N" or update_action == "C" then
    index = index + nasdaq_iseoptions_depthcombofeed_itch_v1_0.size.size

  end

  local update_action = buffer(offset + 0, 1):string()

  if update_action == "N" or update_action == "C" then
    index = index + nasdaq_iseoptions_depthcombofeed_itch_v1_0.cust_size.size

  end

  local update_action = buffer(offset + 0, 1):string()

  if update_action == "N" or update_action == "C" then
    index = index + nasdaq_iseoptions_depthcombofeed_itch_v1_0.pro_cust_size.size

  end

  local update_action = buffer(offset + 0, 1):string()

  if update_action == "N" or update_action == "C" then
    index = index + nasdaq_iseoptions_depthcombofeed_itch_v1_0.ntt_size.size

  end

  return index
end

-- Display: Depth Incrementals
nasdaq_iseoptions_depthcombofeed_itch_v1_0.depth_incrementals.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Depth Incrementals
nasdaq_iseoptions_depthcombofeed_itch_v1_0.depth_incrementals.fields = function(buffer, offset, packet, parent, depth_incrementals_index)
  local index = offset

  -- Implicit Depth Incrementals Index
  if depth_incrementals_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.depth_incrementals_index, depth_incrementals_index)
    iteration:set_generated()
  end

  -- Update Action: Alpha
  index, update_action = nasdaq_iseoptions_depthcombofeed_itch_v1_0.update_action.dissect(buffer, index, packet, parent)

  -- Depth Side: Alpha
  index, depth_side = nasdaq_iseoptions_depthcombofeed_itch_v1_0.depth_side.dissect(buffer, index, packet, parent)

  -- Level: Integer
  index, level = nasdaq_iseoptions_depthcombofeed_itch_v1_0.level.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Price
  local price = nil

  local price_exists = update_action == "N" or update_action == "C"

  if price_exists then
    index, price = nasdaq_iseoptions_depthcombofeed_itch_v1_0.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Size
  local size = nil

  local size_exists = update_action == "N" or update_action == "C"

  if size_exists then
    index, size = nasdaq_iseoptions_depthcombofeed_itch_v1_0.size.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cust Size
  local cust_size = nil

  local cust_size_exists = update_action == "N" or update_action == "C"

  if cust_size_exists then
    index, cust_size = nasdaq_iseoptions_depthcombofeed_itch_v1_0.cust_size.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Pro Cust Size
  local pro_cust_size = nil

  local pro_cust_size_exists = update_action == "N" or update_action == "C"

  if pro_cust_size_exists then
    index, pro_cust_size = nasdaq_iseoptions_depthcombofeed_itch_v1_0.pro_cust_size.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ntt Size
  local ntt_size = nil

  local ntt_size_exists = update_action == "N" or update_action == "C"

  if ntt_size_exists then
    index, ntt_size = nasdaq_iseoptions_depthcombofeed_itch_v1_0.ntt_size.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Depth Incrementals
nasdaq_iseoptions_depthcombofeed_itch_v1_0.depth_incrementals.dissect = function(buffer, offset, packet, parent, depth_incrementals_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.depth_incrementals, buffer(offset, 0))
    local index = nasdaq_iseoptions_depthcombofeed_itch_v1_0.depth_incrementals.fields(buffer, offset, packet, parent, depth_incrementals_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.depth_incrementals.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_depthcombofeed_itch_v1_0.depth_incrementals.fields(buffer, offset, packet, parent, depth_incrementals_index)
  end
end

-- Strategy Depth Incremental Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_depth_incremental_message = {}

-- Calculate size of: Strategy Depth Incremental Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_depth_incremental_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_depthcombofeed_itch_v1_0.timestamp.size

  index = index + nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_id.size

  index = index + nasdaq_iseoptions_depthcombofeed_itch_v1_0.quote_condition.size

  index = index + nasdaq_iseoptions_depthcombofeed_itch_v1_0.bid_market_size.size

  index = index + nasdaq_iseoptions_depthcombofeed_itch_v1_0.ask_market_size.size

  index = index + nasdaq_iseoptions_depthcombofeed_itch_v1_0.bid_ntt_market_size.size

  index = index + nasdaq_iseoptions_depthcombofeed_itch_v1_0.ask_ntt_market_size.size

  index = index + nasdaq_iseoptions_depthcombofeed_itch_v1_0.number_of_depth_incrementals.size

  -- Calculate field size from count
  local depth_incrementals_count = buffer(offset + index - 1, 1):uint()
  for i = 1, depth_incrementals_count do
    index = index + nasdaq_iseoptions_depthcombofeed_itch_v1_0.depth_incrementals.size(buffer, offset + index)
  end
  return index
end

-- Display: Strategy Depth Incremental Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_depth_incremental_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Depth Incremental Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_depth_incremental_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_depthcombofeed_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_iseoptions_depthcombofeed_itch_v1_0.quote_condition.dissect(buffer, index, packet, parent)

  -- Bid Market Size: Integer
  index, bid_market_size = nasdaq_iseoptions_depthcombofeed_itch_v1_0.bid_market_size.dissect(buffer, index, packet, parent)

  -- Ask Market Size: Integer
  index, ask_market_size = nasdaq_iseoptions_depthcombofeed_itch_v1_0.ask_market_size.dissect(buffer, index, packet, parent)

  -- Bid Ntt Market Size: Integer
  index, bid_ntt_market_size = nasdaq_iseoptions_depthcombofeed_itch_v1_0.bid_ntt_market_size.dissect(buffer, index, packet, parent)

  -- Ask Ntt Market Size: Integer
  index, ask_ntt_market_size = nasdaq_iseoptions_depthcombofeed_itch_v1_0.ask_ntt_market_size.dissect(buffer, index, packet, parent)

  -- Number Of Depth Incrementals: Integer
  index, number_of_depth_incrementals = nasdaq_iseoptions_depthcombofeed_itch_v1_0.number_of_depth_incrementals.dissect(buffer, index, packet, parent)

  -- Repeating: Depth Incrementals
  for depth_incrementals_index = 1, number_of_depth_incrementals do
    index, depth_incrementals = nasdaq_iseoptions_depthcombofeed_itch_v1_0.depth_incrementals.dissect(buffer, index, packet, parent, depth_incrementals_index)
  end

  return index
end

-- Dissect: Strategy Depth Incremental Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_depth_incremental_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.strategy_depth_incremental_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_depth_incremental_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_depth_incremental_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_depth_incremental_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Open Closed Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_open_closed_message = {}

-- Size: Strategy Open Closed Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_open_closed_message.size =
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.timestamp.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_id.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.open_state.size

-- Display: Strategy Open Closed Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_open_closed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Open Closed Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_open_closed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_depthcombofeed_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_id.dissect(buffer, index, packet, parent)

  -- Open State: Alpha
  index, open_state = nasdaq_iseoptions_depthcombofeed_itch_v1_0.open_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Open Closed Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_open_closed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.strategy_open_closed_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_open_closed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_open_closed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_open_closed_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Trading Action Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_trading_action_message = {}

-- Size: Strategy Trading Action Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_trading_action_message.size =
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.timestamp.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_id.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_trading_state.size

-- Display: Strategy Trading Action Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Trading Action Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_depthcombofeed_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_id.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alpha
  index, current_trading_state = nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Trading Action Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.strategy_trading_action_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Leg Information
nasdaq_iseoptions_depthcombofeed_itch_v1_0.leg_information = {}

-- Size: Leg Information
nasdaq_iseoptions_depthcombofeed_itch_v1_0.leg_information.size =
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.option_id.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.security_symbol.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.leg_id.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.expiration_year.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.expiration_month.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.expiration_day.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.explicit_strike_price.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.option_type.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.side.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.leg_ratio.size

-- Display: Leg Information
nasdaq_iseoptions_depthcombofeed_itch_v1_0.leg_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg Information
nasdaq_iseoptions_depthcombofeed_itch_v1_0.leg_information.fields = function(buffer, offset, packet, parent, leg_information_index)
  local index = offset

  -- Implicit Leg Information Index
  if leg_information_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.leg_information_index, leg_information_index)
    iteration:set_generated()
  end

  -- Option Id: Integer
  index, option_id = nasdaq_iseoptions_depthcombofeed_itch_v1_0.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_iseoptions_depthcombofeed_itch_v1_0.security_symbol.dissect(buffer, index, packet, parent)

  -- Leg Id: Integer
  index, leg_id = nasdaq_iseoptions_depthcombofeed_itch_v1_0.leg_id.dissect(buffer, index, packet, parent)

  -- Expiration Year: Integer
  index, expiration_year = nasdaq_iseoptions_depthcombofeed_itch_v1_0.expiration_year.dissect(buffer, index, packet, parent)

  -- Expiration Month: Integer
  index, expiration_month = nasdaq_iseoptions_depthcombofeed_itch_v1_0.expiration_month.dissect(buffer, index, packet, parent)

  -- Expiration Day: Integer
  index, expiration_day = nasdaq_iseoptions_depthcombofeed_itch_v1_0.expiration_day.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: Integer
  index, explicit_strike_price = nasdaq_iseoptions_depthcombofeed_itch_v1_0.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_iseoptions_depthcombofeed_itch_v1_0.option_type.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_iseoptions_depthcombofeed_itch_v1_0.side.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Integer
  index, leg_ratio = nasdaq_iseoptions_depthcombofeed_itch_v1_0.leg_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Information
nasdaq_iseoptions_depthcombofeed_itch_v1_0.leg_information.dissect = function(buffer, offset, packet, parent, leg_information_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.leg_information, buffer(offset, 0))
    local index = nasdaq_iseoptions_depthcombofeed_itch_v1_0.leg_information.fields(buffer, offset, packet, parent, leg_information_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.leg_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_depthcombofeed_itch_v1_0.leg_information.fields(buffer, offset, packet, parent, leg_information_index)
  end
end

-- Complex Strategy Directory Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.complex_strategy_directory_message = {}

-- Calculate size of: Complex Strategy Directory Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.complex_strategy_directory_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_depthcombofeed_itch_v1_0.timestamp.size

  index = index + nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_id.size

  index = index + nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_type.size

  index = index + nasdaq_iseoptions_depthcombofeed_itch_v1_0.source.size

  index = index + nasdaq_iseoptions_depthcombofeed_itch_v1_0.underlying_symbol.size

  index = index + nasdaq_iseoptions_depthcombofeed_itch_v1_0.number_of_legs.size

  -- Calculate field size from count
  local leg_information_count = buffer(offset + index - 1, 1):uint()
  index = index + leg_information_count * 28

  return index
end

-- Display: Complex Strategy Directory Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.complex_strategy_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Strategy Directory Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.complex_strategy_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_depthcombofeed_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_id.dissect(buffer, index, packet, parent)

  -- Strategy Type: Alpha
  index, strategy_type = nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_type.dissect(buffer, index, packet, parent)

  -- Source: Integer
  index, source = nasdaq_iseoptions_depthcombofeed_itch_v1_0.source.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = nasdaq_iseoptions_depthcombofeed_itch_v1_0.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Number Of Legs: Integer
  index, number_of_legs = nasdaq_iseoptions_depthcombofeed_itch_v1_0.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Leg Information
  for leg_information_index = 1, number_of_legs do
    index, leg_information = nasdaq_iseoptions_depthcombofeed_itch_v1_0.leg_information.dissect(buffer, index, packet, parent, leg_information_index)
  end

  return index
end

-- Dissect: Complex Strategy Directory Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.complex_strategy_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.complex_strategy_directory_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_depthcombofeed_itch_v1_0.complex_strategy_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.complex_strategy_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_depthcombofeed_itch_v1_0.complex_strategy_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.system_event_message = {}

-- Size: System Event Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.system_event_message.size =
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.timestamp.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.event_code.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_year.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_month.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_day.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.version.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.sub_version.size

-- Display: System Event Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_depthcombofeed_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_iseoptions_depthcombofeed_itch_v1_0.event_code.dissect(buffer, index, packet, parent)

  -- Current Year: Integer
  index, current_year = nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_year.dissect(buffer, index, packet, parent)

  -- Current Month: Integer
  index, current_month = nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_month.dissect(buffer, index, packet, parent)

  -- Current Day: Integer
  index, current_day = nasdaq_iseoptions_depthcombofeed_itch_v1_0.current_day.dissect(buffer, index, packet, parent)

  -- Version: Integer
  index, version = nasdaq_iseoptions_depthcombofeed_itch_v1_0.version.dissect(buffer, index, packet, parent)

  -- Sub Version: Integer
  index, sub_version = nasdaq_iseoptions_depthcombofeed_itch_v1_0.sub_version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_depthcombofeed_itch_v1_0.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_depthcombofeed_itch_v1_0.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_iseoptions_depthcombofeed_itch_v1_0.payload = {}

-- Dispatch: Payload
nasdaq_iseoptions_depthcombofeed_itch_v1_0.payload.dispatch = {
  ["S"] = nasdaq_iseoptions_depthcombofeed_itch_v1_0.system_event_message.dissect,
  ["R"] = nasdaq_iseoptions_depthcombofeed_itch_v1_0.complex_strategy_directory_message.dissect,
  ["H"] = nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_trading_action_message.dissect,
  ["O"] = nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_open_closed_message.dissect,
  ["K"] = nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_depth_incremental_message.dissect,
  ["t"] = nasdaq_iseoptions_depthcombofeed_itch_v1_0.complex_strategy_ticker_message.dissect,
}

-- Dissect: Payload
nasdaq_iseoptions_depthcombofeed_itch_v1_0.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = nasdaq_iseoptions_depthcombofeed_itch_v1_0.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_header = {}

-- Size: Message Header
nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_header.size =
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_length.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_type.size

-- Display: Message Header
nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 6 values
  index, message_type = nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.message_header, buffer(offset, 0))
    local index = nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.message = {}

-- Read runtime size of: Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and nasdaq_iseoptions_depthcombofeed_itch_v1_0.packet_sequence ~= nil then
    local sequence = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.message_sequence_number, UInt64.new(nasdaq_iseoptions_depthcombofeed_itch_v1_0.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 6 branches
  index = nasdaq_iseoptions_depthcombofeed_itch_v1_0.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_iseoptions_depthcombofeed_itch_v1_0.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.message, buffer(offset, 0))
    local current = nasdaq_iseoptions_depthcombofeed_itch_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_iseoptions_depthcombofeed_itch_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
nasdaq_iseoptions_depthcombofeed_itch_v1_0.end_of_session = {}

-- Display: End Of Session
nasdaq_iseoptions_depthcombofeed_itch_v1_0.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_iseoptions_depthcombofeed_itch_v1_0.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_iseoptions_depthcombofeed_itch_v1_0.heartbeat = {}

-- Display: Heartbeat
nasdaq_iseoptions_depthcombofeed_itch_v1_0.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_iseoptions_depthcombofeed_itch_v1_0.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_iseoptions_depthcombofeed_itch_v1_0.messages = {}

-- Dispatch: Messages
nasdaq_iseoptions_depthcombofeed_itch_v1_0.messages.dispatch = {
  [0] = nasdaq_iseoptions_depthcombofeed_itch_v1_0.heartbeat.dissect,
  [65535] = nasdaq_iseoptions_depthcombofeed_itch_v1_0.end_of_session.dissect,
}

-- Dissect: Messages
nasdaq_iseoptions_depthcombofeed_itch_v1_0.messages.dissect = function(buffer, offset, packet, parent, message_count)
  local dissect = nasdaq_iseoptions_depthcombofeed_itch_v1_0.messages.dispatch[message_count]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_iseoptions_depthcombofeed_itch_v1_0.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
nasdaq_iseoptions_depthcombofeed_itch_v1_0.packet_header = {}

-- Size: Packet Header
nasdaq_iseoptions_depthcombofeed_itch_v1_0.packet_header.size =
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.session.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequence_number.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_count.size

-- Display: Packet Header
nasdaq_iseoptions_depthcombofeed_itch_v1_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_iseoptions_depthcombofeed_itch_v1_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_iseoptions_depthcombofeed_itch_v1_0.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_iseoptions_depthcombofeed_itch_v1_0.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.packet_sequence = sequence_number

  return index
end

-- Dissect: Packet Header
nasdaq_iseoptions_depthcombofeed_itch_v1_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_iseoptions_depthcombofeed_itch_v1_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_depthcombofeed_itch_v1_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.packet = {}

-- Verify required size of Udp packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_iseoptions_depthcombofeed_itch_v1_0.packet_header.size
end

-- Dissect Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_iseoptions_depthcombofeed_itch_v1_0.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_iseoptions_depthcombofeed_itch_v1_0.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end

-- Server Heartbeat
nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_heartbeat = {}

-- Display: Server Heartbeat
nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Sequenced Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequenced_message = {}

-- Dispatch: Sequenced Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequenced_message.dispatch = {
  ["S"] = nasdaq_iseoptions_depthcombofeed_itch_v1_0.system_event_message.dissect,
  ["R"] = nasdaq_iseoptions_depthcombofeed_itch_v1_0.complex_strategy_directory_message.dissect,
  ["H"] = nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_trading_action_message.dissect,
  ["O"] = nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_open_closed_message.dissect,
  ["K"] = nasdaq_iseoptions_depthcombofeed_itch_v1_0.strategy_depth_incremental_message.dissect,
  ["t"] = nasdaq_iseoptions_depthcombofeed_itch_v1_0.complex_strategy_ticker_message.dissect,
}

-- Dissect: Sequenced Message
nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  local dissect = nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequenced_message.dispatch[sequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = nasdaq_iseoptions_depthcombofeed_itch_v1_0.conversation.current
  if flow ~= nil then
    local memo = flow.sequence.frames[packet.number]
    if not packet.visited then
      if flow.sequence.next == nil then
        flow.sequence.next = tonumber(nasdaq_iseoptions_depthcombofeed_itch_v1_0.accepted_sequence_number.current)
      end
      local value = flow.sequence.next
      if value ~= nil then
        if memo == nil then
          memo = {}
          flow.sequence.frames[packet.number] = memo
        end
        memo[#memo + 1] = value
        flow.sequence.next = value + 1
        if show.sequences then
          local sequence = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if nasdaq_iseoptions_depthcombofeed_itch_v1_0.stream_frame ~= packet.number or nasdaq_iseoptions_depthcombofeed_itch_v1_0.stream_occurrence >= #memo then
          nasdaq_iseoptions_depthcombofeed_itch_v1_0.stream_frame = packet.number
          nasdaq_iseoptions_depthcombofeed_itch_v1_0.stream_occurrence = 0
        end
        nasdaq_iseoptions_depthcombofeed_itch_v1_0.stream_occurrence = nasdaq_iseoptions_depthcombofeed_itch_v1_0.stream_occurrence + 1
        local value = memo[nasdaq_iseoptions_depthcombofeed_itch_v1_0.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 6 values
  index, sequenced_message_type = nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 6 branches
  index = nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.sequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.login_rejected_packet.size =
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String Enum with 2 values
  index, reject_reason_code = nasdaq_iseoptions_depthcombofeed_itch_v1_0.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_iseoptions_depthcombofeed_itch_v1_0.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_depthcombofeed_itch_v1_0.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.login_accepted_packet.size =
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.accepted_session.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.accepted_sequence_number.size

-- Display: Login Accepted Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = nasdaq_iseoptions_depthcombofeed_itch_v1_0.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = nasdaq_iseoptions_depthcombofeed_itch_v1_0.accepted_sequence_number.dissect(buffer, index, packet, parent)

  -- Store Accepted Sequence Number Value
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.accepted_sequence_number.current = accepted_sequence_number

  if not packet.visited then
    nasdaq_iseoptions_depthcombofeed_itch_v1_0.conversation.current.accepted_sequence_number.last = accepted_sequence_number
  end

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_iseoptions_depthcombofeed_itch_v1_0.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_depthcombofeed_itch_v1_0.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.debug_packet = {}

-- Calculate size of: Debug Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.debug_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Debug Text
  index = index + buffer(offset + index - 3, 2):uint()

  return index
end

-- Display: Debug Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Debug Text
  local size_of_debug_text = packet_length - 1

  -- Debug Text: 0 Byte Ascii String
  index, debug_text = nasdaq_iseoptions_depthcombofeed_itch_v1_0.debug_text.dissect(buffer, index, packet, parent, size_of_debug_text)

  return index
end

-- Dissect: Debug Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_iseoptions_depthcombofeed_itch_v1_0.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_depthcombofeed_itch_v1_0.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_payload = {}

-- Dispatch: Server Payload
nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_payload.dispatch = {
  ["+"] = nasdaq_iseoptions_depthcombofeed_itch_v1_0.debug_packet.dissect,
  ["A"] = nasdaq_iseoptions_depthcombofeed_itch_v1_0.login_accepted_packet.dissect,
  ["J"] = nasdaq_iseoptions_depthcombofeed_itch_v1_0.login_rejected_packet.dissect,
  ["S"] = nasdaq_iseoptions_depthcombofeed_itch_v1_0.sequenced_data_packet.dissect,
  ["H"] = nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_heartbeat.dissect,
  ["Z"] = nasdaq_iseoptions_depthcombofeed_itch_v1_0.end_of_session.dissect,
}

-- Dissect: Server Payload
nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  local dissect = nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_payload.dispatch[server_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_packet_header = {}

-- Size: Server Packet Header
nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_packet_header.size =
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.packet_length.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_packet_type.size

-- Display: Server Packet Header
nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.server_packet_header, buffer(offset, 0))
    local index = nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Server Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_packet = {}

-- Verify required size of Tcp packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_packet_header.size
end

-- Dissect Server Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nasdaq_iseoptions_depthcombofeed_itch_v1_0.conversation.data(packet)
  if not packet.visited then
    data.accepted_sequence_number.frames[packet.number] = data.accepted_sequence_number.last
  end
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.accepted_sequence_number.current = data.accepted_sequence_number.frames[packet.number]
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.conversation.current = data

  local index = 0

  -- Dependency for Server Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Server Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_soup_bin_tcp_packet = server_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_server_soup_bin_tcp_packet):tvb()
      index = nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_soup_bin_tcp_packet.dissect(frame, index, packet, parent, size_of_server_soup_bin_tcp_packet)
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

-- Logout Request
nasdaq_iseoptions_depthcombofeed_itch_v1_0.logout_request = {}

-- Display: Logout Request
nasdaq_iseoptions_depthcombofeed_itch_v1_0.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
nasdaq_iseoptions_depthcombofeed_itch_v1_0.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_heartbeat = {}

-- Display: Client Heartbeat
nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Unsequenced Data Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = nasdaq_iseoptions_depthcombofeed_itch_v1_0.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = packet_length - 2

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = nasdaq_iseoptions_depthcombofeed_itch_v1_0.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = nasdaq_iseoptions_depthcombofeed_itch_v1_0.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_iseoptions_depthcombofeed_itch_v1_0.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_iseoptions_depthcombofeed_itch_v1_0.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.login_request_packet.size =
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.username.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.password.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.requested_session.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_iseoptions_depthcombofeed_itch_v1_0.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_iseoptions_depthcombofeed_itch_v1_0.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_iseoptions_depthcombofeed_itch_v1_0.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_iseoptions_depthcombofeed_itch_v1_0.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_iseoptions_depthcombofeed_itch_v1_0.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_depthcombofeed_itch_v1_0.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_payload = {}

-- Dispatch: Client Payload
nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_payload.dispatch = {
  ["+"] = nasdaq_iseoptions_depthcombofeed_itch_v1_0.debug_packet.dissect,
  ["L"] = nasdaq_iseoptions_depthcombofeed_itch_v1_0.login_request_packet.dissect,
  ["U"] = nasdaq_iseoptions_depthcombofeed_itch_v1_0.unsequenced_data_packet.dissect,
  ["R"] = nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_heartbeat.dissect,
  ["O"] = nasdaq_iseoptions_depthcombofeed_itch_v1_0.logout_request.dissect,
}

-- Dissect: Client Payload
nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  local dissect = nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_payload.dispatch[client_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_packet_header = {}

-- Size: Client Packet Header
nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_packet_header.size =
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.packet_length.size + 
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_packet_type.size

-- Display: Client Packet Header
nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_iseoptions_depthcombofeed_itch_v1_0.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.client_packet_header, buffer(offset, 0))
    local index = nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Client Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_packet = {}

-- Verify required size of Tcp packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_packet_header.size
end

-- Dissect Client Packet
nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Client Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_soup_bin_tcp_packet = client_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_client_soup_bin_tcp_packet):tvb()
      index = nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_soup_bin_tcp_packet.dissect(frame, index, packet, parent, size_of_client_soup_bin_tcp_packet)
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


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.init()
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.accepted_sequence_number.current = nil
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.conversation.current = nil
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.conversation.flows = {}
end

-- Connection roles for Nasdaq IseOptions DepthComboFeed Itch 1.0: Client is the initiator, Server is the acceptor
-- Initiator endpoint of each conversation, recorded from its first frame
local initiators = {}

-- Conversations whose first frame proved to be the acceptor's: the heuristic swaps the sides
local swapped = {}

-- Endpoint key of an address and port
local function endpoint(address, port)
  return tostring(address)..":"..tostring(port)
end


-- Conversation key, the same in both directions
local function conversation(packet)
  local source = endpoint(packet.src, packet.src_port)
  local destination = endpoint(packet.dst, packet.dst_port)

  if source < destination then
    return source.." "..destination
  end

  return destination.." "..source
end


-- Connection role of the frame's sender
nasdaq_iseoptions_depthcombofeed_itch_v1_0.role = function(packet)
  if omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.acceptor_port

  if acceptor_port ~= 0 and packet.dst_port == acceptor_port then
    return "initiator"
  end

  if acceptor_port ~= 0 and packet.src_port == acceptor_port then
    return "acceptor"
  end

  local key = conversation(packet)
  local sender = endpoint(packet.src, packet.src_port)

  if initiators[key] == nil then
    initiators[key] = sender
  end

  local sender_initiated = initiators[key] == sender

  if omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.prefs.swap_sides then
    sender_initiated = not sender_initiated
  end

  if swapped[key] then
    sender_initiated = not sender_initiated
  end

  if sender_initiated then
    return "initiator"
  end

  return "acceptor"
end


-- Swap the resolved sides of the frame's conversation
nasdaq_iseoptions_depthcombofeed_itch_v1_0.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nasdaq IseOptions DepthComboFeed Itch 1.0
function omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.name

  if packet.port_type == 2 then
    -- Dissect protocol
    local protocol = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0, buffer(), omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.description, "("..buffer:len().." Bytes)")
    local role = nasdaq_iseoptions_depthcombofeed_itch_v1_0.role(packet)

    if role == "initiator" then
      return nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_packet.dissect(buffer, packet, protocol)
    end

    return nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_packet.dissect(buffer, packet, protocol)
  end

  if packet.port_type == 3 then
    -- Dissect protocol
    local protocol = parent:add(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0, buffer(), omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.description, "("..buffer:len().." Bytes)")
    return nasdaq_iseoptions_depthcombofeed_itch_v1_0.packet.dissect(buffer, packet, protocol)
  end
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end

  local client_packet_type = buffer(2, 1):string()

  -- Debug Packet
  if client_packet_type == "+" then
    return true
  end

  -- Login Request Packet
  if client_packet_type == "L" then
    return true
  end

  -- Unsequenced Data Packet
  if client_packet_type == "U" then
    return true
  end

  -- Client Heartbeat
  if client_packet_type == "R" then
    return true
  end

  -- Logout Request
  if client_packet_type == "O" then
    return true
  end

  return false
end

-- Fingerprint of Server Packet: would its message dispatch accept this frame?
nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end

  local server_packet_type = buffer(2, 1):string()

  -- Debug Packet
  if server_packet_type == "+" then
    return true
  end

  -- Login Accepted Packet
  if server_packet_type == "A" then
    return true
  end

  -- Login Rejected Packet
  if server_packet_type == "J" then
    return true
  end

  -- Sequenced Data Packet
  if server_packet_type == "S" then
    return true
  end

  -- Server Heartbeat
  if server_packet_type == "H" then
    return true
  end

  -- End Of Session
  if server_packet_type == "Z" then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq IseOptions DepthComboFeed Itch 1.0 (Tcp)
local function omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp client packet message dispatch
  if not nasdaq_iseoptions_depthcombofeed_itch_v1_0.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0
  omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq IseOptions DepthComboFeed Itch 1.0 (Tcp)
local function omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp server packet message dispatch
  if not nasdaq_iseoptions_depthcombofeed_itch_v1_0.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0
  omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq IseOptions DepthComboFeed Itch 1.0 (Udp)
local function omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_iseoptions_depthcombofeed_itch_v1_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0
  omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq IseOptions DepthComboFeed Itch 1.0 (Tcp): apply the heuristic of the sender's connection role
local function omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0_tcp_heuristic(buffer, packet, parent)
  local role = nasdaq_iseoptions_depthcombofeed_itch_v1_0.role(packet)
  local initiator = omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0_tcp_initiator_heuristic
  local acceptor = omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nasdaq_iseoptions_depthcombofeed_itch_v1_0.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nasdaq_iseoptions_depthcombofeed_itch_v1_0.swap(packet)

  return false
end

-- Register Heuristics for Nasdaq IseOptions DepthComboFeed Itch 1.0
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0:register_heuristic("tcp", omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0_tcp_heuristic)
omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0:register_heuristic("udp", omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0_udp_heuristic)

-- Register Nasdaq IseOptions DepthComboFeed Itch 1.0 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0)

-- Register Nasdaq IseOptions DepthComboFeed Itch 1.0 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_iseoptions_depthcombofeed_itch_v1_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 1.0
--   Date: Wednesday, August 23, 2017
--   Specification: Nasdaq ISE Depth Combo Feed.pdf
--
-- Script:
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
