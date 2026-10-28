-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Jnx JnxEquities Pts Ouch 2.01 Protocol
local omi_jnx_jnxequities_pts_ouch_v2_01 = Proto("Omi.Jnx.JnxEquities.Pts.Ouch.v2.01", "Jnx JnxEquities Pts Ouch 2.01")

-- Protocol table
local jnx_jnxequities_pts_ouch_v2_01 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Jnx JnxEquities Pts Ouch 2.01 Fields
omi_jnx_jnxequities_pts_ouch_v2_01.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "jnx.jnxequities.pts.ouch.v2.01.acceptedsequencenumber", ftypes.UINT64, nil, nil, nil, "The sequence number in ASCII of the next Sequenced Message to be sent. Left padded with spaces.")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.accepted_session = ProtoField.new("Accepted Session", "jnx.jnxequities.pts.ouch.v2.01.acceptedsession", ftypes.STRING, nil, nil, nil, "The session ID of the session that is now logged into. Left padded with spaces.")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "jnx.jnxequities.pts.ouch.v2.01.buysellindicator", ftypes.STRING, nil, nil, nil, "Side of order")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.capacity = ProtoField.new("Capacity", "jnx.jnxequities.pts.ouch.v2.01.capacity", ftypes.STRING, nil, nil, nil, "Capacity of firm placing order")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.cash_margin_type = ProtoField.new("Cash Margin Type", "jnx.jnxequities.pts.ouch.v2.01.cashmargintype", ftypes.STRING, nil, nil, nil, "Cash margin type of order")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.client_packet_type = ProtoField.new("Packet Type", "jnx.jnxequities.pts.ouch.v2.01.clientpackettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type sent by the client")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.client_reference = ProtoField.new("Client Reference", "jnx.jnxequities.pts.ouch.v2.01.clientreference", ftypes.STRING, nil, nil, nil, "Assigned by client Not validated")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.debug_text = ProtoField.new("Debug Text", "jnx.jnxequities.pts.ouch.v2.01.debugtext", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.decrement_quantity = ProtoField.new("Decrement Quantity", "jnx.jnxequities.pts.ouch.v2.01.decrementquantity", ftypes.UINT32, nil, nil, nil, "Number of shares decremented from order")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.display = ProtoField.new("Display", "jnx.jnxequities.pts.ouch.v2.01.display", ftypes.STRING, nil, nil, nil, "Order handling instruction")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.executed_quantity = ProtoField.new("Executed Quantity", "jnx.jnxequities.pts.ouch.v2.01.executedquantity", ftypes.UINT32, nil, nil, nil, "Incremental number of shares executed")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.execution_price = ProtoField.new("Execution Price", "jnx.jnxequities.pts.ouch.v2.01.executionprice", ftypes.DOUBLE, nil, nil, nil, "Price at which the trade would have occurred")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.existing_order_token = ProtoField.new("Existing Order Token", "jnx.jnxequities.pts.ouch.v2.01.existingordertoken", ftypes.UINT32, nil, nil, nil, "Must match current live order")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.firm_id = ProtoField.new("Firm Id", "jnx.jnxequities.pts.ouch.v2.01.firmid", ftypes.UINT32, nil, nil, nil, "Order entry firm identifier")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.group = ProtoField.new("Group", "jnx.jnxequities.pts.ouch.v2.01.group", ftypes.STRING, nil, nil, nil, "Order book group identifier")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.liquidity_indicator = ProtoField.new("Liquidity Indicator", "jnx.jnxequities.pts.ouch.v2.01.liquidityindicator", ftypes.STRING, nil, nil, nil, "Identifies whether this would-be trade was a result of a liquidity provider providing or liquidity taker taking the liquidity")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.match_number = ProtoField.new("Match Number", "jnx.jnxequities.pts.ouch.v2.01.matchnumber", ftypes.UINT64, nil, nil, nil, "Reference number of the match unique within trading day")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.minimum_quantity = ProtoField.new("Minimum Quantity", "jnx.jnxequities.pts.ouch.v2.01.minimumquantity", ftypes.UINT32, nil, nil, nil, "Minimum acceptable quantity to execute")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.order_canceled_reason = ProtoField.new("Order Canceled Reason", "jnx.jnxequities.pts.ouch.v2.01.ordercanceledreason", ftypes.STRING, nil, nil, nil, "Reason order was reduced or canceled")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.order_classification = ProtoField.new("Order Classification", "jnx.jnxequities.pts.ouch.v2.01.orderclassification", ftypes.STRING, nil, nil, nil, "High-frequency trading order classification")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.order_number = ProtoField.new("Order Number", "jnx.jnxequities.pts.ouch.v2.01.ordernumber", ftypes.UINT64, nil, nil, nil, "Order reference number unique within trading day")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.order_rejected_reason = ProtoField.new("Order Rejected Reason", "jnx.jnxequities.pts.ouch.v2.01.orderrejectedreason", ftypes.STRING, nil, nil, nil, "Reason the order was rejected")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.order_state = ProtoField.new("Order State", "jnx.jnxequities.pts.ouch.v2.01.orderstate", ftypes.STRING, nil, nil, nil, "Order state upon acceptance")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.order_token = ProtoField.new("Order Token", "jnx.jnxequities.pts.ouch.v2.01.ordertoken", ftypes.UINT32, nil, nil, nil, "Must be unique per Ouch account within a trading day and increase on each subsequent transaction")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.orderbook_id = ProtoField.new("Orderbook Id", "jnx.jnxequities.pts.ouch.v2.01.orderbookid", ftypes.STRING, nil, nil, nil, "Securities Identification Code Committee (SICC) code")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.packet_length = ProtoField.new("Packet Length", "jnx.jnxequities.pts.ouch.v2.01.packetlength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.password = ProtoField.new("Password", "jnx.jnxequities.pts.ouch.v2.01.password", ftypes.STRING, nil, nil, nil, "Login password")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.previous_order_token = ProtoField.new("Previous Order Token", "jnx.jnxequities.pts.ouch.v2.01.previousordertoken", ftypes.UINT32, nil, nil, nil, "Order token of replaced order")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.price = ProtoField.new("Price", "jnx.jnxequities.pts.ouch.v2.01.price", ftypes.DOUBLE, nil, nil, nil, "Order price")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.quantity = ProtoField.new("Quantity", "jnx.jnxequities.pts.ouch.v2.01.quantity", ftypes.UINT32, nil, nil, nil, "Number of shares")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.quantity_prevented_from_trading = ProtoField.new("Quantity Prevented From Trading", "jnx.jnxequities.pts.ouch.v2.01.quantitypreventedfromtrading", ftypes.UINT32, nil, nil, nil, "Number of shares that would have executed if the trade had occurred")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "jnx.jnxequities.pts.ouch.v2.01.rejectreasoncode", ftypes.STRING, nil, nil, nil, "Login Reject Codes")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.replacement_order_token = ProtoField.new("Replacement Order Token", "jnx.jnxequities.pts.ouch.v2.01.replacementordertoken", ftypes.UINT32, nil, nil, nil, "Must be unique per Ouch account within a trading day and increase on each subsequent transaction")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "jnx.jnxequities.pts.ouch.v2.01.requestedsequencenumber", ftypes.UINT64, nil, nil, nil, "Specifies the next sequence number in ASCII the client wants to receive upon connection, or 0 to start receiving the most recently generated message.")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.requested_session = ProtoField.new("Requested Session", "jnx.jnxequities.pts.ouch.v2.01.requestedsession", ftypes.STRING, nil, nil, nil, "Specifies the session the client would like to log into, or all blanks to log into the currently active session.")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "jnx.jnxequities.pts.ouch.v2.01.sequencedmessagetype", ftypes.STRING, nil, nil, nil, "Value identifying sequenced message type")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.server_packet_type = ProtoField.new("Packet Type", "jnx.jnxequities.pts.ouch.v2.01.serverpackettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type sent by the server")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.system_event = ProtoField.new("System Event", "jnx.jnxequities.pts.ouch.v2.01.systemevent", ftypes.STRING, nil, nil, nil, "System event code")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.time_in_force = ProtoField.new("Time In Force", "jnx.jnxequities.pts.ouch.v2.01.timeinforce", ftypes.UINT32, nil, nil, nil, "How long the order remains in effect")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.timestamp = ProtoField.new("Timestamp", "jnx.jnxequities.pts.ouch.v2.01.timestamp", ftypes.UINT64, nil, nil, nil, "Number of nanoseconds past midnight of the current calendar date")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "jnx.jnxequities.pts.ouch.v2.01.unsequencedmessagetype", ftypes.STRING, nil, nil, nil, "Value identifying unsequenced message type")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.username = ProtoField.new("Username", "jnx.jnxequities.pts.ouch.v2.01.username", ftypes.STRING, nil, nil, nil, "Session username")

-- Jnx JnxEquities Pts Ouch 2.01 Framing
omi_jnx_jnxequities_pts_ouch_v2_01.fields.client_packet = ProtoField.new("Packet", "jnx.jnxequities.pts.ouch.v2.01.clientpacket", ftypes.STRING, nil, nil, nil, "SoupBinTCP Packet sent by the client")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.client_packet_header = ProtoField.new("Packet Header", "jnx.jnxequities.pts.ouch.v2.01.clientpacketheader", ftypes.STRING, nil, nil, nil, "Packet header of a packet sent by the client")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "jnx.jnxequities.pts.ouch.v2.01.clientsoupbintcppacket", ftypes.STRING, nil, nil, nil, "Soup Bin Tcp Packet sent by the client")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.server_packet = ProtoField.new("Packet", "jnx.jnxequities.pts.ouch.v2.01.serverpacket", ftypes.STRING, nil, nil, nil, "SoupBinTCP Packet sent by the server")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.server_packet_header = ProtoField.new("Packet Header", "jnx.jnxequities.pts.ouch.v2.01.serverpacketheader", ftypes.STRING, nil, nil, nil, "Packet header of a packet sent by the server")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "jnx.jnxequities.pts.ouch.v2.01.serversoupbintcppacket", ftypes.STRING, nil, nil, nil, "Soup Bin Tcp Packet sent by the server")

-- Jnx JnxEquities Pts 2.01 Application Messages
omi_jnx_jnxequities_pts_ouch_v2_01.fields.cancel_order_message = ProtoField.new("Cancel Order Message", "jnx.jnxequities.pts.ouch.v2.01.cancelordermessage", ftypes.STRING, nil, nil, nil, "A Cancel Order Message is used to request that an order be canceled")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.enter_order_message = ProtoField.new("Enter Order Message", "jnx.jnxequities.pts.ouch.v2.01.enterordermessage", ftypes.STRING, nil, nil, nil, "An Enter Order Message is used to enter a new order into the Japannext PTS execution system")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.order_accepted_message = ProtoField.new("Order Accepted Message", "jnx.jnxequities.pts.ouch.v2.01.orderacceptedmessage", ftypes.STRING, nil, nil, nil, "An Order Accepted Message acknowledges the receipt and acceptance of a valid Enter Order Message")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.order_aiq_canceled_message = ProtoField.new("Order Aiq Canceled Message", "jnx.jnxequities.pts.ouch.v2.01.orderaiqcanceledmessage", ftypes.STRING, nil, nil, nil, "An Order AIQ Canceled Message denotes that an order has been canceled by Japannext PTS to prevent a self-trade")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.order_canceled_message = ProtoField.new("Order Canceled Message", "jnx.jnxequities.pts.ouch.v2.01.ordercanceledmessage", ftypes.STRING, nil, nil, nil, "An Order Canceled Message denotes that an order has been canceled")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.order_executed_message = ProtoField.new("Order Executed Message", "jnx.jnxequities.pts.ouch.v2.01.orderexecutedmessage", ftypes.STRING, nil, nil, nil, "An Order Executed Message denotes that all or part of an order has been executed")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.order_rejected_message = ProtoField.new("Order Rejected Message", "jnx.jnxequities.pts.ouch.v2.01.orderrejectedmessage", ftypes.STRING, nil, nil, nil, "An Order Rejected Message may be sent in response to an Enter Order Message if the order cannot be accepted")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.order_replaced_message = ProtoField.new("Order Replaced Message", "jnx.jnxequities.pts.ouch.v2.01.orderreplacedmessage", ftypes.STRING, nil, nil, nil, "An Order Replaced Message acknowledges the receipt and acceptance of a valid Replace Order Message")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.replace_order_message = ProtoField.new("Replace Order Message", "jnx.jnxequities.pts.ouch.v2.01.replaceordermessage", ftypes.STRING, nil, nil, nil, "A Replace Order Message is used to modify an existing order")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.system_event_message = ProtoField.new("System Event Message", "jnx.jnxequities.pts.ouch.v2.01.systemeventmessage", ftypes.STRING, nil, nil, nil, "A System Event Message signals a Japannext PTS system-wide event")

