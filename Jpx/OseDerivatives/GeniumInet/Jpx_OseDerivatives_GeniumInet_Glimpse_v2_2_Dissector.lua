-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Jpx OseDerivatives GeniumInet Glimpse 2.2 Protocol
local omi_jpx_osederivatives_geniuminet_glimpse_v2_2 = Proto("Omi.Jpx.OseDerivatives.GeniumInet.Glimpse.v2.2", "Jpx OseDerivatives GeniumInet Glimpse 2.2")

-- Protocol table
local jpx_osederivatives_geniuminet_glimpse_v2_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Jpx OseDerivatives GeniumInet Glimpse 2.2 Fields
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "jpx.osederivatives.geniuminet.glimpse.v2.2.acceptedsequencenumber", ftypes.UINT64, nil, nil, nil, "The sequence number in ASCII of the next Sequenced Message to be sent. Left padded with spaces.")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.accepted_session = ProtoField.new("Accepted Session", "jpx.osederivatives.geniuminet.glimpse.v2.2.acceptedsession", ftypes.STRING, nil, nil, nil, "The session ID of the session that is now logged into. Left padded with spaces.")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.available_ask_quantity_at_equilibrium_price = ProtoField.new("Available Ask Quantity At Equilibrium Price", "jpx.osederivatives.geniuminet.glimpse.v2.2.availableaskquantityatequilibriumprice", ftypes.UINT64, nil, nil, nil, "Total ask order quantity at the EP is set")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.available_bid_quantity_at_equilibrium_price = ProtoField.new("Available Bid Quantity At Equilibrium Price", "jpx.osederivatives.geniuminet.glimpse.v2.2.availablebidquantityatequilibriumprice", ftypes.UINT64, nil, nil, nil, "Total bid order quantity at the EP is set")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.block_lot_size = ProtoField.new("Block Lot Size", "jpx.osederivatives.geniuminet.glimpse.v2.2.blocklotsize", ftypes.UINT32, nil, nil, nil, "Fixed at 0")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.client_packet_type = ProtoField.new("Packet Type", "jpx.osederivatives.geniuminet.glimpse.v2.2.clientpackettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type sent by the client")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.combination_order_book_id = ProtoField.new("Combination Order Book Id", "jpx.osederivatives.geniuminet.glimpse.v2.2.combinationorderbookid", ftypes.UINT32, nil, nil, nil, "A series ID of Combination trading instrument is set")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.combo_group_id = ProtoField.new("Combo Group Id", "jpx.osederivatives.geniuminet.glimpse.v2.2.combogroupid", ftypes.UINT32, nil, nil, nil, "In the case of a combination series execution a combo group ID is set, otherwise 0 is set")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.debug_text = ProtoField.new("Debug Text", "jpx.osederivatives.geniuminet.glimpse.v2.2.debugtext", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.equilibrium_price = ProtoField.new("Equilibrium Price", "jpx.osederivatives.geniuminet.glimpse.v2.2.equilibriumprice", ftypes.INT32, nil, nil, nil, "The EP is set")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.event_code = ProtoField.new("Event Code", "jpx.osederivatives.geniuminet.glimpse.v2.2.eventcode", ftypes.STRING, nil, nil, nil, "An event code is set")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.executed_quantity = ProtoField.new("Executed Quantity", "jpx.osederivatives.geniuminet.glimpse.v2.2.executedquantity", ftypes.UINT64, nil, nil, nil, "An executed quantity is set")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.expiration_date = ProtoField.new("Expiration Date", "jpx.osederivatives.geniuminet.glimpse.v2.2.expirationdate", ftypes.UINT32, nil, nil, nil, "Expiration date is set")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.financial_product = ProtoField.new("Financial Product", "jpx.osederivatives.geniuminet.glimpse.v2.2.financialproduct", ftypes.UINT8, nil, nil, nil, "A product type is set")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.leg_order_book_id = ProtoField.new("Leg Order Book Id", "jpx.osederivatives.geniuminet.glimpse.v2.2.legorderbookid", ftypes.UINT32, nil, nil, nil, "Series ID of the leg is set")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.leg_ratio = ProtoField.new("Leg Ratio", "jpx.osederivatives.geniuminet.glimpse.v2.2.legratio", ftypes.UINT32, nil, nil, nil, "Ratio of leg is set")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.leg_side = ProtoField.new("Leg Side", "jpx.osederivatives.geniuminet.glimpse.v2.2.legside", ftypes.STRING, nil, nil, nil, "The buy or sell side of Leg is set")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.long_name = ProtoField.new("Long Name", "jpx.osederivatives.geniuminet.glimpse.v2.2.longname", ftypes.STRING, nil, nil, nil, "A 9-digit code is set")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.lot_type = ProtoField.new("Lot Type", "jpx.osederivatives.geniuminet.glimpse.v2.2.lottype", ftypes.UINT8, nil, nil, nil, "Fixed at 2")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.match_id = ProtoField.new("Match Id", "jpx.osederivatives.geniuminet.glimpse.v2.2.matchid", ftypes.UINT64, nil, nil, nil, "An ExecutionEventNumber is set")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.nanoseconds = ProtoField.new("Nanoseconds", "jpx.osederivatives.geniuminet.glimpse.v2.2.nanoseconds", ftypes.UINT32, nil, nil, nil, "A timestamp is set in nanoseconds")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.nominal_value = ProtoField.new("Nominal Value", "jpx.osederivatives.geniuminet.glimpse.v2.2.nominalvalue", ftypes.UINT64, nil, nil, nil, "Fixed at 0")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.number_of_decimals_in_nominal_value = ProtoField.new("Number Of Decimals In Nominal Value", "jpx.osederivatives.geniuminet.glimpse.v2.2.numberofdecimalsinnominalvalue", ftypes.UINT16, nil, nil, nil, "Fixed at 0")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.number_of_decimals_in_price = ProtoField.new("Number Of Decimals In Price", "jpx.osederivatives.geniuminet.glimpse.v2.2.numberofdecimalsinprice", ftypes.UINT16, nil, nil, nil, "The decimal value for a trading instrument is set")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.number_of_decimals_in_strike_price = ProtoField.new("Number Of Decimals In Strike Price", "jpx.osederivatives.geniuminet.glimpse.v2.2.numberofdecimalsinstrikeprice", ftypes.UINT16, nil, nil, nil, "Number of decimals in strike price is set")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.number_of_legs = ProtoField.new("Number Of Legs", "jpx.osederivatives.geniuminet.glimpse.v2.2.numberoflegs", ftypes.UINT8, nil, nil, nil, "0 is set for Normal Series; number of legs is set for combination series")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.occurred_at_cross = ProtoField.new("Occurred At Cross", "jpx.osederivatives.geniuminet.glimpse.v2.2.occurredatcross", ftypes.STRING, nil, nil, nil, "Identification flag for auction")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.odd_lot_size = ProtoField.new("Odd Lot Size", "jpx.osederivatives.geniuminet.glimpse.v2.2.oddlotsize", ftypes.UINT32, nil, nil, nil, "Fixed at 0")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.order_attributes = ProtoField.new("Order Attributes", "jpx.osederivatives.geniuminet.glimpse.v2.2.orderattributes", ftypes.UINT16, nil, nil, nil, "Item not used")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.order_book_id = ProtoField.new("Order Book Id", "jpx.osederivatives.geniuminet.glimpse.v2.2.orderbookid", ftypes.UINT32, nil, nil, nil, "A series ID is set")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.order_book_position = ProtoField.new("Order Book Position", "jpx.osederivatives.geniuminet.glimpse.v2.2.orderbookposition", ftypes.UINT32, nil, nil, nil, "Order priority is set")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.order_id = ProtoField.new("Order Id", "jpx.osederivatives.geniuminet.glimpse.v2.2.orderid", ftypes.UINT64, nil, nil, nil, "An order number is set, unique for each order book and sell/buy side")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.packet_length = ProtoField.new("Packet Length", "jpx.osederivatives.geniuminet.glimpse.v2.2.packetlength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.password = ProtoField.new("Password", "jpx.osederivatives.geniuminet.glimpse.v2.2.password", ftypes.STRING, nil, nil, nil, "Login password")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.price = ProtoField.new("Price", "jpx.osederivatives.geniuminet.glimpse.v2.2.price", ftypes.INT32, nil, nil, nil, "A new order price is set")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.price_from = ProtoField.new("Price From", "jpx.osederivatives.geniuminet.glimpse.v2.2.pricefrom", ftypes.INT32, nil, nil, nil, "The smallest value within the price range to which the applicable order price applies is set")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.price_to = ProtoField.new("Price To", "jpx.osederivatives.geniuminet.glimpse.v2.2.priceto", ftypes.INT32, nil, nil, nil, "The largest value within the price range to which the applicable order price applies is set")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.printable = ProtoField.new("Printable", "jpx.osederivatives.geniuminet.glimpse.v2.2.printable", ftypes.STRING, nil, nil, nil, "Item not used")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.put_or_call = ProtoField.new("Put Or Call", "jpx.osederivatives.geniuminet.glimpse.v2.2.putorcall", ftypes.UINT8, nil, nil, nil, "Distinction of Put or Call is set; if the case is futures or combination series, 0 is set")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.quantity = ProtoField.new("Quantity", "jpx.osederivatives.geniuminet.glimpse.v2.2.quantity", ftypes.UINT64, nil, nil, nil, "A new order quantity is set")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "jpx.osederivatives.geniuminet.glimpse.v2.2.rejectreasoncode", ftypes.STRING, nil, nil, nil, "Login Reject Codes")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "jpx.osederivatives.geniuminet.glimpse.v2.2.requestedsequencenumber", ftypes.UINT64, nil, nil, nil, "Specifies the next sequence number in ASCII the client wants to receive upon connection, or 0 to start receiving the most recently generated message.")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.requested_session = ProtoField.new("Requested Session", "jpx.osederivatives.geniuminet.glimpse.v2.2.requestedsession", ftypes.STRING, nil, nil, nil, "Specifies the session the client would like to log into, or all blanks to log into the currently active session.")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.reserved_12 = ProtoField.new("Reserved 12", "jpx.osederivatives.geniuminet.glimpse.v2.2.reserved12", ftypes.BYTES, nil, nil, nil, "Reserved item")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.reserved_4_a = ProtoField.new("Reserved 4 A", "jpx.osederivatives.geniuminet.glimpse.v2.2.reserved4a", ftypes.BYTES, nil, nil, nil, "Reserved item, if any value is set ignore it")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.reserved_4_b = ProtoField.new("Reserved 4 B", "jpx.osederivatives.geniuminet.glimpse.v2.2.reserved4b", ftypes.BYTES, nil, nil, nil, "Reserved item, if any value is set ignore it")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.reserved_7_a = ProtoField.new("Reserved 7 A", "jpx.osederivatives.geniuminet.glimpse.v2.2.reserved7a", ftypes.BYTES, nil, nil, nil, "Reserved item, fixed to space")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.reserved_7_b = ProtoField.new("Reserved 7 B", "jpx.osederivatives.geniuminet.glimpse.v2.2.reserved7b", ftypes.BYTES, nil, nil, nil, "Reserved item, fixed to space")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.reserved_8_a = ProtoField.new("Reserved 8 A", "jpx.osederivatives.geniuminet.glimpse.v2.2.reserved8a", ftypes.BYTES, nil, nil, nil, "Reserved item, if any value is set ignore it")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.reserved_8_b = ProtoField.new("Reserved 8 B", "jpx.osederivatives.geniuminet.glimpse.v2.2.reserved8b", ftypes.BYTES, nil, nil, nil, "Reserved item, if any value is set ignore it")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.round_lot_size = ProtoField.new("Round Lot Size", "jpx.osederivatives.geniuminet.glimpse.v2.2.roundlotsize", ftypes.UINT32, nil, nil, nil, "Fixed at 1")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.second = ProtoField.new("Second", "jpx.osederivatives.geniuminet.glimpse.v2.2.second", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "UNIX time, the time elapsed since January 1 1970 00:00:00 GMT")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.second_utc = ProtoField.new("Second", "jpx.osederivatives.geniuminet.glimpse.v2.2.second.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "UNIX time, the time elapsed since January 1 1970 00:00:00 GMT")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.sequence = ProtoField.new("Sequence", "jpx.osederivatives.geniuminet.glimpse.v2.2.sequence", ftypes.STRING, nil, nil, nil, "The sequence number of the multicast data to be received just after snapshot data is received")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "jpx.osederivatives.geniuminet.glimpse.v2.2.sequencedmessagetype", ftypes.STRING, nil, nil, nil, "Value identifying sequenced message type")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.server_packet_type = ProtoField.new("Packet Type", "jpx.osederivatives.geniuminet.glimpse.v2.2.serverpackettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type sent by the server")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.side = ProtoField.new("Side", "jpx.osederivatives.geniuminet.glimpse.v2.2.side", ftypes.STRING, nil, nil, nil, "Sell or Buy is set")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.state_name = ProtoField.new("State Name", "jpx.osederivatives.geniuminet.glimpse.v2.2.statename", ftypes.STRING, nil, nil, nil, "Status data is set")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.strike_price = ProtoField.new("Strike Price", "jpx.osederivatives.geniuminet.glimpse.v2.2.strikeprice", ftypes.INT32, nil, nil, nil, "Strike Price is set; if the case is futures, 0 is set")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.symbol = ProtoField.new("Symbol", "jpx.osederivatives.geniuminet.glimpse.v2.2.symbol", ftypes.STRING, nil, nil, nil, "A series name is set")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.tick_size = ProtoField.new("Tick Size", "jpx.osederivatives.geniuminet.glimpse.v2.2.ticksize", ftypes.UINT64, nil, nil, nil, "A tick size that is between the values in Price From and Price to is set")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.trade_price = ProtoField.new("Trade Price", "jpx.osederivatives.geniuminet.glimpse.v2.2.tradeprice", ftypes.INT32, nil, nil, nil, "An execution price is set")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.trading_currency = ProtoField.new("Trading Currency", "jpx.osederivatives.geniuminet.glimpse.v2.2.tradingcurrency", ftypes.STRING, nil, nil, nil, "A trading currency is set, fixed at JPY")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.underlying_order_book_id = ProtoField.new("Underlying Order Book Id", "jpx.osederivatives.geniuminet.glimpse.v2.2.underlyingorderbookid", ftypes.UINT32, nil, nil, nil, "The underlying code is set; 0 is set for combination series")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "jpx.osederivatives.geniuminet.glimpse.v2.2.unsequencedmessage", ftypes.BYTES, nil, nil, nil, "The unsequenced (client to server) message carried by the packet, opaque bytes unless an application source dispatches it")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "jpx.osederivatives.geniuminet.glimpse.v2.2.unsequencedmessagetype", ftypes.STRING, nil, nil, nil, "Value identifying unsequenced message type")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.username = ProtoField.new("Username", "jpx.osederivatives.geniuminet.glimpse.v2.2.username", ftypes.STRING, nil, nil, nil, "Session username")

