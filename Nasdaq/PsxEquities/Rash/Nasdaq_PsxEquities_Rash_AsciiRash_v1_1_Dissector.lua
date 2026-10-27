-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq PsxEquities Rash AsciiRash 1.1 Protocol
local omi_nasdaq_psxequities_rash_asciirash_v1_1 = Proto("Omi.Nasdaq.PsxEquities.Rash.AsciiRash.v1.1", "Nasdaq PsxEquities Rash AsciiRash 1.1")

-- Protocol table
local nasdaq_psxequities_rash_asciirash_v1_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq PsxEquities Rash AsciiRash 1.1 Fields
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "nasdaq.psxequities.rash.asciirash.v1.1.acceptedsequencenumber", ftypes.UINT64, nil, nil, nil, "The sequence number in ASCII of the next Sequenced Message to be sent. Left padded with spaces.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.accepted_session = ProtoField.new("Accepted Session", "nasdaq.psxequities.rash.asciirash.v1.1.acceptedsession", ftypes.STRING, nil, nil, nil, "The session ID of the session that is now logged into. Left padded with spaces.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.broken_trade_reason = ProtoField.new("Broken Trade Reason", "nasdaq.psxequities.rash.asciirash.v1.1.brokentradereason", ftypes.STRING, nil, nil, nil, "The reason the trade was broken. See Broken Trade Reasons.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.cancel_reason = ProtoField.new("Cancel Reason", "nasdaq.psxequities.rash.asciirash.v1.1.cancelreason", ftypes.STRING, nil, nil, nil, "The reason the order was reduced or canceled. See Cancel Order Reasons.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.capacity_rule_80_a_indicator = ProtoField.new("Capacity Rule 80 A Indicator", "nasdaq.psxequities.rash.asciirash.v1.1.capacityrule80aindicator", ftypes.STRING, nil, nil, nil, "Capacity code.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.client_packet_type = ProtoField.new("Packet Type", "nasdaq.psxequities.rash.asciirash.v1.1.clientpackettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type sent by the client")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.psxequities.rash.asciirash.v1.1.crosstype", ftypes.STRING, nil, nil, nil, "Cross type.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.cust_terminal_id_sender_sub_id = ProtoField.new("Cust Terminal Id Sender Sub Id", "nasdaq.psxequities.rash.asciirash.v1.1.custterminalidsendersubid", ftypes.STRING, nil, nil, nil, "Client initiated; pass-thru. Must be left-justified.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.customer_type = ProtoField.new("Customer Type", "nasdaq.psxequities.rash.asciirash.v1.1.customertype", ftypes.STRING, nil, nil, nil, "Indicates if the order is a retail designated order (optional field).")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.debug_text = ProtoField.new("Debug Text", "nasdaq.psxequities.rash.asciirash.v1.1.debugtext", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.discretion_peg_difference = ProtoField.new("Discretion Peg Difference", "nasdaq.psxequities.rash.asciirash.v1.1.discretionpegdifference", ftypes.DOUBLE, nil, nil, nil, "Amount; 6.4 (implied decimal). If peg type is set to N, specify 0.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.discretion_peg_difference_sign = ProtoField.new("Discretion Peg Difference Sign", "nasdaq.psxequities.rash.asciirash.v1.1.discretionpegdifferencesign", ftypes.STRING, nil, nil, nil, "+ or -. If peg type is set to N, specify +.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.discretion_peg_type = ProtoField.new("Discretion Peg Type", "nasdaq.psxequities.rash.asciirash.v1.1.discretionpegtype", ftypes.STRING, nil, nil, nil, "Discretion peg type.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.discretion_price = ProtoField.new("Discretion Price", "nasdaq.psxequities.rash.asciirash.v1.1.discretionprice", ftypes.DOUBLE, nil, nil, nil, "Discretion Price for Discretionary Order. If set to 0, this order does not have discretion.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.display = ProtoField.new("Display", "nasdaq.psxequities.rash.asciirash.v1.1.display", ftypes.STRING, nil, nil, nil, "Display instruction; see the Display values.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.event_code = ProtoField.new("Event Code", "nasdaq.psxequities.rash.asciirash.v1.1.eventcode", ftypes.STRING, nil, nil, nil, "See System Event Codes.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.firm_client_id = ProtoField.new("Firm Client Id", "nasdaq.psxequities.rash.asciirash.v1.1.firmclientid", ftypes.STRING, nil, nil, nil, "MPID.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.intermarket_sweep_eligibility = ProtoField.new("Intermarket Sweep Eligibility", "nasdaq.psxequities.rash.asciirash.v1.1.intermarketsweepeligibility", ftypes.STRING, nil, nil, nil, "Inter-market sweep eligibility.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.liquidity = ProtoField.new("Liquidity", "nasdaq.psxequities.rash.asciirash.v1.1.liquidity", ftypes.STRING, nil, nil, nil, "See Liquidity Flags.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.match_number = ProtoField.new("Match Number", "nasdaq.psxequities.rash.asciirash.v1.1.matchnumber", ftypes.UINT32, nil, nil, nil, "Assigned to each match executed. Each match consists of one buy and one sell; the matching buy and sell executions share the same match number.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.max_floor = ProtoField.new("Max Floor", "nasdaq.psxequities.rash.asciirash.v1.1.maxfloor", ftypes.UINT24, nil, nil, nil, "Shares to display. If zero this field will default to the order quantity. Use the display field to specify a hidden order.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.min_qty = ProtoField.new("Min Qty", "nasdaq.psxequities.rash.asciirash.v1.1.minqty", ftypes.UINT24, nil, nil, nil, "Minimum fill amount allowed.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.psxequities.rash.asciirash.v1.1.orderreferencenumber", ftypes.UINT32, nil, nil, nil, "The day-unique Order Reference Number assigned by the system to this order.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.order_token = ProtoField.new("Order Token", "nasdaq.psxequities.rash.asciirash.v1.1.ordertoken", ftypes.STRING, nil, nil, nil, "The order Token field as entered.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.order_token_client_order_id = ProtoField.new("Order Token Client Order Id", "nasdaq.psxequities.rash.asciirash.v1.1.ordertokenclientorderid", ftypes.STRING, nil, nil, nil, "Token must be day unique for each RASH port account.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.psxequities.rash.asciirash.v1.1.packetlength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.password = ProtoField.new("Password", "nasdaq.psxequities.rash.asciirash.v1.1.password", ftypes.STRING, nil, nil, nil, "Login password")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.peg_difference = ProtoField.new("Peg Difference", "nasdaq.psxequities.rash.asciirash.v1.1.pegdifference", ftypes.DOUBLE, nil, nil, nil, "Amount; 6.4 (implied decimal). If peg type is set to N, specify 0.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.peg_difference_sign = ProtoField.new("Peg Difference Sign", "nasdaq.psxequities.rash.asciirash.v1.1.pegdifferencesign", ftypes.STRING, nil, nil, nil, "+ or -. If peg type is set to N, specify +.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.peg_type = ProtoField.new("Peg Type", "nasdaq.psxequities.rash.asciirash.v1.1.pegtype", ftypes.STRING, nil, nil, nil, "Peg type.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.price = ProtoField.new("Price", "nasdaq.psxequities.rash.asciirash.v1.1.price", ftypes.DOUBLE, nil, nil, nil, "Price, 6 whole and 4 implied decimal digits.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.random_reserve = ProtoField.new("Random Reserve", "nasdaq.psxequities.rash.asciirash.v1.1.randomreserve", ftypes.UINT24, nil, nil, nil, "Shares to do random reserve with.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.reject_reason = ProtoField.new("Reject Reason", "nasdaq.psxequities.rash.asciirash.v1.1.rejectreason", ftypes.STRING, nil, nil, nil, "See Rejected Order Reasons.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.psxequities.rash.asciirash.v1.1.rejectreasoncode", ftypes.STRING, nil, nil, nil, "Login Reject Codes")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.psxequities.rash.asciirash.v1.1.requestedsequencenumber", ftypes.UINT64, nil, nil, nil, "Specifies the next sequence number in ASCII the client wants to receive upon connection, or 0 to start receiving the most recently generated message.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.psxequities.rash.asciirash.v1.1.requestedsession", ftypes.STRING, nil, nil, nil, "Specifies the session the client would like to log into, or all blanks to log into the currently active session.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.route_dest_exec_broker = ProtoField.new("Route Dest Exec Broker", "nasdaq.psxequities.rash.asciirash.v1.1.routedestexecbroker", ftypes.STRING, nil, nil, nil, "Target ID: a routing strategy or a directed order destination code.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.psxequities.rash.asciirash.v1.1.sequencedmessagetype", ftypes.STRING, nil, nil, nil, "Code identifying the RASH outbound message type")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.server_packet_type = ProtoField.new("Packet Type", "nasdaq.psxequities.rash.asciirash.v1.1.serverpackettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type sent by the server")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.shares = ProtoField.new("Shares", "nasdaq.psxequities.rash.asciirash.v1.1.shares", ftypes.UINT24, nil, nil, nil, "Specify zero to cancel the order; otherwise the new intended order size.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.shares_order_qty = ProtoField.new("Shares Order Qty", "nasdaq.psxequities.rash.asciirash.v1.1.sharesorderqty", ftypes.UINT24, nil, nil, nil, "Total number of shares entered. Must be greater than zero.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.side = ProtoField.new("Side", "nasdaq.psxequities.rash.asciirash.v1.1.side", ftypes.STRING, nil, nil, nil, "B/S/T/E: Buy, Sell, Short, Short Exempt. For sell short and sell short exempt, the subscriber affirms the ability to borrow securities in good deliverable form for delivery within three business days.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.stock_symbol = ProtoField.new("Stock Symbol", "nasdaq.psxequities.rash.asciirash.v1.1.stocksymbol", ftypes.STRING, nil, nil, nil, "Stock symbol.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.time_in_force = ProtoField.new("Time In Force", "nasdaq.psxequities.rash.asciirash.v1.1.timeinforce", ftypes.UINT24, nil, nil, nil, "The number of seconds that this order should live before being automatically canceled; special values (0 = Immediate or Cancel, 99998 = Market Day, 99999 = system day and the others the document lists) are listed in section 2.1.1.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.psxequities.rash.asciirash.v1.1.timestamp", ftypes.UINT32, nil, nil, nil, "Milliseconds past midnight Eastern, 8 ascii digits right justified and zero filled")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.trade_now = ProtoField.new("Trade Now", "nasdaq.psxequities.rash.asciirash.v1.1.tradenow", ftypes.STRING, nil, nil, nil, "Indicates if the order is a Trade Now order (optional field).")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.psxequities.rash.asciirash.v1.1.unsequencedmessagetype", ftypes.STRING, nil, nil, nil, "Value identifying unsequenced message type")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.username = ProtoField.new("Username", "nasdaq.psxequities.rash.asciirash.v1.1.username", ftypes.STRING, nil, nil, nil, "Session username")

-- Nasdaq PsxEquities Rash AsciiRash 1.1 Framing
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.client_packet = ProtoField.new("Packet", "nasdaq.psxequities.rash.asciirash.v1.1.clientpacket", ftypes.STRING, nil, nil, nil, "Rash Packet sent by the client")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.client_packet_header = ProtoField.new("Packet Header", "nasdaq.psxequities.rash.asciirash.v1.1.clientpacketheader", ftypes.STRING, nil, nil, nil, "Packet header of a packet sent by the client")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.psxequities.rash.asciirash.v1.1.clientsoupbintcppacket", ftypes.STRING, nil, nil, nil, "Soup Bin Tcp Packet sent by the client")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.sequenced_message_header = ProtoField.new("Sequenced Message Header", "nasdaq.psxequities.rash.asciirash.v1.1.sequencedmessageheader", ftypes.STRING, nil, nil, nil, "Time Stamp and type carried ahead of every RASH outbound sequenced message")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.server_packet = ProtoField.new("Packet", "nasdaq.psxequities.rash.asciirash.v1.1.serverpacket", ftypes.STRING, nil, nil, nil, "Rash Packet sent by the server")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.server_packet_header = ProtoField.new("Packet Header", "nasdaq.psxequities.rash.asciirash.v1.1.serverpacketheader", ftypes.STRING, nil, nil, nil, "Packet header of a packet sent by the server")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.psxequities.rash.asciirash.v1.1.serversoupbintcppacket", ftypes.STRING, nil, nil, nil, "Soup Bin Tcp Packet sent by the server")

-- Nasdaq PsxEquities Rash 1.1 Application Messages
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.accepted_order_message = ProtoField.new("Accepted Order Message", "nasdaq.psxequities.rash.asciirash.v1.1.acceptedordermessage", ftypes.STRING, nil, nil, nil, "An Accepted Order Message acknowledges the receipt of a valid Enter Order Message. The data fields from the Enter Order Message are echoed back; the accepted values may differ from the entered values for some fields.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.accepted_order_message_with_cross_functionality = ProtoField.new("Accepted Order Message With Cross Functionality", "nasdaq.psxequities.rash.asciirash.v1.1.acceptedordermessagewithcrossfunctionality", ftypes.STRING, nil, nil, nil, "Similar to the regular Accepted Order Message, with the additional information provided upon order entry using the Enter Order Message with Cross Functionality.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "nasdaq.psxequities.rash.asciirash.v1.1.brokentrademessage", ftypes.STRING, nil, nil, nil, "A Broken Trade Message informs you that an execution has been broken. The trade is no longer good and will not clear.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.cancel_order_message = ProtoField.new("Cancel Order Message", "nasdaq.psxequities.rash.asciirash.v1.1.cancelordermessage", ftypes.STRING, nil, nil, nil, "Requests that an order be canceled. A Shares field of zero cancels the entire balance of the order; otherwise Shares is the new intended order size.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.canceled_order_message = ProtoField.new("Canceled Order Message", "nasdaq.psxequities.rash.asciirash.v1.1.canceledordermessage", ftypes.STRING, nil, nil, nil, "A Canceled Order Message informs you that an order has been reduced or canceled. Canceled shares reflect the number of shares that are out.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.enter_order_message = ProtoField.new("Enter Order Message", "nasdaq.psxequities.rash.asciirash.v1.1.enterordermessage", ftypes.STRING, nil, nil, nil, "The Enter Order Message lets you enter a new order. Each new order must have a Token that is unique to the day and that logical RASH Port account. If you send a valid order, you should receive an Accepted Order Message.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.enter_order_message_with_cross_functionality = ProtoField.new("Enter Order Message With Cross Functionality", "nasdaq.psxequities.rash.asciirash.v1.1.enterordermessagewithcrossfunctionality", ftypes.STRING, nil, nil, nil, "Enters orders in much the same way as the Enter Order Message, with a few additional fields. Notably, the Cross Type Flag allows you to specify that an order begins participation in a cross.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.executed_order_message = ProtoField.new("Executed Order Message", "nasdaq.psxequities.rash.asciirash.v1.1.executedordermessage", ftypes.STRING, nil, nil, nil, "An Executed Order Message informs you that all or part of an order has been executed.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.rejected_order_message = ProtoField.new("Rejected Order Message", "nasdaq.psxequities.rash.asciirash.v1.1.rejectedordermessage", ftypes.STRING, nil, nil, nil, "A Rejected Order Message may be sent in response to an Enter Order Message if the order cannot be accepted at this time. The Token of a rejected order cannot be re-used.")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.psxequities.rash.asciirash.v1.1.systemeventmessage", ftypes.STRING, nil, nil, nil, "System Event Messages signal events that affect the entire system.")

-- Nasdaq PsxEquities Rash 1.1 Session Messages
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "nasdaq.psxequities.rash.asciirash.v1.1.clientheartbeat", ftypes.BYTES, nil, nil, nil, "SoupBinTCP client sends a heartbeat to indicate the connection is alive; carries no payload")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.psxequities.rash.asciirash.v1.1.debugpacket", ftypes.STRING, nil, nil, nil, "Debug packets are intended to provide human readable text that may aid in debugging problems")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.psxequities.rash.asciirash.v1.1.endofsession", ftypes.BYTES, nil, nil, nil, "SoupBinTCP server signals end of session; client may now disconnect. Carries no payload")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.psxequities.rash.asciirash.v1.1.loginacceptedpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP server sends a Login Accepted Packet in response to receiving a valid Login Request from the client")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.psxequities.rash.asciirash.v1.1.loginrejectedpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP server sends this packet in response to an invalid Login Request Packet from the client")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.psxequities.rash.asciirash.v1.1.loginrequestpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP client must send a Login Request Packet immediately upon establishing a new TCP/IP socket connection to the server")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.logout_request = ProtoField.new("Logout Request", "nasdaq.psxequities.rash.asciirash.v1.1.logoutrequest", ftypes.BYTES, nil, nil, nil, "SoupBinTCP client requests session logout; server completes any in-flight messages then closes. Carries no payload")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.psxequities.rash.asciirash.v1.1.sequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Sequenced Data Packets act as an envelope to carry the actual sequenced data messages that are transferred from the server to the client. Each Sequenced Data Packet carries one message from the higher-lever protocol")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "nasdaq.psxequities.rash.asciirash.v1.1.serverheartbeat", ftypes.BYTES, nil, nil, nil, "SoupBinTCP server sends a heartbeat to indicate the connection is alive; carries no payload")
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.psxequities.rash.asciirash.v1.1.unsequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Unsequenced Data Packets act as an envelope to carry the actual data messages that are transferred from the client to the server")

-- Nasdaq PsxEquities Rash AsciiRash 1.1 Generated Fields
omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "nasdaq.psxequities.rash.asciirash.v1.1.sequenceddatapacketsequencenumber", ftypes.UINT64)

-- Nasdaq PsxEquities Rash AsciiRash 1.1 Expert Info
nasdaq_psxequities_rash_asciirash_v1_1.experts = {}
nasdaq_psxequities_rash_asciirash_v1_1.experts.not_a_number = ProtoExpert.new("nasdaq.psxequities.rash.asciirash.v1.1.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_nasdaq_psxequities_rash_asciirash_v1_1.experts = { nasdaq_psxequities_rash_asciirash_v1_1.experts.not_a_number }

-----------------------------------------------------------------------
-- Nasdaq PsxEquities Rash AsciiRash 1.1 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_psxequities_rash_asciirash_v1_1.timestamp_format = 2

-- Hours behind UTC (America/New_York) for midnight calculation
nasdaq_psxequities_rash_asciirash_v1_1.utc_offset_hours = 5

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

-- Nasdaq PsxEquities Rash AsciiRash 1.1 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.session_messages = true
show.sequences = true

-- Register Nasdaq PsxEquities Rash AsciiRash 1.1 Show Options
omi_nasdaq_psxequities_rash_asciirash_v1_1.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nasdaq_psxequities_rash_asciirash_v1_1.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nasdaq_psxequities_rash_asciirash_v1_1.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nasdaq_psxequities_rash_asciirash_v1_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_psxequities_rash_asciirash_v1_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_psxequities_rash_asciirash_v1_1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_psxequities_rash_asciirash_v1_1.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_psxequities_rash_asciirash_v1_1.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nasdaq_psxequities_rash_asciirash_v1_1.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_psxequities_rash_asciirash_v1_1.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (America/New_York) for midnight calculation")

-- Handle changed preferences
function omi_nasdaq_psxequities_rash_asciirash_v1_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_psxequities_rash_asciirash_v1_1.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_psxequities_rash_asciirash_v1_1.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_psxequities_rash_asciirash_v1_1.prefs.show_headers then
    show.headers = omi_nasdaq_psxequities_rash_asciirash_v1_1.prefs.show_headers
  end
  if show.session_messages ~= omi_nasdaq_psxequities_rash_asciirash_v1_1.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_psxequities_rash_asciirash_v1_1.prefs.show_session_messages
  end
  if show.structs ~= omi_nasdaq_psxequities_rash_asciirash_v1_1.prefs.show_structs then
    show.structs = omi_nasdaq_psxequities_rash_asciirash_v1_1.prefs.show_structs
  end
  if show.sequences ~= omi_nasdaq_psxequities_rash_asciirash_v1_1.prefs.show_sequences then
    show.sequences = omi_nasdaq_psxequities_rash_asciirash_v1_1.prefs.show_sequences
  end
  if nasdaq_psxequities_rash_asciirash_v1_1.timestamp_format ~= omi_nasdaq_psxequities_rash_asciirash_v1_1.prefs.timestamp_format then
    nasdaq_psxequities_rash_asciirash_v1_1.timestamp_format = omi_nasdaq_psxequities_rash_asciirash_v1_1.prefs.timestamp_format
  end
  if nasdaq_psxequities_rash_asciirash_v1_1.utc_offset_hours ~= omi_nasdaq_psxequities_rash_asciirash_v1_1.prefs.utc_offset_hours then
    nasdaq_psxequities_rash_asciirash_v1_1.utc_offset_hours = omi_nasdaq_psxequities_rash_asciirash_v1_1.prefs.utc_offset_hours
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nasdaq_psxequities_rash_asciirash_v1_1.conversation = {}
nasdaq_psxequities_rash_asciirash_v1_1.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
nasdaq_psxequities_rash_asciirash_v1_1.stream_frame = nil
nasdaq_psxequities_rash_asciirash_v1_1.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
nasdaq_psxequities_rash_asciirash_v1_1.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nasdaq_psxequities_rash_asciirash_v1_1.conversation.data = function(packet)
  local key = nasdaq_psxequities_rash_asciirash_v1_1.conversation.key(packet)
  local data = nasdaq_psxequities_rash_asciirash_v1_1.conversation.flows[key]
  if data == nil then
    data = { accepted_sequence_number = { last = nil, frames = {} }, sequence = { next = nil, frames = {} } }
    nasdaq_psxequities_rash_asciirash_v1_1.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nasdaq_psxequities_rash_asciirash_v1_1.conversation.current = nil


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

-- trim leading zeros
trim_left_zeros = function(str)
  local start = 1

  while start < str:len() and str:byte(start) == 0x30 do
    start = start + 1
  end

  return str:sub(start)
end

-- is every character a digit
is_digits = function(str)
  if str:len() == 0 then
    return false
  end

  for index = 1, str:len() do
    local byte = str:byte(index)

    if byte < 0x30 or byte > 0x39 then
      return false
    end
  end

  return true
end

-- the number a digit run of implied decimal places spells
format_implied_decimal_text = function(str, places)
  local digits = trim_left_spaces(str)
  local sign = ""
  local first = digits:sub(1, 1)

  if first == "-" or first == "+" then
    sign = first
    digits = digits:sub(2)
  end

  if not is_digits(digits) then
    return nil
  end

  digits = trim_left_zeros(digits)

  while digits:len() <= places do
    digits = "0"..digits
  end

  return sign..digits:sub(1, digits:len() - places).."."..digits:sub(-places)
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
-- Nasdaq PsxEquities Rash AsciiRash 1.1 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
nasdaq_psxequities_rash_asciirash_v1_1.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
nasdaq_psxequities_rash_asciirash_v1_1.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
nasdaq_psxequities_rash_asciirash_v1_1.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
nasdaq_psxequities_rash_asciirash_v1_1.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.accepted_sequence_number, range, value, "Accepted Sequence Number: Not Applicable")
    item:add_proto_expert_info(nasdaq_psxequities_rash_asciirash_v1_1.experts.not_a_number, "Accepted Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_psxequities_rash_asciirash_v1_1.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
nasdaq_psxequities_rash_asciirash_v1_1.accepted_session = {}

-- Size: Accepted Session
nasdaq_psxequities_rash_asciirash_v1_1.accepted_session.size = 10

-- Display: Accepted Session
nasdaq_psxequities_rash_asciirash_v1_1.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
nasdaq_psxequities_rash_asciirash_v1_1.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.accepted_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = nasdaq_psxequities_rash_asciirash_v1_1.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Broken Trade Reason
nasdaq_psxequities_rash_asciirash_v1_1.broken_trade_reason = {}

-- Size: Broken Trade Reason
nasdaq_psxequities_rash_asciirash_v1_1.broken_trade_reason.size = 1

-- Display: Broken Trade Reason
nasdaq_psxequities_rash_asciirash_v1_1.broken_trade_reason.labels = {
  ["E"] = "Broken Trade Reason: Erroneous (E)",
  ["C"] = "Broken Trade Reason: Consent (C)",
  ["S"] = "Broken Trade Reason: Supervisory (S)",
  ["X"] = "Broken Trade Reason: External (X)",
}

nasdaq_psxequities_rash_asciirash_v1_1.broken_trade_reason.display = function(value)
  return nasdaq_psxequities_rash_asciirash_v1_1.broken_trade_reason.labels[value] or "Broken Trade Reason: Unknown("..value..")"
end

-- Dissect: Broken Trade Reason
nasdaq_psxequities_rash_asciirash_v1_1.broken_trade_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.broken_trade_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_rash_asciirash_v1_1.broken_trade_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.broken_trade_reason, range, value, display)

  return offset + length, value
end

-- Cancel Reason
nasdaq_psxequities_rash_asciirash_v1_1.cancel_reason = {}

-- Size: Cancel Reason
nasdaq_psxequities_rash_asciirash_v1_1.cancel_reason.size = 1

-- Display: Cancel Reason
nasdaq_psxequities_rash_asciirash_v1_1.cancel_reason.labels = {
  ["U"] = "Cancel Reason: User Requested Cancel (U)",
  ["I"] = "Cancel Reason: Immediate Or Cancel (I)",
  ["T"] = "Cancel Reason: Timeout (T)",
  ["S"] = "Cancel Reason: Supervisory (S)",
  ["D"] = "Cancel Reason: Regulatory Restriction (D)",
  ["Q"] = "Cancel Reason: Self Match Prevention (Q)",
  ["Z"] = "Cancel Reason: System Cancel (Z)",
  ["K"] = "Cancel Reason: Market Collars (K)",
  ["E"] = "Cancel Reason: Closed (E)",
  ["J"] = "Cancel Reason: Rejected By Away Destination (J)",
  ["A"] = "Cancel Reason: Administrative Cancel (A)",
  ["F"] = "Cancel Reason: Post Only Cancel Nms (F)",
  ["G"] = "Cancel Reason: Post Only Cancel Contra Displayed Order (G)",
}

nasdaq_psxequities_rash_asciirash_v1_1.cancel_reason.display = function(value)
  return nasdaq_psxequities_rash_asciirash_v1_1.cancel_reason.labels[value] or "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
nasdaq_psxequities_rash_asciirash_v1_1.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_rash_asciirash_v1_1.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Capacity Rule 80 A Indicator
nasdaq_psxequities_rash_asciirash_v1_1.capacity_rule_80_a_indicator = {}

-- Size: Capacity Rule 80 A Indicator
nasdaq_psxequities_rash_asciirash_v1_1.capacity_rule_80_a_indicator.size = 1

-- Display: Capacity Rule 80 A Indicator
nasdaq_psxequities_rash_asciirash_v1_1.capacity_rule_80_a_indicator.display = function(value)
  return "Capacity Rule 80 A Indicator: "..value
end

-- Dissect: Capacity Rule 80 A Indicator
nasdaq_psxequities_rash_asciirash_v1_1.capacity_rule_80_a_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.capacity_rule_80_a_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_rash_asciirash_v1_1.capacity_rule_80_a_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.capacity_rule_80_a_indicator, range, value, display)

  return offset + length, value
end

-- Client Packet Type
nasdaq_psxequities_rash_asciirash_v1_1.client_packet_type = {}

-- Size: Client Packet Type
nasdaq_psxequities_rash_asciirash_v1_1.client_packet_type.size = 1

-- Display: Client Packet Type
nasdaq_psxequities_rash_asciirash_v1_1.client_packet_type.labels = {
  ["+"] = "Packet Type: Debug Packet (+)",
  ["L"] = "Packet Type: Login Request Packet (L)",
  ["U"] = "Packet Type: Unsequenced Data Packet (U)",
  ["R"] = "Packet Type: Client Heartbeat Packet (R)",
  ["O"] = "Packet Type: Logout Request Packet (O)",
}

nasdaq_psxequities_rash_asciirash_v1_1.client_packet_type.display = function(value)
  return nasdaq_psxequities_rash_asciirash_v1_1.client_packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Client Packet Type
nasdaq_psxequities_rash_asciirash_v1_1.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_rash_asciirash_v1_1.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Cross Type
nasdaq_psxequities_rash_asciirash_v1_1.cross_type = {}

-- Size: Cross Type
nasdaq_psxequities_rash_asciirash_v1_1.cross_type.size = 1

-- Display: Cross Type
nasdaq_psxequities_rash_asciirash_v1_1.cross_type.labels = {
  ["O"] = "Cross Type: Opening Cross (O)",
  ["C"] = "Cross Type: Closing Cross (C)",
  ["I"] = "Cross Type: Intraday Cross (I)",
  ["N"] = "Cross Type: Immediately Live (N)",
}

nasdaq_psxequities_rash_asciirash_v1_1.cross_type.display = function(value)
  return nasdaq_psxequities_rash_asciirash_v1_1.cross_type.labels[value] or "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nasdaq_psxequities_rash_asciirash_v1_1.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_rash_asciirash_v1_1.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Cust Terminal Id Sender Sub Id
nasdaq_psxequities_rash_asciirash_v1_1.cust_terminal_id_sender_sub_id = {}

-- Size: Cust Terminal Id Sender Sub Id
nasdaq_psxequities_rash_asciirash_v1_1.cust_terminal_id_sender_sub_id.size = 32

-- Display: Cust Terminal Id Sender Sub Id
nasdaq_psxequities_rash_asciirash_v1_1.cust_terminal_id_sender_sub_id.display = function(value)
  return "Cust Terminal Id Sender Sub Id: "..value
end

-- Dissect: Cust Terminal Id Sender Sub Id
nasdaq_psxequities_rash_asciirash_v1_1.cust_terminal_id_sender_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.cust_terminal_id_sender_sub_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_rash_asciirash_v1_1.cust_terminal_id_sender_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.cust_terminal_id_sender_sub_id, range, value, display)

  return offset + length, value
end

-- Customer Type
nasdaq_psxequities_rash_asciirash_v1_1.customer_type = {}

-- Size: Customer Type
nasdaq_psxequities_rash_asciirash_v1_1.customer_type.size = 1

-- Display: Customer Type
nasdaq_psxequities_rash_asciirash_v1_1.customer_type.labels = {
  ["R"] = "Customer Type: Retail Designated Order (R)",
  ["N"] = "Customer Type: Not A Retail Designated Order (N)",
}

nasdaq_psxequities_rash_asciirash_v1_1.customer_type.display = function(value)
  return nasdaq_psxequities_rash_asciirash_v1_1.customer_type.labels[value] or "Customer Type: Unknown("..value..")"
end

-- Dissect: Customer Type
nasdaq_psxequities_rash_asciirash_v1_1.customer_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.customer_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_rash_asciirash_v1_1.customer_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.customer_type, range, value, display)

  return offset + length, value
end

-- Debug Text
nasdaq_psxequities_rash_asciirash_v1_1.debug_text = {}

-- Display: Debug Text
nasdaq_psxequities_rash_asciirash_v1_1.debug_text.display = function(value)
  return "Debug Text: "..value
end

-- Dissect runtime sized field: Debug Text
nasdaq_psxequities_rash_asciirash_v1_1.debug_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = nasdaq_psxequities_rash_asciirash_v1_1.debug_text.display(value, packet, parent, size)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.debug_text, range, value, display)

  return offset + size, value
end

-- Discretion Peg Difference
nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference = {}

-- Size: Discretion Peg Difference
nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference.size = 10

-- Display: Discretion Peg Difference
nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference.size):string(), 4)

  if text == nil then
    return "Discretion Peg Difference: "..tostring(value)
  end

  return "Discretion Peg Difference: "..text
end

-- Dissect: Discretion Peg Difference
nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.discretion_peg_difference, range, value, "Discretion Peg Difference: Not Applicable")
    item:add_proto_expert_info(nasdaq_psxequities_rash_asciirash_v1_1.experts.not_a_number, "Discretion Peg Difference is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.discretion_peg_difference, range, value, display)

  return offset + length, value
end

-- Discretion Peg Difference Sign
nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference_sign = {}

-- Size: Discretion Peg Difference Sign
nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference_sign.size = 1

-- Display: Discretion Peg Difference Sign
nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference_sign.labels = {
  ["+"] = "Discretion Peg Difference Sign: Plus (+)",
  ["-"] = "Discretion Peg Difference Sign: Minus (-)",
}

nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference_sign.display = function(value)
  return nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference_sign.labels[value] or "Discretion Peg Difference Sign: Unknown("..value..")"
end

-- Dissect: Discretion Peg Difference Sign
nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference_sign.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.discretion_peg_difference_sign, range, value, display)

  return offset + length, value
end

-- Discretion Peg Type
nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_type = {}

-- Size: Discretion Peg Type
nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_type.size = 1

-- Display: Discretion Peg Type
nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_type.labels = {
  ["M"] = "Discretion Peg Type: Midpoint (M)",
  ["N"] = "Discretion Peg Type: No Peg (N)",
  ["P"] = "Discretion Peg Type: Market (P)",
  ["R"] = "Discretion Peg Type: Primary (R)",
}

nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_type.display = function(value)
  return nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_type.labels[value] or "Discretion Peg Type: Unknown("..value..")"
end

-- Dissect: Discretion Peg Type
nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.discretion_peg_type, range, value, display)

  return offset + length, value
end

-- Discretion Price
nasdaq_psxequities_rash_asciirash_v1_1.discretion_price = {}

-- Size: Discretion Price
nasdaq_psxequities_rash_asciirash_v1_1.discretion_price.size = 10

-- Display: Discretion Price
nasdaq_psxequities_rash_asciirash_v1_1.discretion_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, nasdaq_psxequities_rash_asciirash_v1_1.discretion_price.size):string(), 4)

  if text == nil then
    return "Discretion Price: "..tostring(value)
  end

  return "Discretion Price: "..text