-- Jnx JnxEquities Pts 2.01 Session Messages
omi_jnx_jnxequities_pts_ouch_v2_01.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "jnx.jnxequities.pts.ouch.v2.01.clientheartbeat", ftypes.BYTES, nil, nil, nil, "SoupBinTCP client sends a heartbeat to indicate the connection is alive; carries no payload")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.debug_packet = ProtoField.new("Debug Packet", "jnx.jnxequities.pts.ouch.v2.01.debugpacket", ftypes.STRING, nil, nil, nil, "Debug packets are intended to provide human readable text that may aid in debugging problems")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.end_of_session = ProtoField.new("End Of Session", "jnx.jnxequities.pts.ouch.v2.01.endofsession", ftypes.BYTES, nil, nil, nil, "SoupBinTCP server signals end of session; client may now disconnect. Carries no payload")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "jnx.jnxequities.pts.ouch.v2.01.loginacceptedpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP server sends a Login Accepted Packet in response to receiving a valid Login Request from the client")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "jnx.jnxequities.pts.ouch.v2.01.loginrejectedpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP server sends this packet in response to an invalid Login Request Packet from the client")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.login_request_packet = ProtoField.new("Login Request Packet", "jnx.jnxequities.pts.ouch.v2.01.loginrequestpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP client must send a Login Request Packet immediately upon establishing a new TCP/IP socket connection to the server")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.logout_request = ProtoField.new("Logout Request", "jnx.jnxequities.pts.ouch.v2.01.logoutrequest", ftypes.BYTES, nil, nil, nil, "SoupBinTCP client requests session logout; server completes any in-flight messages then closes. Carries no payload")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "jnx.jnxequities.pts.ouch.v2.01.sequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Sequenced Data Packets act as an envelope to carry the actual sequenced data messages that are transferred from the server to the client. Each Sequenced Data Packet carries one message from the higher-lever protocol")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "jnx.jnxequities.pts.ouch.v2.01.serverheartbeat", ftypes.BYTES, nil, nil, nil, "SoupBinTCP server sends a heartbeat to indicate the connection is alive; carries no payload")
omi_jnx_jnxequities_pts_ouch_v2_01.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "jnx.jnxequities.pts.ouch.v2.01.unsequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Unsequenced Data Packets act as an envelope to carry the actual data messages that are transferred from the client to the server")

-- Jnx JnxEquities Pts Ouch 2.01 Generated Fields
omi_jnx_jnxequities_pts_ouch_v2_01.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "jnx.jnxequities.pts.ouch.v2.01.sequenceddatapacketsequencenumber", ftypes.UINT64)

-- Jnx JnxEquities Pts Ouch 2.01 Expert Info
jnx_jnxequities_pts_ouch_v2_01.experts = {}
jnx_jnxequities_pts_ouch_v2_01.experts.not_a_number = ProtoExpert.new("jnx.jnxequities.pts.ouch.v2.01.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_jnx_jnxequities_pts_ouch_v2_01.experts = { jnx_jnxequities_pts_ouch_v2_01.experts.not_a_number }

-----------------------------------------------------------------------
-- Jnx JnxEquities Pts Ouch 2.01 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
jnx_jnxequities_pts_ouch_v2_01.timestamp_format = 2

-- Hours ahead of UTC (Asia/Tokyo) for midnight calculation
jnx_jnxequities_pts_ouch_v2_01.utc_offset_hours = 9

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

-- Jnx JnxEquities Pts Ouch 2.01 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.session_messages = true
show.sequences = true

-- Register Jnx JnxEquities Pts Ouch 2.01 Show Options
omi_jnx_jnxequities_pts_ouch_v2_01.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_jnx_jnxequities_pts_ouch_v2_01.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_jnx_jnxequities_pts_ouch_v2_01.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_jnx_jnxequities_pts_ouch_v2_01.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_jnx_jnxequities_pts_ouch_v2_01.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_jnx_jnxequities_pts_ouch_v2_01.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_jnx_jnxequities_pts_ouch_v2_01.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_jnx_jnxequities_pts_ouch_v2_01.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_jnx_jnxequities_pts_ouch_v2_01.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_jnx_jnxequities_pts_ouch_v2_01.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 9, "Hours ahead of UTC (Asia/Tokyo) for midnight calculation")

-- Handle changed preferences
function omi_jnx_jnxequities_pts_ouch_v2_01.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_jnx_jnxequities_pts_ouch_v2_01.prefs.show_application_messages then
    show.application_messages = omi_jnx_jnxequities_pts_ouch_v2_01.prefs.show_application_messages
  end
  if show.headers ~= omi_jnx_jnxequities_pts_ouch_v2_01.prefs.show_headers then
    show.headers = omi_jnx_jnxequities_pts_ouch_v2_01.prefs.show_headers
  end
  if show.session_messages ~= omi_jnx_jnxequities_pts_ouch_v2_01.prefs.show_session_messages then
    show.session_messages = omi_jnx_jnxequities_pts_ouch_v2_01.prefs.show_session_messages
  end
  if show.structs ~= omi_jnx_jnxequities_pts_ouch_v2_01.prefs.show_structs then
    show.structs = omi_jnx_jnxequities_pts_ouch_v2_01.prefs.show_structs
  end
  if show.sequences ~= omi_jnx_jnxequities_pts_ouch_v2_01.prefs.show_sequences then
    show.sequences = omi_jnx_jnxequities_pts_ouch_v2_01.prefs.show_sequences
  end
  if jnx_jnxequities_pts_ouch_v2_01.timestamp_format ~= omi_jnx_jnxequities_pts_ouch_v2_01.prefs.timestamp_format then
    jnx_jnxequities_pts_ouch_v2_01.timestamp_format = omi_jnx_jnxequities_pts_ouch_v2_01.prefs.timestamp_format
  end
  if jnx_jnxequities_pts_ouch_v2_01.utc_offset_hours ~= omi_jnx_jnxequities_pts_ouch_v2_01.prefs.utc_offset_hours then
    jnx_jnxequities_pts_ouch_v2_01.utc_offset_hours = omi_jnx_jnxequities_pts_ouch_v2_01.prefs.utc_offset_hours
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
jnx_jnxequities_pts_ouch_v2_01.conversation = {}
jnx_jnxequities_pts_ouch_v2_01.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
jnx_jnxequities_pts_ouch_v2_01.stream_frame = nil
jnx_jnxequities_pts_ouch_v2_01.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
jnx_jnxequities_pts_ouch_v2_01.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
jnx_jnxequities_pts_ouch_v2_01.conversation.data = function(packet)
  local key = jnx_jnxequities_pts_ouch_v2_01.conversation.key(packet)
  local data = jnx_jnxequities_pts_ouch_v2_01.conversation.flows[key]
  if data == nil then
    data = { accepted_sequence_number = { last = nil, frames = {} }, sequence = { next = nil, frames = {} } }
    jnx_jnxequities_pts_ouch_v2_01.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
jnx_jnxequities_pts_ouch_v2_01.conversation.current = nil


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
-- Jnx JnxEquities Pts Ouch 2.01 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
jnx_jnxequities_pts_ouch_v2_01.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
jnx_jnxequities_pts_ouch_v2_01.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
jnx_jnxequities_pts_ouch_v2_01.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
jnx_jnxequities_pts_ouch_v2_01.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.accepted_sequence_number, range, value, "Accepted Sequence Number: Not Applicable")
    item:add_proto_expert_info(jnx_jnxequities_pts_ouch_v2_01.experts.not_a_number, "Accepted Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = jnx_jnxequities_pts_ouch_v2_01.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
jnx_jnxequities_pts_ouch_v2_01.accepted_session = {}

-- Size: Accepted Session
jnx_jnxequities_pts_ouch_v2_01.accepted_session.size = 10

-- Display: Accepted Session
jnx_jnxequities_pts_ouch_v2_01.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
jnx_jnxequities_pts_ouch_v2_01.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.accepted_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jnx_jnxequities_pts_ouch_v2_01.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
jnx_jnxequities_pts_ouch_v2_01.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
jnx_jnxequities_pts_ouch_v2_01.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
jnx_jnxequities_pts_ouch_v2_01.buy_sell_indicator.labels = {
  ["B"] = "Buy Sell Indicator: Buy (B)",
  ["S"] = "Buy Sell Indicator: Sell (S)",
  ["T"] = "Buy Sell Indicator: Short Sell (T)",
  ["E"] = "Buy Sell Indicator: Short Sell Exempt (E)",
}

jnx_jnxequities_pts_ouch_v2_01.buy_sell_indicator.display = function(value)
  return jnx_jnxequities_pts_ouch_v2_01.buy_sell_indicator.labels[value] or "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
jnx_jnxequities_pts_ouch_v2_01.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_ouch_v2_01.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Capacity
jnx_jnxequities_pts_ouch_v2_01.capacity = {}

-- Size: Capacity
jnx_jnxequities_pts_ouch_v2_01.capacity.size = 1

-- Display: Capacity
jnx_jnxequities_pts_ouch_v2_01.capacity.labels = {
  ["A"] = "Capacity: Agency (A)",
  ["P"] = "Capacity: Principal (P)",
}

jnx_jnxequities_pts_ouch_v2_01.capacity.display = function(value)
  return jnx_jnxequities_pts_ouch_v2_01.capacity.labels[value] or "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
jnx_jnxequities_pts_ouch_v2_01.capacity.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_ouch_v2_01.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.capacity, range, value, display)

  return offset + length, value
end

-- Cash Margin Type
jnx_jnxequities_pts_ouch_v2_01.cash_margin_type = {}

-- Size: Cash Margin Type
jnx_jnxequities_pts_ouch_v2_01.cash_margin_type.size = 1

-- Display: Cash Margin Type
jnx_jnxequities_pts_ouch_v2_01.cash_margin_type.labels = {
  ["1"] = "Cash Margin Type: Cash (1)",
  ["2"] = "Cash Margin Type: Margin Open Negotiable (2)",
  ["3"] = "Cash Margin Type: Margin Close Negotiable (3)",
  ["4"] = "Cash Margin Type: Margin Open Standardized (4)",
  ["5"] = "Cash Margin Type: Margin Close Standardized (5)",
}