-- Jpx OseDerivatives GeniumInet Glimpse 2.2 Framing
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.client_packet = ProtoField.new("Packet", "jpx.osederivatives.geniuminet.glimpse.v2.2.clientpacket", ftypes.STRING, nil, nil, nil, "SoupBinTCP Packet sent by the client")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.client_packet_header = ProtoField.new("Packet Header", "jpx.osederivatives.geniuminet.glimpse.v2.2.clientpacketheader", ftypes.STRING, nil, nil, nil, "Packet header of a packet sent by the client")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "jpx.osederivatives.geniuminet.glimpse.v2.2.clientsoupbintcppacket", ftypes.STRING, nil, nil, nil, "Soup Bin Tcp Packet sent by the client")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.server_packet = ProtoField.new("Packet", "jpx.osederivatives.geniuminet.glimpse.v2.2.serverpacket", ftypes.STRING, nil, nil, nil, "SoupBinTCP Packet sent by the server")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.server_packet_header = ProtoField.new("Packet Header", "jpx.osederivatives.geniuminet.glimpse.v2.2.serverpacketheader", ftypes.STRING, nil, nil, nil, "Packet header of a packet sent by the server")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "jpx.osederivatives.geniuminet.glimpse.v2.2.serversoupbintcppacket", ftypes.STRING, nil, nil, nil, "Soup Bin Tcp Packet sent by the server")

-- Jpx OseDerivatives GeniumInet 2.2 Session Messages
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "jpx.osederivatives.geniuminet.glimpse.v2.2.clientheartbeat", ftypes.BYTES, nil, nil, nil, "SoupBinTCP client sends a heartbeat to indicate the connection is alive; carries no payload")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.debug_packet = ProtoField.new("Debug Packet", "jpx.osederivatives.geniuminet.glimpse.v2.2.debugpacket", ftypes.STRING, nil, nil, nil, "Debug packets are intended to provide human readable text that may aid in debugging problems")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.end_of_session = ProtoField.new("End Of Session", "jpx.osederivatives.geniuminet.glimpse.v2.2.endofsession", ftypes.BYTES, nil, nil, nil, "SoupBinTCP server signals end of session; client may now disconnect. Carries no payload")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "jpx.osederivatives.geniuminet.glimpse.v2.2.loginacceptedpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP server sends a Login Accepted Packet in response to receiving a valid Login Request from the client")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "jpx.osederivatives.geniuminet.glimpse.v2.2.loginrejectedpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP server sends this packet in response to an invalid Login Request Packet from the client")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.login_request_packet = ProtoField.new("Login Request Packet", "jpx.osederivatives.geniuminet.glimpse.v2.2.loginrequestpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP client must send a Login Request Packet immediately upon establishing a new TCP/IP socket connection to the server")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.logout_request = ProtoField.new("Logout Request", "jpx.osederivatives.geniuminet.glimpse.v2.2.logoutrequest", ftypes.BYTES, nil, nil, nil, "SoupBinTCP client requests session logout; server completes any in-flight messages then closes. Carries no payload")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "jpx.osederivatives.geniuminet.glimpse.v2.2.sequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Sequenced Data Packets act as an envelope to carry the actual sequenced data messages that are transferred from the server to the client. Each Sequenced Data Packet carries one message from the higher-lever protocol")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "jpx.osederivatives.geniuminet.glimpse.v2.2.serverheartbeat", ftypes.BYTES, nil, nil, nil, "SoupBinTCP server sends a heartbeat to indicate the connection is alive; carries no payload")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "jpx.osederivatives.geniuminet.glimpse.v2.2.unsequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Unsequenced Data Packets act as an envelope to carry the actual data messages that are transferred from the client to the server")

-- Jpx OseDerivatives GeniumInet 2.2 Application Messages
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.deleted_order_message = ProtoField.new("Deleted Order Message", "jpx.osederivatives.geniuminet.glimpse.v2.2.deletedordermessage", ftypes.STRING, nil, nil, nil, "Provided when an order is deleted and does not exist in the order book.")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.ep_message = ProtoField.new("Ep Message", "jpx.osederivatives.geniuminet.glimpse.v2.2.epmessage", ftypes.STRING, nil, nil, nil, "Provides the equilibrium price for the order reception hours.")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.execution_notice_message = ProtoField.new("Execution Notice Message", "jpx.osederivatives.geniuminet.glimpse.v2.2.executionnoticemessage", ftypes.STRING, nil, nil, nil, "Provides an execution notice. The Order ID of the order which is already in the order book is set.")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.execution_notice_with_trade_information_message = ProtoField.new("Execution Notice With Trade Information Message", "jpx.osederivatives.geniuminet.glimpse.v2.2.executionnoticewithtradeinformationmessage", ftypes.STRING, nil, nil, nil, "Provides an execution notice with trade information.")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.new_order_message = ProtoField.new("New Order Message", "jpx.osederivatives.geniuminet.glimpse.v2.2.newordermessage", ftypes.STRING, nil, nil, nil, "Provides quote data related to a new order.")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.seconds_message = ProtoField.new("Seconds Message", "jpx.osederivatives.geniuminet.glimpse.v2.2.secondsmessage", ftypes.STRING, nil, nil, nil, "Provides data on the seconds when each message is disseminated.")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.series_information_basic_combination_message = ProtoField.new("Series Information Basic Combination Message", "jpx.osederivatives.geniuminet.glimpse.v2.2.seriesinformationbasiccombinationmessage", ftypes.STRING, nil, nil, nil, "Provides detailed data about the legs of combination trading instruments that can be traded on a given trading day.")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.series_information_basic_message = ProtoField.new("Series Information Basic Message", "jpx.osederivatives.geniuminet.glimpse.v2.2.seriesinformationbasicmessage", ftypes.STRING, nil, nil, nil, "Provides detailed data about the series that can be traded on a given business day.")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.snapshot_completion_message = ProtoField.new("Snapshot Completion Message", "jpx.osederivatives.geniuminet.glimpse.v2.2.snapshotcompletionmessage", ftypes.STRING, nil, nil, nil, "Sent after completing the transmission of snapshot data.")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.system_event_data_message = ProtoField.new("System Event Data Message", "jpx.osederivatives.geniuminet.glimpse.v2.2.systemeventdatamessage", ftypes.STRING, nil, nil, nil, "Provides system event update data.")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.tick_size_data_message = ProtoField.new("Tick Size Data Message", "jpx.osederivatives.geniuminet.glimpse.v2.2.ticksizedatamessage", ftypes.STRING, nil, nil, nil, "Provides the tick size of a trading instrument.")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.trading_status_data_message = ProtoField.new("Trading Status Data Message", "jpx.osederivatives.geniuminet.glimpse.v2.2.tradingstatusdatamessage", ftypes.STRING, nil, nil, nil, "Provides the trading status data of a trading instrument.")

-- Jpx OseDerivatives GeniumInet Glimpse 2.2 Generated Fields
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "jpx.osederivatives.geniuminet.glimpse.v2.2.sequenceddatapacketsequencenumber", ftypes.UINT64)
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.timestamp = ProtoField.new("Timestamp", "jpx.osederivatives.geniuminet.glimpse.v2.2.timestamp", ftypes.UINT64)

-- Jpx OseDerivatives GeniumInet Glimpse 2.2 Expert Info
jpx_osederivatives_geniuminet_glimpse_v2_2.experts = {}
jpx_osederivatives_geniuminet_glimpse_v2_2.experts.not_a_number = ProtoExpert.new("jpx.osederivatives.geniuminet.glimpse.v2.2.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.experts = { jpx_osederivatives_geniuminet_glimpse_v2_2.experts.not_a_number }

-----------------------------------------------------------------------
-- Jpx OseDerivatives GeniumInet Glimpse 2.2 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
jpx_osederivatives_geniuminet_glimpse_v2_2.absolute_time_base = 0

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
jpx_osederivatives_geniuminet_glimpse_v2_2.format_timestamp = true

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

-- Jpx OseDerivatives GeniumInet Glimpse 2.2 Element Dissection Options
show.structs = true
show.headers = true
show.session_messages = true
show.application_messages = true
show.sequences = true

-- Register Jpx OseDerivatives GeniumInet Glimpse 2.2 Show Options
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")
omi_jpx_osederivatives_geniuminet_glimpse_v2_2.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

omi_jpx_osederivatives_geniuminet_glimpse_v2_2.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_jpx_osederivatives_geniuminet_glimpse_v2_2.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_jpx_osederivatives_geniuminet_glimpse_v2_2.prefs.show_application_messages then
    show.application_messages = omi_jpx_osederivatives_geniuminet_glimpse_v2_2.prefs.show_application_messages
  end
  if show.headers ~= omi_jpx_osederivatives_geniuminet_glimpse_v2_2.prefs.show_headers then
    show.headers = omi_jpx_osederivatives_geniuminet_glimpse_v2_2.prefs.show_headers
  end
  if show.session_messages ~= omi_jpx_osederivatives_geniuminet_glimpse_v2_2.prefs.show_session_messages then
    show.session_messages = omi_jpx_osederivatives_geniuminet_glimpse_v2_2.prefs.show_session_messages
  end
  if show.structs ~= omi_jpx_osederivatives_geniuminet_glimpse_v2_2.prefs.show_structs then
    show.structs = omi_jpx_osederivatives_geniuminet_glimpse_v2_2.prefs.show_structs
  end
  if show.sequences ~= omi_jpx_osederivatives_geniuminet_glimpse_v2_2.prefs.show_sequences then
    show.sequences = omi_jpx_osederivatives_geniuminet_glimpse_v2_2.prefs.show_sequences
  end
  if jpx_osederivatives_geniuminet_glimpse_v2_2.format_timestamp ~= omi_jpx_osederivatives_geniuminet_glimpse_v2_2.prefs.format_timestamp then
    jpx_osederivatives_geniuminet_glimpse_v2_2.format_timestamp = omi_jpx_osederivatives_geniuminet_glimpse_v2_2.prefs.format_timestamp
  end
  if jpx_osederivatives_geniuminet_glimpse_v2_2.absolute_time_base ~= omi_jpx_osederivatives_geniuminet_glimpse_v2_2.prefs.absolute_time_base then
    jpx_osederivatives_geniuminet_glimpse_v2_2.absolute_time_base = omi_jpx_osederivatives_geniuminet_glimpse_v2_2.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
jpx_osederivatives_geniuminet_glimpse_v2_2.conversation = {}
jpx_osederivatives_geniuminet_glimpse_v2_2.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
jpx_osederivatives_geniuminet_glimpse_v2_2.stream_frame = nil
jpx_osederivatives_geniuminet_glimpse_v2_2.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
jpx_osederivatives_geniuminet_glimpse_v2_2.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
jpx_osederivatives_geniuminet_glimpse_v2_2.conversation.data = function(packet)
  local key = jpx_osederivatives_geniuminet_glimpse_v2_2.conversation.key(packet)
  local data = jpx_osederivatives_geniuminet_glimpse_v2_2.conversation.flows[key]
  if data == nil then
    data = { accepted_sequence_number = { last = nil, frames = {} }, second = { last = nil, frames = {} }, sequence = { next = nil, frames = {} } }
    jpx_osederivatives_geniuminet_glimpse_v2_2.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
jpx_osederivatives_geniuminet_glimpse_v2_2.conversation.current = nil


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
  local digits = str:match("^%s*(%d+)%s*$")

  if digits == nil then
    return nil
  end

  local value = UInt64.new(digits)

  -- UInt64.new stops at its maximum rather than failing, so an overrun would
  -- read as that maximum. Nineteen digits always fit, so only a longer run is
  -- read back and compared against the digits it came from
  if #digits > 19 then
    local significant = digits:match("^0*(%d+)$")

    if tostring(value) ~= significant then
      return nil
    end
  end

  return value
end


-----------------------------------------------------------------------
-- Jpx OseDerivatives GeniumInet Glimpse 2.2 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
jpx_osederivatives_geniuminet_glimpse_v2_2.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
jpx_osederivatives_geniuminet_glimpse_v2_2.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
jpx_osederivatives_geniuminet_glimpse_v2_2.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
jpx_osederivatives_geniuminet_glimpse_v2_2.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.accepted_sequence_number, range, value, "Accepted Sequence Number: Not Applicable")
    item:add_proto_expert_info(jpx_osederivatives_geniuminet_glimpse_v2_2.experts.not_a_number, "Accepted Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
jpx_osederivatives_geniuminet_glimpse_v2_2.accepted_session = {}

-- Size: Accepted Session
jpx_osederivatives_geniuminet_glimpse_v2_2.accepted_session.size = 10

-- Display: Accepted Session
jpx_osederivatives_geniuminet_glimpse_v2_2.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
jpx_osederivatives_geniuminet_glimpse_v2_2.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.accepted_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Available Ask Quantity At Equilibrium Price
jpx_osederivatives_geniuminet_glimpse_v2_2.available_ask_quantity_at_equilibrium_price = {}

-- Size: Available Ask Quantity At Equilibrium Price
jpx_osederivatives_geniuminet_glimpse_v2_2.available_ask_quantity_at_equilibrium_price.size = 8

-- Display: Available Ask Quantity At Equilibrium Price
jpx_osederivatives_geniuminet_glimpse_v2_2.available_ask_quantity_at_equilibrium_price.display = function(value)
  return "Available Ask Quantity At Equilibrium Price: "..value
end

-- Dissect: Available Ask Quantity At Equilibrium Price
jpx_osederivatives_geniuminet_glimpse_v2_2.available_ask_quantity_at_equilibrium_price.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.available_ask_quantity_at_equilibrium_price.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.available_ask_quantity_at_equilibrium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.available_ask_quantity_at_equilibrium_price, range, value, display)

  return offset + length, value