end

-- Dissect: Discretion Price
nasdaq_psxequities_rash_asciirash_v1_1.discretion_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.discretion_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.discretion_price, range, value, "Discretion Price: Not Applicable")
    item:add_proto_expert_info(nasdaq_psxequities_rash_asciirash_v1_1.experts.not_a_number, "Discretion Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = nasdaq_psxequities_rash_asciirash_v1_1.discretion_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.discretion_price, range, value, display)

  return offset + length, value
end

-- Display
nasdaq_psxequities_rash_asciirash_v1_1.display = {}

-- Size: Display
nasdaq_psxequities_rash_asciirash_v1_1.display.size = 1

-- Display: Display
nasdaq_psxequities_rash_asciirash_v1_1.display.labels = {
  ["Y"] = "Display: Anonymous Price To Comply (Y)",
  ["N"] = "Display: Non Displayed (N)",
  ["A"] = "Display: Attributable Price To Display (A)",
  ["I"] = "Display: Imbalance Only (I)",
  ["P"] = "Display: Post Only (P)",
  ["M"] = "Display: Mid Point Peg (M)",
  ["W"] = "Display: Mid Point Peg Post Only (W)",
  ["d"] = "Display: Direct Listing Capital Raise (d)",
}

nasdaq_psxequities_rash_asciirash_v1_1.display.display = function(value)
  return nasdaq_psxequities_rash_asciirash_v1_1.display.labels[value] or "Display: Unknown("..value..")"
end

-- Dissect: Display
nasdaq_psxequities_rash_asciirash_v1_1.display.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.display.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_rash_asciirash_v1_1.display.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.display, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_psxequities_rash_asciirash_v1_1.event_code = {}

-- Size: Event Code
nasdaq_psxequities_rash_asciirash_v1_1.event_code.size = 1

-- Display: Event Code
nasdaq_psxequities_rash_asciirash_v1_1.event_code.labels = {
  ["S"] = "Event Code: Start Of Day (S)",
  ["E"] = "Event Code: End Of Day (E)",
}

nasdaq_psxequities_rash_asciirash_v1_1.event_code.display = function(value)
  return nasdaq_psxequities_rash_asciirash_v1_1.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_psxequities_rash_asciirash_v1_1.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_rash_asciirash_v1_1.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.event_code, range, value, display)

  return offset + length, value