jnx_jnxequities_pts_ouch_v2_01.cash_margin_type.display = function(value)
  return jnx_jnxequities_pts_ouch_v2_01.cash_margin_type.labels[value] or "Cash Margin Type: Unknown("..value..")"
end

-- Dissect: Cash Margin Type
jnx_jnxequities_pts_ouch_v2_01.cash_margin_type.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.cash_margin_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_ouch_v2_01.cash_margin_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.cash_margin_type, range, value, display)

  return offset + length, value
end

-- Client Packet Type
jnx_jnxequities_pts_ouch_v2_01.client_packet_type = {}

-- Size: Client Packet Type
jnx_jnxequities_pts_ouch_v2_01.client_packet_type.size = 1

-- Display: Client Packet Type
jnx_jnxequities_pts_ouch_v2_01.client_packet_type.labels = {
  ["+"] = "Packet Type: Debug Packet (+)",
  ["L"] = "Packet Type: Login Request Packet (L)",
  ["U"] = "Packet Type: Unsequenced Data Packet (U)",
  ["R"] = "Packet Type: Client Heartbeat Packet (R)",
  ["O"] = "Packet Type: Logout Request Packet (O)",
}

jnx_jnxequities_pts_ouch_v2_01.client_packet_type.display = function(value)
  return jnx_jnxequities_pts_ouch_v2_01.client_packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Client Packet Type
jnx_jnxequities_pts_ouch_v2_01.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_ouch_v2_01.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Client Reference
jnx_jnxequities_pts_ouch_v2_01.client_reference = {}

-- Size: Client Reference
jnx_jnxequities_pts_ouch_v2_01.client_reference.size = 10

-- Display: Client Reference
jnx_jnxequities_pts_ouch_v2_01.client_reference.display = function(value)
  return "Client Reference: "..value
end

-- Dissect: Client Reference
jnx_jnxequities_pts_ouch_v2_01.client_reference.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.client_reference.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jnx_jnxequities_pts_ouch_v2_01.client_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.client_reference, range, value, display)

  return offset + length, value
end

-- Debug Text
jnx_jnxequities_pts_ouch_v2_01.debug_text = {}

-- Display: Debug Text
jnx_jnxequities_pts_ouch_v2_01.debug_text.display = function(value)
  return "Debug Text: "..value
end

-- Dissect runtime sized field: Debug Text
jnx_jnxequities_pts_ouch_v2_01.debug_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = jnx_jnxequities_pts_ouch_v2_01.debug_text.display(value, packet, parent, size)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.debug_text, range, value, display)

  return offset + size, value
end

-- Decrement Quantity
jnx_jnxequities_pts_ouch_v2_01.decrement_quantity = {}

-- Size: Decrement Quantity
jnx_jnxequities_pts_ouch_v2_01.decrement_quantity.size = 4

-- Display: Decrement Quantity
jnx_jnxequities_pts_ouch_v2_01.decrement_quantity.display = function(value)
  return "Decrement Quantity: "..value
end

-- Dissect: Decrement Quantity
jnx_jnxequities_pts_ouch_v2_01.decrement_quantity.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.decrement_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_jnxequities_pts_ouch_v2_01.decrement_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.decrement_quantity, range, value, display)

  return offset + length, value
end

-- Display
jnx_jnxequities_pts_ouch_v2_01.display = {}

-- Size: Display
jnx_jnxequities_pts_ouch_v2_01.display.size = 1

-- Display: Display
jnx_jnxequities_pts_ouch_v2_01.display.display = function(value)
  if value == " " then
    return "Display: Unused (<whitespace>)"
  end
  if value == "P" then
    return "Display: Post Only (P)"
  end

  return "Display: Unknown("..value..")"
end

-- Dissect: Display
jnx_jnxequities_pts_ouch_v2_01.display.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.display.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_ouch_v2_01.display.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.display, range, value, display)

  return offset + length, value
end

-- Executed Quantity
jnx_jnxequities_pts_ouch_v2_01.executed_quantity = {}

-- Size: Executed Quantity
jnx_jnxequities_pts_ouch_v2_01.executed_quantity.size = 4

-- Display: Executed Quantity
jnx_jnxequities_pts_ouch_v2_01.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
jnx_jnxequities_pts_ouch_v2_01.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_jnxequities_pts_ouch_v2_01.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Price
jnx_jnxequities_pts_ouch_v2_01.execution_price = {}

-- Size: Execution Price
jnx_jnxequities_pts_ouch_v2_01.execution_price.size = 4

-- Display: Execution Price
jnx_jnxequities_pts_ouch_v2_01.execution_price.display = function(value)
  return "Execution Price: "..value
end

-- Translate: Execution Price
jnx_jnxequities_pts_ouch_v2_01.execution_price.translate = function(raw)
  return raw/10
end

-- Dissect: Execution Price
jnx_jnxequities_pts_ouch_v2_01.execution_price.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.execution_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = jnx_jnxequities_pts_ouch_v2_01.execution_price.translate(raw)
  local display = jnx_jnxequities_pts_ouch_v2_01.execution_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Existing Order Token
jnx_jnxequities_pts_ouch_v2_01.existing_order_token = {}

-- Size: Existing Order Token
jnx_jnxequities_pts_ouch_v2_01.existing_order_token.size = 4

-- Display: Existing Order Token
jnx_jnxequities_pts_ouch_v2_01.existing_order_token.display = function(value)
  return "Existing Order Token: "..value
end

-- Dissect: Existing Order Token
jnx_jnxequities_pts_ouch_v2_01.existing_order_token.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.existing_order_token.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_jnxequities_pts_ouch_v2_01.existing_order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.existing_order_token, range, value, display)

  return offset + length, value
end

-- Firm Id
jnx_jnxequities_pts_ouch_v2_01.firm_id = {}

-- Size: Firm Id
jnx_jnxequities_pts_ouch_v2_01.firm_id.size = 4

-- Display: Firm Id
jnx_jnxequities_pts_ouch_v2_01.firm_id.display = function(value)
  return "Firm Id: "..value
end

-- Dissect: Firm Id
jnx_jnxequities_pts_ouch_v2_01.firm_id.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.firm_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_jnxequities_pts_ouch_v2_01.firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Group
jnx_jnxequities_pts_ouch_v2_01.group = {}

-- Size: Group
jnx_jnxequities_pts_ouch_v2_01.group.size = 4

-- Display: Group
jnx_jnxequities_pts_ouch_v2_01.group.labels = {
  ["DAY"] = "Group: J Market Daytime Session (DAY)",
  ["NGHT"] = "Group: J Market Nighttime Session (NGHT)",
  ["DAYX"] = "Group: X Market (DAYX)",
  ["DAYU"] = "Group: U Market (DAYU)",
}

jnx_jnxequities_pts_ouch_v2_01.group.display = function(value)
  return jnx_jnxequities_pts_ouch_v2_01.group.labels[value] or "Group: Unknown("..value..")"
end

-- Dissect: Group
jnx_jnxequities_pts_ouch_v2_01.group.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.group.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jnx_jnxequities_pts_ouch_v2_01.group.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.group, range, value, display)

  return offset + length, value
end

-- Liquidity Indicator
jnx_jnxequities_pts_ouch_v2_01.liquidity_indicator = {}

-- Size: Liquidity Indicator
jnx_jnxequities_pts_ouch_v2_01.liquidity_indicator.size = 1

-- Display: Liquidity Indicator
jnx_jnxequities_pts_ouch_v2_01.liquidity_indicator.labels = {
  ["A"] = "Liquidity Indicator: Added (A)",
  ["R"] = "Liquidity Indicator: Removed (R)",
}

jnx_jnxequities_pts_ouch_v2_01.liquidity_indicator.display = function(value)
  return jnx_jnxequities_pts_ouch_v2_01.liquidity_indicator.labels[value] or "Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Liquidity Indicator
jnx_jnxequities_pts_ouch_v2_01.liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_ouch_v2_01.liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Match Number
jnx_jnxequities_pts_ouch_v2_01.match_number = {}

-- Size: Match Number
jnx_jnxequities_pts_ouch_v2_01.match_number.size = 8

-- Display: Match Number
jnx_jnxequities_pts_ouch_v2_01.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
jnx_jnxequities_pts_ouch_v2_01.match_number.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.match_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jnx_jnxequities_pts_ouch_v2_01.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.match_number, range, value, display)

  return offset + length, value
end

-- Minimum Quantity
jnx_jnxequities_pts_ouch_v2_01.minimum_quantity = {}

-- Size: Minimum Quantity
jnx_jnxequities_pts_ouch_v2_01.minimum_quantity.size = 4

-- Display: Minimum Quantity
jnx_jnxequities_pts_ouch_v2_01.minimum_quantity.display = function(value)
  return "Minimum Quantity: "..value
end

-- Dissect: Minimum Quantity
jnx_jnxequities_pts_ouch_v2_01.minimum_quantity.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.minimum_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_jnxequities_pts_ouch_v2_01.minimum_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.minimum_quantity, range, value, display)

  return offset + length, value
end

-- Order Canceled Reason
jnx_jnxequities_pts_ouch_v2_01.order_canceled_reason = {}

-- Size: Order Canceled Reason
jnx_jnxequities_pts_ouch_v2_01.order_canceled_reason.size = 1

-- Display: Order Canceled Reason
jnx_jnxequities_pts_ouch_v2_01.order_canceled_reason.labels = {
  ["U"] = "Order Canceled Reason: User Requested Cancel (U)",
  ["L"] = "Order Canceled Reason: User Logged Off (L)",
  ["S"] = "Order Canceled Reason: Canceled By Supervisory Terminal (S)",
  ["I"] = "Order Canceled Reason: Immediate Order Remaining Quantity Canceled (I)",
  ["M"] = "Order Canceled Reason: Order Expired During Matching (M)",
  ["X"] = "Order Canceled Reason: Invalid Price (X)",
  ["Z"] = "Order Canceled Reason: Invalid Quantity (Z)",
  ["N"] = "Order Canceled Reason: Invalid Minimum Quantity (N)",
  ["Y"] = "Order Canceled Reason: Invalid Order Type (Y)",
  ["D"] = "Order Canceled Reason: Invalid Display Type (D)",
  ["V"] = "Order Canceled Reason: Exceeded Order Value Limit (V)",
  ["i"] = "Order Canceled Reason: Short Sell Order Restriction (i)",
  ["R"] = "Order Canceled Reason: Order Not Allowed At This Time (R)",
  ["F"] = "Order Canceled Reason: Flow Control Throttled (F)",
  ["G"] = "Order Canceled Reason: Margin Order Canceled Due To Margin Restriction (G)",
  ["O"] = "Order Canceled Reason: Other (O)",
}

jnx_jnxequities_pts_ouch_v2_01.order_canceled_reason.display = function(value)
  return jnx_jnxequities_pts_ouch_v2_01.order_canceled_reason.labels[value] or "Order Canceled Reason: Unknown("..value..")"
end

-- Dissect: Order Canceled Reason
jnx_jnxequities_pts_ouch_v2_01.order_canceled_reason.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.order_canceled_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_ouch_v2_01.order_canceled_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.order_canceled_reason, range, value, display)

  return offset + length, value
end

-- Order Classification
jnx_jnxequities_pts_ouch_v2_01.order_classification = {}

-- Size: Order Classification
jnx_jnxequities_pts_ouch_v2_01.order_classification.size = 1