end

-- Available Bid Quantity At Equilibrium Price
jpx_osederivatives_geniuminet_glimpse_v2_2.available_bid_quantity_at_equilibrium_price = {}

-- Size: Available Bid Quantity At Equilibrium Price
jpx_osederivatives_geniuminet_glimpse_v2_2.available_bid_quantity_at_equilibrium_price.size = 8

-- Display: Available Bid Quantity At Equilibrium Price
jpx_osederivatives_geniuminet_glimpse_v2_2.available_bid_quantity_at_equilibrium_price.display = function(value)
  return "Available Bid Quantity At Equilibrium Price: "..value
end

-- Dissect: Available Bid Quantity At Equilibrium Price
jpx_osederivatives_geniuminet_glimpse_v2_2.available_bid_quantity_at_equilibrium_price.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.available_bid_quantity_at_equilibrium_price.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.available_bid_quantity_at_equilibrium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.available_bid_quantity_at_equilibrium_price, range, value, display)

  return offset + length, value
end

-- Block Lot Size
jpx_osederivatives_geniuminet_glimpse_v2_2.block_lot_size = {}

-- Size: Block Lot Size
jpx_osederivatives_geniuminet_glimpse_v2_2.block_lot_size.size = 4

-- Display: Block Lot Size
jpx_osederivatives_geniuminet_glimpse_v2_2.block_lot_size.display = function(value)
  return "Block Lot Size: "..value
end

-- Dissect: Block Lot Size
jpx_osederivatives_geniuminet_glimpse_v2_2.block_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.block_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.block_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.block_lot_size, range, value, display)

  return offset + length, value
end

-- Client Packet Type
jpx_osederivatives_geniuminet_glimpse_v2_2.client_packet_type = {}

-- Size: Client Packet Type
jpx_osederivatives_geniuminet_glimpse_v2_2.client_packet_type.size = 1

-- Display: Client Packet Type
jpx_osederivatives_geniuminet_glimpse_v2_2.client_packet_type.labels = {
  ["+"] = "Packet Type: Debug Packet (+)",
  ["L"] = "Packet Type: Login Request Packet (L)",
  ["U"] = "Packet Type: Unsequenced Data Packet (U)",
  ["R"] = "Packet Type: Client Heartbeat Packet (R)",
  ["O"] = "Packet Type: Logout Request Packet (O)",
}

jpx_osederivatives_geniuminet_glimpse_v2_2.client_packet_type.display = function(value)
  return jpx_osederivatives_geniuminet_glimpse_v2_2.client_packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Client Packet Type
jpx_osederivatives_geniuminet_glimpse_v2_2.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Combination Order Book Id
jpx_osederivatives_geniuminet_glimpse_v2_2.combination_order_book_id = {}

-- Size: Combination Order Book Id
jpx_osederivatives_geniuminet_glimpse_v2_2.combination_order_book_id.size = 4

-- Display: Combination Order Book Id
jpx_osederivatives_geniuminet_glimpse_v2_2.combination_order_book_id.display = function(value)
  return "Combination Order Book Id: "..value
end

-- Dissect: Combination Order Book Id
jpx_osederivatives_geniuminet_glimpse_v2_2.combination_order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.combination_order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.combination_order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.combination_order_book_id, range, value, display)

  return offset + length, value
end

-- Combo Group Id
jpx_osederivatives_geniuminet_glimpse_v2_2.combo_group_id = {}

-- Size: Combo Group Id
jpx_osederivatives_geniuminet_glimpse_v2_2.combo_group_id.size = 4

-- Display: Combo Group Id
jpx_osederivatives_geniuminet_glimpse_v2_2.combo_group_id.display = function(value)
  return "Combo Group Id: "..value
end

-- Dissect: Combo Group Id
jpx_osederivatives_geniuminet_glimpse_v2_2.combo_group_id.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.combo_group_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.combo_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.combo_group_id, range, value, display)

  return offset + length, value
end

-- Debug Text
jpx_osederivatives_geniuminet_glimpse_v2_2.debug_text = {}

-- Display: Debug Text
jpx_osederivatives_geniuminet_glimpse_v2_2.debug_text.display = function(value)
  return "Debug Text: "..value
end

-- Dissect runtime sized field: Debug Text
jpx_osederivatives_geniuminet_glimpse_v2_2.debug_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.debug_text.display(value, packet, parent, size)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.debug_text, range, value, display)

  return offset + size, value
end

-- Equilibrium Price
jpx_osederivatives_geniuminet_glimpse_v2_2.equilibrium_price = {}

-- Size: Equilibrium Price
jpx_osederivatives_geniuminet_glimpse_v2_2.equilibrium_price.size = 4

-- Display: Equilibrium Price
jpx_osederivatives_geniuminet_glimpse_v2_2.equilibrium_price.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Equilibrium Price: No Value"
  end

  return "Equilibrium Price: "..value
end

-- Dissect: Equilibrium Price
jpx_osederivatives_geniuminet_glimpse_v2_2.equilibrium_price.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.equilibrium_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.equilibrium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.equilibrium_price, range, value, display)

  return offset + length, value
end

-- Event Code
jpx_osederivatives_geniuminet_glimpse_v2_2.event_code = {}

-- Size: Event Code
jpx_osederivatives_geniuminet_glimpse_v2_2.event_code.size = 1

-- Display: Event Code
jpx_osederivatives_geniuminet_glimpse_v2_2.event_code.labels = {
  ["O"] = "Event Code: Start Of Message Transmission (O)",
  ["C"] = "Event Code: End Of Message Transmission (C)",
}

jpx_osederivatives_geniuminet_glimpse_v2_2.event_code.display = function(value)
  return jpx_osederivatives_geniuminet_glimpse_v2_2.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
jpx_osederivatives_geniuminet_glimpse_v2_2.event_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.event_code.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executed Quantity
jpx_osederivatives_geniuminet_glimpse_v2_2.executed_quantity = {}

-- Size: Executed Quantity
jpx_osederivatives_geniuminet_glimpse_v2_2.executed_quantity.size = 8

-- Display: Executed Quantity
jpx_osederivatives_geniuminet_glimpse_v2_2.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
jpx_osederivatives_geniuminet_glimpse_v2_2.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Expiration Date
jpx_osederivatives_geniuminet_glimpse_v2_2.expiration_date = {}

-- Size: Expiration Date
jpx_osederivatives_geniuminet_glimpse_v2_2.expiration_date.size = 4

-- Display: Expiration Date
jpx_osederivatives_geniuminet_glimpse_v2_2.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
jpx_osederivatives_geniuminet_glimpse_v2_2.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.expiration_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Financial Product
jpx_osederivatives_geniuminet_glimpse_v2_2.financial_product = {}

-- Size: Financial Product
jpx_osederivatives_geniuminet_glimpse_v2_2.financial_product.size = 1

-- Display: Financial Product
jpx_osederivatives_geniuminet_glimpse_v2_2.financial_product.labels = {
  [1] = "Financial Product: Option (1)",
  [3] = "Financial Product: Futures (3)",
  [11] = "Financial Product: Combination Series (11)",
}

jpx_osederivatives_geniuminet_glimpse_v2_2.financial_product.display = function(value)
  return jpx_osederivatives_geniuminet_glimpse_v2_2.financial_product.labels[value] or "Financial Product: Unknown("..value..")"
end

-- Dissect: Financial Product
jpx_osederivatives_geniuminet_glimpse_v2_2.financial_product.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.financial_product.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.financial_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.financial_product, range, value, display)

  return offset + length, value
end

-- Leg Order Book Id
jpx_osederivatives_geniuminet_glimpse_v2_2.leg_order_book_id = {}

-- Size: Leg Order Book Id
jpx_osederivatives_geniuminet_glimpse_v2_2.leg_order_book_id.size = 4

-- Display: Leg Order Book Id
jpx_osederivatives_geniuminet_glimpse_v2_2.leg_order_book_id.display = function(value)
  return "Leg Order Book Id: "..value
end

-- Dissect: Leg Order Book Id
jpx_osederivatives_geniuminet_glimpse_v2_2.leg_order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.leg_order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.leg_order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.leg_order_book_id, range, value, display)

  return offset + length, value
end

-- Leg Ratio
jpx_osederivatives_geniuminet_glimpse_v2_2.leg_ratio = {}

-- Size: Leg Ratio
jpx_osederivatives_geniuminet_glimpse_v2_2.leg_ratio.size = 4

-- Display: Leg Ratio
jpx_osederivatives_geniuminet_glimpse_v2_2.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
jpx_osederivatives_geniuminet_glimpse_v2_2.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Side
jpx_osederivatives_geniuminet_glimpse_v2_2.leg_side = {}

-- Size: Leg Side
jpx_osederivatives_geniuminet_glimpse_v2_2.leg_side.size = 1

-- Display: Leg Side
jpx_osederivatives_geniuminet_glimpse_v2_2.leg_side.labels = {
  ["B"] = "Leg Side: Buy If On Buy Side Sell If On Sell Side (B)",
  ["C"] = "Leg Side: Sell If On Buy Side Buy If On Sell Side (C)",
}

jpx_osederivatives_geniuminet_glimpse_v2_2.leg_side.display = function(value)
  return jpx_osederivatives_geniuminet_glimpse_v2_2.leg_side.labels[value] or "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
jpx_osederivatives_geniuminet_glimpse_v2_2.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.leg_side.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Long Name
jpx_osederivatives_geniuminet_glimpse_v2_2.long_name = {}

-- Size: Long Name
jpx_osederivatives_geniuminet_glimpse_v2_2.long_name.size = 32

-- Display: Long Name
jpx_osederivatives_geniuminet_glimpse_v2_2.long_name.display = function(value)
  return "Long Name: "..value
end

-- Dissect: Long Name
jpx_osederivatives_geniuminet_glimpse_v2_2.long_name.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.long_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.long_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.long_name, range, value, display)

  return offset + length, value
end

-- Lot Type
jpx_osederivatives_geniuminet_glimpse_v2_2.lot_type = {}

-- Size: Lot Type
jpx_osederivatives_geniuminet_glimpse_v2_2.lot_type.size = 1

-- Display: Lot Type
jpx_osederivatives_geniuminet_glimpse_v2_2.lot_type.display = function(value)
  return "Lot Type: "..value
end

-- Dissect: Lot Type
jpx_osederivatives_geniuminet_glimpse_v2_2.lot_type.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.lot_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.lot_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.lot_type, range, value, display)

  return offset + length, value
end

-- Match Id
jpx_osederivatives_geniuminet_glimpse_v2_2.match_id = {}

-- Size: Match Id
jpx_osederivatives_geniuminet_glimpse_v2_2.match_id.size = 8

-- Display: Match Id
jpx_osederivatives_geniuminet_glimpse_v2_2.match_id.display = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
jpx_osederivatives_geniuminet_glimpse_v2_2.match_id.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.match_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.match_id, range, value, display)

  return offset + length, value
end

-- Nanoseconds
jpx_osederivatives_geniuminet_glimpse_v2_2.nanoseconds = {}