end

-- Firm Client Id
nasdaq_psxequities_rash_asciirash_v1_1.firm_client_id = {}

-- Size: Firm Client Id
nasdaq_psxequities_rash_asciirash_v1_1.firm_client_id.size = 4

-- Display: Firm Client Id
nasdaq_psxequities_rash_asciirash_v1_1.firm_client_id.display = function(value)
  return "Firm Client Id: "..value
end

-- Dissect: Firm Client Id
nasdaq_psxequities_rash_asciirash_v1_1.firm_client_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.firm_client_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_rash_asciirash_v1_1.firm_client_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.firm_client_id, range, value, display)

  return offset + length, value
end

-- Intermarket Sweep Eligibility
nasdaq_psxequities_rash_asciirash_v1_1.intermarket_sweep_eligibility = {}

-- Size: Intermarket Sweep Eligibility
nasdaq_psxequities_rash_asciirash_v1_1.intermarket_sweep_eligibility.size = 1

-- Display: Intermarket Sweep Eligibility
nasdaq_psxequities_rash_asciirash_v1_1.intermarket_sweep_eligibility.labels = {
  ["Y"] = "Intermarket Sweep Eligibility: Eligible (Y)",
  ["N"] = "Intermarket Sweep Eligibility: Not Eligible (N)",
  ["y"] = "Intermarket Sweep Eligibility: Trade At Intermarket Sweep Order (y)",
}

nasdaq_psxequities_rash_asciirash_v1_1.intermarket_sweep_eligibility.display = function(value)
  return nasdaq_psxequities_rash_asciirash_v1_1.intermarket_sweep_eligibility.labels[value] or "Intermarket Sweep Eligibility: Unknown("..value..")"
end

-- Dissect: Intermarket Sweep Eligibility
nasdaq_psxequities_rash_asciirash_v1_1.intermarket_sweep_eligibility.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.intermarket_sweep_eligibility.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_rash_asciirash_v1_1.intermarket_sweep_eligibility.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.intermarket_sweep_eligibility, range, value, display)

  return offset + length, value
end

-- Liquidity
nasdaq_psxequities_rash_asciirash_v1_1.liquidity = {}

-- Size: Liquidity
nasdaq_psxequities_rash_asciirash_v1_1.liquidity.size = 1

-- Display: Liquidity
nasdaq_psxequities_rash_asciirash_v1_1.liquidity.labels = {
  ["A"] = "Liquidity: Added (A)",
  ["R"] = "Liquidity: Removed (R)",
  ["J"] = "Liquidity: Non Displayed And Added Liquidity (J)",
  ["X"] = "Liquidity: Routed (X)",
  ["D"] = "Liquidity: Dot (D)",
  ["F"] = "Liquidity: Added Or Opening Trade (F)",
  ["G"] = "Liquidity: Odd Lot Or On Close Order (G)",
  ["O"] = "Liquidity: Open Cross (O)",
  ["M"] = "Liquidity: Open Cross (M)",
  ["C"] = "Liquidity: Closing Cross (C)",
  ["L"] = "Liquidity: Closing Cross (L)",
  ["H"] = "Liquidity: Halt Ipo Cross (H)",
  ["K"] = "Liquidity: Halt Cross (K)",
  ["Y"] = "Liquidity: Re Routed By Nyse (Y)",
  ["S"] = "Liquidity: Odd Lot Execution (S)",
  ["U"] = "Liquidity: Added Liquidity (U)",
  ["B"] = "Liquidity: Routed To Bx (B)",
  ["E"] = "Liquidity: Nyse Other (E)",
  ["T"] = "Liquidity: Opening Trade (T)",
  ["Z"] = "Liquidity: On Close Order (Z)",
  ["Q"] = "Liquidity: Routed To Nasdaq (Q)",
  ["m"] = "Liquidity: Removed Liquidity At A Midpoint (m)",
  ["k"] = "Liquidity: Added Liquidity Via A Midpoint Order (k)",
  ["V"] = "Liquidity: Displayed Added Liquidity With Original Order Size Of Greater Than Or Equal To 2000 Shares Only Applicable To Symbols That Are Set To The Pro Rata Execution Algorithm (V)",
  ["u"] = "Liquidity: Added Non Displayed Liquidity Via A Reserve Order (u)",
}

nasdaq_psxequities_rash_asciirash_v1_1.liquidity.display = function(value)
  return nasdaq_psxequities_rash_asciirash_v1_1.liquidity.labels[value] or "Liquidity: Unknown("..value..")"
end

-- Dissect: Liquidity
nasdaq_psxequities_rash_asciirash_v1_1.liquidity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.liquidity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_rash_asciirash_v1_1.liquidity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.liquidity, range, value, display)

  return offset + length, value
end

-- Match Number
nasdaq_psxequities_rash_asciirash_v1_1.match_number = {}

-- Size: Match Number
nasdaq_psxequities_rash_asciirash_v1_1.match_number.size = 9

-- Display: Match Number
nasdaq_psxequities_rash_asciirash_v1_1.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_psxequities_rash_asciirash_v1_1.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.match_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.match_number, range, value, "Match Number: Not Applicable")
    item:add_proto_expert_info(nasdaq_psxequities_rash_asciirash_v1_1.experts.not_a_number, "Match Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_psxequities_rash_asciirash_v1_1.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.match_number, range, value, display)

  return offset + length, value
end

-- Max Floor
nasdaq_psxequities_rash_asciirash_v1_1.max_floor = {}

-- Size: Max Floor
nasdaq_psxequities_rash_asciirash_v1_1.max_floor.size = 6

-- Display: Max Floor
nasdaq_psxequities_rash_asciirash_v1_1.max_floor.display = function(value)
  return "Max Floor: "..value
end

-- Dissect: Max Floor
nasdaq_psxequities_rash_asciirash_v1_1.max_floor.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.max_floor.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.max_floor, range, value, "Max Floor: Not Applicable")
    item:add_proto_expert_info(nasdaq_psxequities_rash_asciirash_v1_1.experts.not_a_number, "Max Floor is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_psxequities_rash_asciirash_v1_1.max_floor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.max_floor, range, value, display)

  return offset + length, value
end

-- Min Qty
nasdaq_psxequities_rash_asciirash_v1_1.min_qty = {}

-- Size: Min Qty
nasdaq_psxequities_rash_asciirash_v1_1.min_qty.size = 6

-- Display: Min Qty
nasdaq_psxequities_rash_asciirash_v1_1.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
nasdaq_psxequities_rash_asciirash_v1_1.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.min_qty.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.min_qty, range, value, "Min Qty: Not Applicable")
    item:add_proto_expert_info(nasdaq_psxequities_rash_asciirash_v1_1.experts.not_a_number, "Min Qty is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_psxequities_rash_asciirash_v1_1.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nasdaq_psxequities_rash_asciirash_v1_1.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_psxequities_rash_asciirash_v1_1.order_reference_number.size = 9

-- Display: Order Reference Number
nasdaq_psxequities_rash_asciirash_v1_1.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_psxequities_rash_asciirash_v1_1.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.order_reference_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.order_reference_number, range, value, "Order Reference Number: Not Applicable")
    item:add_proto_expert_info(nasdaq_psxequities_rash_asciirash_v1_1.experts.not_a_number, "Order Reference Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_psxequities_rash_asciirash_v1_1.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Order Token
nasdaq_psxequities_rash_asciirash_v1_1.order_token = {}

-- Size: Order Token
nasdaq_psxequities_rash_asciirash_v1_1.order_token.size = 14

-- Display: Order Token
nasdaq_psxequities_rash_asciirash_v1_1.order_token.display = function(value)
  return "Order Token: "..value
end

-- Dissect: Order Token
nasdaq_psxequities_rash_asciirash_v1_1.order_token.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.order_token.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_rash_asciirash_v1_1.order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.order_token, range, value, display)

  return offset + length, value