-- Display: Order Classification
jnx_jnxequities_pts_ouch_v2_01.order_classification.labels = {
  ["1"] = "Order Classification: Non Hft (1)",
  ["3"] = "Order Classification: Hft Market Making Strategy (3)",
  ["4"] = "Order Classification: Hft Arbitrage Strategy (4)",
  ["5"] = "Order Classification: Hft Directional Strategy (5)",
  ["6"] = "Order Classification: Hft Other Strategy (6)",
}

jnx_jnxequities_pts_ouch_v2_01.order_classification.display = function(value)
  return jnx_jnxequities_pts_ouch_v2_01.order_classification.labels[value] or "Order Classification: Unknown("..value..")"
end

-- Dissect: Order Classification
jnx_jnxequities_pts_ouch_v2_01.order_classification.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.order_classification.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_ouch_v2_01.order_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.order_classification, range, value, display)

  return offset + length, value
end

-- Order Number
jnx_jnxequities_pts_ouch_v2_01.order_number = {}

-- Size: Order Number
jnx_jnxequities_pts_ouch_v2_01.order_number.size = 8

-- Display: Order Number
jnx_jnxequities_pts_ouch_v2_01.order_number.display = function(value)
  return "Order Number: "..value
end

-- Dissect: Order Number
jnx_jnxequities_pts_ouch_v2_01.order_number.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jnx_jnxequities_pts_ouch_v2_01.order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.order_number, range, value, display)

  return offset + length, value
end

-- Order Rejected Reason
jnx_jnxequities_pts_ouch_v2_01.order_rejected_reason = {}

-- Size: Order Rejected Reason
jnx_jnxequities_pts_ouch_v2_01.order_rejected_reason.size = 1

-- Display: Order Rejected Reason
jnx_jnxequities_pts_ouch_v2_01.order_rejected_reason.labels = {
  ["H"] = "Order Rejected Reason: Trading Halt (H)",
  ["S"] = "Order Rejected Reason: Invalid Order Book Identifier (S)",
  ["X"] = "Order Rejected Reason: Invalid Price (X)",
  ["Z"] = "Order Rejected Reason: Invalid Quantity (Z)",
  ["N"] = "Order Rejected Reason: Invalid Minimum Quantity (N)",
  ["Y"] = "Order Rejected Reason: Invalid Order Type (Y)",
  ["D"] = "Order Rejected Reason: Invalid Display Type (D)",
  ["V"] = "Order Rejected Reason: Exceeded Order Value Limit (V)",
  ["i"] = "Order Rejected Reason: Short Sell Order Restriction (i)",
  ["R"] = "Order Rejected Reason: Order Not Allowed At This Time (R)",
  ["F"] = "Order Rejected Reason: Flow Control Throttled (F)",
  ["G"] = "Order Rejected Reason: Invalid Margin Specification (G)",
  ["L"] = "Order Rejected Reason: Mpid Not Allowed For This Port (L)",
  ["c"] = "Order Rejected Reason: No Permission To Enter Order On Given Board (c)",
  ["O"] = "Order Rejected Reason: Other (O)",
}

jnx_jnxequities_pts_ouch_v2_01.order_rejected_reason.display = function(value)
  return jnx_jnxequities_pts_ouch_v2_01.order_rejected_reason.labels[value] or "Order Rejected Reason: Unknown("..value..")"
end

-- Dissect: Order Rejected Reason
jnx_jnxequities_pts_ouch_v2_01.order_rejected_reason.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.order_rejected_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_ouch_v2_01.order_rejected_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.order_rejected_reason, range, value, display)

  return offset + length, value
end

-- Order State
jnx_jnxequities_pts_ouch_v2_01.order_state = {}

-- Size: Order State
jnx_jnxequities_pts_ouch_v2_01.order_state.size = 1

-- Display: Order State
jnx_jnxequities_pts_ouch_v2_01.order_state.labels = {
  ["L"] = "Order State: Live (L)",
  ["D"] = "Order State: Dead (D)",
}

jnx_jnxequities_pts_ouch_v2_01.order_state.display = function(value)
  return jnx_jnxequities_pts_ouch_v2_01.order_state.labels[value] or "Order State: Unknown("..value..")"
end

-- Dissect: Order State
jnx_jnxequities_pts_ouch_v2_01.order_state.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.order_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_ouch_v2_01.order_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.order_state, range, value, display)

  return offset + length, value
end

-- Order Token
jnx_jnxequities_pts_ouch_v2_01.order_token = {}

-- Size: Order Token
jnx_jnxequities_pts_ouch_v2_01.order_token.size = 4

-- Display: Order Token
jnx_jnxequities_pts_ouch_v2_01.order_token.display = function(value)
  return "Order Token: "..value
end

-- Dissect: Order Token
jnx_jnxequities_pts_ouch_v2_01.order_token.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.order_token.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_jnxequities_pts_ouch_v2_01.order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.order_token, range, value, display)

  return offset + length, value
end

-- Orderbook Id
jnx_jnxequities_pts_ouch_v2_01.orderbook_id = {}

-- Size: Orderbook Id
jnx_jnxequities_pts_ouch_v2_01.orderbook_id.size = 4

-- Display: Orderbook Id
jnx_jnxequities_pts_ouch_v2_01.orderbook_id.display = function(value)
  return "Orderbook Id: "..value
end

-- Dissect: Orderbook Id
jnx_jnxequities_pts_ouch_v2_01.orderbook_id.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.orderbook_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jnx_jnxequities_pts_ouch_v2_01.orderbook_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.orderbook_id, range, value, display)

  return offset + length, value
end

-- Packet Length
jnx_jnxequities_pts_ouch_v2_01.packet_length = {}

-- Size: Packet Length
jnx_jnxequities_pts_ouch_v2_01.packet_length.size = 2

-- Display: Packet Length
jnx_jnxequities_pts_ouch_v2_01.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
jnx_jnxequities_pts_ouch_v2_01.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_jnxequities_pts_ouch_v2_01.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Password
jnx_jnxequities_pts_ouch_v2_01.password = {}

-- Size: Password
jnx_jnxequities_pts_ouch_v2_01.password.size = 10

-- Display: Password
jnx_jnxequities_pts_ouch_v2_01.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
jnx_jnxequities_pts_ouch_v2_01.password.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jnx_jnxequities_pts_ouch_v2_01.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.password, range, value, display)

  return offset + length, value
end

-- Previous Order Token
jnx_jnxequities_pts_ouch_v2_01.previous_order_token = {}

-- Size: Previous Order Token
jnx_jnxequities_pts_ouch_v2_01.previous_order_token.size = 4

-- Display: Previous Order Token
jnx_jnxequities_pts_ouch_v2_01.previous_order_token.display = function(value)
  return "Previous Order Token: "..value
end

-- Dissect: Previous Order Token
jnx_jnxequities_pts_ouch_v2_01.previous_order_token.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.previous_order_token.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_jnxequities_pts_ouch_v2_01.previous_order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.previous_order_token, range, value, display)

  return offset + length, value
end

-- Price
jnx_jnxequities_pts_ouch_v2_01.price = {}

-- Size: Price
jnx_jnxequities_pts_ouch_v2_01.price.size = 4

-- Display: Price
jnx_jnxequities_pts_ouch_v2_01.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
jnx_jnxequities_pts_ouch_v2_01.price.translate = function(raw)
  return raw/10
end

-- Dissect: Price
jnx_jnxequities_pts_ouch_v2_01.price.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = jnx_jnxequities_pts_ouch_v2_01.price.translate(raw)
  local display = jnx_jnxequities_pts_ouch_v2_01.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
jnx_jnxequities_pts_ouch_v2_01.quantity = {}

-- Size: Quantity
jnx_jnxequities_pts_ouch_v2_01.quantity.size = 4

-- Display: Quantity
jnx_jnxequities_pts_ouch_v2_01.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
jnx_jnxequities_pts_ouch_v2_01.quantity.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_jnxequities_pts_ouch_v2_01.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.quantity, range, value, display)

  return offset + length, value
end

-- Quantity Prevented From Trading
jnx_jnxequities_pts_ouch_v2_01.quantity_prevented_from_trading = {}

-- Size: Quantity Prevented From Trading
jnx_jnxequities_pts_ouch_v2_01.quantity_prevented_from_trading.size = 4

-- Display: Quantity Prevented From Trading
jnx_jnxequities_pts_ouch_v2_01.quantity_prevented_from_trading.display = function(value)
  return "Quantity Prevented From Trading: "..value
end

-- Dissect: Quantity Prevented From Trading
jnx_jnxequities_pts_ouch_v2_01.quantity_prevented_from_trading.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.quantity_prevented_from_trading.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_jnxequities_pts_ouch_v2_01.quantity_prevented_from_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.quantity_prevented_from_trading, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
jnx_jnxequities_pts_ouch_v2_01.reject_reason_code = {}

-- Size: Reject Reason Code
jnx_jnxequities_pts_ouch_v2_01.reject_reason_code.size = 1

-- Display: Reject Reason Code
jnx_jnxequities_pts_ouch_v2_01.reject_reason_code.labels = {
  ["A"] = "Reject Reason Code: Not Authorized (A)",
  ["S"] = "Reject Reason Code: Session Not Available (S)",
}

jnx_jnxequities_pts_ouch_v2_01.reject_reason_code.display = function(value)
  return jnx_jnxequities_pts_ouch_v2_01.reject_reason_code.labels[value] or "Reject Reason Code: Unknown("..value..")"
end

-- Dissect: Reject Reason Code
jnx_jnxequities_pts_ouch_v2_01.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_ouch_v2_01.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Replacement Order Token
jnx_jnxequities_pts_ouch_v2_01.replacement_order_token = {}

-- Size: Replacement Order Token
jnx_jnxequities_pts_ouch_v2_01.replacement_order_token.size = 4

-- Display: Replacement Order Token
jnx_jnxequities_pts_ouch_v2_01.replacement_order_token.display = function(value)
  return "Replacement Order Token: "..value
end

-- Dissect: Replacement Order Token
jnx_jnxequities_pts_ouch_v2_01.replacement_order_token.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.replacement_order_token.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_jnxequities_pts_ouch_v2_01.replacement_order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.replacement_order_token, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
jnx_jnxequities_pts_ouch_v2_01.requested_sequence_number = {}