-- Size: Nanoseconds
jpx_osederivatives_geniuminet_glimpse_v2_2.nanoseconds.size = 4

-- Display: Nanoseconds
jpx_osederivatives_geniuminet_glimpse_v2_2.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
jpx_osederivatives_geniuminet_glimpse_v2_2.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Nominal Value
jpx_osederivatives_geniuminet_glimpse_v2_2.nominal_value = {}

-- Size: Nominal Value
jpx_osederivatives_geniuminet_glimpse_v2_2.nominal_value.size = 8

-- Display: Nominal Value
jpx_osederivatives_geniuminet_glimpse_v2_2.nominal_value.display = function(value)
  return "Nominal Value: "..value
end

-- Dissect: Nominal Value
jpx_osederivatives_geniuminet_glimpse_v2_2.nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.nominal_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.nominal_value, range, value, display)

  return offset + length, value
end

-- Number Of Decimals In Nominal Value
jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_decimals_in_nominal_value = {}

-- Size: Number Of Decimals In Nominal Value
jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_decimals_in_nominal_value.size = 2

-- Display: Number Of Decimals In Nominal Value
jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_decimals_in_nominal_value.display = function(value)
  return "Number Of Decimals In Nominal Value: "..value
end

-- Dissect: Number Of Decimals In Nominal Value
jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_decimals_in_nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_decimals_in_nominal_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_decimals_in_nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.number_of_decimals_in_nominal_value, range, value, display)

  return offset + length, value
end

-- Number Of Decimals In Price
jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_decimals_in_price = {}

-- Size: Number Of Decimals In Price
jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_decimals_in_price.size = 2

-- Display: Number Of Decimals In Price
jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_decimals_in_price.display = function(value)
  return "Number Of Decimals In Price: "..value
end

-- Dissect: Number Of Decimals In Price
jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_decimals_in_price.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_decimals_in_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_decimals_in_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.number_of_decimals_in_price, range, value, display)

  return offset + length, value
end

-- Number Of Decimals In Strike Price
jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_decimals_in_strike_price = {}

-- Size: Number Of Decimals In Strike Price
jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_decimals_in_strike_price.size = 2

-- Display: Number Of Decimals In Strike Price
jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_decimals_in_strike_price.display = function(value)
  return "Number Of Decimals In Strike Price: "..value
end

-- Dissect: Number Of Decimals In Strike Price
jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_decimals_in_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_decimals_in_strike_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_decimals_in_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.number_of_decimals_in_strike_price, range, value, display)

  return offset + length, value
end

-- Number Of Legs
jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_legs = {}

-- Size: Number Of Legs
jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_legs.size = 1

-- Display: Number Of Legs
jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Occurred At Cross
jpx_osederivatives_geniuminet_glimpse_v2_2.occurred_at_cross = {}

-- Size: Occurred At Cross
jpx_osederivatives_geniuminet_glimpse_v2_2.occurred_at_cross.size = 1

-- Display: Occurred At Cross
jpx_osederivatives_geniuminet_glimpse_v2_2.occurred_at_cross.labels = {
  ["Y"] = "Occurred At Cross: Execution Through Auction (Y)",
  ["N"] = "Occurred At Cross: Execution Through Zaraba (N)",
}

jpx_osederivatives_geniuminet_glimpse_v2_2.occurred_at_cross.display = function(value)
  return jpx_osederivatives_geniuminet_glimpse_v2_2.occurred_at_cross.labels[value] or "Occurred At Cross: Unknown("..value..")"
end

-- Dissect: Occurred At Cross
jpx_osederivatives_geniuminet_glimpse_v2_2.occurred_at_cross.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.occurred_at_cross.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.occurred_at_cross.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.occurred_at_cross, range, value, display)

  return offset + length, value
end

-- Odd Lot Size
jpx_osederivatives_geniuminet_glimpse_v2_2.odd_lot_size = {}

-- Size: Odd Lot Size
jpx_osederivatives_geniuminet_glimpse_v2_2.odd_lot_size.size = 4

-- Display: Odd Lot Size
jpx_osederivatives_geniuminet_glimpse_v2_2.odd_lot_size.display = function(value)
  return "Odd Lot Size: "..value
end

-- Dissect: Odd Lot Size
jpx_osederivatives_geniuminet_glimpse_v2_2.odd_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.odd_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.odd_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.odd_lot_size, range, value, display)

  return offset + length, value
end

-- Order Attributes
jpx_osederivatives_geniuminet_glimpse_v2_2.order_attributes = {}

-- Size: Order Attributes
jpx_osederivatives_geniuminet_glimpse_v2_2.order_attributes.size = 2

-- Display: Order Attributes
jpx_osederivatives_geniuminet_glimpse_v2_2.order_attributes.display = function(value)
  return "Order Attributes: "..value
end

-- Dissect: Order Attributes
jpx_osederivatives_geniuminet_glimpse_v2_2.order_attributes.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.order_attributes.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.order_attributes.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.order_attributes, range, value, display)

  return offset + length, value
end

-- Order Book Id
jpx_osederivatives_geniuminet_glimpse_v2_2.order_book_id = {}

-- Size: Order Book Id
jpx_osederivatives_geniuminet_glimpse_v2_2.order_book_id.size = 4

-- Display: Order Book Id
jpx_osederivatives_geniuminet_glimpse_v2_2.order_book_id.display = function(value)
  return "Order Book Id: "..value
end

-- Dissect: Order Book Id
jpx_osederivatives_geniuminet_glimpse_v2_2.order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.order_book_id, range, value, display)

  return offset + length, value
end

-- Order Book Position
jpx_osederivatives_geniuminet_glimpse_v2_2.order_book_position = {}

-- Size: Order Book Position
jpx_osederivatives_geniuminet_glimpse_v2_2.order_book_position.size = 4

-- Display: Order Book Position
jpx_osederivatives_geniuminet_glimpse_v2_2.order_book_position.display = function(value)
  return "Order Book Position: "..value
end

-- Dissect: Order Book Position
jpx_osederivatives_geniuminet_glimpse_v2_2.order_book_position.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.order_book_position.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.order_book_position.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.order_book_position, range, value, display)

  return offset + length, value
end

-- Order Id
jpx_osederivatives_geniuminet_glimpse_v2_2.order_id = {}

-- Size: Order Id
jpx_osederivatives_geniuminet_glimpse_v2_2.order_id.size = 8

-- Display: Order Id
jpx_osederivatives_geniuminet_glimpse_v2_2.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
jpx_osederivatives_geniuminet_glimpse_v2_2.order_id.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.order_id, range, value, display)

  return offset + length, value
end

-- Packet Length
jpx_osederivatives_geniuminet_glimpse_v2_2.packet_length = {}

-- Size: Packet Length
jpx_osederivatives_geniuminet_glimpse_v2_2.packet_length.size = 2

-- Display: Packet Length
jpx_osederivatives_geniuminet_glimpse_v2_2.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
jpx_osederivatives_geniuminet_glimpse_v2_2.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Password
jpx_osederivatives_geniuminet_glimpse_v2_2.password = {}

-- Size: Password
jpx_osederivatives_geniuminet_glimpse_v2_2.password.size = 10

-- Display: Password
jpx_osederivatives_geniuminet_glimpse_v2_2.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
jpx_osederivatives_geniuminet_glimpse_v2_2.password.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.password, range, value, display)

  return offset + length, value
end

-- Price
jpx_osederivatives_geniuminet_glimpse_v2_2.price = {}

-- Size: Price
jpx_osederivatives_geniuminet_glimpse_v2_2.price.size = 4

-- Display: Price
jpx_osederivatives_geniuminet_glimpse_v2_2.price.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Dissect: Price
jpx_osederivatives_geniuminet_glimpse_v2_2.price.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.price, range, value, display)

  return offset + length, value
end

-- Price From
jpx_osederivatives_geniuminet_glimpse_v2_2.price_from = {}

-- Size: Price From
jpx_osederivatives_geniuminet_glimpse_v2_2.price_from.size = 4

-- Display: Price From
jpx_osederivatives_geniuminet_glimpse_v2_2.price_from.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Price From: No Value"
  end

  return "Price From: "..value
end

-- Dissect: Price From
jpx_osederivatives_geniuminet_glimpse_v2_2.price_from.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.price_from.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.price_from.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.price_from, range, value, display)

  return offset + length, value
end

-- Price To
jpx_osederivatives_geniuminet_glimpse_v2_2.price_to = {}

-- Size: Price To
jpx_osederivatives_geniuminet_glimpse_v2_2.price_to.size = 4

-- Display: Price To
jpx_osederivatives_geniuminet_glimpse_v2_2.price_to.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Price To: No Value"
  end

  return "Price To: "..value
end

-- Dissect: Price To
jpx_osederivatives_geniuminet_glimpse_v2_2.price_to.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.price_to.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.price_to.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.price_to, range, value, display)

  return offset + length, value
end

-- Printable
jpx_osederivatives_geniuminet_glimpse_v2_2.printable = {}

-- Size: Printable
jpx_osederivatives_geniuminet_glimpse_v2_2.printable.size = 1

-- Display: Printable
jpx_osederivatives_geniuminet_glimpse_v2_2.printable.display = function(value)
  return "Printable: "..value
end

-- Dissect: Printable
jpx_osederivatives_geniuminet_glimpse_v2_2.printable.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.printable.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.printable.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.printable, range, value, display)

  return offset + length, value
end

-- Put Or Call
jpx_osederivatives_geniuminet_glimpse_v2_2.put_or_call = {}

-- Size: Put Or Call
jpx_osederivatives_geniuminet_glimpse_v2_2.put_or_call.size = 1

-- Display: Put Or Call
jpx_osederivatives_geniuminet_glimpse_v2_2.put_or_call.labels = {
  [0] = "Put Or Call: Futures Or Combination Series (0)",
  [1] = "Put Or Call: Call (1)",
  [2] = "Put Or Call: Put (2)",
}

jpx_osederivatives_geniuminet_glimpse_v2_2.put_or_call.display = function(value)
  return jpx_osederivatives_geniuminet_glimpse_v2_2.put_or_call.labels[value] or "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
jpx_osederivatives_geniuminet_glimpse_v2_2.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.put_or_call.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Quantity
jpx_osederivatives_geniuminet_glimpse_v2_2.quantity = {}

-- Size: Quantity
jpx_osederivatives_geniuminet_glimpse_v2_2.quantity.size = 8

-- Display: Quantity
jpx_osederivatives_geniuminet_glimpse_v2_2.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
jpx_osederivatives_geniuminet_glimpse_v2_2.quantity.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
jpx_osederivatives_geniuminet_glimpse_v2_2.reject_reason_code = {}

-- Size: Reject Reason Code
jpx_osederivatives_geniuminet_glimpse_v2_2.reject_reason_code.size = 1

-- Display: Reject Reason Code
jpx_osederivatives_geniuminet_glimpse_v2_2.reject_reason_code.labels = {
  ["A"] = "Reject Reason Code: Not Authorized (A)",
  ["S"] = "Reject Reason Code: Session Not Available (S)",
}

jpx_osederivatives_geniuminet_glimpse_v2_2.reject_reason_code.display = function(value)
  return jpx_osederivatives_geniuminet_glimpse_v2_2.reject_reason_code.labels[value] or "Reject Reason Code: Unknown("..value..")"
end

-- Dissect: Reject Reason Code
jpx_osederivatives_geniuminet_glimpse_v2_2.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
jpx_osederivatives_geniuminet_glimpse_v2_2.requested_sequence_number = {}

-- Size: Requested Sequence Number
jpx_osederivatives_geniuminet_glimpse_v2_2.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
jpx_osederivatives_geniuminet_glimpse_v2_2.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
jpx_osederivatives_geniuminet_glimpse_v2_2.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.requested_sequence_number, range, value, "Requested Sequence Number: Not Applicable")
    item:add_proto_expert_info(jpx_osederivatives_geniuminet_glimpse_v2_2.experts.not_a_number, "Requested Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
jpx_osederivatives_geniuminet_glimpse_v2_2.requested_session = {}

-- Size: Requested Session
jpx_osederivatives_geniuminet_glimpse_v2_2.requested_session.size = 10

-- Display: Requested Session
jpx_osederivatives_geniuminet_glimpse_v2_2.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
jpx_osederivatives_geniuminet_glimpse_v2_2.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.requested_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved 12
jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_12 = {}

-- Size: Reserved 12
jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_12.size = 12

-- Display: Reserved 12
jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_12.display = function(value)
  return "Reserved 12: "..value
end

-- Dissect: Reserved 12
jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_12.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_12.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.reserved_12, range, value, display)

  return offset + length, value
end

-- Reserved 4 A
jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_4_a = {}

-- Size: Reserved 4 A
jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_4_a.size = 4

-- Display: Reserved 4 A
jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_4_a.display = function(value)
  return "Reserved 4 A: "..value
end

-- Dissect: Reserved 4 A
jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_4_a.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_4_a.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_4_a.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.reserved_4_a, range, value, display)

  return offset + length, value
end

-- Reserved 4 B
jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_4_b = {}

-- Size: Reserved 4 B
jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_4_b.size = 4