end

-- Order Token Client Order Id
nasdaq_psxequities_rash_asciirash_v1_1.order_token_client_order_id = {}

-- Size: Order Token Client Order Id
nasdaq_psxequities_rash_asciirash_v1_1.order_token_client_order_id.size = 14

-- Display: Order Token Client Order Id
nasdaq_psxequities_rash_asciirash_v1_1.order_token_client_order_id.display = function(value)
  return "Order Token Client Order Id: "..value
end

-- Dissect: Order Token Client Order Id
nasdaq_psxequities_rash_asciirash_v1_1.order_token_client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.order_token_client_order_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_rash_asciirash_v1_1.order_token_client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.order_token_client_order_id, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_psxequities_rash_asciirash_v1_1.packet_length = {}

-- Size: Packet Length
nasdaq_psxequities_rash_asciirash_v1_1.packet_length.size = 2

-- Display: Packet Length
nasdaq_psxequities_rash_asciirash_v1_1.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_psxequities_rash_asciirash_v1_1.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_rash_asciirash_v1_1.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_psxequities_rash_asciirash_v1_1.password = {}

-- Size: Password
nasdaq_psxequities_rash_asciirash_v1_1.password.size = 10

-- Display: Password
nasdaq_psxequities_rash_asciirash_v1_1.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_psxequities_rash_asciirash_v1_1.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_rash_asciirash_v1_1.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.password, range, value, display)

  return offset + length, value
end

-- Peg Difference
nasdaq_psxequities_rash_asciirash_v1_1.peg_difference = {}

-- Size: Peg Difference
nasdaq_psxequities_rash_asciirash_v1_1.peg_difference.size = 10

-- Display: Peg Difference
nasdaq_psxequities_rash_asciirash_v1_1.peg_difference.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, nasdaq_psxequities_rash_asciirash_v1_1.peg_difference.size):string(), 4)

  if text == nil then
    return "Peg Difference: "..tostring(value)
  end

  return "Peg Difference: "..text
end

-- Dissect: Peg Difference
nasdaq_psxequities_rash_asciirash_v1_1.peg_difference.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.peg_difference.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.peg_difference, range, value, "Peg Difference: Not Applicable")
    item:add_proto_expert_info(nasdaq_psxequities_rash_asciirash_v1_1.experts.not_a_number, "Peg Difference is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = nasdaq_psxequities_rash_asciirash_v1_1.peg_difference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.peg_difference, range, value, display)

  return offset + length, value
end

-- Peg Difference Sign
nasdaq_psxequities_rash_asciirash_v1_1.peg_difference_sign = {}

-- Size: Peg Difference Sign
nasdaq_psxequities_rash_asciirash_v1_1.peg_difference_sign.size = 1

-- Display: Peg Difference Sign
nasdaq_psxequities_rash_asciirash_v1_1.peg_difference_sign.labels = {
  ["+"] = "Peg Difference Sign: Plus (+)",
  ["-"] = "Peg Difference Sign: Minus (-)",
}

nasdaq_psxequities_rash_asciirash_v1_1.peg_difference_sign.display = function(value)
  return nasdaq_psxequities_rash_asciirash_v1_1.peg_difference_sign.labels[value] or "Peg Difference Sign: Unknown("..value..")"
end

-- Dissect: Peg Difference Sign
nasdaq_psxequities_rash_asciirash_v1_1.peg_difference_sign.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.peg_difference_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_rash_asciirash_v1_1.peg_difference_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.peg_difference_sign, range, value, display)

  return offset + length, value
end

-- Peg Type
nasdaq_psxequities_rash_asciirash_v1_1.peg_type = {}

-- Size: Peg Type
nasdaq_psxequities_rash_asciirash_v1_1.peg_type.size = 1

-- Display: Peg Type
nasdaq_psxequities_rash_asciirash_v1_1.peg_type.labels = {
  ["M"] = "Peg Type: Midpoint (M)",
  ["N"] = "Peg Type: No Peg (N)",
  ["P"] = "Peg Type: Market (P)",
  ["R"] = "Peg Type: Primary (R)",
}

nasdaq_psxequities_rash_asciirash_v1_1.peg_type.display = function(value)
  return nasdaq_psxequities_rash_asciirash_v1_1.peg_type.labels[value] or "Peg Type: Unknown("..value..")"
end

-- Dissect: Peg Type
nasdaq_psxequities_rash_asciirash_v1_1.peg_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.peg_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_rash_asciirash_v1_1.peg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.peg_type, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_psxequities_rash_asciirash_v1_1.price = {}

-- Size: Price
nasdaq_psxequities_rash_asciirash_v1_1.price.size = 10

-- Display: Price
nasdaq_psxequities_rash_asciirash_v1_1.price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, nasdaq_psxequities_rash_asciirash_v1_1.price.size):string(), 4)

  if text == nil then
    return "Price: "..tostring(value)
  end

  return "Price: "..text
end

-- Dissect: Price
nasdaq_psxequities_rash_asciirash_v1_1.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.price, range, value, "Price: Not Applicable")
    item:add_proto_expert_info(nasdaq_psxequities_rash_asciirash_v1_1.experts.not_a_number, "Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = nasdaq_psxequities_rash_asciirash_v1_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.price, range, value, display)

  return offset + length, value
end

-- Random Reserve
nasdaq_psxequities_rash_asciirash_v1_1.random_reserve = {}

-- Size: Random Reserve
nasdaq_psxequities_rash_asciirash_v1_1.random_reserve.size = 6

-- Display: Random Reserve
nasdaq_psxequities_rash_asciirash_v1_1.random_reserve.display = function(value)
  return "Random Reserve: "..value
end

-- Dissect: Random Reserve
nasdaq_psxequities_rash_asciirash_v1_1.random_reserve.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.random_reserve.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.random_reserve, range, value, "Random Reserve: Not Applicable")
    item:add_proto_expert_info(nasdaq_psxequities_rash_asciirash_v1_1.experts.not_a_number, "Random Reserve is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_psxequities_rash_asciirash_v1_1.random_reserve.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.random_reserve, range, value, display)

  return offset + length, value
end

-- Reject Reason
nasdaq_psxequities_rash_asciirash_v1_1.reject_reason = {}

-- Size: Reject Reason
nasdaq_psxequities_rash_asciirash_v1_1.reject_reason.size = 1

-- Display: Reject Reason
nasdaq_psxequities_rash_asciirash_v1_1.reject_reason.labels = {
  ["a"] = "Reject Reason: Risk Restricted Stock (a)",
  ["A"] = "Reject Reason: Advance Features Not Allowed (A)",
  ["b"] = "Reject Reason: Risk Short Sell Restricted (b)",
  ["B"] = "Reject Reason: Quote Not Available For Pegged Order (B)",
  ["C"] = "Reject Reason: Nasdaq Omx Psx Is Closed (C)",
  ["d"] = "Reject Reason: Risk Exceeds Adv Limit (d)",
  ["D"] = "Reject Reason: Invalid Display Value (D)",
  ["e"] = "Reject Reason: Risk Fat Finger (e)",
  ["E"] = "Reject Reason: Invalid Peg (E)",
  ["F"] = "Reject Reason: Order Not Marketable (F)",
  ["G"] = "Reject Reason: Destination Not Available (G)",
  ["H"] = "Reject Reason: Security Is Halted (H)",
  ["I"] = "Reject Reason: Invalid Order Side (I)",
  ["J"] = "Reject Reason: Processing Error (J)",
  ["K"] = "Reject Reason: Invalid Minimum Quantity (K)",
  ["l"] = "Reject Reason: Risk Locate Required (l)",
  ["L"] = "Reject Reason: Invalid Firm (L)",
  ["M"] = "Reject Reason: Outside Of Permitted Times For Clearing Destination (M)",
  ["n"] = "Reject Reason: Risk Max Notional Exceeded (n)",
  ["N"] = "Reject Reason: Invalid Routing Instructions (N)",
  ["o"] = "Reject Reason: Risk Order Type Restricted (o)",
  ["O"] = "Reject Reason: Other (O)",
  ["P"] = "Reject Reason: Pegging Not Allowed (P)",
  ["p"] = "Reject Reason: Risk Max Shares Exceeded (p)",
  ["q"] = "Reject Reason: Midpoint Peg Not Accepted In Crossed Market (q)",
  ["Q"] = "Reject Reason: Invalid Order Quantity (Q)",
  ["s"] = "Reject Reason: Risk Open Exposure Exceeded (s)",
  ["S"] = "Reject Reason: Invalid Symbol (S)",
  ["r"] = "Reject Reason: Risk Market Impact (r)",
  ["R"] = "Reject Reason: Routing Not Allowed (R)",
  ["T"] = "Reject Reason: Test Mode (T)",
  ["u"] = "Reject Reason: Risk Port Message Rate Exceeded (u)",
  ["U"] = "Reject Reason: Possible Duplicate Order (U)",
  ["v"] = "Reject Reason: Risk Symbol Message Rate Exceeded (v)",
  ["V"] = "Reject Reason: Invalid Order Type (V)",
  ["w"] = "Reject Reason: Risk Duplicate Message Rate Exceeded (w)",
  ["W"] = "Reject Reason: Invalid Destination (W)",
  ["x"] = "Reject Reason: Risk Executed Exposure Exceeded (x)",
  ["X"] = "Reject Reason: Invalid Price (X)",
  ["y"] = "Reject Reason: Risk Notional Exposure Exceeded (y)",
  ["Y"] = "Reject Reason: No Shares Found For Routing (Y)",
  ["Z"] = "Reject Reason: Quantity Exceeds Threshold (Z)",
}

nasdaq_psxequities_rash_asciirash_v1_1.reject_reason.display = function(value)
  return nasdaq_psxequities_rash_asciirash_v1_1.reject_reason.labels[value] or "Reject Reason: Unknown("..value..")"
end

-- Dissect: Reject Reason
nasdaq_psxequities_rash_asciirash_v1_1.reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_rash_asciirash_v1_1.reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.reject_reason, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_psxequities_rash_asciirash_v1_1.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_psxequities_rash_asciirash_v1_1.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_psxequities_rash_asciirash_v1_1.reject_reason_code.labels = {
  ["A"] = "Reject Reason Code: Not Authorized (A)",
  ["S"] = "Reject Reason Code: Session Not Available (S)",
}

nasdaq_psxequities_rash_asciirash_v1_1.reject_reason_code.display = function(value)
  return nasdaq_psxequities_rash_asciirash_v1_1.reject_reason_code.labels[value] or "Reject Reason Code: Unknown("..value..")"
end

-- Dissect: Reject Reason Code
nasdaq_psxequities_rash_asciirash_v1_1.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_rash_asciirash_v1_1.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_psxequities_rash_asciirash_v1_1.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_psxequities_rash_asciirash_v1_1.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_psxequities_rash_asciirash_v1_1.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_psxequities_rash_asciirash_v1_1.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.requested_sequence_number, range, value, "Requested Sequence Number: Not Applicable")
    item:add_proto_expert_info(nasdaq_psxequities_rash_asciirash_v1_1.experts.not_a_number, "Requested Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_psxequities_rash_asciirash_v1_1.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_psxequities_rash_asciirash_v1_1.requested_session = {}

-- Size: Requested Session
nasdaq_psxequities_rash_asciirash_v1_1.requested_session.size = 10

-- Display: Requested Session
nasdaq_psxequities_rash_asciirash_v1_1.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_psxequities_rash_asciirash_v1_1.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.requested_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = nasdaq_psxequities_rash_asciirash_v1_1.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Route Dest Exec Broker
nasdaq_psxequities_rash_asciirash_v1_1.route_dest_exec_broker = {}

-- Size: Route Dest Exec Broker
nasdaq_psxequities_rash_asciirash_v1_1.route_dest_exec_broker.size = 4

-- Display: Route Dest Exec Broker
nasdaq_psxequities_rash_asciirash_v1_1.route_dest_exec_broker.labels = {
  ["INET"] = "Route Dest Exec Broker: Inet Strategy (INET)",
  ["PMOP"] = "Route Dest Exec Broker: Pmop Strategy (PMOP)",
  ["PSTG"] = "Route Dest Exec Broker: Pstg Strategy (PSTG)",
  ["PSCN"] = "Route Dest Exec Broker: Pscn Strategy (PSCN)",
  ["PTFY"] = "Route Dest Exec Broker: Ptfy Strategy (PTFY)",
  ["PCRT"] = "Route Dest Exec Broker: Pcrt Strategy (PCRT)",
  ["TFYX"] = "Route Dest Exec Broker: Tfyx Strategy (TFYX)",
  ["XCST"] = "Route Dest Exec Broker: Xcst Strategy (XCST)",
  ["XDRK"] = "Route Dest Exec Broker: Xdrk Strategy (XDRK)",
  ["DOTA"] = "Route Dest Exec Broker: Dota Strategy (DOTA)",
  ["DOTD"] = "Route Dest Exec Broker: Dotd Strategy (DOTD)",
  ["DOTI"] = "Route Dest Exec Broker: Doti Strategy (DOTI)",
  ["DOTM"] = "Route Dest Exec Broker: Dotm Strategy (DOTM)",
  ["SCAR"] = "Route Dest Exec Broker: Scar Strategy (SCAR)",
  ["LSTY"] = "Route Dest Exec Broker: Lsty Strategy (LSTY)",
  ["ISAM"] = "Route Dest Exec Broker: Directed To Nyse American (ISAM)",
  ["ISPA"] = "Route Dest Exec Broker: Directed To Nyse Arca (ISPA)",
  ["ISBX"] = "Route Dest Exec Broker: Directed To Nasdaq Bx (ISBX)",
  ["ISCB"] = "Route Dest Exec Broker: Directed To Cboe (ISCB)",
  ["ISCX"] = "Route Dest Exec Broker: Directed To Nyse Chicago (ISCX)",
  ["ISCN"] = "Route Dest Exec Broker: Directed To Nyse National (ISCN)",
  ["ISNY"] = "Route Dest Exec Broker: Directed To Nyse (ISNY)",
  ["ISBZ"] = "Route Dest Exec Broker: Directed To Bats Z (ISBZ)",
  ["ISBY"] = "Route Dest Exec Broker: Directed To Bats Y (ISBY)",
  ["ISNA"] = "Route Dest Exec Broker: Directed To Edga (ISNA)",
  ["ISNX"] = "Route Dest Exec Broker: Directed To Edgx (ISNX)",
  ["ISNQ"] = "Route Dest Exec Broker: Directed To Nasdaq (ISNQ)",
  ["ISIX"] = "Route Dest Exec Broker: Directed To Iex (ISIX)",
  ["ISLT"] = "Route Dest Exec Broker: Directed To Long Term Stock Exchange (ISLT)",
  ["ISMX"] = "Route Dest Exec Broker: Directed To Members Exchange (ISMX)",
  ["ISMI"] = "Route Dest Exec Broker: Directed To Miax Pearl Equities (ISMI)",
  ["IS24"] = "Route Dest Exec Broker: Directed To 24 Exchange (IS24)",
  ["ISTX"] = "Route Dest Exec Broker: Directed To Texas Stock Exchange (ISTX)",
}

nasdaq_psxequities_rash_asciirash_v1_1.route_dest_exec_broker.display = function(value)
  return nasdaq_psxequities_rash_asciirash_v1_1.route_dest_exec_broker.labels[value] or "Route Dest Exec Broker: Unknown("..value..")"
end

-- Dissect: Route Dest Exec Broker
nasdaq_psxequities_rash_asciirash_v1_1.route_dest_exec_broker.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.route_dest_exec_broker.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_rash_asciirash_v1_1.route_dest_exec_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.route_dest_exec_broker, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
nasdaq_psxequities_rash_asciirash_v1_1.sequenced_message_type = {}

-- Size: Sequenced Message Type
nasdaq_psxequities_rash_asciirash_v1_1.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
nasdaq_psxequities_rash_asciirash_v1_1.sequenced_message_type.labels = {
  ["S"] = "Sequenced Message Type: System Event Message (S)",
  ["A"] = "Sequenced Message Type: Accepted Order Message (A)",
  ["R"] = "Sequenced Message Type: Accepted Order Message With Cross Functionality (R)",
  ["C"] = "Sequenced Message Type: Canceled Order Message (C)",
  ["J"] = "Sequenced Message Type: Rejected Order Message (J)",
  ["E"] = "Sequenced Message Type: Executed Order Message (E)",
  ["B"] = "Sequenced Message Type: Broken Trade Message (B)",
}

nasdaq_psxequities_rash_asciirash_v1_1.sequenced_message_type.display = function(value)
  return nasdaq_psxequities_rash_asciirash_v1_1.sequenced_message_type.labels[value] or "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
nasdaq_psxequities_rash_asciirash_v1_1.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_rash_asciirash_v1_1.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
nasdaq_psxequities_rash_asciirash_v1_1.server_packet_type = {}

-- Size: Server Packet Type
nasdaq_psxequities_rash_asciirash_v1_1.server_packet_type.size = 1

-- Display: Server Packet Type
nasdaq_psxequities_rash_asciirash_v1_1.server_packet_type.labels = {
  ["+"] = "Packet Type: Debug Packet (+)",
  ["A"] = "Packet Type: Login Accepted Packet (A)",
  ["J"] = "Packet Type: Login Rejected Packet (J)",
  ["S"] = "Packet Type: Sequenced Data Packet (S)",
  ["H"] = "Packet Type: Server Heartbeat Packet (H)",
  ["Z"] = "Packet Type: End Of Session Packet (Z)",
}

nasdaq_psxequities_rash_asciirash_v1_1.server_packet_type.display = function(value)
  return nasdaq_psxequities_rash_asciirash_v1_1.server_packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Server Packet Type
nasdaq_psxequities_rash_asciirash_v1_1.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_rash_asciirash_v1_1.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Shares
nasdaq_psxequities_rash_asciirash_v1_1.shares = {}

-- Size: Shares
nasdaq_psxequities_rash_asciirash_v1_1.shares.size = 6

-- Display: Shares
nasdaq_psxequities_rash_asciirash_v1_1.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
nasdaq_psxequities_rash_asciirash_v1_1.shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.shares, range, value, "Shares: Not Applicable")
    item:add_proto_expert_info(nasdaq_psxequities_rash_asciirash_v1_1.experts.not_a_number, "Shares is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_psxequities_rash_asciirash_v1_1.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.shares, range, value, display)

  return offset + length, value
end

-- Shares Order Qty
nasdaq_psxequities_rash_asciirash_v1_1.shares_order_qty = {}

-- Size: Shares Order Qty
nasdaq_psxequities_rash_asciirash_v1_1.shares_order_qty.size = 6

-- Display: Shares Order Qty
nasdaq_psxequities_rash_asciirash_v1_1.shares_order_qty.display = function(value)
  return "Shares Order Qty: "..value
end

-- Dissect: Shares Order Qty
nasdaq_psxequities_rash_asciirash_v1_1.shares_order_qty.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.shares_order_qty.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.shares_order_qty, range, value, "Shares Order Qty: Not Applicable")
    item:add_proto_expert_info(nasdaq_psxequities_rash_asciirash_v1_1.experts.not_a_number, "Shares Order Qty is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_psxequities_rash_asciirash_v1_1.shares_order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.shares_order_qty, range, value, display)

  return offset + length, value
end

-- Side
nasdaq_psxequities_rash_asciirash_v1_1.side = {}

-- Size: Side
nasdaq_psxequities_rash_asciirash_v1_1.side.size = 1

-- Display: Side
nasdaq_psxequities_rash_asciirash_v1_1.side.labels = {
  ["B"] = "Side: Buy (B)",
  ["S"] = "Side: Sell (S)",
  ["T"] = "Side: Short (T)",
  ["E"] = "Side: Short Exempt (E)",
}

nasdaq_psxequities_rash_asciirash_v1_1.side.display = function(value)
  return nasdaq_psxequities_rash_asciirash_v1_1.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
nasdaq_psxequities_rash_asciirash_v1_1.side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_rash_asciirash_v1_1.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.side, range, value, display)

  return offset + length, value