-- Size: Requested Sequence Number
jnx_jnxequities_pts_ouch_v2_01.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
jnx_jnxequities_pts_ouch_v2_01.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
jnx_jnxequities_pts_ouch_v2_01.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.requested_sequence_number, range, value, "Requested Sequence Number: Not Applicable")
    item:add_proto_expert_info(jnx_jnxequities_pts_ouch_v2_01.experts.not_a_number, "Requested Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = jnx_jnxequities_pts_ouch_v2_01.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
jnx_jnxequities_pts_ouch_v2_01.requested_session = {}

-- Size: Requested Session
jnx_jnxequities_pts_ouch_v2_01.requested_session.size = 10

-- Display: Requested Session
jnx_jnxequities_pts_ouch_v2_01.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
jnx_jnxequities_pts_ouch_v2_01.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.requested_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jnx_jnxequities_pts_ouch_v2_01.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
jnx_jnxequities_pts_ouch_v2_01.sequenced_message_type = {}

-- Size: Sequenced Message Type
jnx_jnxequities_pts_ouch_v2_01.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
jnx_jnxequities_pts_ouch_v2_01.sequenced_message_type.labels = {
  ["S"] = "Sequenced Message Type: System Event Message (S)",
  ["A"] = "Sequenced Message Type: Order Accepted Message (A)",
  ["U"] = "Sequenced Message Type: Order Replaced Message (U)",
  ["C"] = "Sequenced Message Type: Order Canceled Message (C)",
  ["D"] = "Sequenced Message Type: Order Aiq Canceled Message (D)",
  ["E"] = "Sequenced Message Type: Order Executed Message (E)",
  ["J"] = "Sequenced Message Type: Order Rejected Message (J)",
}

jnx_jnxequities_pts_ouch_v2_01.sequenced_message_type.display = function(value)
  return jnx_jnxequities_pts_ouch_v2_01.sequenced_message_type.labels[value] or "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
jnx_jnxequities_pts_ouch_v2_01.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_ouch_v2_01.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
jnx_jnxequities_pts_ouch_v2_01.server_packet_type = {}

-- Size: Server Packet Type
jnx_jnxequities_pts_ouch_v2_01.server_packet_type.size = 1

-- Display: Server Packet Type
jnx_jnxequities_pts_ouch_v2_01.server_packet_type.labels = {
  ["+"] = "Packet Type: Debug Packet (+)",
  ["A"] = "Packet Type: Login Accepted Packet (A)",
  ["J"] = "Packet Type: Login Rejected Packet (J)",
  ["S"] = "Packet Type: Sequenced Data Packet (S)",
  ["H"] = "Packet Type: Server Heartbeat Packet (H)",
  ["Z"] = "Packet Type: End Of Session Packet (Z)",
}

jnx_jnxequities_pts_ouch_v2_01.server_packet_type.display = function(value)
  return jnx_jnxequities_pts_ouch_v2_01.server_packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Server Packet Type
jnx_jnxequities_pts_ouch_v2_01.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_ouch_v2_01.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- System Event
jnx_jnxequities_pts_ouch_v2_01.system_event = {}

-- Size: System Event
jnx_jnxequities_pts_ouch_v2_01.system_event.size = 1

-- Display: System Event
jnx_jnxequities_pts_ouch_v2_01.system_event.labels = {
  ["S"] = "System Event: Start Of Day (S)",
  ["E"] = "System Event: End Of Day (E)",
}

jnx_jnxequities_pts_ouch_v2_01.system_event.display = function(value)
  return jnx_jnxequities_pts_ouch_v2_01.system_event.labels[value] or "System Event: Unknown("..value..")"
end

-- Dissect: System Event
jnx_jnxequities_pts_ouch_v2_01.system_event.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.system_event.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_ouch_v2_01.system_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.system_event, range, value, display)

  return offset + length, value
end

-- Time In Force
jnx_jnxequities_pts_ouch_v2_01.time_in_force = {}

-- Size: Time In Force
jnx_jnxequities_pts_ouch_v2_01.time_in_force.size = 4

-- Display: Time In Force
jnx_jnxequities_pts_ouch_v2_01.time_in_force.labels = {
  [0] = "Time In Force: Immediate (0)",
  [99999] = "Time In Force: Day (99999)",
}

jnx_jnxequities_pts_ouch_v2_01.time_in_force.display = function(value)
  return jnx_jnxequities_pts_ouch_v2_01.time_in_force.labels[value] or "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
jnx_jnxequities_pts_ouch_v2_01.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.time_in_force.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_jnxequities_pts_ouch_v2_01.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Timestamp
jnx_jnxequities_pts_ouch_v2_01.timestamp = {}

-- Size: Timestamp
jnx_jnxequities_pts_ouch_v2_01.timestamp.size = 8

-- Display: Timestamp
jnx_jnxequities_pts_ouch_v2_01.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if jnx_jnxequities_pts_ouch_v2_01.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if jnx_jnxequities_pts_ouch_v2_01.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = jnx_jnxequities_pts_ouch_v2_01.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
jnx_jnxequities_pts_ouch_v2_01.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jnx_jnxequities_pts_ouch_v2_01.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
jnx_jnxequities_pts_ouch_v2_01.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
jnx_jnxequities_pts_ouch_v2_01.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
jnx_jnxequities_pts_ouch_v2_01.unsequenced_message_type.labels = {
  ["O"] = "Unsequenced Message Type: Enter Order Message (O)",
  ["U"] = "Unsequenced Message Type: Replace Order Message (U)",
  ["X"] = "Unsequenced Message Type: Cancel Order Message (X)",
}

jnx_jnxequities_pts_ouch_v2_01.unsequenced_message_type.display = function(value)
  return jnx_jnxequities_pts_ouch_v2_01.unsequenced_message_type.labels[value] or "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
jnx_jnxequities_pts_ouch_v2_01.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_ouch_v2_01.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
jnx_jnxequities_pts_ouch_v2_01.username = {}

-- Size: Username
jnx_jnxequities_pts_ouch_v2_01.username.size = 6

-- Display: Username
jnx_jnxequities_pts_ouch_v2_01.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
jnx_jnxequities_pts_ouch_v2_01.username.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_ouch_v2_01.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jnx_jnxequities_pts_ouch_v2_01.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Jnx JnxEquities Pts Ouch 2.01
-----------------------------------------------------------------------

-- End Of Session
jnx_jnxequities_pts_ouch_v2_01.end_of_session = {}

-- Display: End Of Session
jnx_jnxequities_pts_ouch_v2_01.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
jnx_jnxequities_pts_ouch_v2_01.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = jnx_jnxequities_pts_ouch_v2_01.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
jnx_jnxequities_pts_ouch_v2_01.server_heartbeat = {}

-- Display: Server Heartbeat
jnx_jnxequities_pts_ouch_v2_01.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
jnx_jnxequities_pts_ouch_v2_01.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = jnx_jnxequities_pts_ouch_v2_01.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Order Rejected Message
jnx_jnxequities_pts_ouch_v2_01.order_rejected_message = {}

-- Size: Order Rejected Message
jnx_jnxequities_pts_ouch_v2_01.order_rejected_message.size =
  jnx_jnxequities_pts_ouch_v2_01.timestamp.size + 
  jnx_jnxequities_pts_ouch_v2_01.order_token.size + 
  jnx_jnxequities_pts_ouch_v2_01.order_rejected_reason.size

-- Display: Order Rejected Message
jnx_jnxequities_pts_ouch_v2_01.order_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Rejected Message
jnx_jnxequities_pts_ouch_v2_01.order_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = jnx_jnxequities_pts_ouch_v2_01.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: Token
  index, order_token = jnx_jnxequities_pts_ouch_v2_01.order_token.dissect(buffer, index, packet, parent)

  -- Order Rejected Reason: Alpha
  index, order_rejected_reason = jnx_jnxequities_pts_ouch_v2_01.order_rejected_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Rejected Message
jnx_jnxequities_pts_ouch_v2_01.order_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.order_rejected_message, buffer(offset, 0))
    local index = jnx_jnxequities_pts_ouch_v2_01.order_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_ouch_v2_01.order_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_ouch_v2_01.order_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
jnx_jnxequities_pts_ouch_v2_01.order_executed_message = {}

-- Size: Order Executed Message
jnx_jnxequities_pts_ouch_v2_01.order_executed_message.size =
  jnx_jnxequities_pts_ouch_v2_01.timestamp.size + 
  jnx_jnxequities_pts_ouch_v2_01.order_token.size + 
  jnx_jnxequities_pts_ouch_v2_01.executed_quantity.size + 
  jnx_jnxequities_pts_ouch_v2_01.execution_price.size + 
  jnx_jnxequities_pts_ouch_v2_01.liquidity_indicator.size + 
  jnx_jnxequities_pts_ouch_v2_01.match_number.size

-- Display: Order Executed Message
jnx_jnxequities_pts_ouch_v2_01.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
jnx_jnxequities_pts_ouch_v2_01.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = jnx_jnxequities_pts_ouch_v2_01.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: Token
  index, order_token = jnx_jnxequities_pts_ouch_v2_01.order_token.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Integer
  index, executed_quantity = jnx_jnxequities_pts_ouch_v2_01.executed_quantity.dissect(buffer, index, packet, parent)

  -- Execution Price: Integer
  index, execution_price = jnx_jnxequities_pts_ouch_v2_01.execution_price.dissect(buffer, index, packet, parent)

  -- Liquidity Indicator: Alpha
  index, liquidity_indicator = jnx_jnxequities_pts_ouch_v2_01.liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = jnx_jnxequities_pts_ouch_v2_01.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
jnx_jnxequities_pts_ouch_v2_01.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.order_executed_message, buffer(offset, 0))
    local index = jnx_jnxequities_pts_ouch_v2_01.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_ouch_v2_01.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_ouch_v2_01.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Aiq Canceled Message
jnx_jnxequities_pts_ouch_v2_01.order_aiq_canceled_message = {}

-- Size: Order Aiq Canceled Message
jnx_jnxequities_pts_ouch_v2_01.order_aiq_canceled_message.size =
  jnx_jnxequities_pts_ouch_v2_01.timestamp.size + 
  jnx_jnxequities_pts_ouch_v2_01.order_token.size + 
  jnx_jnxequities_pts_ouch_v2_01.decrement_quantity.size + 
  jnx_jnxequities_pts_ouch_v2_01.order_canceled_reason.size + 
  jnx_jnxequities_pts_ouch_v2_01.quantity_prevented_from_trading.size + 
  jnx_jnxequities_pts_ouch_v2_01.execution_price.size + 
  jnx_jnxequities_pts_ouch_v2_01.liquidity_indicator.size

-- Display: Order Aiq Canceled Message
jnx_jnxequities_pts_ouch_v2_01.order_aiq_canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Aiq Canceled Message
jnx_jnxequities_pts_ouch_v2_01.order_aiq_canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = jnx_jnxequities_pts_ouch_v2_01.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: Token
  index, order_token = jnx_jnxequities_pts_ouch_v2_01.order_token.dissect(buffer, index, packet, parent)

  -- Decrement Quantity: Integer
  index, decrement_quantity = jnx_jnxequities_pts_ouch_v2_01.decrement_quantity.dissect(buffer, index, packet, parent)

  -- Order Canceled Reason: Alpha
  index, order_canceled_reason = jnx_jnxequities_pts_ouch_v2_01.order_canceled_reason.dissect(buffer, index, packet, parent)

  -- Quantity Prevented From Trading: Integer
  index, quantity_prevented_from_trading = jnx_jnxequities_pts_ouch_v2_01.quantity_prevented_from_trading.dissect(buffer, index, packet, parent)

  -- Execution Price: Integer
  index, execution_price = jnx_jnxequities_pts_ouch_v2_01.execution_price.dissect(buffer, index, packet, parent)

  -- Liquidity Indicator: Alpha
  index, liquidity_indicator = jnx_jnxequities_pts_ouch_v2_01.liquidity_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Aiq Canceled Message
jnx_jnxequities_pts_ouch_v2_01.order_aiq_canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.order_aiq_canceled_message, buffer(offset, 0))
    local index = jnx_jnxequities_pts_ouch_v2_01.order_aiq_canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_ouch_v2_01.order_aiq_canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_ouch_v2_01.order_aiq_canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Canceled Message
jnx_jnxequities_pts_ouch_v2_01.order_canceled_message = {}

-- Size: Order Canceled Message
jnx_jnxequities_pts_ouch_v2_01.order_canceled_message.size =
  jnx_jnxequities_pts_ouch_v2_01.timestamp.size + 
  jnx_jnxequities_pts_ouch_v2_01.order_token.size + 
  jnx_jnxequities_pts_ouch_v2_01.decrement_quantity.size + 
  jnx_jnxequities_pts_ouch_v2_01.order_canceled_reason.size