-- Display: Reserved 4 B
jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_4_b.display = function(value)
  return "Reserved 4 B: "..value
end

-- Dissect: Reserved 4 B
jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_4_b.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_4_b.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_4_b.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.reserved_4_b, range, value, display)

  return offset + length, value
end

-- Reserved 7 A
jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_7_a = {}

-- Size: Reserved 7 A
jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_7_a.size = 7

-- Display: Reserved 7 A
jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_7_a.display = function(value)
  return "Reserved 7 A: "..value
end

-- Dissect: Reserved 7 A
jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_7_a.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_7_a.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_7_a.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.reserved_7_a, range, value, display)

  return offset + length, value
end

-- Reserved 7 B
jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_7_b = {}

-- Size: Reserved 7 B
jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_7_b.size = 7

-- Display: Reserved 7 B
jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_7_b.display = function(value)
  return "Reserved 7 B: "..value
end

-- Dissect: Reserved 7 B
jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_7_b.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_7_b.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_7_b.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.reserved_7_b, range, value, display)

  return offset + length, value
end

-- Reserved 8 A
jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_8_a = {}

-- Size: Reserved 8 A
jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_8_a.size = 8

-- Display: Reserved 8 A
jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_8_a.display = function(value)
  return "Reserved 8 A: "..value
end

-- Dissect: Reserved 8 A
jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_8_a.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_8_a.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_8_a.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.reserved_8_a, range, value, display)

  return offset + length, value
end

-- Reserved 8 B
jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_8_b = {}

-- Size: Reserved 8 B
jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_8_b.size = 8

-- Display: Reserved 8 B
jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_8_b.display = function(value)
  return "Reserved 8 B: "..value
end

-- Dissect: Reserved 8 B
jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_8_b.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_8_b.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_8_b.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.reserved_8_b, range, value, display)

  return offset + length, value
end

-- Round Lot Size
jpx_osederivatives_geniuminet_glimpse_v2_2.round_lot_size = {}

-- Size: Round Lot Size
jpx_osederivatives_geniuminet_glimpse_v2_2.round_lot_size.size = 4

-- Display: Round Lot Size
jpx_osederivatives_geniuminet_glimpse_v2_2.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
jpx_osederivatives_geniuminet_glimpse_v2_2.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Second
jpx_osederivatives_geniuminet_glimpse_v2_2.second = {}

-- Size: Second
jpx_osederivatives_geniuminet_glimpse_v2_2.second.size = 4

-- Store: Second
jpx_osederivatives_geniuminet_glimpse_v2_2.second.current = nil

-- Generated: Second
jpx_osederivatives_geniuminet_glimpse_v2_2.second.generated = function(value, range, packet, parent)
  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.second
  if jpx_osederivatives_geniuminet_glimpse_v2_2.absolute_time_base == 1 then field = omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.second_utc end
  local second = parent:add(field, range, NSTime.new(value, 0))
  second:set_generated()
end

-- Dissect: Second
jpx_osederivatives_geniuminet_glimpse_v2_2.second.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.second.size
  local range = buffer(offset, length)
  local value = range:uint()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.second
  if jpx_osederivatives_geniuminet_glimpse_v2_2.absolute_time_base == 1 then field = omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.second_utc end

  local seconds = value
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Sequence
jpx_osederivatives_geniuminet_glimpse_v2_2.sequence = {}

-- Size: Sequence
jpx_osederivatives_geniuminet_glimpse_v2_2.sequence.size = 20

-- Display: Sequence
jpx_osederivatives_geniuminet_glimpse_v2_2.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
jpx_osederivatives_geniuminet_glimpse_v2_2.sequence.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.sequence.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.sequence, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
jpx_osederivatives_geniuminet_glimpse_v2_2.sequenced_message_type = {}

-- Size: Sequenced Message Type
jpx_osederivatives_geniuminet_glimpse_v2_2.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
jpx_osederivatives_geniuminet_glimpse_v2_2.sequenced_message_type.labels = {
  ["T"] = "Sequenced Message Type: Seconds Message (T)",
  ["R"] = "Sequenced Message Type: Series Information Basic Message (R)",
  ["M"] = "Sequenced Message Type: Series Information Basic Combination Message (M)",
  ["L"] = "Sequenced Message Type: Tick Size Data Message (L)",
  ["S"] = "Sequenced Message Type: System Event Data Message (S)",
  ["O"] = "Sequenced Message Type: Trading Status Data Message (O)",
  ["A"] = "Sequenced Message Type: New Order Message (A)",
  ["E"] = "Sequenced Message Type: Execution Notice Message (E)",
  ["C"] = "Sequenced Message Type: Execution Notice With Trade Information Message (C)",
  ["D"] = "Sequenced Message Type: Deleted Order Message (D)",
  ["Z"] = "Sequenced Message Type: Ep Message (Z)",
  ["G"] = "Sequenced Message Type: Snapshot Completion Message (G)",
}

jpx_osederivatives_geniuminet_glimpse_v2_2.sequenced_message_type.display = function(value)
  return jpx_osederivatives_geniuminet_glimpse_v2_2.sequenced_message_type.labels[value] or "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
jpx_osederivatives_geniuminet_glimpse_v2_2.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
jpx_osederivatives_geniuminet_glimpse_v2_2.server_packet_type = {}

-- Size: Server Packet Type
jpx_osederivatives_geniuminet_glimpse_v2_2.server_packet_type.size = 1

-- Display: Server Packet Type
jpx_osederivatives_geniuminet_glimpse_v2_2.server_packet_type.labels = {
  ["+"] = "Packet Type: Debug Packet (+)",
  ["A"] = "Packet Type: Login Accepted Packet (A)",
  ["J"] = "Packet Type: Login Rejected Packet (J)",
  ["S"] = "Packet Type: Sequenced Data Packet (S)",
  ["H"] = "Packet Type: Server Heartbeat Packet (H)",
  ["Z"] = "Packet Type: End Of Session Packet (Z)",
}

jpx_osederivatives_geniuminet_glimpse_v2_2.server_packet_type.display = function(value)
  return jpx_osederivatives_geniuminet_glimpse_v2_2.server_packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Server Packet Type
jpx_osederivatives_geniuminet_glimpse_v2_2.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Side
jpx_osederivatives_geniuminet_glimpse_v2_2.side = {}

-- Size: Side
jpx_osederivatives_geniuminet_glimpse_v2_2.side.size = 1

-- Display: Side
jpx_osederivatives_geniuminet_glimpse_v2_2.side.labels = {
  ["B"] = "Side: Buy (B)",
  ["S"] = "Side: Sell (S)",
}

jpx_osederivatives_geniuminet_glimpse_v2_2.side.display = function(value)
  return jpx_osederivatives_geniuminet_glimpse_v2_2.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
jpx_osederivatives_geniuminet_glimpse_v2_2.side.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.side.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.side, range, value, display)

  return offset + length, value
end

-- State Name
jpx_osederivatives_geniuminet_glimpse_v2_2.state_name = {}

-- Size: State Name
jpx_osederivatives_geniuminet_glimpse_v2_2.state_name.size = 20

-- Display: State Name
jpx_osederivatives_geniuminet_glimpse_v2_2.state_name.display = function(value)
  return "State Name: "..value
end

-- Dissect: State Name
jpx_osederivatives_geniuminet_glimpse_v2_2.state_name.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.state_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.state_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.state_name, range, value, display)

  return offset + length, value
end

-- Strike Price
jpx_osederivatives_geniuminet_glimpse_v2_2.strike_price = {}

-- Size: Strike Price
jpx_osederivatives_geniuminet_glimpse_v2_2.strike_price.size = 4

-- Display: Strike Price
jpx_osederivatives_geniuminet_glimpse_v2_2.strike_price.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Strike Price: No Value"
  end

  return "Strike Price: "..value
end

-- Dissect: Strike Price
jpx_osederivatives_geniuminet_glimpse_v2_2.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.strike_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Symbol
jpx_osederivatives_geniuminet_glimpse_v2_2.symbol = {}

-- Size: Symbol
jpx_osederivatives_geniuminet_glimpse_v2_2.symbol.size = 32

-- Display: Symbol
jpx_osederivatives_geniuminet_glimpse_v2_2.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
jpx_osederivatives_geniuminet_glimpse_v2_2.symbol.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.symbol, range, value, display)

  return offset + length, value
end

-- Tick Size
jpx_osederivatives_geniuminet_glimpse_v2_2.tick_size = {}

-- Size: Tick Size
jpx_osederivatives_geniuminet_glimpse_v2_2.tick_size.size = 8

-- Display: Tick Size
jpx_osederivatives_geniuminet_glimpse_v2_2.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Dissect: Tick Size
jpx_osederivatives_geniuminet_glimpse_v2_2.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.tick_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Trade Price
jpx_osederivatives_geniuminet_glimpse_v2_2.trade_price = {}

-- Size: Trade Price
jpx_osederivatives_geniuminet_glimpse_v2_2.trade_price.size = 4

-- Display: Trade Price
jpx_osederivatives_geniuminet_glimpse_v2_2.trade_price.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Trade Price: No Value"
  end

  return "Trade Price: "..value
end

-- Dissect: Trade Price
jpx_osederivatives_geniuminet_glimpse_v2_2.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.trade_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trading Currency
jpx_osederivatives_geniuminet_glimpse_v2_2.trading_currency = {}

-- Size: Trading Currency
jpx_osederivatives_geniuminet_glimpse_v2_2.trading_currency.size = 3

-- Display: Trading Currency
jpx_osederivatives_geniuminet_glimpse_v2_2.trading_currency.display = function(value)
  return "Trading Currency: "..value
end

-- Dissect: Trading Currency
jpx_osederivatives_geniuminet_glimpse_v2_2.trading_currency.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.trading_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.trading_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.trading_currency, range, value, display)

  return offset + length, value
end

-- Underlying Order Book Id
jpx_osederivatives_geniuminet_glimpse_v2_2.underlying_order_book_id = {}

-- Size: Underlying Order Book Id
jpx_osederivatives_geniuminet_glimpse_v2_2.underlying_order_book_id.size = 4

-- Display: Underlying Order Book Id
jpx_osederivatives_geniuminet_glimpse_v2_2.underlying_order_book_id.display = function(value)
  return "Underlying Order Book Id: "..value
end

-- Dissect: Underlying Order Book Id
jpx_osederivatives_geniuminet_glimpse_v2_2.underlying_order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.underlying_order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.underlying_order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.underlying_order_book_id, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
jpx_osederivatives_geniuminet_glimpse_v2_2.unsequenced_message = {}

-- Display: Unsequenced Message
jpx_osederivatives_geniuminet_glimpse_v2_2.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
jpx_osederivatives_geniuminet_glimpse_v2_2.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.unsequenced_message, range, value, display)

  return offset + size, value
end

-- Unsequenced Message Type
jpx_osederivatives_geniuminet_glimpse_v2_2.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
jpx_osederivatives_geniuminet_glimpse_v2_2.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
jpx_osederivatives_geniuminet_glimpse_v2_2.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
jpx_osederivatives_geniuminet_glimpse_v2_2.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
jpx_osederivatives_geniuminet_glimpse_v2_2.username = {}

-- Size: Username
jpx_osederivatives_geniuminet_glimpse_v2_2.username.size = 6

-- Display: Username
jpx_osederivatives_geniuminet_glimpse_v2_2.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
jpx_osederivatives_geniuminet_glimpse_v2_2.username.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.username, range, value, display)

  return offset + length, value
end

-- Timestamp
jpx_osederivatives_geniuminet_glimpse_v2_2.timestamp = {}

-- Translate: Timestamp
jpx_osederivatives_geniuminet_glimpse_v2_2.timestamp.translate = function(nanoseconds, stored_second)
  return UInt64.new(stored_second * 1000000000 + nanoseconds)
end

-- Display: Timestamp
jpx_osederivatives_geniuminet_glimpse_v2_2.timestamp.display = function(nanoseconds, stored_second)
  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", stored_second)..string.format("%09d", nanoseconds)
end

-- Composite: Timestamp
jpx_osederivatives_geniuminet_glimpse_v2_2.timestamp.composite = function(buffer, offset, stored_second, packet, parent)
  local length = jpx_osederivatives_geniuminet_glimpse_v2_2.nanoseconds.size
  local range = buffer(offset, length)
  local nanoseconds = range:uint()
  local value = jpx_osederivatives_geniuminet_glimpse_v2_2.timestamp.translate(nanoseconds, stored_second)
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.timestamp.display(nanoseconds, stored_second, packet)
  parent = parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.timestamp, range, value, display)

  jpx_osederivatives_geniuminet_glimpse_v2_2.second.generated(stored_second, range, packet, parent)

  display = jpx_osederivatives_geniuminet_glimpse_v2_2.nanoseconds.display(nanoseconds)
  parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.nanoseconds, range, nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
jpx_osederivatives_geniuminet_glimpse_v2_2.timestamp.dissect = function(buffer, offset, packet, parent)
  if jpx_osederivatives_geniuminet_glimpse_v2_2.format_timestamp then
    local stored_second = jpx_osederivatives_geniuminet_glimpse_v2_2.second.current

    if stored_second ~= nil then
      return jpx_osederivatives_geniuminet_glimpse_v2_2.timestamp.composite(buffer, offset, stored_second, packet, parent)
    end
  end

  return jpx_osederivatives_geniuminet_glimpse_v2_2.nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Jpx OseDerivatives GeniumInet Glimpse 2.2