end

-- Stock Symbol
nasdaq_psxequities_rash_asciirash_v1_1.stock_symbol = {}

-- Size: Stock Symbol
nasdaq_psxequities_rash_asciirash_v1_1.stock_symbol.size = 8

-- Display: Stock Symbol
nasdaq_psxequities_rash_asciirash_v1_1.stock_symbol.display = function(value)
  return "Stock Symbol: "..value
end

-- Dissect: Stock Symbol
nasdaq_psxequities_rash_asciirash_v1_1.stock_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.stock_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_rash_asciirash_v1_1.stock_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.stock_symbol, range, value, display)

  return offset + length, value
end

-- Time In Force
nasdaq_psxequities_rash_asciirash_v1_1.time_in_force = {}

-- Size: Time In Force
nasdaq_psxequities_rash_asciirash_v1_1.time_in_force.size = 5

-- Display: Time In Force
nasdaq_psxequities_rash_asciirash_v1_1.time_in_force.display = function(value)
  return "Time In Force: "..value
end

-- Dissect: Time In Force
nasdaq_psxequities_rash_asciirash_v1_1.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.time_in_force.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.time_in_force, range, value, "Time In Force: Not Applicable")
    item:add_proto_expert_info(nasdaq_psxequities_rash_asciirash_v1_1.experts.not_a_number, "Time In Force is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_psxequities_rash_asciirash_v1_1.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_psxequities_rash_asciirash_v1_1.timestamp = {}

-- Size: Timestamp
nasdaq_psxequities_rash_asciirash_v1_1.timestamp.size = 8

-- Display: Timestamp
nasdaq_psxequities_rash_asciirash_v1_1.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode (or unparsable ASCII fell back to a non-number)
  if type(value) ~= "number" then
    return "Timestamp: "..tostring(value)
  end

  if nasdaq_psxequities_rash_asciirash_v1_1.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_psxequities_rash_asciirash_v1_1.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_psxequities_rash_asciirash_v1_1.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", full_seconds + utc_offset_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Timestamp
nasdaq_psxequities_rash_asciirash_v1_1.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.timestamp, range, value, "Timestamp: Not Applicable")
    item:add_proto_expert_info(nasdaq_psxequities_rash_asciirash_v1_1.experts.not_a_number, "Timestamp is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_psxequities_rash_asciirash_v1_1.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Now
nasdaq_psxequities_rash_asciirash_v1_1.trade_now = {}

-- Size: Trade Now
nasdaq_psxequities_rash_asciirash_v1_1.trade_now.size = 1

-- Display: Trade Now
nasdaq_psxequities_rash_asciirash_v1_1.trade_now.labels = {
  ["B"] = "Trade Now: Trade Now (B)",
  ["N"] = "Trade Now: Not A Trade Now (N)",
}

nasdaq_psxequities_rash_asciirash_v1_1.trade_now.display = function(value)
  return nasdaq_psxequities_rash_asciirash_v1_1.trade_now.labels[value] or "Trade Now: Unknown("..value..")"
end

-- Dissect: Trade Now
nasdaq_psxequities_rash_asciirash_v1_1.trade_now.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.trade_now.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_rash_asciirash_v1_1.trade_now.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.trade_now, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
nasdaq_psxequities_rash_asciirash_v1_1.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nasdaq_psxequities_rash_asciirash_v1_1.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
nasdaq_psxequities_rash_asciirash_v1_1.unsequenced_message_type.labels = {
  ["O"] = "Unsequenced Message Type: Enter Order Message (O)",
  ["Q"] = "Unsequenced Message Type: Enter Order Message With Cross Functionality (Q)",
  ["X"] = "Unsequenced Message Type: Cancel Order Message (X)",
}

nasdaq_psxequities_rash_asciirash_v1_1.unsequenced_message_type.display = function(value)
  return nasdaq_psxequities_rash_asciirash_v1_1.unsequenced_message_type.labels[value] or "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
nasdaq_psxequities_rash_asciirash_v1_1.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_rash_asciirash_v1_1.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_psxequities_rash_asciirash_v1_1.username = {}

-- Size: Username
nasdaq_psxequities_rash_asciirash_v1_1.username.size = 6

-- Display: Username
nasdaq_psxequities_rash_asciirash_v1_1.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_psxequities_rash_asciirash_v1_1.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_rash_asciirash_v1_1.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_rash_asciirash_v1_1.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq PsxEquities Rash AsciiRash 1.1
-----------------------------------------------------------------------

-- End Of Session
nasdaq_psxequities_rash_asciirash_v1_1.end_of_session = {}

-- Display: End Of Session
nasdaq_psxequities_rash_asciirash_v1_1.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_psxequities_rash_asciirash_v1_1.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_psxequities_rash_asciirash_v1_1.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
nasdaq_psxequities_rash_asciirash_v1_1.server_heartbeat = {}

-- Display: Server Heartbeat
nasdaq_psxequities_rash_asciirash_v1_1.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
nasdaq_psxequities_rash_asciirash_v1_1.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_psxequities_rash_asciirash_v1_1.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Broken Trade Message
nasdaq_psxequities_rash_asciirash_v1_1.broken_trade_message = {}

-- Size: Broken Trade Message
nasdaq_psxequities_rash_asciirash_v1_1.broken_trade_message.size =
  nasdaq_psxequities_rash_asciirash_v1_1.order_token.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.match_number.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.broken_trade_reason.size

-- Display: Broken Trade Message
nasdaq_psxequities_rash_asciirash_v1_1.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
nasdaq_psxequities_rash_asciirash_v1_1.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: Alphanumeric
  index, order_token = nasdaq_psxequities_rash_asciirash_v1_1.order_token.dissect(buffer, index, packet, parent)

  -- Match Number: Numeric
  index, match_number = nasdaq_psxequities_rash_asciirash_v1_1.match_number.dissect(buffer, index, packet, parent)

  -- Broken Trade Reason: Alpha
  index, broken_trade_reason = nasdaq_psxequities_rash_asciirash_v1_1.broken_trade_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
nasdaq_psxequities_rash_asciirash_v1_1.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.broken_trade_message, buffer(offset, 0))
    local index = nasdaq_psxequities_rash_asciirash_v1_1.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_rash_asciirash_v1_1.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_rash_asciirash_v1_1.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Executed Order Message
nasdaq_psxequities_rash_asciirash_v1_1.executed_order_message = {}

-- Size: Executed Order Message
nasdaq_psxequities_rash_asciirash_v1_1.executed_order_message.size =
  nasdaq_psxequities_rash_asciirash_v1_1.order_token_client_order_id.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.shares.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.price.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.liquidity.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.match_number.size

-- Display: Executed Order Message
nasdaq_psxequities_rash_asciirash_v1_1.executed_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Executed Order Message
nasdaq_psxequities_rash_asciirash_v1_1.executed_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token Client Order Id: Alphanumeric
  index, order_token_client_order_id = nasdaq_psxequities_rash_asciirash_v1_1.order_token_client_order_id.dissect(buffer, index, packet, parent)

  -- Shares: Numeric
  index, shares = nasdaq_psxequities_rash_asciirash_v1_1.shares.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_psxequities_rash_asciirash_v1_1.price.dissect(buffer, index, packet, parent)

  -- Liquidity: Alpha
  index, liquidity = nasdaq_psxequities_rash_asciirash_v1_1.liquidity.dissect(buffer, index, packet, parent)

  -- Match Number: Numeric
  index, match_number = nasdaq_psxequities_rash_asciirash_v1_1.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Executed Order Message
nasdaq_psxequities_rash_asciirash_v1_1.executed_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.executed_order_message, buffer(offset, 0))
    local index = nasdaq_psxequities_rash_asciirash_v1_1.executed_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_rash_asciirash_v1_1.executed_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_rash_asciirash_v1_1.executed_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Rejected Order Message
nasdaq_psxequities_rash_asciirash_v1_1.rejected_order_message = {}

-- Size: Rejected Order Message
nasdaq_psxequities_rash_asciirash_v1_1.rejected_order_message.size =
  nasdaq_psxequities_rash_asciirash_v1_1.order_token_client_order_id.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.reject_reason.size

-- Display: Rejected Order Message
nasdaq_psxequities_rash_asciirash_v1_1.rejected_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rejected Order Message
nasdaq_psxequities_rash_asciirash_v1_1.rejected_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token Client Order Id: Alphanumeric
  index, order_token_client_order_id = nasdaq_psxequities_rash_asciirash_v1_1.order_token_client_order_id.dissect(buffer, index, packet, parent)

  -- Reject Reason: Alpha
  index, reject_reason = nasdaq_psxequities_rash_asciirash_v1_1.reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rejected Order Message