-- Display: Order Canceled Message
jnx_jnxequities_pts_ouch_v2_01.order_canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Canceled Message
jnx_jnxequities_pts_ouch_v2_01.order_canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = jnx_jnxequities_pts_ouch_v2_01.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: Token
  index, order_token = jnx_jnxequities_pts_ouch_v2_01.order_token.dissect(buffer, index, packet, parent)

  -- Decrement Quantity: Integer
  index, decrement_quantity = jnx_jnxequities_pts_ouch_v2_01.decrement_quantity.dissect(buffer, index, packet, parent)

  -- Order Canceled Reason: Alpha
  index, order_canceled_reason = jnx_jnxequities_pts_ouch_v2_01.order_canceled_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Canceled Message
jnx_jnxequities_pts_ouch_v2_01.order_canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.order_canceled_message, buffer(offset, 0))
    local index = jnx_jnxequities_pts_ouch_v2_01.order_canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_ouch_v2_01.order_canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_ouch_v2_01.order_canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Replaced Message
jnx_jnxequities_pts_ouch_v2_01.order_replaced_message = {}

-- Size: Order Replaced Message
jnx_jnxequities_pts_ouch_v2_01.order_replaced_message.size =
  jnx_jnxequities_pts_ouch_v2_01.timestamp.size + 
  jnx_jnxequities_pts_ouch_v2_01.replacement_order_token.size + 
  jnx_jnxequities_pts_ouch_v2_01.buy_sell_indicator.size + 
  jnx_jnxequities_pts_ouch_v2_01.quantity.size + 
  jnx_jnxequities_pts_ouch_v2_01.orderbook_id.size + 
  jnx_jnxequities_pts_ouch_v2_01.group.size + 
  jnx_jnxequities_pts_ouch_v2_01.price.size + 
  jnx_jnxequities_pts_ouch_v2_01.time_in_force.size + 
  jnx_jnxequities_pts_ouch_v2_01.display.size + 
  jnx_jnxequities_pts_ouch_v2_01.order_number.size + 
  jnx_jnxequities_pts_ouch_v2_01.minimum_quantity.size + 
  jnx_jnxequities_pts_ouch_v2_01.order_state.size + 
  jnx_jnxequities_pts_ouch_v2_01.previous_order_token.size

-- Display: Order Replaced Message
jnx_jnxequities_pts_ouch_v2_01.order_replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replaced Message
jnx_jnxequities_pts_ouch_v2_01.order_replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = jnx_jnxequities_pts_ouch_v2_01.timestamp.dissect(buffer, index, packet, parent)

  -- Replacement Order Token: Token
  index, replacement_order_token = jnx_jnxequities_pts_ouch_v2_01.replacement_order_token.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = jnx_jnxequities_pts_ouch_v2_01.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = jnx_jnxequities_pts_ouch_v2_01.quantity.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Alpha
  index, orderbook_id = jnx_jnxequities_pts_ouch_v2_01.orderbook_id.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = jnx_jnxequities_pts_ouch_v2_01.group.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = jnx_jnxequities_pts_ouch_v2_01.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Integer
  index, time_in_force = jnx_jnxequities_pts_ouch_v2_01.time_in_force.dissect(buffer, index, packet, parent)

  -- Display: Alpha
  index, display = jnx_jnxequities_pts_ouch_v2_01.display.dissect(buffer, index, packet, parent)

  -- Order Number: Integer
  index, order_number = jnx_jnxequities_pts_ouch_v2_01.order_number.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: Integer
  index, minimum_quantity = jnx_jnxequities_pts_ouch_v2_01.minimum_quantity.dissect(buffer, index, packet, parent)

  -- Order State: Alpha
  index, order_state = jnx_jnxequities_pts_ouch_v2_01.order_state.dissect(buffer, index, packet, parent)

  -- Previous Order Token: Token
  index, previous_order_token = jnx_jnxequities_pts_ouch_v2_01.previous_order_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replaced Message
jnx_jnxequities_pts_ouch_v2_01.order_replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.order_replaced_message, buffer(offset, 0))
    local index = jnx_jnxequities_pts_ouch_v2_01.order_replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_ouch_v2_01.order_replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_ouch_v2_01.order_replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Accepted Message
jnx_jnxequities_pts_ouch_v2_01.order_accepted_message = {}

-- Size: Order Accepted Message
jnx_jnxequities_pts_ouch_v2_01.order_accepted_message.size =
  jnx_jnxequities_pts_ouch_v2_01.timestamp.size + 
  jnx_jnxequities_pts_ouch_v2_01.order_token.size + 
  jnx_jnxequities_pts_ouch_v2_01.client_reference.size + 
  jnx_jnxequities_pts_ouch_v2_01.buy_sell_indicator.size + 
  jnx_jnxequities_pts_ouch_v2_01.quantity.size + 
  jnx_jnxequities_pts_ouch_v2_01.orderbook_id.size + 
  jnx_jnxequities_pts_ouch_v2_01.group.size + 
  jnx_jnxequities_pts_ouch_v2_01.price.size + 
  jnx_jnxequities_pts_ouch_v2_01.time_in_force.size + 
  jnx_jnxequities_pts_ouch_v2_01.firm_id.size + 
  jnx_jnxequities_pts_ouch_v2_01.display.size + 
  jnx_jnxequities_pts_ouch_v2_01.capacity.size + 
  jnx_jnxequities_pts_ouch_v2_01.order_number.size + 
  jnx_jnxequities_pts_ouch_v2_01.minimum_quantity.size + 
  jnx_jnxequities_pts_ouch_v2_01.order_state.size + 
  jnx_jnxequities_pts_ouch_v2_01.order_classification.size + 
  jnx_jnxequities_pts_ouch_v2_01.cash_margin_type.size

-- Display: Order Accepted Message
jnx_jnxequities_pts_ouch_v2_01.order_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Accepted Message
jnx_jnxequities_pts_ouch_v2_01.order_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = jnx_jnxequities_pts_ouch_v2_01.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: Token
  index, order_token = jnx_jnxequities_pts_ouch_v2_01.order_token.dissect(buffer, index, packet, parent)

  -- Client Reference: Alpha
  index, client_reference = jnx_jnxequities_pts_ouch_v2_01.client_reference.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = jnx_jnxequities_pts_ouch_v2_01.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = jnx_jnxequities_pts_ouch_v2_01.quantity.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Alpha
  index, orderbook_id = jnx_jnxequities_pts_ouch_v2_01.orderbook_id.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = jnx_jnxequities_pts_ouch_v2_01.group.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = jnx_jnxequities_pts_ouch_v2_01.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Integer
  index, time_in_force = jnx_jnxequities_pts_ouch_v2_01.time_in_force.dissect(buffer, index, packet, parent)

  -- Firm Id: Integer
  index, firm_id = jnx_jnxequities_pts_ouch_v2_01.firm_id.dissect(buffer, index, packet, parent)

  -- Display: Alpha
  index, display = jnx_jnxequities_pts_ouch_v2_01.display.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = jnx_jnxequities_pts_ouch_v2_01.capacity.dissect(buffer, index, packet, parent)

  -- Order Number: Integer
  index, order_number = jnx_jnxequities_pts_ouch_v2_01.order_number.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: Integer
  index, minimum_quantity = jnx_jnxequities_pts_ouch_v2_01.minimum_quantity.dissect(buffer, index, packet, parent)

  -- Order State: Alpha
  index, order_state = jnx_jnxequities_pts_ouch_v2_01.order_state.dissect(buffer, index, packet, parent)

  -- Order Classification: Alpha
  index, order_classification = jnx_jnxequities_pts_ouch_v2_01.order_classification.dissect(buffer, index, packet, parent)

  -- Cash Margin Type: Alpha
  index, cash_margin_type = jnx_jnxequities_pts_ouch_v2_01.cash_margin_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Accepted Message
jnx_jnxequities_pts_ouch_v2_01.order_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.order_accepted_message, buffer(offset, 0))
    local index = jnx_jnxequities_pts_ouch_v2_01.order_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_ouch_v2_01.order_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_ouch_v2_01.order_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
jnx_jnxequities_pts_ouch_v2_01.system_event_message = {}

-- Size: System Event Message
jnx_jnxequities_pts_ouch_v2_01.system_event_message.size =
  jnx_jnxequities_pts_ouch_v2_01.timestamp.size + 
  jnx_jnxequities_pts_ouch_v2_01.system_event.size

-- Display: System Event Message
jnx_jnxequities_pts_ouch_v2_01.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
jnx_jnxequities_pts_ouch_v2_01.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = jnx_jnxequities_pts_ouch_v2_01.timestamp.dissect(buffer, index, packet, parent)

  -- System Event: Alpha
  index, system_event = jnx_jnxequities_pts_ouch_v2_01.system_event.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
jnx_jnxequities_pts_ouch_v2_01.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.system_event_message, buffer(offset, 0))
    local index = jnx_jnxequities_pts_ouch_v2_01.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_ouch_v2_01.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_ouch_v2_01.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
jnx_jnxequities_pts_ouch_v2_01.sequenced_message = {}

-- Dispatch: Sequenced Message
jnx_jnxequities_pts_ouch_v2_01.sequenced_message.dispatch = {
  ["S"] = jnx_jnxequities_pts_ouch_v2_01.system_event_message.dissect,
  ["A"] = jnx_jnxequities_pts_ouch_v2_01.order_accepted_message.dissect,
  ["U"] = jnx_jnxequities_pts_ouch_v2_01.order_replaced_message.dissect,
  ["C"] = jnx_jnxequities_pts_ouch_v2_01.order_canceled_message.dissect,
  ["D"] = jnx_jnxequities_pts_ouch_v2_01.order_aiq_canceled_message.dissect,
  ["E"] = jnx_jnxequities_pts_ouch_v2_01.order_executed_message.dissect,
  ["J"] = jnx_jnxequities_pts_ouch_v2_01.order_rejected_message.dissect,
}

-- Dissect: Sequenced Message
jnx_jnxequities_pts_ouch_v2_01.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  local dissect = jnx_jnxequities_pts_ouch_v2_01.sequenced_message.dispatch[sequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
jnx_jnxequities_pts_ouch_v2_01.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
jnx_jnxequities_pts_ouch_v2_01.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
jnx_jnxequities_pts_ouch_v2_01.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
jnx_jnxequities_pts_ouch_v2_01.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = jnx_jnxequities_pts_ouch_v2_01.conversation.current
  if flow ~= nil then
    local memo = flow.sequence.frames[packet.number]
    if not packet.visited then
      if flow.sequence.next == nil then
        flow.sequence.next = tonumber(jnx_jnxequities_pts_ouch_v2_01.accepted_sequence_number.current)
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
          local sequence = parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if jnx_jnxequities_pts_ouch_v2_01.stream_frame ~= packet.number or jnx_jnxequities_pts_ouch_v2_01.stream_occurrence >= #memo then
          jnx_jnxequities_pts_ouch_v2_01.stream_frame = packet.number
          jnx_jnxequities_pts_ouch_v2_01.stream_occurrence = 0
        end
        jnx_jnxequities_pts_ouch_v2_01.stream_occurrence = jnx_jnxequities_pts_ouch_v2_01.stream_occurrence + 1
        local value = memo[jnx_jnxequities_pts_ouch_v2_01.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 7 values
  index, sequenced_message_type = jnx_jnxequities_pts_ouch_v2_01.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 7 branches
  index = jnx_jnxequities_pts_ouch_v2_01.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
jnx_jnxequities_pts_ouch_v2_01.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = jnx_jnxequities_pts_ouch_v2_01.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.sequenced_data_packet, buffer(offset, 0))
    local current = jnx_jnxequities_pts_ouch_v2_01.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = jnx_jnxequities_pts_ouch_v2_01.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    jnx_jnxequities_pts_ouch_v2_01.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
jnx_jnxequities_pts_ouch_v2_01.login_rejected_packet = {}

-- Size: Login Rejected Packet
jnx_jnxequities_pts_ouch_v2_01.login_rejected_packet.size =
  jnx_jnxequities_pts_ouch_v2_01.reject_reason_code.size

-- Display: Login Rejected Packet
jnx_jnxequities_pts_ouch_v2_01.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
jnx_jnxequities_pts_ouch_v2_01.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String Enum with 2 values
  index, reject_reason_code = jnx_jnxequities_pts_ouch_v2_01.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
jnx_jnxequities_pts_ouch_v2_01.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.login_rejected_packet, buffer(offset, 0))
    local index = jnx_jnxequities_pts_ouch_v2_01.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_ouch_v2_01.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_ouch_v2_01.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