-----------------------------------------------------------------------

-- End Of Session
jpx_osederivatives_geniuminet_glimpse_v2_2.end_of_session = {}

-- Display: End Of Session
jpx_osederivatives_geniuminet_glimpse_v2_2.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
jpx_osederivatives_geniuminet_glimpse_v2_2.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
jpx_osederivatives_geniuminet_glimpse_v2_2.server_heartbeat = {}

-- Display: Server Heartbeat
jpx_osederivatives_geniuminet_glimpse_v2_2.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
jpx_osederivatives_geniuminet_glimpse_v2_2.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Snapshot Completion Message
jpx_osederivatives_geniuminet_glimpse_v2_2.snapshot_completion_message = {}

-- Size: Snapshot Completion Message
jpx_osederivatives_geniuminet_glimpse_v2_2.snapshot_completion_message.size =
  jpx_osederivatives_geniuminet_glimpse_v2_2.sequence.size

-- Display: Snapshot Completion Message
jpx_osederivatives_geniuminet_glimpse_v2_2.snapshot_completion_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Completion Message
jpx_osederivatives_geniuminet_glimpse_v2_2.snapshot_completion_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Alpha
  index, sequence = jpx_osederivatives_geniuminet_glimpse_v2_2.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Completion Message
jpx_osederivatives_geniuminet_glimpse_v2_2.snapshot_completion_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.snapshot_completion_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_glimpse_v2_2.snapshot_completion_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_glimpse_v2_2.snapshot_completion_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_glimpse_v2_2.snapshot_completion_message.fields(buffer, offset, packet, parent)
  end
end

-- Ep Message
jpx_osederivatives_geniuminet_glimpse_v2_2.ep_message = {}

-- Size: Ep Message
jpx_osederivatives_geniuminet_glimpse_v2_2.ep_message.size =
  jpx_osederivatives_geniuminet_glimpse_v2_2.nanoseconds.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.order_book_id.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.available_bid_quantity_at_equilibrium_price.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.available_ask_quantity_at_equilibrium_price.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.equilibrium_price.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_4_a.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_4_b.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_8_a.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_8_b.size

-- Display: Ep Message
jpx_osederivatives_geniuminet_glimpse_v2_2.ep_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ep Message
jpx_osederivatives_geniuminet_glimpse_v2_2.ep_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = jpx_osederivatives_geniuminet_glimpse_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = jpx_osederivatives_geniuminet_glimpse_v2_2.order_book_id.dissect(buffer, index, packet, parent)

  -- Available Bid Quantity At Equilibrium Price: Numeric
  index, available_bid_quantity_at_equilibrium_price = jpx_osederivatives_geniuminet_glimpse_v2_2.available_bid_quantity_at_equilibrium_price.dissect(buffer, index, packet, parent)

  -- Available Ask Quantity At Equilibrium Price: Numeric
  index, available_ask_quantity_at_equilibrium_price = jpx_osederivatives_geniuminet_glimpse_v2_2.available_ask_quantity_at_equilibrium_price.dissect(buffer, index, packet, parent)

  -- Equilibrium Price: Price
  index, equilibrium_price = jpx_osederivatives_geniuminet_glimpse_v2_2.equilibrium_price.dissect(buffer, index, packet, parent)

  -- Reserved 4 A: Reserved
  index, reserved_4_a = jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_4_a.dissect(buffer, index, packet, parent)

  -- Reserved 4 B: Reserved
  index, reserved_4_b = jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_4_b.dissect(buffer, index, packet, parent)

  -- Reserved 8 A: Reserved
  index, reserved_8_a = jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_8_a.dissect(buffer, index, packet, parent)

  -- Reserved 8 B: Reserved
  index, reserved_8_b = jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_8_b.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ep Message
jpx_osederivatives_geniuminet_glimpse_v2_2.ep_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.ep_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_glimpse_v2_2.ep_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_glimpse_v2_2.ep_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_glimpse_v2_2.ep_message.fields(buffer, offset, packet, parent)
  end
end

-- Deleted Order Message
jpx_osederivatives_geniuminet_glimpse_v2_2.deleted_order_message = {}

-- Size: Deleted Order Message
jpx_osederivatives_geniuminet_glimpse_v2_2.deleted_order_message.size =
  jpx_osederivatives_geniuminet_glimpse_v2_2.nanoseconds.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.order_id.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.order_book_id.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.side.size

-- Display: Deleted Order Message
jpx_osederivatives_geniuminet_glimpse_v2_2.deleted_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Deleted Order Message
jpx_osederivatives_geniuminet_glimpse_v2_2.deleted_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = jpx_osederivatives_geniuminet_glimpse_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = jpx_osederivatives_geniuminet_glimpse_v2_2.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = jpx_osederivatives_geniuminet_glimpse_v2_2.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = jpx_osederivatives_geniuminet_glimpse_v2_2.side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Deleted Order Message
jpx_osederivatives_geniuminet_glimpse_v2_2.deleted_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.deleted_order_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_glimpse_v2_2.deleted_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_glimpse_v2_2.deleted_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_glimpse_v2_2.deleted_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Notice With Trade Information Message
jpx_osederivatives_geniuminet_glimpse_v2_2.execution_notice_with_trade_information_message = {}

-- Size: Execution Notice With Trade Information Message
jpx_osederivatives_geniuminet_glimpse_v2_2.execution_notice_with_trade_information_message.size =
  jpx_osederivatives_geniuminet_glimpse_v2_2.nanoseconds.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.order_id.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.order_book_id.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.side.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.executed_quantity.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.match_id.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.combo_group_id.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_7_a.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_7_b.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.trade_price.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.occurred_at_cross.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.printable.size