nasdaq_psxequities_rash_asciirash_v1_1.rejected_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.rejected_order_message, buffer(offset, 0))
    local index = nasdaq_psxequities_rash_asciirash_v1_1.rejected_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_rash_asciirash_v1_1.rejected_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_rash_asciirash_v1_1.rejected_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Canceled Order Message
nasdaq_psxequities_rash_asciirash_v1_1.canceled_order_message = {}

-- Size: Canceled Order Message
nasdaq_psxequities_rash_asciirash_v1_1.canceled_order_message.size =
  nasdaq_psxequities_rash_asciirash_v1_1.order_token_client_order_id.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.shares.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.cancel_reason.size

-- Display: Canceled Order Message
nasdaq_psxequities_rash_asciirash_v1_1.canceled_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Canceled Order Message
nasdaq_psxequities_rash_asciirash_v1_1.canceled_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token Client Order Id: Alphanumeric
  index, order_token_client_order_id = nasdaq_psxequities_rash_asciirash_v1_1.order_token_client_order_id.dissect(buffer, index, packet, parent)

  -- Shares: Numeric
  index, shares = nasdaq_psxequities_rash_asciirash_v1_1.shares.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Alpha
  index, cancel_reason = nasdaq_psxequities_rash_asciirash_v1_1.cancel_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Canceled Order Message
nasdaq_psxequities_rash_asciirash_v1_1.canceled_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.canceled_order_message, buffer(offset, 0))
    local index = nasdaq_psxequities_rash_asciirash_v1_1.canceled_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_rash_asciirash_v1_1.canceled_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_rash_asciirash_v1_1.canceled_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Accepted Order Message With Cross Functionality
nasdaq_psxequities_rash_asciirash_v1_1.accepted_order_message_with_cross_functionality = {}

-- Size: Accepted Order Message With Cross Functionality
nasdaq_psxequities_rash_asciirash_v1_1.accepted_order_message_with_cross_functionality.size =
  nasdaq_psxequities_rash_asciirash_v1_1.order_token_client_order_id.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.side.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.shares_order_qty.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.stock_symbol.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.price.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.time_in_force.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.firm_client_id.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.display.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.order_reference_number.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.min_qty.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.max_floor.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.peg_type.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.peg_difference_sign.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.peg_difference.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.discretion_price.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_type.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference_sign.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.capacity_rule_80_a_indicator.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.random_reserve.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.route_dest_exec_broker.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.cust_terminal_id_sender_sub_id.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.intermarket_sweep_eligibility.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.cross_type.size

-- Display: Accepted Order Message With Cross Functionality
nasdaq_psxequities_rash_asciirash_v1_1.accepted_order_message_with_cross_functionality.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Accepted Order Message With Cross Functionality
nasdaq_psxequities_rash_asciirash_v1_1.accepted_order_message_with_cross_functionality.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token Client Order Id: Alphanumeric
  index, order_token_client_order_id = nasdaq_psxequities_rash_asciirash_v1_1.order_token_client_order_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_psxequities_rash_asciirash_v1_1.side.dissect(buffer, index, packet, parent)

  -- Shares Order Qty: Numeric
  index, shares_order_qty = nasdaq_psxequities_rash_asciirash_v1_1.shares_order_qty.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Alpha
  index, stock_symbol = nasdaq_psxequities_rash_asciirash_v1_1.stock_symbol.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_psxequities_rash_asciirash_v1_1.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Numeric
  index, time_in_force = nasdaq_psxequities_rash_asciirash_v1_1.time_in_force.dissect(buffer, index, packet, parent)

  -- Firm Client Id: Alpha
  index, firm_client_id = nasdaq_psxequities_rash_asciirash_v1_1.firm_client_id.dissect(buffer, index, packet, parent)

  -- Display: Alpha
  index, display = nasdaq_psxequities_rash_asciirash_v1_1.display.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Numeric
  index, order_reference_number = nasdaq_psxequities_rash_asciirash_v1_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Min Qty: Numeric
  index, min_qty = nasdaq_psxequities_rash_asciirash_v1_1.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: Numeric
  index, max_floor = nasdaq_psxequities_rash_asciirash_v1_1.max_floor.dissect(buffer, index, packet, parent)

  -- Peg Type: Alpha
  index, peg_type = nasdaq_psxequities_rash_asciirash_v1_1.peg_type.dissect(buffer, index, packet, parent)

  -- Peg Difference Sign: Alpha
  index, peg_difference_sign = nasdaq_psxequities_rash_asciirash_v1_1.peg_difference_sign.dissect(buffer, index, packet, parent)

  -- Peg Difference: Price
  index, peg_difference = nasdaq_psxequities_rash_asciirash_v1_1.peg_difference.dissect(buffer, index, packet, parent)

  -- Discretion Price: Price
  index, discretion_price = nasdaq_psxequities_rash_asciirash_v1_1.discretion_price.dissect(buffer, index, packet, parent)

  -- Discretion Peg Type: Alpha
  index, discretion_peg_type = nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_type.dissect(buffer, index, packet, parent)

  -- Discretion Peg Difference Sign: Alpha
  index, discretion_peg_difference_sign = nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference_sign.dissect(buffer, index, packet, parent)

  -- Discretion Peg Difference: Price
  index, discretion_peg_difference = nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference.dissect(buffer, index, packet, parent)

  -- Capacity Rule 80 A Indicator: Alpha
  index, capacity_rule_80_a_indicator = nasdaq_psxequities_rash_asciirash_v1_1.capacity_rule_80_a_indicator.dissect(buffer, index, packet, parent)

  -- Random Reserve: Numeric
  index, random_reserve = nasdaq_psxequities_rash_asciirash_v1_1.random_reserve.dissect(buffer, index, packet, parent)

  -- Route Dest Exec Broker: Alpha
  index, route_dest_exec_broker = nasdaq_psxequities_rash_asciirash_v1_1.route_dest_exec_broker.dissect(buffer, index, packet, parent)

  -- Cust Terminal Id Sender Sub Id: Alphanumeric
  index, cust_terminal_id_sender_sub_id = nasdaq_psxequities_rash_asciirash_v1_1.cust_terminal_id_sender_sub_id.dissect(buffer, index, packet, parent)

  -- Intermarket Sweep Eligibility: Alpha
  index, intermarket_sweep_eligibility = nasdaq_psxequities_rash_asciirash_v1_1.intermarket_sweep_eligibility.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nasdaq_psxequities_rash_asciirash_v1_1.cross_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Accepted Order Message With Cross Functionality
nasdaq_psxequities_rash_asciirash_v1_1.accepted_order_message_with_cross_functionality.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.accepted_order_message_with_cross_functionality, buffer(offset, 0))
    local index = nasdaq_psxequities_rash_asciirash_v1_1.accepted_order_message_with_cross_functionality.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_rash_asciirash_v1_1.accepted_order_message_with_cross_functionality.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_rash_asciirash_v1_1.accepted_order_message_with_cross_functionality.fields(buffer, offset, packet, parent)
  end
end

-- Accepted Order Message
nasdaq_psxequities_rash_asciirash_v1_1.accepted_order_message = {}

-- Size: Accepted Order Message
nasdaq_psxequities_rash_asciirash_v1_1.accepted_order_message.size =
  nasdaq_psxequities_rash_asciirash_v1_1.order_token_client_order_id.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.side.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.shares_order_qty.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.stock_symbol.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.price.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.time_in_force.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.firm_client_id.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.display.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.order_reference_number.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.min_qty.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.max_floor.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.peg_type.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.peg_difference_sign.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.peg_difference.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.discretion_price.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_type.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference_sign.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.capacity_rule_80_a_indicator.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.random_reserve.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.route_dest_exec_broker.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.cust_terminal_id_sender_sub_id.size

-- Display: Accepted Order Message
nasdaq_psxequities_rash_asciirash_v1_1.accepted_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Accepted Order Message
nasdaq_psxequities_rash_asciirash_v1_1.accepted_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token Client Order Id: Alphanumeric
  index, order_token_client_order_id = nasdaq_psxequities_rash_asciirash_v1_1.order_token_client_order_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_psxequities_rash_asciirash_v1_1.side.dissect(buffer, index, packet, parent)

  -- Shares Order Qty: Numeric
  index, shares_order_qty = nasdaq_psxequities_rash_asciirash_v1_1.shares_order_qty.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Alpha
  index, stock_symbol = nasdaq_psxequities_rash_asciirash_v1_1.stock_symbol.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_psxequities_rash_asciirash_v1_1.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Numeric
  index, time_in_force = nasdaq_psxequities_rash_asciirash_v1_1.time_in_force.dissect(buffer, index, packet, parent)

  -- Firm Client Id: Alpha
  index, firm_client_id = nasdaq_psxequities_rash_asciirash_v1_1.firm_client_id.dissect(buffer, index, packet, parent)

  -- Display: Alpha
  index, display = nasdaq_psxequities_rash_asciirash_v1_1.display.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Numeric
  index, order_reference_number = nasdaq_psxequities_rash_asciirash_v1_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Min Qty: Numeric
  index, min_qty = nasdaq_psxequities_rash_asciirash_v1_1.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: Numeric
  index, max_floor = nasdaq_psxequities_rash_asciirash_v1_1.max_floor.dissect(buffer, index, packet, parent)

  -- Peg Type: Alpha
  index, peg_type = nasdaq_psxequities_rash_asciirash_v1_1.peg_type.dissect(buffer, index, packet, parent)

  -- Peg Difference Sign: Alpha
  index, peg_difference_sign = nasdaq_psxequities_rash_asciirash_v1_1.peg_difference_sign.dissect(buffer, index, packet, parent)

  -- Peg Difference: Price
  index, peg_difference = nasdaq_psxequities_rash_asciirash_v1_1.peg_difference.dissect(buffer, index, packet, parent)

  -- Discretion Price: Price
  index, discretion_price = nasdaq_psxequities_rash_asciirash_v1_1.discretion_price.dissect(buffer, index, packet, parent)

  -- Discretion Peg Type: Alpha
  index, discretion_peg_type = nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_type.dissect(buffer, index, packet, parent)

  -- Discretion Peg Difference Sign: Alpha
  index, discretion_peg_difference_sign = nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference_sign.dissect(buffer, index, packet, parent)

  -- Discretion Peg Difference: Price
  index, discretion_peg_difference = nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference.dissect(buffer, index, packet, parent)

  -- Capacity Rule 80 A Indicator: Alpha
  index, capacity_rule_80_a_indicator = nasdaq_psxequities_rash_asciirash_v1_1.capacity_rule_80_a_indicator.dissect(buffer, index, packet, parent)

  -- Random Reserve: Numeric
  index, random_reserve = nasdaq_psxequities_rash_asciirash_v1_1.random_reserve.dissect(buffer, index, packet, parent)

  -- Route Dest Exec Broker: Alpha
  index, route_dest_exec_broker = nasdaq_psxequities_rash_asciirash_v1_1.route_dest_exec_broker.dissect(buffer, index, packet, parent)

  -- Cust Terminal Id Sender Sub Id: Alphanumeric
  index, cust_terminal_id_sender_sub_id = nasdaq_psxequities_rash_asciirash_v1_1.cust_terminal_id_sender_sub_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Accepted Order Message
nasdaq_psxequities_rash_asciirash_v1_1.accepted_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.accepted_order_message, buffer(offset, 0))
    local index = nasdaq_psxequities_rash_asciirash_v1_1.accepted_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_rash_asciirash_v1_1.accepted_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_rash_asciirash_v1_1.accepted_order_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_psxequities_rash_asciirash_v1_1.system_event_message = {}

-- Size: System Event Message
nasdaq_psxequities_rash_asciirash_v1_1.system_event_message.size =
  nasdaq_psxequities_rash_asciirash_v1_1.event_code.size

-- Display: System Event Message
nasdaq_psxequities_rash_asciirash_v1_1.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_psxequities_rash_asciirash_v1_1.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Code: Alpha
  index, event_code = nasdaq_psxequities_rash_asciirash_v1_1.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_psxequities_rash_asciirash_v1_1.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_psxequities_rash_asciirash_v1_1.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_rash_asciirash_v1_1.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_rash_asciirash_v1_1.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nasdaq_psxequities_rash_asciirash_v1_1.sequenced_message = {}

-- Dispatch: Sequenced Message
nasdaq_psxequities_rash_asciirash_v1_1.sequenced_message.dispatch = {
  ["S"] = nasdaq_psxequities_rash_asciirash_v1_1.system_event_message.dissect,
  ["A"] = nasdaq_psxequities_rash_asciirash_v1_1.accepted_order_message.dissect,
  ["R"] = nasdaq_psxequities_rash_asciirash_v1_1.accepted_order_message_with_cross_functionality.dissect,
  ["C"] = nasdaq_psxequities_rash_asciirash_v1_1.canceled_order_message.dissect,
  ["J"] = nasdaq_psxequities_rash_asciirash_v1_1.rejected_order_message.dissect,
  ["E"] = nasdaq_psxequities_rash_asciirash_v1_1.executed_order_message.dissect,
  ["B"] = nasdaq_psxequities_rash_asciirash_v1_1.broken_trade_message.dissect,
}

-- Dissect: Sequenced Message
nasdaq_psxequities_rash_asciirash_v1_1.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  local dissect = nasdaq_psxequities_rash_asciirash_v1_1.sequenced_message.dispatch[sequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Message Header
nasdaq_psxequities_rash_asciirash_v1_1.sequenced_message_header = {}

-- Size: Sequenced Message Header
nasdaq_psxequities_rash_asciirash_v1_1.sequenced_message_header.size =
  nasdaq_psxequities_rash_asciirash_v1_1.timestamp.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.sequenced_message_type.size

-- Display: Sequenced Message Header
nasdaq_psxequities_rash_asciirash_v1_1.sequenced_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message Header
nasdaq_psxequities_rash_asciirash_v1_1.sequenced_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Ascii String
  index, timestamp = nasdaq_psxequities_rash_asciirash_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 7 values
  index, sequenced_message_type = nasdaq_psxequities_rash_asciirash_v1_1.sequenced_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Message Header
nasdaq_psxequities_rash_asciirash_v1_1.sequenced_message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.sequenced_message_header, buffer(offset, 0))
    local index = nasdaq_psxequities_rash_asciirash_v1_1.sequenced_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_rash_asciirash_v1_1.sequenced_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_rash_asciirash_v1_1.sequenced_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Data Packet