jnx_jnxequities_pts_ouch_v2_01.login_accepted_packet = {}

-- Size: Login Accepted Packet
jnx_jnxequities_pts_ouch_v2_01.login_accepted_packet.size =
  jnx_jnxequities_pts_ouch_v2_01.accepted_session.size + 
  jnx_jnxequities_pts_ouch_v2_01.accepted_sequence_number.size

-- Display: Login Accepted Packet
jnx_jnxequities_pts_ouch_v2_01.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
jnx_jnxequities_pts_ouch_v2_01.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = jnx_jnxequities_pts_ouch_v2_01.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = jnx_jnxequities_pts_ouch_v2_01.accepted_sequence_number.dissect(buffer, index, packet, parent)

  -- Store Accepted Sequence Number Value
  jnx_jnxequities_pts_ouch_v2_01.accepted_sequence_number.current = accepted_sequence_number

  if not packet.visited then
    jnx_jnxequities_pts_ouch_v2_01.conversation.current.accepted_sequence_number.last = accepted_sequence_number
  end

  return index
end

-- Dissect: Login Accepted Packet
jnx_jnxequities_pts_ouch_v2_01.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.login_accepted_packet, buffer(offset, 0))
    local index = jnx_jnxequities_pts_ouch_v2_01.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_ouch_v2_01.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_ouch_v2_01.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
jnx_jnxequities_pts_ouch_v2_01.debug_packet = {}

-- Calculate size of: Debug Packet
jnx_jnxequities_pts_ouch_v2_01.debug_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Debug Text
  index = index + buffer(offset + index - 3, 2):uint()

  return index
end

-- Display: Debug Packet
jnx_jnxequities_pts_ouch_v2_01.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
jnx_jnxequities_pts_ouch_v2_01.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Debug Text
  local size_of_debug_text = packet_length - 1

  -- Debug Text: 0 Byte Ascii String
  index, debug_text = jnx_jnxequities_pts_ouch_v2_01.debug_text.dissect(buffer, index, packet, parent, size_of_debug_text)

  return index
end

-- Dissect: Debug Packet
jnx_jnxequities_pts_ouch_v2_01.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.debug_packet, buffer(offset, 0))
    local index = jnx_jnxequities_pts_ouch_v2_01.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_ouch_v2_01.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_ouch_v2_01.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
jnx_jnxequities_pts_ouch_v2_01.server_payload = {}

-- Dispatch: Server Payload
jnx_jnxequities_pts_ouch_v2_01.server_payload.dispatch = {
  ["+"] = jnx_jnxequities_pts_ouch_v2_01.debug_packet.dissect,
  ["A"] = jnx_jnxequities_pts_ouch_v2_01.login_accepted_packet.dissect,
  ["J"] = jnx_jnxequities_pts_ouch_v2_01.login_rejected_packet.dissect,
  ["S"] = jnx_jnxequities_pts_ouch_v2_01.sequenced_data_packet.dissect,
  ["H"] = jnx_jnxequities_pts_ouch_v2_01.server_heartbeat.dissect,
  ["Z"] = jnx_jnxequities_pts_ouch_v2_01.end_of_session.dissect,
}

-- Dissect: Server Payload
jnx_jnxequities_pts_ouch_v2_01.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  local dissect = jnx_jnxequities_pts_ouch_v2_01.server_payload.dispatch[server_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
jnx_jnxequities_pts_ouch_v2_01.server_packet_header = {}

-- Size: Server Packet Header
jnx_jnxequities_pts_ouch_v2_01.server_packet_header.size =
  jnx_jnxequities_pts_ouch_v2_01.packet_length.size + 
  jnx_jnxequities_pts_ouch_v2_01.server_packet_type.size

-- Display: Server Packet Header
jnx_jnxequities_pts_ouch_v2_01.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
jnx_jnxequities_pts_ouch_v2_01.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = jnx_jnxequities_pts_ouch_v2_01.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = jnx_jnxequities_pts_ouch_v2_01.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
jnx_jnxequities_pts_ouch_v2_01.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.server_packet_header, buffer(offset, 0))
    local index = jnx_jnxequities_pts_ouch_v2_01.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_ouch_v2_01.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_ouch_v2_01.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
jnx_jnxequities_pts_ouch_v2_01.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
jnx_jnxequities_pts_ouch_v2_01.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
jnx_jnxequities_pts_ouch_v2_01.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = jnx_jnxequities_pts_ouch_v2_01.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = jnx_jnxequities_pts_ouch_v2_01.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
jnx_jnxequities_pts_ouch_v2_01.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = jnx_jnxequities_pts_ouch_v2_01.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = jnx_jnxequities_pts_ouch_v2_01.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    jnx_jnxequities_pts_ouch_v2_01.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < jnx_jnxequities_pts_ouch_v2_01.server_packet_header.size then
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
jnx_jnxequities_pts_ouch_v2_01.server_packet = {}

-- Verify required size of Tcp packet
jnx_jnxequities_pts_ouch_v2_01.server_packet.requiredsize = function(buffer)
  return buffer:len() >= jnx_jnxequities_pts_ouch_v2_01.server_packet_header.size
end

-- Dissect Server Packet
jnx_jnxequities_pts_ouch_v2_01.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = jnx_jnxequities_pts_ouch_v2_01.conversation.data(packet)
  if not packet.visited then
    data.accepted_sequence_number.frames[packet.number] = data.accepted_sequence_number.last
  end
  jnx_jnxequities_pts_ouch_v2_01.accepted_sequence_number.current = data.accepted_sequence_number.frames[packet.number]
  jnx_jnxequities_pts_ouch_v2_01.conversation.current = data

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
      index = jnx_jnxequities_pts_ouch_v2_01.server_soup_bin_tcp_packet.dissect(frame, index, packet, parent, size_of_server_soup_bin_tcp_packet)
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
jnx_jnxequities_pts_ouch_v2_01.logout_request = {}

-- Display: Logout Request
jnx_jnxequities_pts_ouch_v2_01.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
jnx_jnxequities_pts_ouch_v2_01.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = jnx_jnxequities_pts_ouch_v2_01.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
jnx_jnxequities_pts_ouch_v2_01.client_heartbeat = {}

-- Display: Client Heartbeat
jnx_jnxequities_pts_ouch_v2_01.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
jnx_jnxequities_pts_ouch_v2_01.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = jnx_jnxequities_pts_ouch_v2_01.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Cancel Order Message
jnx_jnxequities_pts_ouch_v2_01.cancel_order_message = {}

-- Size: Cancel Order Message
jnx_jnxequities_pts_ouch_v2_01.cancel_order_message.size =
  jnx_jnxequities_pts_ouch_v2_01.order_token.size + 
  jnx_jnxequities_pts_ouch_v2_01.quantity.size

-- Display: Cancel Order Message
jnx_jnxequities_pts_ouch_v2_01.cancel_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Message
jnx_jnxequities_pts_ouch_v2_01.cancel_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: Token
  index, order_token = jnx_jnxequities_pts_ouch_v2_01.order_token.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = jnx_jnxequities_pts_ouch_v2_01.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Message
jnx_jnxequities_pts_ouch_v2_01.cancel_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.cancel_order_message, buffer(offset, 0))
    local index = jnx_jnxequities_pts_ouch_v2_01.cancel_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_ouch_v2_01.cancel_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_ouch_v2_01.cancel_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Replace Order Message
jnx_jnxequities_pts_ouch_v2_01.replace_order_message = {}

-- Size: Replace Order Message
jnx_jnxequities_pts_ouch_v2_01.replace_order_message.size =
  jnx_jnxequities_pts_ouch_v2_01.existing_order_token.size + 
  jnx_jnxequities_pts_ouch_v2_01.replacement_order_token.size + 
  jnx_jnxequities_pts_ouch_v2_01.quantity.size + 
  jnx_jnxequities_pts_ouch_v2_01.price.size + 
  jnx_jnxequities_pts_ouch_v2_01.time_in_force.size + 
  jnx_jnxequities_pts_ouch_v2_01.display.size + 
  jnx_jnxequities_pts_ouch_v2_01.minimum_quantity.size

-- Display: Replace Order Message
jnx_jnxequities_pts_ouch_v2_01.replace_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replace Order Message
jnx_jnxequities_pts_ouch_v2_01.replace_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Existing Order Token: Token
  index, existing_order_token = jnx_jnxequities_pts_ouch_v2_01.existing_order_token.dissect(buffer, index, packet, parent)

  -- Replacement Order Token: Token
  index, replacement_order_token = jnx_jnxequities_pts_ouch_v2_01.replacement_order_token.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = jnx_jnxequities_pts_ouch_v2_01.quantity.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = jnx_jnxequities_pts_ouch_v2_01.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Integer
  index, time_in_force = jnx_jnxequities_pts_ouch_v2_01.time_in_force.dissect(buffer, index, packet, parent)

  -- Display: Alpha
  index, display = jnx_jnxequities_pts_ouch_v2_01.display.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: Integer
  index, minimum_quantity = jnx_jnxequities_pts_ouch_v2_01.minimum_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replace Order Message
jnx_jnxequities_pts_ouch_v2_01.replace_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.replace_order_message, buffer(offset, 0))
    local index = jnx_jnxequities_pts_ouch_v2_01.replace_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_ouch_v2_01.replace_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_ouch_v2_01.replace_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Enter Order Message
jnx_jnxequities_pts_ouch_v2_01.enter_order_message = {}

-- Size: Enter Order Message
jnx_jnxequities_pts_ouch_v2_01.enter_order_message.size =
  jnx_jnxequities_pts_ouch_v2_01.order_token.size + 
  jnx_jnxequities_pts_ouch_v2_01.client_reference.size + 
  jnx_jnxequities_pts_ouch_v2_01.buy_sell_indicator.size + 
  jnx_jnxequities_pts_ouch_v2_01.quantity.size + 
  jnx_jnxequities_pts_ouch_v2_01.orderbook_id.size + 
  jnx_jnxequities_pts_ouch_v2_01.group.size + 
  jnx_jnxequities_pts_ouch_v2_01.price.size + 
  jnx_jnxequities_pts_ouch_v2_01.time_in_force.size + 
  jnx_jnxequities_pts_ouch_v2_01.firm_id.size + 
  jnx_jnxequities_pts_ouch_v2_01.display.size + 
  jnx_jnxequities_pts_ouch_v2_01.capacity.size + 
  jnx_jnxequities_pts_ouch_v2_01.minimum_quantity.size + 
  jnx_jnxequities_pts_ouch_v2_01.order_classification.size + 
  jnx_jnxequities_pts_ouch_v2_01.cash_margin_type.size