-- Display: Execution Notice With Trade Information Message
jpx_osederivatives_geniuminet_glimpse_v2_2.execution_notice_with_trade_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Notice With Trade Information Message
jpx_osederivatives_geniuminet_glimpse_v2_2.execution_notice_with_trade_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = jpx_osederivatives_geniuminet_glimpse_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = jpx_osederivatives_geniuminet_glimpse_v2_2.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = jpx_osederivatives_geniuminet_glimpse_v2_2.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = jpx_osederivatives_geniuminet_glimpse_v2_2.side.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Numeric
  index, executed_quantity = jpx_osederivatives_geniuminet_glimpse_v2_2.executed_quantity.dissect(buffer, index, packet, parent)

  -- Match Id: Numeric
  index, match_id = jpx_osederivatives_geniuminet_glimpse_v2_2.match_id.dissect(buffer, index, packet, parent)

  -- Combo Group Id: Numeric
  index, combo_group_id = jpx_osederivatives_geniuminet_glimpse_v2_2.combo_group_id.dissect(buffer, index, packet, parent)

  -- Reserved 7 A: Reserved
  index, reserved_7_a = jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_7_a.dissect(buffer, index, packet, parent)

  -- Reserved 7 B: Reserved
  index, reserved_7_b = jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_7_b.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = jpx_osederivatives_geniuminet_glimpse_v2_2.trade_price.dissect(buffer, index, packet, parent)

  -- Occurred At Cross: Alpha
  index, occurred_at_cross = jpx_osederivatives_geniuminet_glimpse_v2_2.occurred_at_cross.dissect(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = jpx_osederivatives_geniuminet_glimpse_v2_2.printable.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Notice With Trade Information Message
jpx_osederivatives_geniuminet_glimpse_v2_2.execution_notice_with_trade_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.execution_notice_with_trade_information_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_glimpse_v2_2.execution_notice_with_trade_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_glimpse_v2_2.execution_notice_with_trade_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_glimpse_v2_2.execution_notice_with_trade_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Notice Message
jpx_osederivatives_geniuminet_glimpse_v2_2.execution_notice_message = {}

-- Size: Execution Notice Message
jpx_osederivatives_geniuminet_glimpse_v2_2.execution_notice_message.size =
  jpx_osederivatives_geniuminet_glimpse_v2_2.nanoseconds.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.order_id.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.order_book_id.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.side.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.executed_quantity.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.match_id.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.combo_group_id.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_7_a.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_7_b.size

-- Display: Execution Notice Message
jpx_osederivatives_geniuminet_glimpse_v2_2.execution_notice_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Notice Message
jpx_osederivatives_geniuminet_glimpse_v2_2.execution_notice_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = jpx_osederivatives_geniuminet_glimpse_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = jpx_osederivatives_geniuminet_glimpse_v2_2.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = jpx_osederivatives_geniuminet_glimpse_v2_2.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = jpx_osederivatives_geniuminet_glimpse_v2_2.side.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Numeric
  index, executed_quantity = jpx_osederivatives_geniuminet_glimpse_v2_2.executed_quantity.dissect(buffer, index, packet, parent)

  -- Match Id: Numeric
  index, match_id = jpx_osederivatives_geniuminet_glimpse_v2_2.match_id.dissect(buffer, index, packet, parent)

  -- Combo Group Id: Numeric
  index, combo_group_id = jpx_osederivatives_geniuminet_glimpse_v2_2.combo_group_id.dissect(buffer, index, packet, parent)

  -- Reserved 7 A: Reserved
  index, reserved_7_a = jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_7_a.dissect(buffer, index, packet, parent)

  -- Reserved 7 B: Reserved
  index, reserved_7_b = jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_7_b.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Notice Message
jpx_osederivatives_geniuminet_glimpse_v2_2.execution_notice_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.execution_notice_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_glimpse_v2_2.execution_notice_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_glimpse_v2_2.execution_notice_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_glimpse_v2_2.execution_notice_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Message
jpx_osederivatives_geniuminet_glimpse_v2_2.new_order_message = {}

-- Size: New Order Message
jpx_osederivatives_geniuminet_glimpse_v2_2.new_order_message.size =
  jpx_osederivatives_geniuminet_glimpse_v2_2.nanoseconds.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.order_id.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.order_book_id.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.side.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.order_book_position.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.quantity.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.price.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.order_attributes.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.lot_type.size

-- Display: New Order Message
jpx_osederivatives_geniuminet_glimpse_v2_2.new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Message
jpx_osederivatives_geniuminet_glimpse_v2_2.new_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = jpx_osederivatives_geniuminet_glimpse_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = jpx_osederivatives_geniuminet_glimpse_v2_2.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = jpx_osederivatives_geniuminet_glimpse_v2_2.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = jpx_osederivatives_geniuminet_glimpse_v2_2.side.dissect(buffer, index, packet, parent)

  -- Order Book Position: Numeric
  index, order_book_position = jpx_osederivatives_geniuminet_glimpse_v2_2.order_book_position.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = jpx_osederivatives_geniuminet_glimpse_v2_2.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = jpx_osederivatives_geniuminet_glimpse_v2_2.price.dissect(buffer, index, packet, parent)

  -- Order Attributes: Numeric
  index, order_attributes = jpx_osederivatives_geniuminet_glimpse_v2_2.order_attributes.dissect(buffer, index, packet, parent)

  -- Lot Type: Numeric
  index, lot_type = jpx_osederivatives_geniuminet_glimpse_v2_2.lot_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Message
jpx_osederivatives_geniuminet_glimpse_v2_2.new_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.new_order_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_glimpse_v2_2.new_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_glimpse_v2_2.new_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_glimpse_v2_2.new_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Data Message
jpx_osederivatives_geniuminet_glimpse_v2_2.trading_status_data_message = {}

-- Size: Trading Status Data Message
jpx_osederivatives_geniuminet_glimpse_v2_2.trading_status_data_message.size =
  jpx_osederivatives_geniuminet_glimpse_v2_2.nanoseconds.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.order_book_id.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.state_name.size

-- Display: Trading Status Data Message
jpx_osederivatives_geniuminet_glimpse_v2_2.trading_status_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Data Message
jpx_osederivatives_geniuminet_glimpse_v2_2.trading_status_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = jpx_osederivatives_geniuminet_glimpse_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = jpx_osederivatives_geniuminet_glimpse_v2_2.order_book_id.dissect(buffer, index, packet, parent)

  -- State Name: Alpha
  index, state_name = jpx_osederivatives_geniuminet_glimpse_v2_2.state_name.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Data Message
jpx_osederivatives_geniuminet_glimpse_v2_2.trading_status_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.trading_status_data_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_glimpse_v2_2.trading_status_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_glimpse_v2_2.trading_status_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_glimpse_v2_2.trading_status_data_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Data Message
jpx_osederivatives_geniuminet_glimpse_v2_2.system_event_data_message = {}

-- Size: System Event Data Message
jpx_osederivatives_geniuminet_glimpse_v2_2.system_event_data_message.size =
  jpx_osederivatives_geniuminet_glimpse_v2_2.nanoseconds.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.event_code.size

-- Display: System Event Data Message
jpx_osederivatives_geniuminet_glimpse_v2_2.system_event_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Data Message
jpx_osederivatives_geniuminet_glimpse_v2_2.system_event_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = jpx_osederivatives_geniuminet_glimpse_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = jpx_osederivatives_geniuminet_glimpse_v2_2.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Data Message
jpx_osederivatives_geniuminet_glimpse_v2_2.system_event_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.system_event_data_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_glimpse_v2_2.system_event_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_glimpse_v2_2.system_event_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_glimpse_v2_2.system_event_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Tick Size Data Message
jpx_osederivatives_geniuminet_glimpse_v2_2.tick_size_data_message = {}

-- Size: Tick Size Data Message
jpx_osederivatives_geniuminet_glimpse_v2_2.tick_size_data_message.size =
  jpx_osederivatives_geniuminet_glimpse_v2_2.nanoseconds.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.order_book_id.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.tick_size.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.price_from.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.price_to.size

-- Display: Tick Size Data Message
jpx_osederivatives_geniuminet_glimpse_v2_2.tick_size_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Size Data Message
jpx_osederivatives_geniuminet_glimpse_v2_2.tick_size_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = jpx_osederivatives_geniuminet_glimpse_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = jpx_osederivatives_geniuminet_glimpse_v2_2.order_book_id.dissect(buffer, index, packet, parent)

  -- Tick Size: Numeric
  index, tick_size = jpx_osederivatives_geniuminet_glimpse_v2_2.tick_size.dissect(buffer, index, packet, parent)

  -- Price From: Price
  index, price_from = jpx_osederivatives_geniuminet_glimpse_v2_2.price_from.dissect(buffer, index, packet, parent)

  -- Price To: Price
  index, price_to = jpx_osederivatives_geniuminet_glimpse_v2_2.price_to.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Size Data Message
jpx_osederivatives_geniuminet_glimpse_v2_2.tick_size_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.tick_size_data_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_glimpse_v2_2.tick_size_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_glimpse_v2_2.tick_size_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_glimpse_v2_2.tick_size_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Series Information Basic Combination Message
jpx_osederivatives_geniuminet_glimpse_v2_2.series_information_basic_combination_message = {}

-- Size: Series Information Basic Combination Message
jpx_osederivatives_geniuminet_glimpse_v2_2.series_information_basic_combination_message.size =
  jpx_osederivatives_geniuminet_glimpse_v2_2.nanoseconds.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.combination_order_book_id.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.leg_order_book_id.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.leg_side.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.leg_ratio.size

-- Display: Series Information Basic Combination Message
jpx_osederivatives_geniuminet_glimpse_v2_2.series_information_basic_combination_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Series Information Basic Combination Message
jpx_osederivatives_geniuminet_glimpse_v2_2.series_information_basic_combination_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = jpx_osederivatives_geniuminet_glimpse_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Combination Order Book Id: Numeric
  index, combination_order_book_id = jpx_osederivatives_geniuminet_glimpse_v2_2.combination_order_book_id.dissect(buffer, index, packet, parent)

  -- Leg Order Book Id: Numeric
  index, leg_order_book_id = jpx_osederivatives_geniuminet_glimpse_v2_2.leg_order_book_id.dissect(buffer, index, packet, parent)

  -- Leg Side: Alpha
  index, leg_side = jpx_osederivatives_geniuminet_glimpse_v2_2.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Numeric
  index, leg_ratio = jpx_osederivatives_geniuminet_glimpse_v2_2.leg_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Series Information Basic Combination Message
jpx_osederivatives_geniuminet_glimpse_v2_2.series_information_basic_combination_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.series_information_basic_combination_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_glimpse_v2_2.series_information_basic_combination_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_glimpse_v2_2.series_information_basic_combination_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_glimpse_v2_2.series_information_basic_combination_message.fields(buffer, offset, packet, parent)
  end
end

-- Series Information Basic Message
jpx_osederivatives_geniuminet_glimpse_v2_2.series_information_basic_message = {}

-- Size: Series Information Basic Message
jpx_osederivatives_geniuminet_glimpse_v2_2.series_information_basic_message.size =
  jpx_osederivatives_geniuminet_glimpse_v2_2.nanoseconds.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.order_book_id.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.symbol.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.long_name.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_12.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.financial_product.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.trading_currency.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_decimals_in_price.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_decimals_in_nominal_value.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.odd_lot_size.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.round_lot_size.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.block_lot_size.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.nominal_value.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_legs.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.underlying_order_book_id.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.strike_price.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.expiration_date.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_decimals_in_strike_price.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.put_or_call.size

-- Display: Series Information Basic Message
jpx_osederivatives_geniuminet_glimpse_v2_2.series_information_basic_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Series Information Basic Message
jpx_osederivatives_geniuminet_glimpse_v2_2.series_information_basic_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = jpx_osederivatives_geniuminet_glimpse_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = jpx_osederivatives_geniuminet_glimpse_v2_2.order_book_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = jpx_osederivatives_geniuminet_glimpse_v2_2.symbol.dissect(buffer, index, packet, parent)

  -- Long Name: Alpha
  index, long_name = jpx_osederivatives_geniuminet_glimpse_v2_2.long_name.dissect(buffer, index, packet, parent)

  -- Reserved 12: Reserved
  index, reserved_12 = jpx_osederivatives_geniuminet_glimpse_v2_2.reserved_12.dissect(buffer, index, packet, parent)

  -- Financial Product: Numeric
  index, financial_product = jpx_osederivatives_geniuminet_glimpse_v2_2.financial_product.dissect(buffer, index, packet, parent)

  -- Trading Currency: Alpha
  index, trading_currency = jpx_osederivatives_geniuminet_glimpse_v2_2.trading_currency.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Price: Numeric
  index, number_of_decimals_in_price = jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_decimals_in_price.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Nominal Value: Numeric
  index, number_of_decimals_in_nominal_value = jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_decimals_in_nominal_value.dissect(buffer, index, packet, parent)

  -- Odd Lot Size: Numeric
  index, odd_lot_size = jpx_osederivatives_geniuminet_glimpse_v2_2.odd_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Numeric
  index, round_lot_size = jpx_osederivatives_geniuminet_glimpse_v2_2.round_lot_size.dissect(buffer, index, packet, parent)

  -- Block Lot Size: Numeric
  index, block_lot_size = jpx_osederivatives_geniuminet_glimpse_v2_2.block_lot_size.dissect(buffer, index, packet, parent)

  -- Nominal Value: Numeric
  index, nominal_value = jpx_osederivatives_geniuminet_glimpse_v2_2.nominal_value.dissect(buffer, index, packet, parent)

  -- Number Of Legs: Numeric
  index, number_of_legs = jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_legs.dissect(buffer, index, packet, parent)

  -- Underlying Order Book Id: Numeric
  index, underlying_order_book_id = jpx_osederivatives_geniuminet_glimpse_v2_2.underlying_order_book_id.dissect(buffer, index, packet, parent)

  -- Strike Price: Price
  index, strike_price = jpx_osederivatives_geniuminet_glimpse_v2_2.strike_price.dissect(buffer, index, packet, parent)

  -- Expiration Date: Date
  index, expiration_date = jpx_osederivatives_geniuminet_glimpse_v2_2.expiration_date.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Strike Price: Numeric
  index, number_of_decimals_in_strike_price = jpx_osederivatives_geniuminet_glimpse_v2_2.number_of_decimals_in_strike_price.dissect(buffer, index, packet, parent)

  -- Put Or Call: Numeric
  index, put_or_call = jpx_osederivatives_geniuminet_glimpse_v2_2.put_or_call.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Series Information Basic Message
jpx_osederivatives_geniuminet_glimpse_v2_2.series_information_basic_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.series_information_basic_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_glimpse_v2_2.series_information_basic_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_glimpse_v2_2.series_information_basic_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_glimpse_v2_2.series_information_basic_message.fields(buffer, offset, packet, parent)
  end
end

-- Seconds Message
jpx_osederivatives_geniuminet_glimpse_v2_2.seconds_message = {}

-- Size: Seconds Message
jpx_osederivatives_geniuminet_glimpse_v2_2.seconds_message.size =
  jpx_osederivatives_geniuminet_glimpse_v2_2.second.size

-- Display: Seconds Message
jpx_osederivatives_geniuminet_glimpse_v2_2.seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seconds Message
jpx_osederivatives_geniuminet_glimpse_v2_2.seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: Numeric
  index, second = jpx_osederivatives_geniuminet_glimpse_v2_2.second.dissect(buffer, index, packet, parent)

  -- Store Second Value
  jpx_osederivatives_geniuminet_glimpse_v2_2.second.current = second

  if not packet.visited then
    jpx_osederivatives_geniuminet_glimpse_v2_2.conversation.current.second.last = second
  end

  return index
end

-- Dissect: Seconds Message
jpx_osederivatives_geniuminet_glimpse_v2_2.seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.seconds_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_glimpse_v2_2.seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_glimpse_v2_2.seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_glimpse_v2_2.seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
jpx_osederivatives_geniuminet_glimpse_v2_2.sequenced_message = {}

-- Dispatch: Sequenced Message
jpx_osederivatives_geniuminet_glimpse_v2_2.sequenced_message.dispatch = {
  ["T"] = jpx_osederivatives_geniuminet_glimpse_v2_2.seconds_message.dissect,
  ["R"] = jpx_osederivatives_geniuminet_glimpse_v2_2.series_information_basic_message.dissect,
  ["M"] = jpx_osederivatives_geniuminet_glimpse_v2_2.series_information_basic_combination_message.dissect,
  ["L"] = jpx_osederivatives_geniuminet_glimpse_v2_2.tick_size_data_message.dissect,
  ["S"] = jpx_osederivatives_geniuminet_glimpse_v2_2.system_event_data_message.dissect,
  ["O"] = jpx_osederivatives_geniuminet_glimpse_v2_2.trading_status_data_message.dissect,
  ["A"] = jpx_osederivatives_geniuminet_glimpse_v2_2.new_order_message.dissect,
  ["E"] = jpx_osederivatives_geniuminet_glimpse_v2_2.execution_notice_message.dissect,
  ["C"] = jpx_osederivatives_geniuminet_glimpse_v2_2.execution_notice_with_trade_information_message.dissect,
  ["D"] = jpx_osederivatives_geniuminet_glimpse_v2_2.deleted_order_message.dissect,
  ["Z"] = jpx_osederivatives_geniuminet_glimpse_v2_2.ep_message.dissect,
  ["G"] = jpx_osederivatives_geniuminet_glimpse_v2_2.snapshot_completion_message.dissect,
}

-- Dissect: Sequenced Message
jpx_osederivatives_geniuminet_glimpse_v2_2.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  local dissect = jpx_osederivatives_geniuminet_glimpse_v2_2.sequenced_message.dispatch[sequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = jpx_osederivatives_geniuminet_glimpse_v2_2.conversation.current
  if flow ~= nil then
    local memo = flow.sequence.frames[packet.number]
    if not packet.visited then
      if flow.sequence.next == nil then
        flow.sequence.next = tonumber(jpx_osederivatives_geniuminet_glimpse_v2_2.accepted_sequence_number.current)
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
          local sequence = parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if jpx_osederivatives_geniuminet_glimpse_v2_2.stream_frame ~= packet.number or jpx_osederivatives_geniuminet_glimpse_v2_2.stream_occurrence >= #memo then
          jpx_osederivatives_geniuminet_glimpse_v2_2.stream_frame = packet.number
          jpx_osederivatives_geniuminet_glimpse_v2_2.stream_occurrence = 0
        end
        jpx_osederivatives_geniuminet_glimpse_v2_2.stream_occurrence = jpx_osederivatives_geniuminet_glimpse_v2_2.stream_occurrence + 1
        local value = memo[jpx_osederivatives_geniuminet_glimpse_v2_2.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 12 values
  index, sequenced_message_type = jpx_osederivatives_geniuminet_glimpse_v2_2.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 12 branches
  index = jpx_osederivatives_geniuminet_glimpse_v2_2.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = jpx_osederivatives_geniuminet_glimpse_v2_2.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.sequenced_data_packet, buffer(offset, 0))
    local current = jpx_osederivatives_geniuminet_glimpse_v2_2.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = jpx_osederivatives_geniuminet_glimpse_v2_2.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    jpx_osederivatives_geniuminet_glimpse_v2_2.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.login_rejected_packet = {}

-- Size: Login Rejected Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.login_rejected_packet.size =
  jpx_osederivatives_geniuminet_glimpse_v2_2.reject_reason_code.size

-- Display: Login Rejected Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String Enum with 2 values
  index, reject_reason_code = jpx_osederivatives_geniuminet_glimpse_v2_2.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.login_rejected_packet, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_glimpse_v2_2.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_glimpse_v2_2.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_glimpse_v2_2.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.login_accepted_packet = {}

-- Size: Login Accepted Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.login_accepted_packet.size =
  jpx_osederivatives_geniuminet_glimpse_v2_2.accepted_session.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.accepted_sequence_number.size

-- Display: Login Accepted Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = jpx_osederivatives_geniuminet_glimpse_v2_2.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = jpx_osederivatives_geniuminet_glimpse_v2_2.accepted_sequence_number.dissect(buffer, index, packet, parent)

  -- Store Accepted Sequence Number Value
  jpx_osederivatives_geniuminet_glimpse_v2_2.accepted_sequence_number.current = accepted_sequence_number

  if not packet.visited then
    jpx_osederivatives_geniuminet_glimpse_v2_2.conversation.current.accepted_sequence_number.last = accepted_sequence_number
  end

  return index
end

-- Dissect: Login Accepted Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.login_accepted_packet, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_glimpse_v2_2.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_glimpse_v2_2.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_glimpse_v2_2.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.debug_packet = {}

-- Calculate size of: Debug Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.debug_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Debug Text
  index = index + buffer(offset + index - 3, 2):uint()

  return index
end

-- Display: Debug Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Debug Text
  local size_of_debug_text = packet_length - 1

  -- Debug Text: 0 Byte Ascii String
  index, debug_text = jpx_osederivatives_geniuminet_glimpse_v2_2.debug_text.dissect(buffer, index, packet, parent, size_of_debug_text)

  return index
end

-- Dissect: Debug Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.debug_packet, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_glimpse_v2_2.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_glimpse_v2_2.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_glimpse_v2_2.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
jpx_osederivatives_geniuminet_glimpse_v2_2.server_payload = {}

-- Dispatch: Server Payload
jpx_osederivatives_geniuminet_glimpse_v2_2.server_payload.dispatch = {
  ["+"] = jpx_osederivatives_geniuminet_glimpse_v2_2.debug_packet.dissect,
  ["A"] = jpx_osederivatives_geniuminet_glimpse_v2_2.login_accepted_packet.dissect,
  ["J"] = jpx_osederivatives_geniuminet_glimpse_v2_2.login_rejected_packet.dissect,
  ["S"] = jpx_osederivatives_geniuminet_glimpse_v2_2.sequenced_data_packet.dissect,
  ["H"] = jpx_osederivatives_geniuminet_glimpse_v2_2.server_heartbeat.dissect,
  ["Z"] = jpx_osederivatives_geniuminet_glimpse_v2_2.end_of_session.dissect,
}

-- Dissect: Server Payload
jpx_osederivatives_geniuminet_glimpse_v2_2.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  local dissect = jpx_osederivatives_geniuminet_glimpse_v2_2.server_payload.dispatch[server_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
jpx_osederivatives_geniuminet_glimpse_v2_2.server_packet_header = {}

-- Size: Server Packet Header
jpx_osederivatives_geniuminet_glimpse_v2_2.server_packet_header.size =
  jpx_osederivatives_geniuminet_glimpse_v2_2.packet_length.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.server_packet_type.size

-- Display: Server Packet Header
jpx_osederivatives_geniuminet_glimpse_v2_2.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
jpx_osederivatives_geniuminet_glimpse_v2_2.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = jpx_osederivatives_geniuminet_glimpse_v2_2.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = jpx_osederivatives_geniuminet_glimpse_v2_2.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
jpx_osederivatives_geniuminet_glimpse_v2_2.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.server_packet_header, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_glimpse_v2_2.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_glimpse_v2_2.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_glimpse_v2_2.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = jpx_osederivatives_geniuminet_glimpse_v2_2.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = jpx_osederivatives_geniuminet_glimpse_v2_2.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = jpx_osederivatives_geniuminet_glimpse_v2_2.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = jpx_osederivatives_geniuminet_glimpse_v2_2.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    jpx_osederivatives_geniuminet_glimpse_v2_2.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < jpx_osederivatives_geniuminet_glimpse_v2_2.server_packet_header.size then
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
jpx_osederivatives_geniuminet_glimpse_v2_2.server_packet = {}

-- Verify required size of Tcp packet
jpx_osederivatives_geniuminet_glimpse_v2_2.server_packet.requiredsize = function(buffer)
  return buffer:len() >= jpx_osederivatives_geniuminet_glimpse_v2_2.server_packet_header.size
end

-- Dissect Server Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = jpx_osederivatives_geniuminet_glimpse_v2_2.conversation.data(packet)
  if not packet.visited then
    data.accepted_sequence_number.frames[packet.number] = data.accepted_sequence_number.last
    data.second.frames[packet.number] = data.second.last
  end
  jpx_osederivatives_geniuminet_glimpse_v2_2.accepted_sequence_number.current = data.accepted_sequence_number.frames[packet.number]
  jpx_osederivatives_geniuminet_glimpse_v2_2.second.current = data.second.frames[packet.number]
  jpx_osederivatives_geniuminet_glimpse_v2_2.conversation.current = data

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
      index = jpx_osederivatives_geniuminet_glimpse_v2_2.server_soup_bin_tcp_packet.dissect(frame, index, packet, parent, size_of_server_soup_bin_tcp_packet)
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
jpx_osederivatives_geniuminet_glimpse_v2_2.logout_request = {}

-- Display: Logout Request
jpx_osederivatives_geniuminet_glimpse_v2_2.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
jpx_osederivatives_geniuminet_glimpse_v2_2.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
jpx_osederivatives_geniuminet_glimpse_v2_2.client_heartbeat = {}

-- Display: Client Heartbeat
jpx_osederivatives_geniuminet_glimpse_v2_2.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
jpx_osederivatives_geniuminet_glimpse_v2_2.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = jpx_osederivatives_geniuminet_glimpse_v2_2.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Unsequenced Data Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = jpx_osederivatives_geniuminet_glimpse_v2_2.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = packet_length - 2

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = jpx_osederivatives_geniuminet_glimpse_v2_2.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = jpx_osederivatives_geniuminet_glimpse_v2_2.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = jpx_osederivatives_geniuminet_glimpse_v2_2.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = jpx_osederivatives_geniuminet_glimpse_v2_2.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    jpx_osederivatives_geniuminet_glimpse_v2_2.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.login_request_packet = {}

-- Size: Login Request Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.login_request_packet.size =
  jpx_osederivatives_geniuminet_glimpse_v2_2.username.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.password.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.requested_session.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.requested_sequence_number.size

-- Display: Login Request Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = jpx_osederivatives_geniuminet_glimpse_v2_2.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = jpx_osederivatives_geniuminet_glimpse_v2_2.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = jpx_osederivatives_geniuminet_glimpse_v2_2.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = jpx_osederivatives_geniuminet_glimpse_v2_2.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.login_request_packet, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_glimpse_v2_2.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_glimpse_v2_2.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_glimpse_v2_2.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
jpx_osederivatives_geniuminet_glimpse_v2_2.client_payload = {}

-- Dispatch: Client Payload
jpx_osederivatives_geniuminet_glimpse_v2_2.client_payload.dispatch = {
  ["+"] = jpx_osederivatives_geniuminet_glimpse_v2_2.debug_packet.dissect,
  ["L"] = jpx_osederivatives_geniuminet_glimpse_v2_2.login_request_packet.dissect,
  ["U"] = jpx_osederivatives_geniuminet_glimpse_v2_2.unsequenced_data_packet.dissect,
  ["R"] = jpx_osederivatives_geniuminet_glimpse_v2_2.client_heartbeat.dissect,
  ["O"] = jpx_osederivatives_geniuminet_glimpse_v2_2.logout_request.dissect,
}

-- Dissect: Client Payload
jpx_osederivatives_geniuminet_glimpse_v2_2.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  local dissect = jpx_osederivatives_geniuminet_glimpse_v2_2.client_payload.dispatch[client_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
jpx_osederivatives_geniuminet_glimpse_v2_2.client_packet_header = {}

-- Size: Client Packet Header
jpx_osederivatives_geniuminet_glimpse_v2_2.client_packet_header.size =
  jpx_osederivatives_geniuminet_glimpse_v2_2.packet_length.size + 
  jpx_osederivatives_geniuminet_glimpse_v2_2.client_packet_type.size

-- Display: Client Packet Header
jpx_osederivatives_geniuminet_glimpse_v2_2.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
jpx_osederivatives_geniuminet_glimpse_v2_2.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = jpx_osederivatives_geniuminet_glimpse_v2_2.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = jpx_osederivatives_geniuminet_glimpse_v2_2.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
jpx_osederivatives_geniuminet_glimpse_v2_2.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.client_packet_header, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_glimpse_v2_2.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_glimpse_v2_2.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_glimpse_v2_2.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = jpx_osederivatives_geniuminet_glimpse_v2_2.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = jpx_osederivatives_geniuminet_glimpse_v2_2.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = jpx_osederivatives_geniuminet_glimpse_v2_2.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = jpx_osederivatives_geniuminet_glimpse_v2_2.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    jpx_osederivatives_geniuminet_glimpse_v2_2.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < jpx_osederivatives_geniuminet_glimpse_v2_2.client_packet_header.size then
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
jpx_osederivatives_geniuminet_glimpse_v2_2.client_packet = {}

-- Verify required size of Tcp packet
jpx_osederivatives_geniuminet_glimpse_v2_2.client_packet.requiredsize = function(buffer)
  return buffer:len() >= jpx_osederivatives_geniuminet_glimpse_v2_2.client_packet_header.size
end

-- Dissect Client Packet
jpx_osederivatives_geniuminet_glimpse_v2_2.client_packet.dissect = function(buffer, packet, parent)
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
      index = jpx_osederivatives_geniuminet_glimpse_v2_2.client_soup_bin_tcp_packet.dissect(frame, index, packet, parent, size_of_client_soup_bin_tcp_packet)
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
function omi_jpx_osederivatives_geniuminet_glimpse_v2_2.init()
  jpx_osederivatives_geniuminet_glimpse_v2_2.accepted_sequence_number.current = nil
  jpx_osederivatives_geniuminet_glimpse_v2_2.second.current = nil
  jpx_osederivatives_geniuminet_glimpse_v2_2.conversation.current = nil
  jpx_osederivatives_geniuminet_glimpse_v2_2.conversation.flows = {}
end

-- Connection roles for Jpx OseDerivatives GeniumInet Glimpse 2.2: Client is the initiator, Server is the acceptor
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
jpx_osederivatives_geniuminet_glimpse_v2_2.role = function(packet)
  if omi_jpx_osederivatives_geniuminet_glimpse_v2_2.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_jpx_osederivatives_geniuminet_glimpse_v2_2.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_jpx_osederivatives_geniuminet_glimpse_v2_2.prefs.acceptor_port

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

  if omi_jpx_osederivatives_geniuminet_glimpse_v2_2.prefs.swap_sides then
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
jpx_osederivatives_geniuminet_glimpse_v2_2.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Jpx OseDerivatives GeniumInet Glimpse 2.2
function omi_jpx_osederivatives_geniuminet_glimpse_v2_2.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_jpx_osederivatives_geniuminet_glimpse_v2_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_jpx_osederivatives_geniuminet_glimpse_v2_2, buffer(), omi_jpx_osederivatives_geniuminet_glimpse_v2_2.description, "("..buffer:len().." Bytes)")
  local role = jpx_osederivatives_geniuminet_glimpse_v2_2.role(packet)

  if role == "initiator" then
    return jpx_osederivatives_geniuminet_glimpse_v2_2.client_packet.dissect(buffer, packet, protocol)
  end

  return jpx_osederivatives_geniuminet_glimpse_v2_2.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
jpx_osederivatives_geniuminet_glimpse_v2_2.client_packet.fingerprint = function(buffer)
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
jpx_osederivatives_geniuminet_glimpse_v2_2.server_packet.fingerprint = function(buffer)
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

-- Dissector Heuristic for Jpx OseDerivatives GeniumInet Glimpse 2.2 (Tcp)
local function omi_jpx_osederivatives_geniuminet_glimpse_v2_2_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not jpx_osederivatives_geniuminet_glimpse_v2_2.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp client packet message dispatch
  if not jpx_osederivatives_geniuminet_glimpse_v2_2.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_jpx_osederivatives_geniuminet_glimpse_v2_2
  omi_jpx_osederivatives_geniuminet_glimpse_v2_2.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Jpx OseDerivatives GeniumInet Glimpse 2.2 (Tcp)
local function omi_jpx_osederivatives_geniuminet_glimpse_v2_2_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not jpx_osederivatives_geniuminet_glimpse_v2_2.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp server packet message dispatch
  if not jpx_osederivatives_geniuminet_glimpse_v2_2.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_jpx_osederivatives_geniuminet_glimpse_v2_2
  omi_jpx_osederivatives_geniuminet_glimpse_v2_2.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Jpx OseDerivatives GeniumInet Glimpse 2.2 (Tcp): apply the heuristic of the sender's connection role
local function omi_jpx_osederivatives_geniuminet_glimpse_v2_2_tcp_heuristic(buffer, packet, parent)
  local role = jpx_osederivatives_geniuminet_glimpse_v2_2.role(packet)
  local initiator = omi_jpx_osederivatives_geniuminet_glimpse_v2_2_tcp_initiator_heuristic
  local acceptor = omi_jpx_osederivatives_geniuminet_glimpse_v2_2_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  jpx_osederivatives_geniuminet_glimpse_v2_2.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  jpx_osederivatives_geniuminet_glimpse_v2_2.swap(packet)

  return false
end

-- Register Heuristics for Jpx OseDerivatives GeniumInet Glimpse 2.2
omi_jpx_osederivatives_geniuminet_glimpse_v2_2:register_heuristic("tcp", omi_jpx_osederivatives_geniuminet_glimpse_v2_2_tcp_heuristic)

-- Register Jpx OseDerivatives GeniumInet Glimpse 2.2 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_jpx_osederivatives_geniuminet_glimpse_v2_2)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Japan Exchange Group
--   Version: 2.2
--   Date: Friday, October 31, 2025
--   Specification: J-GATE3.0_ITCH_Connectivity_Manual_V2.2.pdf
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