nasdaq_psxequities_rash_asciirash_v1_1.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
nasdaq_psxequities_rash_asciirash_v1_1.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
nasdaq_psxequities_rash_asciirash_v1_1.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_psxequities_rash_asciirash_v1_1.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = nasdaq_psxequities_rash_asciirash_v1_1.conversation.current
  if flow ~= nil then
    local memo = flow.sequence.frames[packet.number]
    if not packet.visited then
      if flow.sequence.next == nil then
        flow.sequence.next = tonumber(nasdaq_psxequities_rash_asciirash_v1_1.accepted_sequence_number.current)
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
          local sequence = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if nasdaq_psxequities_rash_asciirash_v1_1.stream_frame ~= packet.number or nasdaq_psxequities_rash_asciirash_v1_1.stream_occurrence >= #memo then
          nasdaq_psxequities_rash_asciirash_v1_1.stream_frame = packet.number
          nasdaq_psxequities_rash_asciirash_v1_1.stream_occurrence = 0
        end
        nasdaq_psxequities_rash_asciirash_v1_1.stream_occurrence = nasdaq_psxequities_rash_asciirash_v1_1.stream_occurrence + 1
        local value = memo[nasdaq_psxequities_rash_asciirash_v1_1.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Header: Struct of 2 fields
  index, sequenced_message_header = nasdaq_psxequities_rash_asciirash_v1_1.sequenced_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Sequenced Message Type
  local sequenced_message_type = buffer(index - 1, 1):string()

  -- Sequenced Message: Runtime Type with 7 branches
  index = nasdaq_psxequities_rash_asciirash_v1_1.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_psxequities_rash_asciirash_v1_1.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = nasdaq_psxequities_rash_asciirash_v1_1.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.sequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_psxequities_rash_asciirash_v1_1.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = nasdaq_psxequities_rash_asciirash_v1_1.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_psxequities_rash_asciirash_v1_1.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
nasdaq_psxequities_rash_asciirash_v1_1.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_psxequities_rash_asciirash_v1_1.login_rejected_packet.size =
  nasdaq_psxequities_rash_asciirash_v1_1.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_psxequities_rash_asciirash_v1_1.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_psxequities_rash_asciirash_v1_1.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String Enum with 2 values
  index, reject_reason_code = nasdaq_psxequities_rash_asciirash_v1_1.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_psxequities_rash_asciirash_v1_1.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_psxequities_rash_asciirash_v1_1.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_rash_asciirash_v1_1.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_rash_asciirash_v1_1.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_psxequities_rash_asciirash_v1_1.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_psxequities_rash_asciirash_v1_1.login_accepted_packet.size =
  nasdaq_psxequities_rash_asciirash_v1_1.accepted_session.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.accepted_sequence_number.size

-- Display: Login Accepted Packet
nasdaq_psxequities_rash_asciirash_v1_1.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_psxequities_rash_asciirash_v1_1.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = nasdaq_psxequities_rash_asciirash_v1_1.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = nasdaq_psxequities_rash_asciirash_v1_1.accepted_sequence_number.dissect(buffer, index, packet, parent)

  -- Store Accepted Sequence Number Value
  nasdaq_psxequities_rash_asciirash_v1_1.accepted_sequence_number.current = accepted_sequence_number

  if not packet.visited then
    nasdaq_psxequities_rash_asciirash_v1_1.conversation.current.accepted_sequence_number.last = accepted_sequence_number
  end

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_psxequities_rash_asciirash_v1_1.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_psxequities_rash_asciirash_v1_1.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_rash_asciirash_v1_1.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_rash_asciirash_v1_1.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_psxequities_rash_asciirash_v1_1.debug_packet = {}

-- Calculate size of: Debug Packet
nasdaq_psxequities_rash_asciirash_v1_1.debug_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Debug Text
  index = index + buffer(offset + index - 3, 2):uint()

  return index
end

-- Display: Debug Packet
nasdaq_psxequities_rash_asciirash_v1_1.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_psxequities_rash_asciirash_v1_1.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Debug Text
  local size_of_debug_text = packet_length - 1

  -- Debug Text: 0 Byte Ascii String
  index, debug_text = nasdaq_psxequities_rash_asciirash_v1_1.debug_text.dissect(buffer, index, packet, parent, size_of_debug_text)

  return index
end

-- Dissect: Debug Packet
nasdaq_psxequities_rash_asciirash_v1_1.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_psxequities_rash_asciirash_v1_1.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_rash_asciirash_v1_1.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_rash_asciirash_v1_1.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
nasdaq_psxequities_rash_asciirash_v1_1.server_payload = {}

-- Dispatch: Server Payload
nasdaq_psxequities_rash_asciirash_v1_1.server_payload.dispatch = {
  ["+"] = nasdaq_psxequities_rash_asciirash_v1_1.debug_packet.dissect,
  ["A"] = nasdaq_psxequities_rash_asciirash_v1_1.login_accepted_packet.dissect,
  ["J"] = nasdaq_psxequities_rash_asciirash_v1_1.login_rejected_packet.dissect,
  ["S"] = nasdaq_psxequities_rash_asciirash_v1_1.sequenced_data_packet.dissect,
  ["H"] = nasdaq_psxequities_rash_asciirash_v1_1.server_heartbeat.dissect,
  ["Z"] = nasdaq_psxequities_rash_asciirash_v1_1.end_of_session.dissect,
}

-- Dissect: Server Payload
nasdaq_psxequities_rash_asciirash_v1_1.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  local dissect = nasdaq_psxequities_rash_asciirash_v1_1.server_payload.dispatch[server_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
nasdaq_psxequities_rash_asciirash_v1_1.server_packet_header = {}

-- Size: Server Packet Header
nasdaq_psxequities_rash_asciirash_v1_1.server_packet_header.size =
  nasdaq_psxequities_rash_asciirash_v1_1.packet_length.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.server_packet_type.size

-- Display: Server Packet Header
nasdaq_psxequities_rash_asciirash_v1_1.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
nasdaq_psxequities_rash_asciirash_v1_1.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_psxequities_rash_asciirash_v1_1.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = nasdaq_psxequities_rash_asciirash_v1_1.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
nasdaq_psxequities_rash_asciirash_v1_1.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.server_packet_header, buffer(offset, 0))
    local index = nasdaq_psxequities_rash_asciirash_v1_1.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_rash_asciirash_v1_1.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_rash_asciirash_v1_1.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
nasdaq_psxequities_rash_asciirash_v1_1.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
nasdaq_psxequities_rash_asciirash_v1_1.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
nasdaq_psxequities_rash_asciirash_v1_1.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = nasdaq_psxequities_rash_asciirash_v1_1.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = nasdaq_psxequities_rash_asciirash_v1_1.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
nasdaq_psxequities_rash_asciirash_v1_1.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_psxequities_rash_asciirash_v1_1.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = nasdaq_psxequities_rash_asciirash_v1_1.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_psxequities_rash_asciirash_v1_1.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_psxequities_rash_asciirash_v1_1.server_packet_header.size then
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
nasdaq_psxequities_rash_asciirash_v1_1.server_packet = {}

-- Verify required size of Tcp packet
nasdaq_psxequities_rash_asciirash_v1_1.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_psxequities_rash_asciirash_v1_1.server_packet_header.size
end

-- Dissect Server Packet
nasdaq_psxequities_rash_asciirash_v1_1.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nasdaq_psxequities_rash_asciirash_v1_1.conversation.data(packet)
  if not packet.visited then
    data.accepted_sequence_number.frames[packet.number] = data.accepted_sequence_number.last
  end
  nasdaq_psxequities_rash_asciirash_v1_1.accepted_sequence_number.current = data.accepted_sequence_number.frames[packet.number]
  nasdaq_psxequities_rash_asciirash_v1_1.conversation.current = data

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
      index = nasdaq_psxequities_rash_asciirash_v1_1.server_soup_bin_tcp_packet.dissect(frame, index, packet, parent, size_of_server_soup_bin_tcp_packet)
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
nasdaq_psxequities_rash_asciirash_v1_1.logout_request = {}

-- Display: Logout Request
nasdaq_psxequities_rash_asciirash_v1_1.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
nasdaq_psxequities_rash_asciirash_v1_1.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_psxequities_rash_asciirash_v1_1.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
nasdaq_psxequities_rash_asciirash_v1_1.client_heartbeat = {}

-- Display: Client Heartbeat
nasdaq_psxequities_rash_asciirash_v1_1.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
nasdaq_psxequities_rash_asciirash_v1_1.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_psxequities_rash_asciirash_v1_1.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Cancel Order Message
nasdaq_psxequities_rash_asciirash_v1_1.cancel_order_message = {}

-- Size: Cancel Order Message
nasdaq_psxequities_rash_asciirash_v1_1.cancel_order_message.size =
  nasdaq_psxequities_rash_asciirash_v1_1.order_token_client_order_id.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.shares.size

-- Display: Cancel Order Message
nasdaq_psxequities_rash_asciirash_v1_1.cancel_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Message
nasdaq_psxequities_rash_asciirash_v1_1.cancel_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token Client Order Id: Alphanumeric
  index, order_token_client_order_id = nasdaq_psxequities_rash_asciirash_v1_1.order_token_client_order_id.dissect(buffer, index, packet, parent)

  -- Shares: Numeric
  index, shares = nasdaq_psxequities_rash_asciirash_v1_1.shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Message
nasdaq_psxequities_rash_asciirash_v1_1.cancel_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.cancel_order_message, buffer(offset, 0))
    local index = nasdaq_psxequities_rash_asciirash_v1_1.cancel_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_rash_asciirash_v1_1.cancel_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_rash_asciirash_v1_1.cancel_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Enter Order Message With Cross Functionality
nasdaq_psxequities_rash_asciirash_v1_1.enter_order_message_with_cross_functionality = {}

-- Size: Enter Order Message With Cross Functionality
nasdaq_psxequities_rash_asciirash_v1_1.enter_order_message_with_cross_functionality.size =
  nasdaq_psxequities_rash_asciirash_v1_1.order_token_client_order_id.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.side.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.shares_order_qty.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.stock_symbol.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.price.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.time_in_force.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.firm_client_id.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.display.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.min_qty.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.max_floor.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.peg_type.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.peg_difference_sign.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.peg_difference.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.discretion_price.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_type.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference_sign.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.capacity_rule_80_a_indicator.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.random_reserve.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.route_dest_exec_broker.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.cust_terminal_id_sender_sub_id.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.intermarket_sweep_eligibility.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.cross_type.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.customer_type.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.trade_now.size

-- Display: Enter Order Message With Cross Functionality
nasdaq_psxequities_rash_asciirash_v1_1.enter_order_message_with_cross_functionality.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enter Order Message With Cross Functionality
nasdaq_psxequities_rash_asciirash_v1_1.enter_order_message_with_cross_functionality.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token Client Order Id: Alphanumeric
  index, order_token_client_order_id = nasdaq_psxequities_rash_asciirash_v1_1.order_token_client_order_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_psxequities_rash_asciirash_v1_1.side.dissect(buffer, index, packet, parent)

  -- Shares Order Qty: Numeric
  index, shares_order_qty = nasdaq_psxequities_rash_asciirash_v1_1.shares_order_qty.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Alpha
  index, stock_symbol = nasdaq_psxequities_rash_asciirash_v1_1.stock_symbol.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_psxequities_rash_asciirash_v1_1.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Numeric
  index, time_in_force = nasdaq_psxequities_rash_asciirash_v1_1.time_in_force.dissect(buffer, index, packet, parent)

  -- Firm Client Id: Alpha
  index, firm_client_id = nasdaq_psxequities_rash_asciirash_v1_1.firm_client_id.dissect(buffer, index, packet, parent)

  -- Display: Alpha
  index, display = nasdaq_psxequities_rash_asciirash_v1_1.display.dissect(buffer, index, packet, parent)

  -- Min Qty: Numeric
  index, min_qty = nasdaq_psxequities_rash_asciirash_v1_1.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: Numeric
  index, max_floor = nasdaq_psxequities_rash_asciirash_v1_1.max_floor.dissect(buffer, index, packet, parent)

  -- Peg Type: Alpha
  index, peg_type = nasdaq_psxequities_rash_asciirash_v1_1.peg_type.dissect(buffer, index, packet, parent)

  -- Peg Difference Sign: Alpha
  index, peg_difference_sign = nasdaq_psxequities_rash_asciirash_v1_1.peg_difference_sign.dissect(buffer, index, packet, parent)

  -- Peg Difference: Price
  index, peg_difference = nasdaq_psxequities_rash_asciirash_v1_1.peg_difference.dissect(buffer, index, packet, parent)

  -- Discretion Price: Price
  index, discretion_price = nasdaq_psxequities_rash_asciirash_v1_1.discretion_price.dissect(buffer, index, packet, parent)

  -- Discretion Peg Type: Alpha
  index, discretion_peg_type = nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_type.dissect(buffer, index, packet, parent)

  -- Discretion Peg Difference Sign: Alpha
  index, discretion_peg_difference_sign = nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference_sign.dissect(buffer, index, packet, parent)

  -- Discretion Peg Difference: Price
  index, discretion_peg_difference = nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference.dissect(buffer, index, packet, parent)

  -- Capacity Rule 80 A Indicator: Alpha
  index, capacity_rule_80_a_indicator = nasdaq_psxequities_rash_asciirash_v1_1.capacity_rule_80_a_indicator.dissect(buffer, index, packet, parent)

  -- Random Reserve: Numeric
  index, random_reserve = nasdaq_psxequities_rash_asciirash_v1_1.random_reserve.dissect(buffer, index, packet, parent)

  -- Route Dest Exec Broker: Alpha
  index, route_dest_exec_broker = nasdaq_psxequities_rash_asciirash_v1_1.route_dest_exec_broker.dissect(buffer, index, packet, parent)

  -- Cust Terminal Id Sender Sub Id: Alphanumeric
  index, cust_terminal_id_sender_sub_id = nasdaq_psxequities_rash_asciirash_v1_1.cust_terminal_id_sender_sub_id.dissect(buffer, index, packet, parent)

  -- Intermarket Sweep Eligibility: Alpha
  index, intermarket_sweep_eligibility = nasdaq_psxequities_rash_asciirash_v1_1.intermarket_sweep_eligibility.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nasdaq_psxequities_rash_asciirash_v1_1.cross_type.dissect(buffer, index, packet, parent)

  -- Customer Type: Alpha
  index, customer_type = nasdaq_psxequities_rash_asciirash_v1_1.customer_type.dissect(buffer, index, packet, parent)

  -- Trade Now: Alpha
  index, trade_now = nasdaq_psxequities_rash_asciirash_v1_1.trade_now.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enter Order Message With Cross Functionality