-- Display: Enter Order Message
jnx_jnxequities_pts_ouch_v2_01.enter_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enter Order Message
jnx_jnxequities_pts_ouch_v2_01.enter_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: Token
  index, order_token = jnx_jnxequities_pts_ouch_v2_01.order_token.dissect(buffer, index, packet, parent)

  -- Client Reference: Alpha
  index, client_reference = jnx_jnxequities_pts_ouch_v2_01.client_reference.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = jnx_jnxequities_pts_ouch_v2_01.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = jnx_jnxequities_pts_ouch_v2_01.quantity.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Alpha
  index, orderbook_id = jnx_jnxequities_pts_ouch_v2_01.orderbook_id.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = jnx_jnxequities_pts_ouch_v2_01.group.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = jnx_jnxequities_pts_ouch_v2_01.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Integer
  index, time_in_force = jnx_jnxequities_pts_ouch_v2_01.time_in_force.dissect(buffer, index, packet, parent)

  -- Firm Id: Integer
  index, firm_id = jnx_jnxequities_pts_ouch_v2_01.firm_id.dissect(buffer, index, packet, parent)

  -- Display: Alpha
  index, display = jnx_jnxequities_pts_ouch_v2_01.display.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = jnx_jnxequities_pts_ouch_v2_01.capacity.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: Integer
  index, minimum_quantity = jnx_jnxequities_pts_ouch_v2_01.minimum_quantity.dissect(buffer, index, packet, parent)

  -- Order Classification: Alpha
  index, order_classification = jnx_jnxequities_pts_ouch_v2_01.order_classification.dissect(buffer, index, packet, parent)

  -- Cash Margin Type: Alpha
  index, cash_margin_type = jnx_jnxequities_pts_ouch_v2_01.cash_margin_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enter Order Message
jnx_jnxequities_pts_ouch_v2_01.enter_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.enter_order_message, buffer(offset, 0))
    local index = jnx_jnxequities_pts_ouch_v2_01.enter_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_ouch_v2_01.enter_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_ouch_v2_01.enter_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
jnx_jnxequities_pts_ouch_v2_01.unsequenced_message = {}

-- Dispatch: Unsequenced Message
jnx_jnxequities_pts_ouch_v2_01.unsequenced_message.dispatch = {
  ["O"] = jnx_jnxequities_pts_ouch_v2_01.enter_order_message.dissect,
  ["U"] = jnx_jnxequities_pts_ouch_v2_01.replace_order_message.dissect,
  ["X"] = jnx_jnxequities_pts_ouch_v2_01.cancel_order_message.dissect,
}

-- Dissect: Unsequenced Message
jnx_jnxequities_pts_ouch_v2_01.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  local dissect = jnx_jnxequities_pts_ouch_v2_01.unsequenced_message.dispatch[unsequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
jnx_jnxequities_pts_ouch_v2_01.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
jnx_jnxequities_pts_ouch_v2_01.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
jnx_jnxequities_pts_ouch_v2_01.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
jnx_jnxequities_pts_ouch_v2_01.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String Enum with 3 values
  index, unsequenced_message_type = jnx_jnxequities_pts_ouch_v2_01.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 3 branches
  index = jnx_jnxequities_pts_ouch_v2_01.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
jnx_jnxequities_pts_ouch_v2_01.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = jnx_jnxequities_pts_ouch_v2_01.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = jnx_jnxequities_pts_ouch_v2_01.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = jnx_jnxequities_pts_ouch_v2_01.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    jnx_jnxequities_pts_ouch_v2_01.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
jnx_jnxequities_pts_ouch_v2_01.login_request_packet = {}

-- Size: Login Request Packet
jnx_jnxequities_pts_ouch_v2_01.login_request_packet.size =
  jnx_jnxequities_pts_ouch_v2_01.username.size + 
  jnx_jnxequities_pts_ouch_v2_01.password.size + 
  jnx_jnxequities_pts_ouch_v2_01.requested_session.size + 
  jnx_jnxequities_pts_ouch_v2_01.requested_sequence_number.size

-- Display: Login Request Packet
jnx_jnxequities_pts_ouch_v2_01.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
jnx_jnxequities_pts_ouch_v2_01.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = jnx_jnxequities_pts_ouch_v2_01.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = jnx_jnxequities_pts_ouch_v2_01.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = jnx_jnxequities_pts_ouch_v2_01.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = jnx_jnxequities_pts_ouch_v2_01.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
jnx_jnxequities_pts_ouch_v2_01.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.login_request_packet, buffer(offset, 0))
    local index = jnx_jnxequities_pts_ouch_v2_01.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_ouch_v2_01.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_ouch_v2_01.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
jnx_jnxequities_pts_ouch_v2_01.client_payload = {}

-- Dispatch: Client Payload
jnx_jnxequities_pts_ouch_v2_01.client_payload.dispatch = {
  ["+"] = jnx_jnxequities_pts_ouch_v2_01.debug_packet.dissect,
  ["L"] = jnx_jnxequities_pts_ouch_v2_01.login_request_packet.dissect,
  ["U"] = jnx_jnxequities_pts_ouch_v2_01.unsequenced_data_packet.dissect,
  ["R"] = jnx_jnxequities_pts_ouch_v2_01.client_heartbeat.dissect,
  ["O"] = jnx_jnxequities_pts_ouch_v2_01.logout_request.dissect,
}

-- Dissect: Client Payload
jnx_jnxequities_pts_ouch_v2_01.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  local dissect = jnx_jnxequities_pts_ouch_v2_01.client_payload.dispatch[client_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
jnx_jnxequities_pts_ouch_v2_01.client_packet_header = {}

-- Size: Client Packet Header
jnx_jnxequities_pts_ouch_v2_01.client_packet_header.size =
  jnx_jnxequities_pts_ouch_v2_01.packet_length.size + 
  jnx_jnxequities_pts_ouch_v2_01.client_packet_type.size

-- Display: Client Packet Header
jnx_jnxequities_pts_ouch_v2_01.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
jnx_jnxequities_pts_ouch_v2_01.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = jnx_jnxequities_pts_ouch_v2_01.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = jnx_jnxequities_pts_ouch_v2_01.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
jnx_jnxequities_pts_ouch_v2_01.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.client_packet_header, buffer(offset, 0))
    local index = jnx_jnxequities_pts_ouch_v2_01.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_ouch_v2_01.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_ouch_v2_01.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
jnx_jnxequities_pts_ouch_v2_01.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
jnx_jnxequities_pts_ouch_v2_01.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
jnx_jnxequities_pts_ouch_v2_01.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = jnx_jnxequities_pts_ouch_v2_01.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = jnx_jnxequities_pts_ouch_v2_01.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
jnx_jnxequities_pts_ouch_v2_01.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_jnx_jnxequities_pts_ouch_v2_01.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = jnx_jnxequities_pts_ouch_v2_01.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = jnx_jnxequities_pts_ouch_v2_01.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    jnx_jnxequities_pts_ouch_v2_01.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < jnx_jnxequities_pts_ouch_v2_01.client_packet_header.size then
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
jnx_jnxequities_pts_ouch_v2_01.client_packet = {}

-- Verify required size of Tcp packet
jnx_jnxequities_pts_ouch_v2_01.client_packet.requiredsize = function(buffer)
  return buffer:len() >= jnx_jnxequities_pts_ouch_v2_01.client_packet_header.size
end

-- Dissect Client Packet
jnx_jnxequities_pts_ouch_v2_01.client_packet.dissect = function(buffer, packet, parent)
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
      index = jnx_jnxequities_pts_ouch_v2_01.client_soup_bin_tcp_packet.dissect(frame, index, packet, parent, size_of_client_soup_bin_tcp_packet)
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
function omi_jnx_jnxequities_pts_ouch_v2_01.init()
  jnx_jnxequities_pts_ouch_v2_01.accepted_sequence_number.current = nil
  jnx_jnxequities_pts_ouch_v2_01.conversation.current = nil
  jnx_jnxequities_pts_ouch_v2_01.conversation.flows = {}
end

-- Connection roles for Jnx JnxEquities Pts Ouch 2.01: Client is the initiator, Server is the acceptor
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
jnx_jnxequities_pts_ouch_v2_01.role = function(packet)
  if omi_jnx_jnxequities_pts_ouch_v2_01.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_jnx_jnxequities_pts_ouch_v2_01.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_jnx_jnxequities_pts_ouch_v2_01.prefs.acceptor_port

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

  if omi_jnx_jnxequities_pts_ouch_v2_01.prefs.swap_sides then
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
jnx_jnxequities_pts_ouch_v2_01.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Jnx JnxEquities Pts Ouch 2.01
function omi_jnx_jnxequities_pts_ouch_v2_01.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_jnx_jnxequities_pts_ouch_v2_01.name

  -- Dissect protocol
  local protocol = parent:add(omi_jnx_jnxequities_pts_ouch_v2_01, buffer(), omi_jnx_jnxequities_pts_ouch_v2_01.description, "("..buffer:len().." Bytes)")
  local role = jnx_jnxequities_pts_ouch_v2_01.role(packet)

  if role == "initiator" then
    return jnx_jnxequities_pts_ouch_v2_01.client_packet.dissect(buffer, packet, protocol)
  end

  return jnx_jnxequities_pts_ouch_v2_01.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
jnx_jnxequities_pts_ouch_v2_01.client_packet.fingerprint = function(buffer)
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
jnx_jnxequities_pts_ouch_v2_01.server_packet.fingerprint = function(buffer)
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

-- Dissector Heuristic for Jnx JnxEquities Pts Ouch 2.01 (Tcp)
local function omi_jnx_jnxequities_pts_ouch_v2_01_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not jnx_jnxequities_pts_ouch_v2_01.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp client packet message dispatch
  if not jnx_jnxequities_pts_ouch_v2_01.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_jnx_jnxequities_pts_ouch_v2_01
  omi_jnx_jnxequities_pts_ouch_v2_01.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Jnx JnxEquities Pts Ouch 2.01 (Tcp)
local function omi_jnx_jnxequities_pts_ouch_v2_01_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not jnx_jnxequities_pts_ouch_v2_01.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp server packet message dispatch
  if not jnx_jnxequities_pts_ouch_v2_01.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_jnx_jnxequities_pts_ouch_v2_01
  omi_jnx_jnxequities_pts_ouch_v2_01.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Jnx JnxEquities Pts Ouch 2.01 (Tcp): apply the heuristic of the sender's connection role
local function omi_jnx_jnxequities_pts_ouch_v2_01_tcp_heuristic(buffer, packet, parent)
  local role = jnx_jnxequities_pts_ouch_v2_01.role(packet)
  local initiator = omi_jnx_jnxequities_pts_ouch_v2_01_tcp_initiator_heuristic
  local acceptor = omi_jnx_jnxequities_pts_ouch_v2_01_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  jnx_jnxequities_pts_ouch_v2_01.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  jnx_jnxequities_pts_ouch_v2_01.swap(packet)

  return false
end

-- Register Heuristics for Jnx JnxEquities Pts Ouch 2.01
omi_jnx_jnxequities_pts_ouch_v2_01:register_heuristic("tcp", omi_jnx_jnxequities_pts_ouch_v2_01_tcp_heuristic)

-- Register Jnx JnxEquities Pts Ouch 2.01 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_jnx_jnxequities_pts_ouch_v2_01)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Japannext Securities
--   Version: 2.01
--   Date: Friday, January 16, 2026
--   Specification: JNX_OUCH_Trading_Specification_Equities_2.01.pdf
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