nasdaq_psxequities_rash_asciirash_v1_1.enter_order_message_with_cross_functionality.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.enter_order_message_with_cross_functionality, buffer(offset, 0))
    local index = nasdaq_psxequities_rash_asciirash_v1_1.enter_order_message_with_cross_functionality.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_rash_asciirash_v1_1.enter_order_message_with_cross_functionality.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_rash_asciirash_v1_1.enter_order_message_with_cross_functionality.fields(buffer, offset, packet, parent)
  end
end

-- Enter Order Message
nasdaq_psxequities_rash_asciirash_v1_1.enter_order_message = {}

-- Size: Enter Order Message
nasdaq_psxequities_rash_asciirash_v1_1.enter_order_message.size =
  nasdaq_psxequities_rash_asciirash_v1_1.order_token_client_order_id.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.side.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.shares_order_qty.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.stock_symbol.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.price.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.time_in_force.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.firm_client_id.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.display.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.min_qty.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.max_floor.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.peg_type.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.peg_difference_sign.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.peg_difference.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.discretion_price.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_type.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference_sign.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.capacity_rule_80_a_indicator.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.random_reserve.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.route_dest_exec_broker.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.cust_terminal_id_sender_sub_id.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.customer_type.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.trade_now.size

-- Display: Enter Order Message
nasdaq_psxequities_rash_asciirash_v1_1.enter_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enter Order Message
nasdaq_psxequities_rash_asciirash_v1_1.enter_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token Client Order Id: Alphanumeric
  index, order_token_client_order_id = nasdaq_psxequities_rash_asciirash_v1_1.order_token_client_order_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_psxequities_rash_asciirash_v1_1.side.dissect(buffer, index, packet, parent)

  -- Shares Order Qty: Numeric
  index, shares_order_qty = nasdaq_psxequities_rash_asciirash_v1_1.shares_order_qty.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Alpha
  index, stock_symbol = nasdaq_psxequities_rash_asciirash_v1_1.stock_symbol.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_psxequities_rash_asciirash_v1_1.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Numeric
  index, time_in_force = nasdaq_psxequities_rash_asciirash_v1_1.time_in_force.dissect(buffer, index, packet, parent)

  -- Firm Client Id: Alpha
  index, firm_client_id = nasdaq_psxequities_rash_asciirash_v1_1.firm_client_id.dissect(buffer, index, packet, parent)

  -- Display: Alpha
  index, display = nasdaq_psxequities_rash_asciirash_v1_1.display.dissect(buffer, index, packet, parent)

  -- Min Qty: Numeric
  index, min_qty = nasdaq_psxequities_rash_asciirash_v1_1.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: Numeric
  index, max_floor = nasdaq_psxequities_rash_asciirash_v1_1.max_floor.dissect(buffer, index, packet, parent)

  -- Peg Type: Alpha
  index, peg_type = nasdaq_psxequities_rash_asciirash_v1_1.peg_type.dissect(buffer, index, packet, parent)

  -- Peg Difference Sign: Alpha
  index, peg_difference_sign = nasdaq_psxequities_rash_asciirash_v1_1.peg_difference_sign.dissect(buffer, index, packet, parent)

  -- Peg Difference: Price
  index, peg_difference = nasdaq_psxequities_rash_asciirash_v1_1.peg_difference.dissect(buffer, index, packet, parent)

  -- Discretion Price: Price
  index, discretion_price = nasdaq_psxequities_rash_asciirash_v1_1.discretion_price.dissect(buffer, index, packet, parent)

  -- Discretion Peg Type: Alpha
  index, discretion_peg_type = nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_type.dissect(buffer, index, packet, parent)

  -- Discretion Peg Difference Sign: Alpha
  index, discretion_peg_difference_sign = nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference_sign.dissect(buffer, index, packet, parent)

  -- Discretion Peg Difference: Price
  index, discretion_peg_difference = nasdaq_psxequities_rash_asciirash_v1_1.discretion_peg_difference.dissect(buffer, index, packet, parent)

  -- Capacity Rule 80 A Indicator: Alpha
  index, capacity_rule_80_a_indicator = nasdaq_psxequities_rash_asciirash_v1_1.capacity_rule_80_a_indicator.dissect(buffer, index, packet, parent)

  -- Random Reserve: Numeric
  index, random_reserve = nasdaq_psxequities_rash_asciirash_v1_1.random_reserve.dissect(buffer, index, packet, parent)

  -- Route Dest Exec Broker: Alpha
  index, route_dest_exec_broker = nasdaq_psxequities_rash_asciirash_v1_1.route_dest_exec_broker.dissect(buffer, index, packet, parent)

  -- Cust Terminal Id Sender Sub Id: Alphanumeric
  index, cust_terminal_id_sender_sub_id = nasdaq_psxequities_rash_asciirash_v1_1.cust_terminal_id_sender_sub_id.dissect(buffer, index, packet, parent)

  -- Customer Type: Alpha
  index, customer_type = nasdaq_psxequities_rash_asciirash_v1_1.customer_type.dissect(buffer, index, packet, parent)

  -- Trade Now: Alpha
  index, trade_now = nasdaq_psxequities_rash_asciirash_v1_1.trade_now.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enter Order Message
nasdaq_psxequities_rash_asciirash_v1_1.enter_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.enter_order_message, buffer(offset, 0))
    local index = nasdaq_psxequities_rash_asciirash_v1_1.enter_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_rash_asciirash_v1_1.enter_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_rash_asciirash_v1_1.enter_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
nasdaq_psxequities_rash_asciirash_v1_1.unsequenced_message = {}

-- Dispatch: Unsequenced Message
nasdaq_psxequities_rash_asciirash_v1_1.unsequenced_message.dispatch = {
  ["O"] = nasdaq_psxequities_rash_asciirash_v1_1.enter_order_message.dissect,
  ["Q"] = nasdaq_psxequities_rash_asciirash_v1_1.enter_order_message_with_cross_functionality.dissect,
  ["X"] = nasdaq_psxequities_rash_asciirash_v1_1.cancel_order_message.dissect,
}

-- Dissect: Unsequenced Message
nasdaq_psxequities_rash_asciirash_v1_1.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  local dissect = nasdaq_psxequities_rash_asciirash_v1_1.unsequenced_message.dispatch[unsequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
nasdaq_psxequities_rash_asciirash_v1_1.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
nasdaq_psxequities_rash_asciirash_v1_1.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
nasdaq_psxequities_rash_asciirash_v1_1.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_psxequities_rash_asciirash_v1_1.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String Enum with 3 values
  index, unsequenced_message_type = nasdaq_psxequities_rash_asciirash_v1_1.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 3 branches
  index = nasdaq_psxequities_rash_asciirash_v1_1.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_psxequities_rash_asciirash_v1_1.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = nasdaq_psxequities_rash_asciirash_v1_1.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_psxequities_rash_asciirash_v1_1.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = nasdaq_psxequities_rash_asciirash_v1_1.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_psxequities_rash_asciirash_v1_1.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
nasdaq_psxequities_rash_asciirash_v1_1.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_psxequities_rash_asciirash_v1_1.login_request_packet.size =
  nasdaq_psxequities_rash_asciirash_v1_1.username.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.password.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.requested_session.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_psxequities_rash_asciirash_v1_1.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_psxequities_rash_asciirash_v1_1.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_psxequities_rash_asciirash_v1_1.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_psxequities_rash_asciirash_v1_1.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_psxequities_rash_asciirash_v1_1.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_psxequities_rash_asciirash_v1_1.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_psxequities_rash_asciirash_v1_1.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_psxequities_rash_asciirash_v1_1.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_rash_asciirash_v1_1.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_rash_asciirash_v1_1.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
nasdaq_psxequities_rash_asciirash_v1_1.client_payload = {}

-- Dispatch: Client Payload
nasdaq_psxequities_rash_asciirash_v1_1.client_payload.dispatch = {
  ["+"] = nasdaq_psxequities_rash_asciirash_v1_1.debug_packet.dissect,
  ["L"] = nasdaq_psxequities_rash_asciirash_v1_1.login_request_packet.dissect,
  ["U"] = nasdaq_psxequities_rash_asciirash_v1_1.unsequenced_data_packet.dissect,
  ["R"] = nasdaq_psxequities_rash_asciirash_v1_1.client_heartbeat.dissect,
  ["O"] = nasdaq_psxequities_rash_asciirash_v1_1.logout_request.dissect,
}

-- Dissect: Client Payload
nasdaq_psxequities_rash_asciirash_v1_1.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  local dissect = nasdaq_psxequities_rash_asciirash_v1_1.client_payload.dispatch[client_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
nasdaq_psxequities_rash_asciirash_v1_1.client_packet_header = {}

-- Size: Client Packet Header
nasdaq_psxequities_rash_asciirash_v1_1.client_packet_header.size =
  nasdaq_psxequities_rash_asciirash_v1_1.packet_length.size + 
  nasdaq_psxequities_rash_asciirash_v1_1.client_packet_type.size

-- Display: Client Packet Header
nasdaq_psxequities_rash_asciirash_v1_1.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
nasdaq_psxequities_rash_asciirash_v1_1.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_psxequities_rash_asciirash_v1_1.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = nasdaq_psxequities_rash_asciirash_v1_1.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
nasdaq_psxequities_rash_asciirash_v1_1.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.client_packet_header, buffer(offset, 0))
    local index = nasdaq_psxequities_rash_asciirash_v1_1.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_rash_asciirash_v1_1.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_rash_asciirash_v1_1.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
nasdaq_psxequities_rash_asciirash_v1_1.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
nasdaq_psxequities_rash_asciirash_v1_1.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
nasdaq_psxequities_rash_asciirash_v1_1.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = nasdaq_psxequities_rash_asciirash_v1_1.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = nasdaq_psxequities_rash_asciirash_v1_1.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
nasdaq_psxequities_rash_asciirash_v1_1.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_psxequities_rash_asciirash_v1_1.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = nasdaq_psxequities_rash_asciirash_v1_1.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_psxequities_rash_asciirash_v1_1.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_psxequities_rash_asciirash_v1_1.client_packet_header.size then
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
nasdaq_psxequities_rash_asciirash_v1_1.client_packet = {}

-- Verify required size of Tcp packet
nasdaq_psxequities_rash_asciirash_v1_1.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_psxequities_rash_asciirash_v1_1.client_packet_header.size
end

-- Dissect Client Packet
nasdaq_psxequities_rash_asciirash_v1_1.client_packet.dissect = function(buffer, packet, parent)
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
      index = nasdaq_psxequities_rash_asciirash_v1_1.client_soup_bin_tcp_packet.dissect(frame, index, packet, parent, size_of_client_soup_bin_tcp_packet)
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
function omi_nasdaq_psxequities_rash_asciirash_v1_1.init()
  nasdaq_psxequities_rash_asciirash_v1_1.accepted_sequence_number.current = nil
  nasdaq_psxequities_rash_asciirash_v1_1.conversation.current = nil
  nasdaq_psxequities_rash_asciirash_v1_1.conversation.flows = {}
end

-- Connection roles for Nasdaq PsxEquities Rash AsciiRash 1.1: Client is the initiator, Server is the acceptor
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
nasdaq_psxequities_rash_asciirash_v1_1.role = function(packet)
  if omi_nasdaq_psxequities_rash_asciirash_v1_1.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nasdaq_psxequities_rash_asciirash_v1_1.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nasdaq_psxequities_rash_asciirash_v1_1.prefs.acceptor_port

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

  if omi_nasdaq_psxequities_rash_asciirash_v1_1.prefs.swap_sides then
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
nasdaq_psxequities_rash_asciirash_v1_1.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nasdaq PsxEquities Rash AsciiRash 1.1
function omi_nasdaq_psxequities_rash_asciirash_v1_1.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_psxequities_rash_asciirash_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_psxequities_rash_asciirash_v1_1, buffer(), omi_nasdaq_psxequities_rash_asciirash_v1_1.description, "("..buffer:len().." Bytes)")
  local role = nasdaq_psxequities_rash_asciirash_v1_1.role(packet)

  if role == "initiator" then
    return nasdaq_psxequities_rash_asciirash_v1_1.client_packet.dissect(buffer, packet, protocol)
  end

  return nasdaq_psxequities_rash_asciirash_v1_1.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nasdaq_psxequities_rash_asciirash_v1_1.client_packet.fingerprint = function(buffer)
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
nasdaq_psxequities_rash_asciirash_v1_1.server_packet.fingerprint = function(buffer)
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

-- Dissector Heuristic for Nasdaq PsxEquities Rash AsciiRash 1.1 (Tcp)
local function omi_nasdaq_psxequities_rash_asciirash_v1_1_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_psxequities_rash_asciirash_v1_1.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp client packet message dispatch
  if not nasdaq_psxequities_rash_asciirash_v1_1.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_psxequities_rash_asciirash_v1_1
  omi_nasdaq_psxequities_rash_asciirash_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq PsxEquities Rash AsciiRash 1.1 (Tcp)
local function omi_nasdaq_psxequities_rash_asciirash_v1_1_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_psxequities_rash_asciirash_v1_1.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp server packet message dispatch
  if not nasdaq_psxequities_rash_asciirash_v1_1.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_psxequities_rash_asciirash_v1_1
  omi_nasdaq_psxequities_rash_asciirash_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq PsxEquities Rash AsciiRash 1.1 (Tcp): apply the heuristic of the sender's connection role
local function omi_nasdaq_psxequities_rash_asciirash_v1_1_tcp_heuristic(buffer, packet, parent)
  local role = nasdaq_psxequities_rash_asciirash_v1_1.role(packet)
  local initiator = omi_nasdaq_psxequities_rash_asciirash_v1_1_tcp_initiator_heuristic
  local acceptor = omi_nasdaq_psxequities_rash_asciirash_v1_1_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nasdaq_psxequities_rash_asciirash_v1_1.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nasdaq_psxequities_rash_asciirash_v1_1.swap(packet)

  return false
end

-- Register Heuristics for Nasdaq PsxEquities Rash AsciiRash 1.1
omi_nasdaq_psxequities_rash_asciirash_v1_1:register_heuristic("tcp", omi_nasdaq_psxequities_rash_asciirash_v1_1_tcp_heuristic)

-- Register Nasdaq PsxEquities Rash AsciiRash 1.1 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nasdaq_psxequities_rash_asciirash_v1_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 1.1
--   Date: Friday, March 13, 2026
--   Specification: psxrashsb.pdf
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
