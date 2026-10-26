-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NtxEquities Orders Ouch 4.2 Protocol
local omi_nasdaq_ntxequities_orders_ouch_v4_2 = Proto("Omi.Nasdaq.NtxEquities.Orders.Ouch.v4.2", "Nasdaq NtxEquities Orders Ouch 4.2")

-- Protocol table
local nasdaq_ntxequities_orders_ouch_v4_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NtxEquities Orders Ouch 4.2 Fields
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "nasdaq.ntxequities.orders.ouch.v4.2.acceptedsequencenumber", ftypes.UINT64, nil, nil, nil, "The sequence number in ASCII of the next Sequenced Message to be sent. Left padded with spaces.")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.accepted_session = ProtoField.new("Accepted Session", "nasdaq.ntxequities.orders.ouch.v4.2.acceptedsession", ftypes.STRING, nil, nil, nil, "The session ID of the session that is now logged into. Left padded with spaces.")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.aiq_canceled_reason = ProtoField.new("Aiq Canceled Reason", "nasdaq.ntxequities.orders.ouch.v4.2.aiqcanceledreason", ftypes.STRING, nil, nil, nil, "Reason the order was reduced or canceled. For AIQ Cancel message, this value will be “Q”.")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.bbo_weight_indicator = ProtoField.new("Bbo Weight Indicator", "nasdaq.ntxequities.orders.ouch.v4.2.bboweightindicator", ftypes.STRING)
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.broken_trade_reason = ProtoField.new("Broken Trade Reason", "nasdaq.ntxequities.orders.ouch.v4.2.brokentradereason", ftypes.STRING, nil, nil, nil, "The reason the trade was broken. See currently supported Broken Trade Reasons table below. Clients should anticipate additions to this list and thus support all capital letters of the English alphabet.")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nasdaq.ntxequities.orders.ouch.v4.2.buysellindicator", ftypes.STRING, nil, nil, nil, "Buy/Sell Indicator")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.canceled_reason = ProtoField.new("Canceled Reason", "nasdaq.ntxequities.orders.ouch.v4.2.canceledreason", ftypes.STRING, nil, nil, nil, "Reason the order was reduced or canceled. See currently supported Cancel Order Reasons below. Clients should anticipate additions to this list and thus support all capital letters of the English alphabet.")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.capacity = ProtoField.new("Capacity", "nasdaq.ntxequities.orders.ouch.v4.2.capacity", ftypes.STRING, nil, nil, nil, "Values other than “A”, “P”, or “R” will be converted to “O” = Other")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.client_packet_type = ProtoField.new("Packet Type", "nasdaq.ntxequities.orders.ouch.v4.2.clientpackettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type sent by the client")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.ntxequities.orders.ouch.v4.2.crosstype", ftypes.STRING)
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.debug_text = ProtoField.new("Debug Text", "nasdaq.ntxequities.orders.ouch.v4.2.debugtext", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.decrement_shares = ProtoField.new("Decrement Shares", "nasdaq.ntxequities.orders.ouch.v4.2.decrementshares", ftypes.UINT32, nil, nil, nil, "The number of shares just decremented from the order. This number is incremental, not cumulative.")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.display = ProtoField.new("Display", "nasdaq.ntxequities.orders.ouch.v4.2.display", ftypes.STRING)
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.event_code = ProtoField.new("Event Code", "nasdaq.ntxequities.orders.ouch.v4.2.eventcode", ftypes.STRING, nil, nil, nil, "See Event Codes below.")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.executed_shares = ProtoField.new("Executed Shares", "nasdaq.ntxequities.orders.ouch.v4.2.executedshares", ftypes.UINT32, nil, nil, nil, "Incremental number of shares executed")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.execution_price = ProtoField.new("Execution Price", "nasdaq.ntxequities.orders.ouch.v4.2.executionprice", ftypes.DOUBLE, nil, nil, nil, "Price at which the trade would have occurred")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.existing_order_token = ProtoField.new("Existing Order Token", "nasdaq.ntxequities.orders.ouch.v4.2.existingordertoken", ftypes.STRING, nil, nil, nil, "This must be filled out with the exact Order Token sent on the Enter Order Message or last Replace Order Message.")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.firm = ProtoField.new("Firm", "nasdaq.ntxequities.orders.ouch.v4.2.firm", ftypes.STRING, nil, nil, nil, "This field should contain all caps. Firm Identifier for the order entry firm. One logical OUCH Account can potentially enter orders for multiple firms in a Service Bureau configuration. If this field is blank-filled, the default firm for the OUCH Account will be used.")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.intermarket_sweep_eligibility = ProtoField.new("Intermarket Sweep Eligibility", "nasdaq.ntxequities.orders.ouch.v4.2.intermarketsweepeligibility", ftypes.STRING)
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.liquidity_flag = ProtoField.new("Liquidity Flag", "nasdaq.ntxequities.orders.ouch.v4.2.liquidityflag", ftypes.STRING, nil, nil, nil, "Liquidity flag the order would have received")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.match_number = ProtoField.new("Match Number", "nasdaq.ntxequities.orders.ouch.v4.2.matchnumber", ftypes.UINT64, nil, nil, nil, "Assigned by NASDAQ OMX BX to each match executed. Each match consists of one buy and one sell. The matching buy and sell executions share the same match number.")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.minimum_quantity = ProtoField.new("Minimum Quantity", "nasdaq.ntxequities.orders.ouch.v4.2.minimumquantity", ftypes.UINT32, nil, nil, nil, "Specifies the minimum acceptable quantity to execute")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.ntxequities.orders.ouch.v4.2.orderreferencenumber", ftypes.UINT64, nil, nil, nil, "The day-unique Order Reference Number assigned by NASDAQ OMX BX to this order")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.order_state = ProtoField.new("Order State", "nasdaq.ntxequities.orders.ouch.v4.2.orderstate", ftypes.STRING)
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.order_token = ProtoField.new("Order Token", "nasdaq.ntxequities.orders.ouch.v4.2.ordertoken", ftypes.STRING, nil, nil, nil, "As described above in Data Types. You can put any information you like. Token must be day-unique for each OUCH account.")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.ntxequities.orders.ouch.v4.2.packetlength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.password = ProtoField.new("Password", "nasdaq.ntxequities.orders.ouch.v4.2.password", ftypes.STRING, nil, nil, nil, "Login password")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.previous_order_token = ProtoField.new("Previous Order Token", "nasdaq.ntxequities.orders.ouch.v4.2.previousordertoken", ftypes.STRING, nil, nil, nil, "The Order Token of the order that was replaced")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.price = ProtoField.new("Price", "nasdaq.ntxequities.orders.ouch.v4.2.price", ftypes.DOUBLE, nil, nil, nil, "The price of the order. Please refer to the section in Data Types for more clarification.")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.quantity_prevented_from_trading = ProtoField.new("Quantity Prevented From Trading", "nasdaq.ntxequities.orders.ouch.v4.2.quantitypreventedfromtrading", ftypes.UINT32, nil, nil, nil, "Shares that would have executed if the trade would have occurred")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.ntxequities.orders.ouch.v4.2.rejectreasoncode", ftypes.STRING, nil, nil, nil, "Login Reject Codes")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.rejected_reason = ProtoField.new("Rejected Reason", "nasdaq.ntxequities.orders.ouch.v4.2.rejectedreason", ftypes.STRING, nil, nil, nil, "The reason the order was rejected. See currently supported Rejected Order Reasons below. Clients should anticipate additions to this list and thus support all capital letters of the English alphabet.")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.replacement_order_token = ProtoField.new("Replacement Order Token", "nasdaq.ntxequities.orders.ouch.v4.2.replacementordertoken", ftypes.STRING, nil, nil, nil, "The Replacement Order Token field as entered")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.ntxequities.orders.ouch.v4.2.requestedsequencenumber", ftypes.UINT64, nil, nil, nil, "Specifies the next sequence number in ASCII the client wants to receive upon connection, or 0 to start receiving the most recently generated message.")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.ntxequities.orders.ouch.v4.2.requestedsession", ftypes.STRING, nil, nil, nil, "Specifies the session the client would like to log into, or all blanks to log into the currently active session.")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.ntxequities.orders.ouch.v4.2.sequencedmessagetype", ftypes.STRING, nil, nil, nil, "Value identifying sequenced message type")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.server_packet_type = ProtoField.new("Packet Type", "nasdaq.ntxequities.orders.ouch.v4.2.serverpackettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type sent by the server")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.shares = ProtoField.new("Shares", "nasdaq.ntxequities.orders.ouch.v4.2.shares", ftypes.UINT32, nil, nil, nil, "Total number of shares. Must be greater than zero and less than 1,000,000")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.stock = ProtoField.new("Stock", "nasdaq.ntxequities.orders.ouch.v4.2.stock", ftypes.STRING, nil, nil, nil, "Stock Symbol")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.time_in_force = ProtoField.new("Time In Force", "nasdaq.ntxequities.orders.ouch.v4.2.timeinforce", ftypes.UINT32, nil, nil, nil, "The number of seconds that this order should live before being automatically canceled. Special values for Time in Force are listed in Data Types above.")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.ntxequities.orders.ouch.v4.2.timestamp", ftypes.UINT64, nil, nil, nil, "Timestamp – reflected as the number of nanoseconds past midnight.")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.ntxequities.orders.ouch.v4.2.unsequencedmessagetype", ftypes.STRING, nil, nil, nil, "Value identifying unsequenced message type")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.username = ProtoField.new("Username", "nasdaq.ntxequities.orders.ouch.v4.2.username", ftypes.STRING, nil, nil, nil, "Session username")

-- Nasdaq NtxEquities Orders Ouch 4.2 Framing
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.client_packet = ProtoField.new("Packet", "nasdaq.ntxequities.orders.ouch.v4.2.clientpacket", ftypes.STRING, nil, nil, nil, "SoupBinTCP Packet sent by the client")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.client_packet_header = ProtoField.new("Packet Header", "nasdaq.ntxequities.orders.ouch.v4.2.clientpacketheader", ftypes.STRING, nil, nil, nil, "Packet header of a packet sent by the client")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.ntxequities.orders.ouch.v4.2.clientsoupbintcppacket", ftypes.STRING, nil, nil, nil, "Soup Bin Tcp Packet sent by the client")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.server_packet = ProtoField.new("Packet", "nasdaq.ntxequities.orders.ouch.v4.2.serverpacket", ftypes.STRING, nil, nil, nil, "SoupBinTCP Packet sent by the server")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.server_packet_header = ProtoField.new("Packet Header", "nasdaq.ntxequities.orders.ouch.v4.2.serverpacketheader", ftypes.STRING, nil, nil, nil, "Packet header of a packet sent by the server")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.ntxequities.orders.ouch.v4.2.serversoupbintcppacket", ftypes.STRING, nil, nil, nil, "Soup Bin Tcp Packet sent by the server")

-- Nasdaq NtxEquities Orders 4.2 Application Messages
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.accepted_message = ProtoField.new("Accepted Message", "nasdaq.ntxequities.orders.ouch.v4.2.acceptedmessage", ftypes.STRING)
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.aiq_canceled_message = ProtoField.new("Aiq Canceled Message", "nasdaq.ntxequities.orders.ouch.v4.2.aiqcanceledmessage", ftypes.STRING)
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "nasdaq.ntxequities.orders.ouch.v4.2.brokentrademessage", ftypes.STRING)
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.cancel_order_message = ProtoField.new("Cancel Order Message", "nasdaq.ntxequities.orders.ouch.v4.2.cancelordermessage", ftypes.STRING)
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.cancel_pending_message = ProtoField.new("Cancel Pending Message", "nasdaq.ntxequities.orders.ouch.v4.2.cancelpendingmessage", ftypes.STRING)
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.cancel_reject_message = ProtoField.new("Cancel Reject Message", "nasdaq.ntxequities.orders.ouch.v4.2.cancelrejectmessage", ftypes.STRING)
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.canceled_message = ProtoField.new("Canceled Message", "nasdaq.ntxequities.orders.ouch.v4.2.canceledmessage", ftypes.STRING)
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.enter_order_message = ProtoField.new("Enter Order Message", "nasdaq.ntxequities.orders.ouch.v4.2.enterordermessage", ftypes.STRING)
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.executed_message = ProtoField.new("Executed Message", "nasdaq.ntxequities.orders.ouch.v4.2.executedmessage", ftypes.STRING)
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.modify_order_message = ProtoField.new("Modify Order Message", "nasdaq.ntxequities.orders.ouch.v4.2.modifyordermessage", ftypes.STRING)
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.order_modified_message = ProtoField.new("Order Modified Message", "nasdaq.ntxequities.orders.ouch.v4.2.ordermodifiedmessage", ftypes.STRING)
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.order_priority_update_message = ProtoField.new("Order Priority Update Message", "nasdaq.ntxequities.orders.ouch.v4.2.orderpriorityupdatemessage", ftypes.STRING)
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.rejected_message = ProtoField.new("Rejected Message", "nasdaq.ntxequities.orders.ouch.v4.2.rejectedmessage", ftypes.STRING)
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.replace_order_message = ProtoField.new("Replace Order Message", "nasdaq.ntxequities.orders.ouch.v4.2.replaceordermessage", ftypes.STRING)
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.replaced_message = ProtoField.new("Replaced Message", "nasdaq.ntxequities.orders.ouch.v4.2.replacedmessage", ftypes.STRING)
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.ntxequities.orders.ouch.v4.2.systemeventmessage", ftypes.STRING)
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.trade_now_message = ProtoField.new("Trade Now Message", "nasdaq.ntxequities.orders.ouch.v4.2.tradenowmessage", ftypes.STRING)

-- Nasdaq NtxEquities Orders 4.2 Session Messages
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "nasdaq.ntxequities.orders.ouch.v4.2.clientheartbeat", ftypes.BYTES, nil, nil, nil, "SoupBinTCP client sends a heartbeat to indicate the connection is alive; carries no payload")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.ntxequities.orders.ouch.v4.2.debugpacket", ftypes.STRING, nil, nil, nil, "Debug packets are intended to provide human readable text that may aid in debugging problems")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.ntxequities.orders.ouch.v4.2.endofsession", ftypes.BYTES, nil, nil, nil, "SoupBinTCP server signals end of session; client may now disconnect. Carries no payload")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.ntxequities.orders.ouch.v4.2.loginacceptedpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP server sends a Login Accepted Packet in response to receiving a valid Login Request from the client")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.ntxequities.orders.ouch.v4.2.loginrejectedpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP server sends this packet in response to an invalid Login Request Packet from the client")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.ntxequities.orders.ouch.v4.2.loginrequestpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP client must send a Login Request Packet immediately upon establishing a new TCP/IP socket connection to the server")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.logout_request = ProtoField.new("Logout Request", "nasdaq.ntxequities.orders.ouch.v4.2.logoutrequest", ftypes.BYTES, nil, nil, nil, "SoupBinTCP client requests session logout; server completes any in-flight messages then closes. Carries no payload")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.ntxequities.orders.ouch.v4.2.sequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Sequenced Data Packets act as an envelope to carry the actual sequenced data messages that are transferred from the server to the client. Each Sequenced Data Packet carries one message from the higher-lever protocol")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "nasdaq.ntxequities.orders.ouch.v4.2.serverheartbeat", ftypes.BYTES, nil, nil, nil, "SoupBinTCP server sends a heartbeat to indicate the connection is alive; carries no payload")
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.ntxequities.orders.ouch.v4.2.unsequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Unsequenced Data Packets act as an envelope to carry the actual data messages that are transferred from the client to the server")

-- Nasdaq NtxEquities Orders Ouch 4.2 Generated Fields
omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "nasdaq.ntxequities.orders.ouch.v4.2.sequenceddatapacketsequencenumber", ftypes.UINT64)

-- Nasdaq NtxEquities Orders Ouch 4.2 Expert Info
nasdaq_ntxequities_orders_ouch_v4_2.experts = {}
nasdaq_ntxequities_orders_ouch_v4_2.experts.not_a_number = ProtoExpert.new("nasdaq.ntxequities.orders.ouch.v4.2.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_nasdaq_ntxequities_orders_ouch_v4_2.experts = { nasdaq_ntxequities_orders_ouch_v4_2.experts.not_a_number }

-----------------------------------------------------------------------
-- Nasdaq NtxEquities Orders Ouch 4.2 Formatting
-----------------------------------------------------------------------

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

-- Nasdaq NtxEquities Orders Ouch 4.2 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.session_messages = true
show.sequences = true

-- Register Nasdaq NtxEquities Orders Ouch 4.2 Show Options
omi_nasdaq_ntxequities_orders_ouch_v4_2.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nasdaq_ntxequities_orders_ouch_v4_2.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nasdaq_ntxequities_orders_ouch_v4_2.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nasdaq_ntxequities_orders_ouch_v4_2.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_ntxequities_orders_ouch_v4_2.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_ntxequities_orders_ouch_v4_2.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_ntxequities_orders_ouch_v4_2.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_ntxequities_orders_ouch_v4_2.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

-- Handle changed preferences
function omi_nasdaq_ntxequities_orders_ouch_v4_2.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_ntxequities_orders_ouch_v4_2.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_ntxequities_orders_ouch_v4_2.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_ntxequities_orders_ouch_v4_2.prefs.show_headers then
    show.headers = omi_nasdaq_ntxequities_orders_ouch_v4_2.prefs.show_headers
  end
  if show.session_messages ~= omi_nasdaq_ntxequities_orders_ouch_v4_2.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_ntxequities_orders_ouch_v4_2.prefs.show_session_messages
  end
  if show.structs ~= omi_nasdaq_ntxequities_orders_ouch_v4_2.prefs.show_structs then
    show.structs = omi_nasdaq_ntxequities_orders_ouch_v4_2.prefs.show_structs
  end
  if show.sequences ~= omi_nasdaq_ntxequities_orders_ouch_v4_2.prefs.show_sequences then
    show.sequences = omi_nasdaq_ntxequities_orders_ouch_v4_2.prefs.show_sequences
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nasdaq_ntxequities_orders_ouch_v4_2.conversation = {}
nasdaq_ntxequities_orders_ouch_v4_2.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
nasdaq_ntxequities_orders_ouch_v4_2.stream_frame = nil
nasdaq_ntxequities_orders_ouch_v4_2.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
nasdaq_ntxequities_orders_ouch_v4_2.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nasdaq_ntxequities_orders_ouch_v4_2.conversation.data = function(packet)
  local key = nasdaq_ntxequities_orders_ouch_v4_2.conversation.key(packet)
  local data = nasdaq_ntxequities_orders_ouch_v4_2.conversation.flows[key]
  if data == nil then
    data = { accepted_sequence_number = { last = nil, frames = {} }, sequence = { next = nil, frames = {} } }
    nasdaq_ntxequities_orders_ouch_v4_2.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nasdaq_ntxequities_orders_ouch_v4_2.conversation.current = nil


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
-- Nasdaq NtxEquities Orders Ouch 4.2 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
nasdaq_ntxequities_orders_ouch_v4_2.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
nasdaq_ntxequities_orders_ouch_v4_2.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
nasdaq_ntxequities_orders_ouch_v4_2.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
nasdaq_ntxequities_orders_ouch_v4_2.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.accepted_sequence_number, range, value, "Accepted Sequence Number: Not Applicable")
    item:add_proto_expert_info(nasdaq_ntxequities_orders_ouch_v4_2.experts.not_a_number, "Accepted Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_ntxequities_orders_ouch_v4_2.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
nasdaq_ntxequities_orders_ouch_v4_2.accepted_session = {}

-- Size: Accepted Session
nasdaq_ntxequities_orders_ouch_v4_2.accepted_session.size = 10

-- Display: Accepted Session
nasdaq_ntxequities_orders_ouch_v4_2.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
nasdaq_ntxequities_orders_ouch_v4_2.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.accepted_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = nasdaq_ntxequities_orders_ouch_v4_2.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Aiq Canceled Reason
nasdaq_ntxequities_orders_ouch_v4_2.aiq_canceled_reason = {}

-- Size: Aiq Canceled Reason
nasdaq_ntxequities_orders_ouch_v4_2.aiq_canceled_reason.size = 1

-- Display: Aiq Canceled Reason
nasdaq_ntxequities_orders_ouch_v4_2.aiq_canceled_reason.display = function(value)
  return "Aiq Canceled Reason: "..value
end

-- Dissect: Aiq Canceled Reason
nasdaq_ntxequities_orders_ouch_v4_2.aiq_canceled_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.aiq_canceled_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_orders_ouch_v4_2.aiq_canceled_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.aiq_canceled_reason, range, value, display)

  return offset + length, value
end

-- Bbo Weight Indicator
nasdaq_ntxequities_orders_ouch_v4_2.bbo_weight_indicator = {}

-- Size: Bbo Weight Indicator
nasdaq_ntxequities_orders_ouch_v4_2.bbo_weight_indicator.size = 1

-- Display: Bbo Weight Indicator
nasdaq_ntxequities_orders_ouch_v4_2.bbo_weight_indicator.labels = {
  ["0"] = "Bbo Weight Indicator: Less Than Point Two Percent (0)",
  ["1"] = "Bbo Weight Indicator: Less Than One Percent (1)",
  ["2"] = "Bbo Weight Indicator: Less Than Two Percent (2)",
  ["3"] = "Bbo Weight Indicator: Greater Than Two Percent (3)",
  ["S"] = "Bbo Weight Indicator: Sets The Qbbo (S)",
  ["N"] = "Bbo Weight Indicator: Improves The Nbbo (N)",
}

nasdaq_ntxequities_orders_ouch_v4_2.bbo_weight_indicator.display = function(value)
  return nasdaq_ntxequities_orders_ouch_v4_2.bbo_weight_indicator.labels[value] or "Bbo Weight Indicator: Unknown("..value..")"
end

-- Dissect: Bbo Weight Indicator
nasdaq_ntxequities_orders_ouch_v4_2.bbo_weight_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.bbo_weight_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_orders_ouch_v4_2.bbo_weight_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.bbo_weight_indicator, range, value, display)

  return offset + length, value
end

-- Broken Trade Reason
nasdaq_ntxequities_orders_ouch_v4_2.broken_trade_reason = {}

-- Size: Broken Trade Reason
nasdaq_ntxequities_orders_ouch_v4_2.broken_trade_reason.size = 1

-- Display: Broken Trade Reason
nasdaq_ntxequities_orders_ouch_v4_2.broken_trade_reason.labels = {
  ["E"] = "Broken Trade Reason: Erroneous (E)",
  ["C"] = "Broken Trade Reason: Consent (C)",
  ["S"] = "Broken Trade Reason: Supervisory (S)",
  ["X"] = "Broken Trade Reason: External (X)",
}

nasdaq_ntxequities_orders_ouch_v4_2.broken_trade_reason.display = function(value)
  return nasdaq_ntxequities_orders_ouch_v4_2.broken_trade_reason.labels[value] or "Broken Trade Reason: Unknown("..value..")"
end

-- Dissect: Broken Trade Reason
nasdaq_ntxequities_orders_ouch_v4_2.broken_trade_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.broken_trade_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_orders_ouch_v4_2.broken_trade_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.broken_trade_reason, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
nasdaq_ntxequities_orders_ouch_v4_2.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
nasdaq_ntxequities_orders_ouch_v4_2.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
nasdaq_ntxequities_orders_ouch_v4_2.buy_sell_indicator.labels = {
  ["B"] = "Buy Sell Indicator: Buy (B)",
  ["S"] = "Buy Sell Indicator: Sell (S)",
  ["T"] = "Buy Sell Indicator: Sell Short (T)",
  ["E"] = "Buy Sell Indicator: Sell Short Exempt (E)",
}

nasdaq_ntxequities_orders_ouch_v4_2.buy_sell_indicator.display = function(value)
  return nasdaq_ntxequities_orders_ouch_v4_2.buy_sell_indicator.labels[value] or "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
nasdaq_ntxequities_orders_ouch_v4_2.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_orders_ouch_v4_2.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Canceled Reason
nasdaq_ntxequities_orders_ouch_v4_2.canceled_reason = {}

-- Size: Canceled Reason
nasdaq_ntxequities_orders_ouch_v4_2.canceled_reason.size = 1

-- Display: Canceled Reason
nasdaq_ntxequities_orders_ouch_v4_2.canceled_reason.labels = {
  ["U"] = "Canceled Reason: User Requested Cancel (U)",
  ["I"] = "Canceled Reason: Immediate Or Cancel Order (I)",
  ["T"] = "Canceled Reason: Timeout (T)",
  ["S"] = "Canceled Reason: Supervisory (S)",
  ["D"] = "Canceled Reason: This Order Cannot Be Executed Because Of A Regulatory Restriction (D)",
  ["Q"] = "Canceled Reason: Self Match Prevention (Q)",
  ["Z"] = "Canceled Reason: System Cancel (Z)",
  ["E"] = "Canceled Reason: Closed (E)",
}

nasdaq_ntxequities_orders_ouch_v4_2.canceled_reason.display = function(value)
  return nasdaq_ntxequities_orders_ouch_v4_2.canceled_reason.labels[value] or "Canceled Reason: Unknown("..value..")"
end

-- Dissect: Canceled Reason
nasdaq_ntxequities_orders_ouch_v4_2.canceled_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.canceled_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_orders_ouch_v4_2.canceled_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.canceled_reason, range, value, display)

  return offset + length, value
end

-- Capacity
nasdaq_ntxequities_orders_ouch_v4_2.capacity = {}

-- Size: Capacity
nasdaq_ntxequities_orders_ouch_v4_2.capacity.size = 1

-- Display: Capacity
nasdaq_ntxequities_orders_ouch_v4_2.capacity.labels = {
  ["O"] = "Capacity: Other (O)",
  ["A"] = "Capacity: Agency (A)",
  ["P"] = "Capacity: Principal (P)",
  ["R"] = "Capacity: Riskless (R)",
}

nasdaq_ntxequities_orders_ouch_v4_2.capacity.display = function(value)
  return nasdaq_ntxequities_orders_ouch_v4_2.capacity.labels[value] or "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
nasdaq_ntxequities_orders_ouch_v4_2.capacity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_orders_ouch_v4_2.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.capacity, range, value, display)

  return offset + length, value
end

-- Client Packet Type
nasdaq_ntxequities_orders_ouch_v4_2.client_packet_type = {}

-- Size: Client Packet Type
nasdaq_ntxequities_orders_ouch_v4_2.client_packet_type.size = 1

-- Display: Client Packet Type
nasdaq_ntxequities_orders_ouch_v4_2.client_packet_type.labels = {
  ["+"] = "Packet Type: Debug Packet (+)",
  ["L"] = "Packet Type: Login Request Packet (L)",
  ["U"] = "Packet Type: Unsequenced Data Packet (U)",
  ["R"] = "Packet Type: Client Heartbeat Packet (R)",
  ["O"] = "Packet Type: Logout Request Packet (O)",
}

nasdaq_ntxequities_orders_ouch_v4_2.client_packet_type.display = function(value)
  return nasdaq_ntxequities_orders_ouch_v4_2.client_packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Client Packet Type
nasdaq_ntxequities_orders_ouch_v4_2.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_orders_ouch_v4_2.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Cross Type
nasdaq_ntxequities_orders_ouch_v4_2.cross_type = {}

-- Size: Cross Type
nasdaq_ntxequities_orders_ouch_v4_2.cross_type.size = 1

-- Display: Cross Type
nasdaq_ntxequities_orders_ouch_v4_2.cross_type.labels = {
  ["N"] = "Cross Type: No Cross (N)",
  ["O"] = "Cross Type: Opening (O)",
  ["C"] = "Cross Type: Closing (C)",
  ["R"] = "Cross Type: Retail (R)",
}

nasdaq_ntxequities_orders_ouch_v4_2.cross_type.display = function(value)
  return nasdaq_ntxequities_orders_ouch_v4_2.cross_type.labels[value] or "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nasdaq_ntxequities_orders_ouch_v4_2.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_orders_ouch_v4_2.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Debug Text
nasdaq_ntxequities_orders_ouch_v4_2.debug_text = {}

-- Display: Debug Text
nasdaq_ntxequities_orders_ouch_v4_2.debug_text.display = function(value)
  return "Debug Text: "..value
end

-- Dissect runtime sized field: Debug Text
nasdaq_ntxequities_orders_ouch_v4_2.debug_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = nasdaq_ntxequities_orders_ouch_v4_2.debug_text.display(value, packet, parent, size)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.debug_text, range, value, display)

  return offset + size, value
end

-- Decrement Shares
nasdaq_ntxequities_orders_ouch_v4_2.decrement_shares = {}

-- Size: Decrement Shares
nasdaq_ntxequities_orders_ouch_v4_2.decrement_shares.size = 4

-- Display: Decrement Shares
nasdaq_ntxequities_orders_ouch_v4_2.decrement_shares.display = function(value)
  return "Decrement Shares: "..value
end

-- Dissect: Decrement Shares
nasdaq_ntxequities_orders_ouch_v4_2.decrement_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.decrement_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxequities_orders_ouch_v4_2.decrement_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.decrement_shares, range, value, display)

  return offset + length, value
end

-- Display
nasdaq_ntxequities_orders_ouch_v4_2.display = {}

-- Size: Display
nasdaq_ntxequities_orders_ouch_v4_2.display.size = 1

-- Display: Display
nasdaq_ntxequities_orders_ouch_v4_2.display.labels = {
  ["A"] = "Display: Attributable Price (A)",
  ["Y"] = "Display: Anonymous Price (Y)",
  ["N"] = "Display: Non Display (N)",
  ["P"] = "Display: Post Only (P)",
  ["I"] = "Display: Imbalance Only (I)",
  ["Z"] = "Display: Changed To Nondisplayed (Z)",
  ["M"] = "Display: Mid Point (M)",
  ["O"] = "Display: Retail Order Type 1 (O)",
  ["T"] = "Display: Retail Order Type 2 (T)",
  ["Q"] = "Display: Retail Price Improvement Order (Q)",
}

nasdaq_ntxequities_orders_ouch_v4_2.display.display = function(value)
  return nasdaq_ntxequities_orders_ouch_v4_2.display.labels[value] or "Display: Unknown("..value..")"
end

-- Dissect: Display
nasdaq_ntxequities_orders_ouch_v4_2.display.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.display.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_orders_ouch_v4_2.display.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.display, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_ntxequities_orders_ouch_v4_2.event_code = {}

-- Size: Event Code
nasdaq_ntxequities_orders_ouch_v4_2.event_code.size = 1

-- Display: Event Code
nasdaq_ntxequities_orders_ouch_v4_2.event_code.labels = {
  ["S"] = "Event Code: Start Of Day (S)",
  ["E"] = "Event Code: End Of Day (E)",
}

nasdaq_ntxequities_orders_ouch_v4_2.event_code.display = function(value)
  return nasdaq_ntxequities_orders_ouch_v4_2.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_ntxequities_orders_ouch_v4_2.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_orders_ouch_v4_2.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executed Shares
nasdaq_ntxequities_orders_ouch_v4_2.executed_shares = {}

-- Size: Executed Shares
nasdaq_ntxequities_orders_ouch_v4_2.executed_shares.size = 4

-- Display: Executed Shares
nasdaq_ntxequities_orders_ouch_v4_2.executed_shares.display = function(value)
  return "Executed Shares: "..value
end

-- Dissect: Executed Shares
nasdaq_ntxequities_orders_ouch_v4_2.executed_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.executed_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxequities_orders_ouch_v4_2.executed_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.executed_shares, range, value, display)

  return offset + length, value
end

-- Execution Price
nasdaq_ntxequities_orders_ouch_v4_2.execution_price = {}

-- Size: Execution Price
nasdaq_ntxequities_orders_ouch_v4_2.execution_price.size = 4

-- Display: Execution Price
nasdaq_ntxequities_orders_ouch_v4_2.execution_price.display = function(value)
  return "Execution Price: "..value
end

-- Translate: Execution Price
nasdaq_ntxequities_orders_ouch_v4_2.execution_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Execution Price
nasdaq_ntxequities_orders_ouch_v4_2.execution_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.execution_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_ntxequities_orders_ouch_v4_2.execution_price.translate(raw)
  local display = nasdaq_ntxequities_orders_ouch_v4_2.execution_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Existing Order Token
nasdaq_ntxequities_orders_ouch_v4_2.existing_order_token = {}

-- Size: Existing Order Token
nasdaq_ntxequities_orders_ouch_v4_2.existing_order_token.size = 14

-- Display: Existing Order Token
nasdaq_ntxequities_orders_ouch_v4_2.existing_order_token.display = function(value)
  return "Existing Order Token: "..value
end

-- Dissect: Existing Order Token
nasdaq_ntxequities_orders_ouch_v4_2.existing_order_token.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.existing_order_token.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_orders_ouch_v4_2.existing_order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.existing_order_token, range, value, display)

  return offset + length, value
end

-- Firm
nasdaq_ntxequities_orders_ouch_v4_2.firm = {}

-- Size: Firm
nasdaq_ntxequities_orders_ouch_v4_2.firm.size = 4

-- Display: Firm
nasdaq_ntxequities_orders_ouch_v4_2.firm.display = function(value)
  return "Firm: "..value
end

-- Dissect: Firm
nasdaq_ntxequities_orders_ouch_v4_2.firm.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_orders_ouch_v4_2.firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.firm, range, value, display)

  return offset + length, value
end

-- Intermarket Sweep Eligibility
nasdaq_ntxequities_orders_ouch_v4_2.intermarket_sweep_eligibility = {}

-- Size: Intermarket Sweep Eligibility
nasdaq_ntxequities_orders_ouch_v4_2.intermarket_sweep_eligibility.size = 1

-- Display: Intermarket Sweep Eligibility
nasdaq_ntxequities_orders_ouch_v4_2.intermarket_sweep_eligibility.labels = {
  ["Y"] = "Intermarket Sweep Eligibility: Eligible (Y)",
  ["N"] = "Intermarket Sweep Eligibility: Not Eligible (N)",
  ["y"] = "Intermarket Sweep Eligibility: Tradeat (y)",
}

nasdaq_ntxequities_orders_ouch_v4_2.intermarket_sweep_eligibility.display = function(value)
  return nasdaq_ntxequities_orders_ouch_v4_2.intermarket_sweep_eligibility.labels[value] or "Intermarket Sweep Eligibility: Unknown("..value..")"
end

-- Dissect: Intermarket Sweep Eligibility
nasdaq_ntxequities_orders_ouch_v4_2.intermarket_sweep_eligibility.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.intermarket_sweep_eligibility.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_orders_ouch_v4_2.intermarket_sweep_eligibility.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.intermarket_sweep_eligibility, range, value, display)

  return offset + length, value
end

-- Liquidity Flag
nasdaq_ntxequities_orders_ouch_v4_2.liquidity_flag = {}

-- Size: Liquidity Flag
nasdaq_ntxequities_orders_ouch_v4_2.liquidity_flag.size = 1

-- Display: Liquidity Flag
nasdaq_ntxequities_orders_ouch_v4_2.liquidity_flag.labels = {
  ["A"] = "Liquidity Flag: Added (A)",
  ["R"] = "Liquidity Flag: Removed (R)",
  ["J"] = "Liquidity Flag: Nondisplayed (J)",
  ["m"] = "Liquidity Flag: Removed (m)",
  ["k"] = "Liquidity Flag: Added (k)",
  ["j"] = "Liquidity Flag: Rpi (j)",
  ["r"] = "Liquidity Flag: Rmo Retail Order Removes Rpi Liquidity (r)",
  ["t"] = "Liquidity Flag: Rmo Retail Order Removes Price Improving Nondisplayed Liquidity Other Than Rpi Liquidity (t)",
  ["q"] = "Liquidity Flag: Rmo Retail Order Removes Non Rpi Midpoint Liquidity (q)",
  ["7"] = "Liquidity Flag: Displayed Liquidityadding Order Improves The Nbbo (7)",
  ["8"] = "Liquidity Flag: Displayed Liquidityadding Order Sets The Bxbbo While Joining The Nbbo (8)",
  ["p"] = "Liquidity Flag: Removed Price Improving Nondisplayed Liquidity (p)",
  ["N"] = "Liquidity Flag: Passive Midpoint Execution (N)",
}

nasdaq_ntxequities_orders_ouch_v4_2.liquidity_flag.display = function(value)
  return nasdaq_ntxequities_orders_ouch_v4_2.liquidity_flag.labels[value] or "Liquidity Flag: Unknown("..value..")"
end

-- Dissect: Liquidity Flag
nasdaq_ntxequities_orders_ouch_v4_2.liquidity_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.liquidity_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_orders_ouch_v4_2.liquidity_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.liquidity_flag, range, value, display)

  return offset + length, value
end

-- Match Number
nasdaq_ntxequities_orders_ouch_v4_2.match_number = {}

-- Size: Match Number
nasdaq_ntxequities_orders_ouch_v4_2.match_number.size = 8

-- Display: Match Number
nasdaq_ntxequities_orders_ouch_v4_2.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_ntxequities_orders_ouch_v4_2.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.match_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_ntxequities_orders_ouch_v4_2.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.match_number, range, value, display)

  return offset + length, value
end

-- Minimum Quantity
nasdaq_ntxequities_orders_ouch_v4_2.minimum_quantity = {}

-- Size: Minimum Quantity
nasdaq_ntxequities_orders_ouch_v4_2.minimum_quantity.size = 4

-- Display: Minimum Quantity
nasdaq_ntxequities_orders_ouch_v4_2.minimum_quantity.display = function(value)
  return "Minimum Quantity: "..value
end

-- Dissect: Minimum Quantity
nasdaq_ntxequities_orders_ouch_v4_2.minimum_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.minimum_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxequities_orders_ouch_v4_2.minimum_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.minimum_quantity, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nasdaq_ntxequities_orders_ouch_v4_2.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_ntxequities_orders_ouch_v4_2.order_reference_number.size = 8

-- Display: Order Reference Number
nasdaq_ntxequities_orders_ouch_v4_2.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_ntxequities_orders_ouch_v4_2.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_ntxequities_orders_ouch_v4_2.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Order State
nasdaq_ntxequities_orders_ouch_v4_2.order_state = {}

-- Size: Order State
nasdaq_ntxequities_orders_ouch_v4_2.order_state.size = 1

-- Display: Order State
nasdaq_ntxequities_orders_ouch_v4_2.order_state.labels = {
  ["L"] = "Order State: Live (L)",
  ["D"] = "Order State: Dead (D)",
}

nasdaq_ntxequities_orders_ouch_v4_2.order_state.display = function(value)
  return nasdaq_ntxequities_orders_ouch_v4_2.order_state.labels[value] or "Order State: Unknown("..value..")"
end

-- Dissect: Order State
nasdaq_ntxequities_orders_ouch_v4_2.order_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.order_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_orders_ouch_v4_2.order_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.order_state, range, value, display)

  return offset + length, value
end

-- Order Token
nasdaq_ntxequities_orders_ouch_v4_2.order_token = {}

-- Size: Order Token
nasdaq_ntxequities_orders_ouch_v4_2.order_token.size = 14

-- Display: Order Token
nasdaq_ntxequities_orders_ouch_v4_2.order_token.display = function(value)
  return "Order Token: "..value
end

-- Dissect: Order Token
nasdaq_ntxequities_orders_ouch_v4_2.order_token.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.order_token.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_orders_ouch_v4_2.order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.order_token, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_ntxequities_orders_ouch_v4_2.packet_length = {}

-- Size: Packet Length
nasdaq_ntxequities_orders_ouch_v4_2.packet_length.size = 2

-- Display: Packet Length
nasdaq_ntxequities_orders_ouch_v4_2.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_ntxequities_orders_ouch_v4_2.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxequities_orders_ouch_v4_2.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_ntxequities_orders_ouch_v4_2.password = {}

-- Size: Password
nasdaq_ntxequities_orders_ouch_v4_2.password.size = 10

-- Display: Password
nasdaq_ntxequities_orders_ouch_v4_2.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_ntxequities_orders_ouch_v4_2.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_orders_ouch_v4_2.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.password, range, value, display)

  return offset + length, value
end

-- Previous Order Token
nasdaq_ntxequities_orders_ouch_v4_2.previous_order_token = {}

-- Size: Previous Order Token
nasdaq_ntxequities_orders_ouch_v4_2.previous_order_token.size = 14

-- Display: Previous Order Token
nasdaq_ntxequities_orders_ouch_v4_2.previous_order_token.display = function(value)
  return "Previous Order Token: "..value
end

-- Dissect: Previous Order Token
nasdaq_ntxequities_orders_ouch_v4_2.previous_order_token.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.previous_order_token.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_orders_ouch_v4_2.previous_order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.previous_order_token, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_ntxequities_orders_ouch_v4_2.price = {}

-- Size: Price
nasdaq_ntxequities_orders_ouch_v4_2.price.size = 4

-- Display: Price
nasdaq_ntxequities_orders_ouch_v4_2.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nasdaq_ntxequities_orders_ouch_v4_2.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
nasdaq_ntxequities_orders_ouch_v4_2.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_ntxequities_orders_ouch_v4_2.price.translate(raw)
  local display = nasdaq_ntxequities_orders_ouch_v4_2.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity Prevented From Trading
nasdaq_ntxequities_orders_ouch_v4_2.quantity_prevented_from_trading = {}

-- Size: Quantity Prevented From Trading
nasdaq_ntxequities_orders_ouch_v4_2.quantity_prevented_from_trading.size = 4

-- Display: Quantity Prevented From Trading
nasdaq_ntxequities_orders_ouch_v4_2.quantity_prevented_from_trading.display = function(value)
  return "Quantity Prevented From Trading: "..value
end

-- Dissect: Quantity Prevented From Trading
nasdaq_ntxequities_orders_ouch_v4_2.quantity_prevented_from_trading.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.quantity_prevented_from_trading.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxequities_orders_ouch_v4_2.quantity_prevented_from_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.quantity_prevented_from_trading, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_ntxequities_orders_ouch_v4_2.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_ntxequities_orders_ouch_v4_2.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_ntxequities_orders_ouch_v4_2.reject_reason_code.labels = {
  ["A"] = "Reject Reason Code: Not Authorized (A)",
  ["S"] = "Reject Reason Code: Session Not Available (S)",
}

nasdaq_ntxequities_orders_ouch_v4_2.reject_reason_code.display = function(value)
  return nasdaq_ntxequities_orders_ouch_v4_2.reject_reason_code.labels[value] or "Reject Reason Code: Unknown("..value..")"
end

-- Dissect: Reject Reason Code
nasdaq_ntxequities_orders_ouch_v4_2.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_orders_ouch_v4_2.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Rejected Reason
nasdaq_ntxequities_orders_ouch_v4_2.rejected_reason = {}

-- Size: Rejected Reason
nasdaq_ntxequities_orders_ouch_v4_2.rejected_reason.size = 1

-- Display: Rejected Reason
nasdaq_ntxequities_orders_ouch_v4_2.rejected_reason.labels = {
  ["T"] = "Rejected Reason: Test Mode (T)",
  ["H"] = "Rejected Reason: Halted (H)",
  ["Z"] = "Rejected Reason: Shares Exceeds Configured Safety Threshold (Z)",
  ["S"] = "Rejected Reason: Invalid Stock (S)",
  ["D"] = "Rejected Reason: Invalid Display Type (D)",
  ["C"] = "Rejected Reason: Nasdaq Omx Bx Is Closed (C)",
  ["L"] = "Rejected Reason: Requested Firm Not Authorized For Requested Clearing Type On This Account (L)",
  ["M"] = "Rejected Reason: Outside Of Permitted Times (M)",
  ["R"] = "Rejected Reason: This Order Is Not Allowed In This Type Of Cross (R)",
  ["X"] = "Rejected Reason: Invalid Price (X)",
  ["N"] = "Rejected Reason: Invalid Minimum (N)",
  ["W"] = "Rejected Reason: Invalid Midpoint (W)",
  ["q"] = "Rejected Reason: Midpoint Peg Orders Are Not Accepted (q)",
  ["a"] = "Rejected Reason: Reject (a)",
  ["b"] = "Rejected Reason: Easy To Borrow Etb (b)",
  ["c"] = "Rejected Reason: Restricted (c)",
  ["d"] = "Rejected Reason: Iso (d)",
  ["e"] = "Rejected Reason: Odd (e)",
  ["f"] = "Rejected Reason: Mid Point (f)",
  ["g"] = "Rejected Reason: Pre Market (g)",
  ["h"] = "Rejected Reason: Post Market (h)",
  ["i"] = "Rejected Reason: Short Sale (i)",
  ["j"] = "Rejected Reason: On Open (j)",
  ["k"] = "Rejected Reason: On Close (k)",
  ["l"] = "Rejected Reason: Two Sided (l)",
  ["m"] = "Rejected Reason: Exceeded (m)",
  ["n"] = "Rejected Reason: Exceeded (n)",
}

nasdaq_ntxequities_orders_ouch_v4_2.rejected_reason.display = function(value)
  return nasdaq_ntxequities_orders_ouch_v4_2.rejected_reason.labels[value] or "Rejected Reason: Unknown("..value..")"
end

-- Dissect: Rejected Reason
nasdaq_ntxequities_orders_ouch_v4_2.rejected_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.rejected_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_orders_ouch_v4_2.rejected_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.rejected_reason, range, value, display)

  return offset + length, value
end

-- Replacement Order Token
nasdaq_ntxequities_orders_ouch_v4_2.replacement_order_token = {}

-- Size: Replacement Order Token
nasdaq_ntxequities_orders_ouch_v4_2.replacement_order_token.size = 14

-- Display: Replacement Order Token
nasdaq_ntxequities_orders_ouch_v4_2.replacement_order_token.display = function(value)
  return "Replacement Order Token: "..value
end

-- Dissect: Replacement Order Token
nasdaq_ntxequities_orders_ouch_v4_2.replacement_order_token.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.replacement_order_token.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_orders_ouch_v4_2.replacement_order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.replacement_order_token, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_ntxequities_orders_ouch_v4_2.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_ntxequities_orders_ouch_v4_2.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_ntxequities_orders_ouch_v4_2.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_ntxequities_orders_ouch_v4_2.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.requested_sequence_number, range, value, "Requested Sequence Number: Not Applicable")
    item:add_proto_expert_info(nasdaq_ntxequities_orders_ouch_v4_2.experts.not_a_number, "Requested Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_ntxequities_orders_ouch_v4_2.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_ntxequities_orders_ouch_v4_2.requested_session = {}

-- Size: Requested Session
nasdaq_ntxequities_orders_ouch_v4_2.requested_session.size = 10

-- Display: Requested Session
nasdaq_ntxequities_orders_ouch_v4_2.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_ntxequities_orders_ouch_v4_2.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.requested_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = nasdaq_ntxequities_orders_ouch_v4_2.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
nasdaq_ntxequities_orders_ouch_v4_2.sequenced_message_type = {}

-- Size: Sequenced Message Type
nasdaq_ntxequities_orders_ouch_v4_2.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
nasdaq_ntxequities_orders_ouch_v4_2.sequenced_message_type.labels = {
  ["S"] = "Sequenced Message Type: System Event Message (S)",
  ["A"] = "Sequenced Message Type: Accepted Message (A)",
  ["U"] = "Sequenced Message Type: Replaced Message (U)",
  ["C"] = "Sequenced Message Type: Canceled Message (C)",
  ["D"] = "Sequenced Message Type: Aiq Canceled Message (D)",
  ["E"] = "Sequenced Message Type: Executed Message (E)",
  ["B"] = "Sequenced Message Type: Broken Trade Message (B)",
  ["J"] = "Sequenced Message Type: Rejected Message (J)",
  ["P"] = "Sequenced Message Type: Cancel Pending Message (P)",
  ["I"] = "Sequenced Message Type: Cancel Reject Message (I)",
  ["T"] = "Sequenced Message Type: Order Priority Update Message (T)",
  ["M"] = "Sequenced Message Type: Order Modified Message (M)",
}

nasdaq_ntxequities_orders_ouch_v4_2.sequenced_message_type.display = function(value)
  return nasdaq_ntxequities_orders_ouch_v4_2.sequenced_message_type.labels[value] or "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
nasdaq_ntxequities_orders_ouch_v4_2.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_orders_ouch_v4_2.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
nasdaq_ntxequities_orders_ouch_v4_2.server_packet_type = {}

-- Size: Server Packet Type
nasdaq_ntxequities_orders_ouch_v4_2.server_packet_type.size = 1

-- Display: Server Packet Type
nasdaq_ntxequities_orders_ouch_v4_2.server_packet_type.labels = {
  ["+"] = "Packet Type: Debug Packet (+)",
  ["A"] = "Packet Type: Login Accepted Packet (A)",
  ["J"] = "Packet Type: Login Rejected Packet (J)",
  ["S"] = "Packet Type: Sequenced Data Packet (S)",
  ["H"] = "Packet Type: Server Heartbeat Packet (H)",
  ["Z"] = "Packet Type: End Of Session Packet (Z)",
}

nasdaq_ntxequities_orders_ouch_v4_2.server_packet_type.display = function(value)
  return nasdaq_ntxequities_orders_ouch_v4_2.server_packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Server Packet Type
nasdaq_ntxequities_orders_ouch_v4_2.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_orders_ouch_v4_2.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Shares
nasdaq_ntxequities_orders_ouch_v4_2.shares = {}

-- Size: Shares
nasdaq_ntxequities_orders_ouch_v4_2.shares.size = 4

-- Display: Shares
nasdaq_ntxequities_orders_ouch_v4_2.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
nasdaq_ntxequities_orders_ouch_v4_2.shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxequities_orders_ouch_v4_2.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.shares, range, value, display)

  return offset + length, value
end

-- Stock
nasdaq_ntxequities_orders_ouch_v4_2.stock = {}

-- Size: Stock
nasdaq_ntxequities_orders_ouch_v4_2.stock.size = 8

-- Display: Stock
nasdaq_ntxequities_orders_ouch_v4_2.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_ntxequities_orders_ouch_v4_2.stock.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_orders_ouch_v4_2.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.stock, range, value, display)

  return offset + length, value
end

-- Time In Force
nasdaq_ntxequities_orders_ouch_v4_2.time_in_force = {}

-- Size: Time In Force
nasdaq_ntxequities_orders_ouch_v4_2.time_in_force.size = 4

-- Display: Time In Force
nasdaq_ntxequities_orders_ouch_v4_2.time_in_force.display = function(value)
  return "Time In Force: "..value
end

-- Dissect: Time In Force
nasdaq_ntxequities_orders_ouch_v4_2.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.time_in_force.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxequities_orders_ouch_v4_2.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_ntxequities_orders_ouch_v4_2.timestamp = {}

-- Size: Timestamp
nasdaq_ntxequities_orders_ouch_v4_2.timestamp.size = 8

-- Display: Timestamp
nasdaq_ntxequities_orders_ouch_v4_2.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nasdaq_ntxequities_orders_ouch_v4_2.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_ntxequities_orders_ouch_v4_2.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
nasdaq_ntxequities_orders_ouch_v4_2.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nasdaq_ntxequities_orders_ouch_v4_2.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
nasdaq_ntxequities_orders_ouch_v4_2.unsequenced_message_type.labels = {
  ["O"] = "Unsequenced Message Type: Enter Order Message (O)",
  ["U"] = "Unsequenced Message Type: Replace Order Message (U)",
  ["X"] = "Unsequenced Message Type: Cancel Order Message (X)",
  ["M"] = "Unsequenced Message Type: Modify Order Message (M)",
  ["N"] = "Unsequenced Message Type: Trade Now Message (N)",
}

nasdaq_ntxequities_orders_ouch_v4_2.unsequenced_message_type.display = function(value)
  return nasdaq_ntxequities_orders_ouch_v4_2.unsequenced_message_type.labels[value] or "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
nasdaq_ntxequities_orders_ouch_v4_2.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_orders_ouch_v4_2.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_ntxequities_orders_ouch_v4_2.username = {}

-- Size: Username
nasdaq_ntxequities_orders_ouch_v4_2.username.size = 6

-- Display: Username
nasdaq_ntxequities_orders_ouch_v4_2.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_ntxequities_orders_ouch_v4_2.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_orders_ouch_v4_2.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_orders_ouch_v4_2.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NtxEquities Orders Ouch 4.2
-----------------------------------------------------------------------

-- End Of Session
nasdaq_ntxequities_orders_ouch_v4_2.end_of_session = {}

-- Display: End Of Session
nasdaq_ntxequities_orders_ouch_v4_2.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_ntxequities_orders_ouch_v4_2.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_ntxequities_orders_ouch_v4_2.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
nasdaq_ntxequities_orders_ouch_v4_2.server_heartbeat = {}

-- Display: Server Heartbeat
nasdaq_ntxequities_orders_ouch_v4_2.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
nasdaq_ntxequities_orders_ouch_v4_2.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_ntxequities_orders_ouch_v4_2.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Order Modified Message
nasdaq_ntxequities_orders_ouch_v4_2.order_modified_message = {}

-- Size: Order Modified Message
nasdaq_ntxequities_orders_ouch_v4_2.order_modified_message.size =
  nasdaq_ntxequities_orders_ouch_v4_2.timestamp.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.order_token.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.buy_sell_indicator.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.shares.size

-- Display: Order Modified Message
nasdaq_ntxequities_orders_ouch_v4_2.order_modified_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modified Message
nasdaq_ntxequities_orders_ouch_v4_2.order_modified_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_ntxequities_orders_ouch_v4_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = nasdaq_ntxequities_orders_ouch_v4_2.order_token.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 4 values
  index, buy_sell_indicator = nasdaq_ntxequities_orders_ouch_v4_2.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_ntxequities_orders_ouch_v4_2.shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modified Message
nasdaq_ntxequities_orders_ouch_v4_2.order_modified_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.order_modified_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_orders_ouch_v4_2.order_modified_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_orders_ouch_v4_2.order_modified_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_orders_ouch_v4_2.order_modified_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Priority Update Message
nasdaq_ntxequities_orders_ouch_v4_2.order_priority_update_message = {}

-- Size: Order Priority Update Message
nasdaq_ntxequities_orders_ouch_v4_2.order_priority_update_message.size =
  nasdaq_ntxequities_orders_ouch_v4_2.timestamp.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.order_token.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.price.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.display.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.order_reference_number.size

-- Display: Order Priority Update Message
nasdaq_ntxequities_orders_ouch_v4_2.order_priority_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Priority Update Message
nasdaq_ntxequities_orders_ouch_v4_2.order_priority_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_ntxequities_orders_ouch_v4_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = nasdaq_ntxequities_orders_ouch_v4_2.order_token.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_ntxequities_orders_ouch_v4_2.price.dissect(buffer, index, packet, parent)

  -- Display: 1 Byte Ascii String Enum with 10 values
  index, display = nasdaq_ntxequities_orders_ouch_v4_2.display.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_ntxequities_orders_ouch_v4_2.order_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Priority Update Message
nasdaq_ntxequities_orders_ouch_v4_2.order_priority_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.order_priority_update_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_orders_ouch_v4_2.order_priority_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_orders_ouch_v4_2.order_priority_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_orders_ouch_v4_2.order_priority_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Reject Message
nasdaq_ntxequities_orders_ouch_v4_2.cancel_reject_message = {}

-- Size: Cancel Reject Message
nasdaq_ntxequities_orders_ouch_v4_2.cancel_reject_message.size =
  nasdaq_ntxequities_orders_ouch_v4_2.timestamp.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.order_token.size

-- Display: Cancel Reject Message
nasdaq_ntxequities_orders_ouch_v4_2.cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Reject Message
nasdaq_ntxequities_orders_ouch_v4_2.cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_ntxequities_orders_ouch_v4_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = nasdaq_ntxequities_orders_ouch_v4_2.order_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Reject Message
nasdaq_ntxequities_orders_ouch_v4_2.cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.cancel_reject_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_orders_ouch_v4_2.cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_orders_ouch_v4_2.cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_orders_ouch_v4_2.cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Pending Message
nasdaq_ntxequities_orders_ouch_v4_2.cancel_pending_message = {}

-- Size: Cancel Pending Message
nasdaq_ntxequities_orders_ouch_v4_2.cancel_pending_message.size =
  nasdaq_ntxequities_orders_ouch_v4_2.timestamp.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.order_token.size

-- Display: Cancel Pending Message
nasdaq_ntxequities_orders_ouch_v4_2.cancel_pending_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Pending Message
nasdaq_ntxequities_orders_ouch_v4_2.cancel_pending_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_ntxequities_orders_ouch_v4_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = nasdaq_ntxequities_orders_ouch_v4_2.order_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Pending Message
nasdaq_ntxequities_orders_ouch_v4_2.cancel_pending_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.cancel_pending_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_orders_ouch_v4_2.cancel_pending_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_orders_ouch_v4_2.cancel_pending_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_orders_ouch_v4_2.cancel_pending_message.fields(buffer, offset, packet, parent)
  end
end

-- Rejected Message
nasdaq_ntxequities_orders_ouch_v4_2.rejected_message = {}

-- Size: Rejected Message
nasdaq_ntxequities_orders_ouch_v4_2.rejected_message.size =
  nasdaq_ntxequities_orders_ouch_v4_2.timestamp.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.order_token.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.rejected_reason.size

-- Display: Rejected Message
nasdaq_ntxequities_orders_ouch_v4_2.rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rejected Message
nasdaq_ntxequities_orders_ouch_v4_2.rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_ntxequities_orders_ouch_v4_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = nasdaq_ntxequities_orders_ouch_v4_2.order_token.dissect(buffer, index, packet, parent)

  -- Rejected Reason: 1 Byte Ascii String Enum with 27 values
  index, rejected_reason = nasdaq_ntxequities_orders_ouch_v4_2.rejected_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rejected Message
nasdaq_ntxequities_orders_ouch_v4_2.rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.rejected_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_orders_ouch_v4_2.rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_orders_ouch_v4_2.rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_orders_ouch_v4_2.rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Message
nasdaq_ntxequities_orders_ouch_v4_2.broken_trade_message = {}

-- Size: Broken Trade Message
nasdaq_ntxequities_orders_ouch_v4_2.broken_trade_message.size =
  nasdaq_ntxequities_orders_ouch_v4_2.timestamp.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.order_token.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.match_number.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.broken_trade_reason.size

-- Display: Broken Trade Message
nasdaq_ntxequities_orders_ouch_v4_2.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
nasdaq_ntxequities_orders_ouch_v4_2.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_ntxequities_orders_ouch_v4_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = nasdaq_ntxequities_orders_ouch_v4_2.order_token.dissect(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_ntxequities_orders_ouch_v4_2.match_number.dissect(buffer, index, packet, parent)

  -- Broken Trade Reason: 1 Byte Ascii String Enum with 4 values
  index, broken_trade_reason = nasdaq_ntxequities_orders_ouch_v4_2.broken_trade_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
nasdaq_ntxequities_orders_ouch_v4_2.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.broken_trade_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_orders_ouch_v4_2.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_orders_ouch_v4_2.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_orders_ouch_v4_2.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Executed Message
nasdaq_ntxequities_orders_ouch_v4_2.executed_message = {}

-- Size: Executed Message
nasdaq_ntxequities_orders_ouch_v4_2.executed_message.size =
  nasdaq_ntxequities_orders_ouch_v4_2.timestamp.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.order_token.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.executed_shares.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.execution_price.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.liquidity_flag.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.match_number.size

-- Display: Executed Message
nasdaq_ntxequities_orders_ouch_v4_2.executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Executed Message
nasdaq_ntxequities_orders_ouch_v4_2.executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_ntxequities_orders_ouch_v4_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = nasdaq_ntxequities_orders_ouch_v4_2.order_token.dissect(buffer, index, packet, parent)

  -- Executed Shares: 4 Byte Unsigned Fixed Width Integer
  index, executed_shares = nasdaq_ntxequities_orders_ouch_v4_2.executed_shares.dissect(buffer, index, packet, parent)

  -- Execution Price: 4 Byte Unsigned Fixed Width Integer
  index, execution_price = nasdaq_ntxequities_orders_ouch_v4_2.execution_price.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Ascii String Enum with 13 values
  index, liquidity_flag = nasdaq_ntxequities_orders_ouch_v4_2.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_ntxequities_orders_ouch_v4_2.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Executed Message
nasdaq_ntxequities_orders_ouch_v4_2.executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.executed_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_orders_ouch_v4_2.executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_orders_ouch_v4_2.executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_orders_ouch_v4_2.executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Aiq Canceled Message
nasdaq_ntxequities_orders_ouch_v4_2.aiq_canceled_message = {}

-- Size: Aiq Canceled Message
nasdaq_ntxequities_orders_ouch_v4_2.aiq_canceled_message.size =
  nasdaq_ntxequities_orders_ouch_v4_2.timestamp.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.order_token.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.decrement_shares.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.aiq_canceled_reason.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.quantity_prevented_from_trading.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.execution_price.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.liquidity_flag.size

-- Display: Aiq Canceled Message
nasdaq_ntxequities_orders_ouch_v4_2.aiq_canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Aiq Canceled Message
nasdaq_ntxequities_orders_ouch_v4_2.aiq_canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_ntxequities_orders_ouch_v4_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = nasdaq_ntxequities_orders_ouch_v4_2.order_token.dissect(buffer, index, packet, parent)

  -- Decrement Shares: 4 Byte Unsigned Fixed Width Integer
  index, decrement_shares = nasdaq_ntxequities_orders_ouch_v4_2.decrement_shares.dissect(buffer, index, packet, parent)

  -- Aiq Canceled Reason: 1 Byte Ascii String
  index, aiq_canceled_reason = nasdaq_ntxequities_orders_ouch_v4_2.aiq_canceled_reason.dissect(buffer, index, packet, parent)

  -- Quantity Prevented From Trading: 4 Byte Unsigned Fixed Width Integer
  index, quantity_prevented_from_trading = nasdaq_ntxequities_orders_ouch_v4_2.quantity_prevented_from_trading.dissect(buffer, index, packet, parent)

  -- Execution Price: 4 Byte Unsigned Fixed Width Integer
  index, execution_price = nasdaq_ntxequities_orders_ouch_v4_2.execution_price.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Ascii String Enum with 13 values
  index, liquidity_flag = nasdaq_ntxequities_orders_ouch_v4_2.liquidity_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Aiq Canceled Message
nasdaq_ntxequities_orders_ouch_v4_2.aiq_canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.aiq_canceled_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_orders_ouch_v4_2.aiq_canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_orders_ouch_v4_2.aiq_canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_orders_ouch_v4_2.aiq_canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Canceled Message
nasdaq_ntxequities_orders_ouch_v4_2.canceled_message = {}

-- Size: Canceled Message
nasdaq_ntxequities_orders_ouch_v4_2.canceled_message.size =
  nasdaq_ntxequities_orders_ouch_v4_2.timestamp.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.order_token.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.decrement_shares.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.canceled_reason.size

-- Display: Canceled Message
nasdaq_ntxequities_orders_ouch_v4_2.canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Canceled Message
nasdaq_ntxequities_orders_ouch_v4_2.canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_ntxequities_orders_ouch_v4_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = nasdaq_ntxequities_orders_ouch_v4_2.order_token.dissect(buffer, index, packet, parent)

  -- Decrement Shares: 4 Byte Unsigned Fixed Width Integer
  index, decrement_shares = nasdaq_ntxequities_orders_ouch_v4_2.decrement_shares.dissect(buffer, index, packet, parent)

  -- Canceled Reason: 1 Byte Ascii String Enum with 8 values
  index, canceled_reason = nasdaq_ntxequities_orders_ouch_v4_2.canceled_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Canceled Message
nasdaq_ntxequities_orders_ouch_v4_2.canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.canceled_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_orders_ouch_v4_2.canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_orders_ouch_v4_2.canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_orders_ouch_v4_2.canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Replaced Message
nasdaq_ntxequities_orders_ouch_v4_2.replaced_message = {}

-- Size: Replaced Message
nasdaq_ntxequities_orders_ouch_v4_2.replaced_message.size =
  nasdaq_ntxequities_orders_ouch_v4_2.timestamp.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.replacement_order_token.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.buy_sell_indicator.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.shares.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.stock.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.price.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.time_in_force.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.firm.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.display.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.order_reference_number.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.capacity.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.intermarket_sweep_eligibility.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.minimum_quantity.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.cross_type.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.order_state.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.previous_order_token.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.bbo_weight_indicator.size

-- Display: Replaced Message
nasdaq_ntxequities_orders_ouch_v4_2.replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replaced Message
nasdaq_ntxequities_orders_ouch_v4_2.replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_ntxequities_orders_ouch_v4_2.timestamp.dissect(buffer, index, packet, parent)

  -- Replacement Order Token: 14 Byte Ascii String
  index, replacement_order_token = nasdaq_ntxequities_orders_ouch_v4_2.replacement_order_token.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 4 values
  index, buy_sell_indicator = nasdaq_ntxequities_orders_ouch_v4_2.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_ntxequities_orders_ouch_v4_2.shares.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_ntxequities_orders_ouch_v4_2.stock.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_ntxequities_orders_ouch_v4_2.price.dissect(buffer, index, packet, parent)

  -- Time In Force: 4 Byte Unsigned Fixed Width Integer
  index, time_in_force = nasdaq_ntxequities_orders_ouch_v4_2.time_in_force.dissect(buffer, index, packet, parent)

  -- Firm: 4 Byte Ascii String
  index, firm = nasdaq_ntxequities_orders_ouch_v4_2.firm.dissect(buffer, index, packet, parent)

  -- Display: 1 Byte Ascii String Enum with 10 values
  index, display = nasdaq_ntxequities_orders_ouch_v4_2.display.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_ntxequities_orders_ouch_v4_2.order_reference_number.dissect(buffer, index, packet, parent)

  -- Capacity: 1 Byte Ascii String Enum with 4 values
  index, capacity = nasdaq_ntxequities_orders_ouch_v4_2.capacity.dissect(buffer, index, packet, parent)

  -- Intermarket Sweep Eligibility: 1 Byte Ascii String Enum with 3 values
  index, intermarket_sweep_eligibility = nasdaq_ntxequities_orders_ouch_v4_2.intermarket_sweep_eligibility.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: 4 Byte Unsigned Fixed Width Integer
  index, minimum_quantity = nasdaq_ntxequities_orders_ouch_v4_2.minimum_quantity.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 4 values
  index, cross_type = nasdaq_ntxequities_orders_ouch_v4_2.cross_type.dissect(buffer, index, packet, parent)

  -- Order State: 1 Byte Ascii String Enum with 2 values
  index, order_state = nasdaq_ntxequities_orders_ouch_v4_2.order_state.dissect(buffer, index, packet, parent)

  -- Previous Order Token: 14 Byte Ascii String
  index, previous_order_token = nasdaq_ntxequities_orders_ouch_v4_2.previous_order_token.dissect(buffer, index, packet, parent)

  -- Bbo Weight Indicator: 1 Byte Ascii String Enum with 6 values
  index, bbo_weight_indicator = nasdaq_ntxequities_orders_ouch_v4_2.bbo_weight_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replaced Message
nasdaq_ntxequities_orders_ouch_v4_2.replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.replaced_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_orders_ouch_v4_2.replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_orders_ouch_v4_2.replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_orders_ouch_v4_2.replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Accepted Message
nasdaq_ntxequities_orders_ouch_v4_2.accepted_message = {}

-- Size: Accepted Message
nasdaq_ntxequities_orders_ouch_v4_2.accepted_message.size =
  nasdaq_ntxequities_orders_ouch_v4_2.timestamp.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.order_token.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.buy_sell_indicator.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.shares.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.stock.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.price.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.time_in_force.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.firm.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.display.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.order_reference_number.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.capacity.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.intermarket_sweep_eligibility.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.minimum_quantity.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.cross_type.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.order_state.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.bbo_weight_indicator.size

-- Display: Accepted Message
nasdaq_ntxequities_orders_ouch_v4_2.accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Accepted Message
nasdaq_ntxequities_orders_ouch_v4_2.accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_ntxequities_orders_ouch_v4_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = nasdaq_ntxequities_orders_ouch_v4_2.order_token.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 4 values
  index, buy_sell_indicator = nasdaq_ntxequities_orders_ouch_v4_2.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_ntxequities_orders_ouch_v4_2.shares.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_ntxequities_orders_ouch_v4_2.stock.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_ntxequities_orders_ouch_v4_2.price.dissect(buffer, index, packet, parent)

  -- Time In Force: 4 Byte Unsigned Fixed Width Integer
  index, time_in_force = nasdaq_ntxequities_orders_ouch_v4_2.time_in_force.dissect(buffer, index, packet, parent)

  -- Firm: 4 Byte Ascii String
  index, firm = nasdaq_ntxequities_orders_ouch_v4_2.firm.dissect(buffer, index, packet, parent)

  -- Display: 1 Byte Ascii String Enum with 10 values
  index, display = nasdaq_ntxequities_orders_ouch_v4_2.display.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_ntxequities_orders_ouch_v4_2.order_reference_number.dissect(buffer, index, packet, parent)

  -- Capacity: 1 Byte Ascii String Enum with 4 values
  index, capacity = nasdaq_ntxequities_orders_ouch_v4_2.capacity.dissect(buffer, index, packet, parent)

  -- Intermarket Sweep Eligibility: 1 Byte Ascii String Enum with 3 values
  index, intermarket_sweep_eligibility = nasdaq_ntxequities_orders_ouch_v4_2.intermarket_sweep_eligibility.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: 4 Byte Unsigned Fixed Width Integer
  index, minimum_quantity = nasdaq_ntxequities_orders_ouch_v4_2.minimum_quantity.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 4 values
  index, cross_type = nasdaq_ntxequities_orders_ouch_v4_2.cross_type.dissect(buffer, index, packet, parent)

  -- Order State: 1 Byte Ascii String Enum with 2 values
  index, order_state = nasdaq_ntxequities_orders_ouch_v4_2.order_state.dissect(buffer, index, packet, parent)

  -- Bbo Weight Indicator: 1 Byte Ascii String Enum with 6 values
  index, bbo_weight_indicator = nasdaq_ntxequities_orders_ouch_v4_2.bbo_weight_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Accepted Message
nasdaq_ntxequities_orders_ouch_v4_2.accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.accepted_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_orders_ouch_v4_2.accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_orders_ouch_v4_2.accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_orders_ouch_v4_2.accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_ntxequities_orders_ouch_v4_2.system_event_message = {}

-- Size: System Event Message
nasdaq_ntxequities_orders_ouch_v4_2.system_event_message.size =
  nasdaq_ntxequities_orders_ouch_v4_2.timestamp.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.event_code.size

-- Display: System Event Message
nasdaq_ntxequities_orders_ouch_v4_2.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_ntxequities_orders_ouch_v4_2.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_ntxequities_orders_ouch_v4_2.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 2 values
  index, event_code = nasdaq_ntxequities_orders_ouch_v4_2.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_ntxequities_orders_ouch_v4_2.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_orders_ouch_v4_2.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_orders_ouch_v4_2.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_orders_ouch_v4_2.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nasdaq_ntxequities_orders_ouch_v4_2.sequenced_message = {}

-- Dispatch: Sequenced Message
nasdaq_ntxequities_orders_ouch_v4_2.sequenced_message.dispatch = {
  ["S"] = nasdaq_ntxequities_orders_ouch_v4_2.system_event_message.dissect,
  ["A"] = nasdaq_ntxequities_orders_ouch_v4_2.accepted_message.dissect,
  ["U"] = nasdaq_ntxequities_orders_ouch_v4_2.replaced_message.dissect,
  ["C"] = nasdaq_ntxequities_orders_ouch_v4_2.canceled_message.dissect,
  ["D"] = nasdaq_ntxequities_orders_ouch_v4_2.aiq_canceled_message.dissect,
  ["E"] = nasdaq_ntxequities_orders_ouch_v4_2.executed_message.dissect,
  ["B"] = nasdaq_ntxequities_orders_ouch_v4_2.broken_trade_message.dissect,
  ["J"] = nasdaq_ntxequities_orders_ouch_v4_2.rejected_message.dissect,
  ["P"] = nasdaq_ntxequities_orders_ouch_v4_2.cancel_pending_message.dissect,
  ["I"] = nasdaq_ntxequities_orders_ouch_v4_2.cancel_reject_message.dissect,
  ["T"] = nasdaq_ntxequities_orders_ouch_v4_2.order_priority_update_message.dissect,
  ["M"] = nasdaq_ntxequities_orders_ouch_v4_2.order_modified_message.dissect,
}

-- Dissect: Sequenced Message
nasdaq_ntxequities_orders_ouch_v4_2.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  local dissect = nasdaq_ntxequities_orders_ouch_v4_2.sequenced_message.dispatch[sequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
nasdaq_ntxequities_orders_ouch_v4_2.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
nasdaq_ntxequities_orders_ouch_v4_2.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
nasdaq_ntxequities_orders_ouch_v4_2.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_ntxequities_orders_ouch_v4_2.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = nasdaq_ntxequities_orders_ouch_v4_2.conversation.current
  if flow ~= nil then
    local memo = flow.sequence.frames[packet.number]
    if not packet.visited then
      if flow.sequence.next == nil then
        flow.sequence.next = tonumber(nasdaq_ntxequities_orders_ouch_v4_2.accepted_sequence_number.current)
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
          local sequence = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if nasdaq_ntxequities_orders_ouch_v4_2.stream_frame ~= packet.number or nasdaq_ntxequities_orders_ouch_v4_2.stream_occurrence >= #memo then
          nasdaq_ntxequities_orders_ouch_v4_2.stream_frame = packet.number
          nasdaq_ntxequities_orders_ouch_v4_2.stream_occurrence = 0
        end
        nasdaq_ntxequities_orders_ouch_v4_2.stream_occurrence = nasdaq_ntxequities_orders_ouch_v4_2.stream_occurrence + 1
        local value = memo[nasdaq_ntxequities_orders_ouch_v4_2.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 12 values
  index, sequenced_message_type = nasdaq_ntxequities_orders_ouch_v4_2.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 12 branches
  index = nasdaq_ntxequities_orders_ouch_v4_2.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_ntxequities_orders_ouch_v4_2.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = nasdaq_ntxequities_orders_ouch_v4_2.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.sequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_ntxequities_orders_ouch_v4_2.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = nasdaq_ntxequities_orders_ouch_v4_2.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_ntxequities_orders_ouch_v4_2.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
nasdaq_ntxequities_orders_ouch_v4_2.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_ntxequities_orders_ouch_v4_2.login_rejected_packet.size =
  nasdaq_ntxequities_orders_ouch_v4_2.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_ntxequities_orders_ouch_v4_2.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_ntxequities_orders_ouch_v4_2.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String Enum with 2 values
  index, reject_reason_code = nasdaq_ntxequities_orders_ouch_v4_2.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_ntxequities_orders_ouch_v4_2.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_ntxequities_orders_ouch_v4_2.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_orders_ouch_v4_2.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_orders_ouch_v4_2.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_ntxequities_orders_ouch_v4_2.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_ntxequities_orders_ouch_v4_2.login_accepted_packet.size =
  nasdaq_ntxequities_orders_ouch_v4_2.accepted_session.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.accepted_sequence_number.size

-- Display: Login Accepted Packet
nasdaq_ntxequities_orders_ouch_v4_2.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_ntxequities_orders_ouch_v4_2.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = nasdaq_ntxequities_orders_ouch_v4_2.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = nasdaq_ntxequities_orders_ouch_v4_2.accepted_sequence_number.dissect(buffer, index, packet, parent)

  -- Store Accepted Sequence Number Value
  nasdaq_ntxequities_orders_ouch_v4_2.accepted_sequence_number.current = accepted_sequence_number

  if not packet.visited then
    nasdaq_ntxequities_orders_ouch_v4_2.conversation.current.accepted_sequence_number.last = accepted_sequence_number
  end

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_ntxequities_orders_ouch_v4_2.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_ntxequities_orders_ouch_v4_2.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_orders_ouch_v4_2.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_orders_ouch_v4_2.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_ntxequities_orders_ouch_v4_2.debug_packet = {}

-- Calculate size of: Debug Packet
nasdaq_ntxequities_orders_ouch_v4_2.debug_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Debug Text
  index = index + buffer(offset + index - 3, 2):uint()

  return index
end

-- Display: Debug Packet
nasdaq_ntxequities_orders_ouch_v4_2.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_ntxequities_orders_ouch_v4_2.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Debug Text
  local size_of_debug_text = packet_length - 1

  -- Debug Text: 0 Byte Ascii String
  index, debug_text = nasdaq_ntxequities_orders_ouch_v4_2.debug_text.dissect(buffer, index, packet, parent, size_of_debug_text)

  return index
end

-- Dissect: Debug Packet
nasdaq_ntxequities_orders_ouch_v4_2.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_ntxequities_orders_ouch_v4_2.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_orders_ouch_v4_2.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_orders_ouch_v4_2.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
nasdaq_ntxequities_orders_ouch_v4_2.server_payload = {}

-- Dispatch: Server Payload
nasdaq_ntxequities_orders_ouch_v4_2.server_payload.dispatch = {
  ["+"] = nasdaq_ntxequities_orders_ouch_v4_2.debug_packet.dissect,
  ["A"] = nasdaq_ntxequities_orders_ouch_v4_2.login_accepted_packet.dissect,
  ["J"] = nasdaq_ntxequities_orders_ouch_v4_2.login_rejected_packet.dissect,
  ["S"] = nasdaq_ntxequities_orders_ouch_v4_2.sequenced_data_packet.dissect,
  ["H"] = nasdaq_ntxequities_orders_ouch_v4_2.server_heartbeat.dissect,
  ["Z"] = nasdaq_ntxequities_orders_ouch_v4_2.end_of_session.dissect,
}

-- Dissect: Server Payload
nasdaq_ntxequities_orders_ouch_v4_2.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  local dissect = nasdaq_ntxequities_orders_ouch_v4_2.server_payload.dispatch[server_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
nasdaq_ntxequities_orders_ouch_v4_2.server_packet_header = {}

-- Size: Server Packet Header
nasdaq_ntxequities_orders_ouch_v4_2.server_packet_header.size =
  nasdaq_ntxequities_orders_ouch_v4_2.packet_length.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.server_packet_type.size

-- Display: Server Packet Header
nasdaq_ntxequities_orders_ouch_v4_2.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
nasdaq_ntxequities_orders_ouch_v4_2.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_ntxequities_orders_ouch_v4_2.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = nasdaq_ntxequities_orders_ouch_v4_2.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
nasdaq_ntxequities_orders_ouch_v4_2.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.server_packet_header, buffer(offset, 0))
    local index = nasdaq_ntxequities_orders_ouch_v4_2.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_orders_ouch_v4_2.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_orders_ouch_v4_2.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
nasdaq_ntxequities_orders_ouch_v4_2.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
nasdaq_ntxequities_orders_ouch_v4_2.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
nasdaq_ntxequities_orders_ouch_v4_2.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = nasdaq_ntxequities_orders_ouch_v4_2.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = nasdaq_ntxequities_orders_ouch_v4_2.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
nasdaq_ntxequities_orders_ouch_v4_2.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_ntxequities_orders_ouch_v4_2.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = nasdaq_ntxequities_orders_ouch_v4_2.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_ntxequities_orders_ouch_v4_2.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_ntxequities_orders_ouch_v4_2.server_packet_header.size then
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
nasdaq_ntxequities_orders_ouch_v4_2.server_packet = {}

-- Verify required size of Tcp packet
nasdaq_ntxequities_orders_ouch_v4_2.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_ntxequities_orders_ouch_v4_2.server_packet_header.size
end

-- Dissect Server Packet
nasdaq_ntxequities_orders_ouch_v4_2.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nasdaq_ntxequities_orders_ouch_v4_2.conversation.data(packet)
  if not packet.visited then
    data.accepted_sequence_number.frames[packet.number] = data.accepted_sequence_number.last
  end
  nasdaq_ntxequities_orders_ouch_v4_2.accepted_sequence_number.current = data.accepted_sequence_number.frames[packet.number]
  nasdaq_ntxequities_orders_ouch_v4_2.conversation.current = data

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
      index = nasdaq_ntxequities_orders_ouch_v4_2.server_soup_bin_tcp_packet.dissect(frame, index, packet, parent, size_of_server_soup_bin_tcp_packet)
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
nasdaq_ntxequities_orders_ouch_v4_2.logout_request = {}

-- Display: Logout Request
nasdaq_ntxequities_orders_ouch_v4_2.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
nasdaq_ntxequities_orders_ouch_v4_2.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_ntxequities_orders_ouch_v4_2.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
nasdaq_ntxequities_orders_ouch_v4_2.client_heartbeat = {}

-- Display: Client Heartbeat
nasdaq_ntxequities_orders_ouch_v4_2.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
nasdaq_ntxequities_orders_ouch_v4_2.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_ntxequities_orders_ouch_v4_2.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Trade Now Message
nasdaq_ntxequities_orders_ouch_v4_2.trade_now_message = {}

-- Size: Trade Now Message
nasdaq_ntxequities_orders_ouch_v4_2.trade_now_message.size =
  nasdaq_ntxequities_orders_ouch_v4_2.order_token.size

-- Display: Trade Now Message
nasdaq_ntxequities_orders_ouch_v4_2.trade_now_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Now Message
nasdaq_ntxequities_orders_ouch_v4_2.trade_now_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: 14 Byte Ascii String
  index, order_token = nasdaq_ntxequities_orders_ouch_v4_2.order_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Now Message
nasdaq_ntxequities_orders_ouch_v4_2.trade_now_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.trade_now_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_orders_ouch_v4_2.trade_now_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_orders_ouch_v4_2.trade_now_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_orders_ouch_v4_2.trade_now_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Message
nasdaq_ntxequities_orders_ouch_v4_2.modify_order_message = {}

-- Size: Modify Order Message
nasdaq_ntxequities_orders_ouch_v4_2.modify_order_message.size =
  nasdaq_ntxequities_orders_ouch_v4_2.order_token.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.buy_sell_indicator.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.shares.size

-- Display: Modify Order Message
nasdaq_ntxequities_orders_ouch_v4_2.modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Message
nasdaq_ntxequities_orders_ouch_v4_2.modify_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: 14 Byte Ascii String
  index, order_token = nasdaq_ntxequities_orders_ouch_v4_2.order_token.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 4 values
  index, buy_sell_indicator = nasdaq_ntxequities_orders_ouch_v4_2.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_ntxequities_orders_ouch_v4_2.shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Message
nasdaq_ntxequities_orders_ouch_v4_2.modify_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.modify_order_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_orders_ouch_v4_2.modify_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_orders_ouch_v4_2.modify_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_orders_ouch_v4_2.modify_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order Message
nasdaq_ntxequities_orders_ouch_v4_2.cancel_order_message = {}

-- Size: Cancel Order Message
nasdaq_ntxequities_orders_ouch_v4_2.cancel_order_message.size =
  nasdaq_ntxequities_orders_ouch_v4_2.order_token.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.shares.size

-- Display: Cancel Order Message
nasdaq_ntxequities_orders_ouch_v4_2.cancel_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Message
nasdaq_ntxequities_orders_ouch_v4_2.cancel_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: 14 Byte Ascii String
  index, order_token = nasdaq_ntxequities_orders_ouch_v4_2.order_token.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_ntxequities_orders_ouch_v4_2.shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Message
nasdaq_ntxequities_orders_ouch_v4_2.cancel_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.cancel_order_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_orders_ouch_v4_2.cancel_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_orders_ouch_v4_2.cancel_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_orders_ouch_v4_2.cancel_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Replace Order Message
nasdaq_ntxequities_orders_ouch_v4_2.replace_order_message = {}

-- Size: Replace Order Message
nasdaq_ntxequities_orders_ouch_v4_2.replace_order_message.size =
  nasdaq_ntxequities_orders_ouch_v4_2.existing_order_token.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.replacement_order_token.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.shares.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.price.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.time_in_force.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.display.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.intermarket_sweep_eligibility.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.minimum_quantity.size

-- Display: Replace Order Message
nasdaq_ntxequities_orders_ouch_v4_2.replace_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replace Order Message
nasdaq_ntxequities_orders_ouch_v4_2.replace_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Existing Order Token: 14 Byte Ascii String
  index, existing_order_token = nasdaq_ntxequities_orders_ouch_v4_2.existing_order_token.dissect(buffer, index, packet, parent)

  -- Replacement Order Token: 14 Byte Ascii String
  index, replacement_order_token = nasdaq_ntxequities_orders_ouch_v4_2.replacement_order_token.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_ntxequities_orders_ouch_v4_2.shares.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_ntxequities_orders_ouch_v4_2.price.dissect(buffer, index, packet, parent)

  -- Time In Force: 4 Byte Unsigned Fixed Width Integer
  index, time_in_force = nasdaq_ntxequities_orders_ouch_v4_2.time_in_force.dissect(buffer, index, packet, parent)

  -- Display: 1 Byte Ascii String Enum with 10 values
  index, display = nasdaq_ntxequities_orders_ouch_v4_2.display.dissect(buffer, index, packet, parent)

  -- Intermarket Sweep Eligibility: 1 Byte Ascii String Enum with 3 values
  index, intermarket_sweep_eligibility = nasdaq_ntxequities_orders_ouch_v4_2.intermarket_sweep_eligibility.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: 4 Byte Unsigned Fixed Width Integer
  index, minimum_quantity = nasdaq_ntxequities_orders_ouch_v4_2.minimum_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replace Order Message
nasdaq_ntxequities_orders_ouch_v4_2.replace_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.replace_order_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_orders_ouch_v4_2.replace_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_orders_ouch_v4_2.replace_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_orders_ouch_v4_2.replace_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Enter Order Message
nasdaq_ntxequities_orders_ouch_v4_2.enter_order_message = {}

-- Size: Enter Order Message
nasdaq_ntxequities_orders_ouch_v4_2.enter_order_message.size =
  nasdaq_ntxequities_orders_ouch_v4_2.order_token.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.buy_sell_indicator.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.shares.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.stock.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.price.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.time_in_force.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.firm.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.display.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.capacity.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.intermarket_sweep_eligibility.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.minimum_quantity.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.cross_type.size

-- Display: Enter Order Message
nasdaq_ntxequities_orders_ouch_v4_2.enter_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enter Order Message
nasdaq_ntxequities_orders_ouch_v4_2.enter_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: 14 Byte Ascii String
  index, order_token = nasdaq_ntxequities_orders_ouch_v4_2.order_token.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 4 values
  index, buy_sell_indicator = nasdaq_ntxequities_orders_ouch_v4_2.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_ntxequities_orders_ouch_v4_2.shares.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_ntxequities_orders_ouch_v4_2.stock.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_ntxequities_orders_ouch_v4_2.price.dissect(buffer, index, packet, parent)

  -- Time In Force: 4 Byte Unsigned Fixed Width Integer
  index, time_in_force = nasdaq_ntxequities_orders_ouch_v4_2.time_in_force.dissect(buffer, index, packet, parent)

  -- Firm: 4 Byte Ascii String
  index, firm = nasdaq_ntxequities_orders_ouch_v4_2.firm.dissect(buffer, index, packet, parent)

  -- Display: 1 Byte Ascii String Enum with 10 values
  index, display = nasdaq_ntxequities_orders_ouch_v4_2.display.dissect(buffer, index, packet, parent)

  -- Capacity: 1 Byte Ascii String Enum with 4 values
  index, capacity = nasdaq_ntxequities_orders_ouch_v4_2.capacity.dissect(buffer, index, packet, parent)

  -- Intermarket Sweep Eligibility: 1 Byte Ascii String Enum with 3 values
  index, intermarket_sweep_eligibility = nasdaq_ntxequities_orders_ouch_v4_2.intermarket_sweep_eligibility.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: 4 Byte Unsigned Fixed Width Integer
  index, minimum_quantity = nasdaq_ntxequities_orders_ouch_v4_2.minimum_quantity.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 4 values
  index, cross_type = nasdaq_ntxequities_orders_ouch_v4_2.cross_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enter Order Message
nasdaq_ntxequities_orders_ouch_v4_2.enter_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.enter_order_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_orders_ouch_v4_2.enter_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_orders_ouch_v4_2.enter_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_orders_ouch_v4_2.enter_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
nasdaq_ntxequities_orders_ouch_v4_2.unsequenced_message = {}

-- Dispatch: Unsequenced Message
nasdaq_ntxequities_orders_ouch_v4_2.unsequenced_message.dispatch = {
  ["O"] = nasdaq_ntxequities_orders_ouch_v4_2.enter_order_message.dissect,
  ["U"] = nasdaq_ntxequities_orders_ouch_v4_2.replace_order_message.dissect,
  ["X"] = nasdaq_ntxequities_orders_ouch_v4_2.cancel_order_message.dissect,
  ["M"] = nasdaq_ntxequities_orders_ouch_v4_2.modify_order_message.dissect,
  ["N"] = nasdaq_ntxequities_orders_ouch_v4_2.trade_now_message.dissect,
}

-- Dissect: Unsequenced Message
nasdaq_ntxequities_orders_ouch_v4_2.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  local dissect = nasdaq_ntxequities_orders_ouch_v4_2.unsequenced_message.dispatch[unsequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
nasdaq_ntxequities_orders_ouch_v4_2.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
nasdaq_ntxequities_orders_ouch_v4_2.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
nasdaq_ntxequities_orders_ouch_v4_2.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_ntxequities_orders_ouch_v4_2.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String Enum with 5 values
  index, unsequenced_message_type = nasdaq_ntxequities_orders_ouch_v4_2.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 5 branches
  index = nasdaq_ntxequities_orders_ouch_v4_2.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_ntxequities_orders_ouch_v4_2.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = nasdaq_ntxequities_orders_ouch_v4_2.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_ntxequities_orders_ouch_v4_2.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = nasdaq_ntxequities_orders_ouch_v4_2.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_ntxequities_orders_ouch_v4_2.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
nasdaq_ntxequities_orders_ouch_v4_2.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_ntxequities_orders_ouch_v4_2.login_request_packet.size =
  nasdaq_ntxequities_orders_ouch_v4_2.username.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.password.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.requested_session.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_ntxequities_orders_ouch_v4_2.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_ntxequities_orders_ouch_v4_2.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_ntxequities_orders_ouch_v4_2.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_ntxequities_orders_ouch_v4_2.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_ntxequities_orders_ouch_v4_2.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_ntxequities_orders_ouch_v4_2.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_ntxequities_orders_ouch_v4_2.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_ntxequities_orders_ouch_v4_2.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_orders_ouch_v4_2.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_orders_ouch_v4_2.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
nasdaq_ntxequities_orders_ouch_v4_2.client_payload = {}

-- Dispatch: Client Payload
nasdaq_ntxequities_orders_ouch_v4_2.client_payload.dispatch = {
  ["+"] = nasdaq_ntxequities_orders_ouch_v4_2.debug_packet.dissect,
  ["L"] = nasdaq_ntxequities_orders_ouch_v4_2.login_request_packet.dissect,
  ["U"] = nasdaq_ntxequities_orders_ouch_v4_2.unsequenced_data_packet.dissect,
  ["R"] = nasdaq_ntxequities_orders_ouch_v4_2.client_heartbeat.dissect,
  ["O"] = nasdaq_ntxequities_orders_ouch_v4_2.logout_request.dissect,
}

-- Dissect: Client Payload
nasdaq_ntxequities_orders_ouch_v4_2.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  local dissect = nasdaq_ntxequities_orders_ouch_v4_2.client_payload.dispatch[client_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
nasdaq_ntxequities_orders_ouch_v4_2.client_packet_header = {}

-- Size: Client Packet Header
nasdaq_ntxequities_orders_ouch_v4_2.client_packet_header.size =
  nasdaq_ntxequities_orders_ouch_v4_2.packet_length.size + 
  nasdaq_ntxequities_orders_ouch_v4_2.client_packet_type.size

-- Display: Client Packet Header
nasdaq_ntxequities_orders_ouch_v4_2.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
nasdaq_ntxequities_orders_ouch_v4_2.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_ntxequities_orders_ouch_v4_2.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = nasdaq_ntxequities_orders_ouch_v4_2.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
nasdaq_ntxequities_orders_ouch_v4_2.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.client_packet_header, buffer(offset, 0))
    local index = nasdaq_ntxequities_orders_ouch_v4_2.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_orders_ouch_v4_2.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_orders_ouch_v4_2.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
nasdaq_ntxequities_orders_ouch_v4_2.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
nasdaq_ntxequities_orders_ouch_v4_2.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
nasdaq_ntxequities_orders_ouch_v4_2.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = nasdaq_ntxequities_orders_ouch_v4_2.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = nasdaq_ntxequities_orders_ouch_v4_2.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
nasdaq_ntxequities_orders_ouch_v4_2.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_ntxequities_orders_ouch_v4_2.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = nasdaq_ntxequities_orders_ouch_v4_2.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_ntxequities_orders_ouch_v4_2.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_ntxequities_orders_ouch_v4_2.client_packet_header.size then
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
nasdaq_ntxequities_orders_ouch_v4_2.client_packet = {}

-- Verify required size of Tcp packet
nasdaq_ntxequities_orders_ouch_v4_2.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_ntxequities_orders_ouch_v4_2.client_packet_header.size
end

-- Dissect Client Packet
nasdaq_ntxequities_orders_ouch_v4_2.client_packet.dissect = function(buffer, packet, parent)
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
      index = nasdaq_ntxequities_orders_ouch_v4_2.client_soup_bin_tcp_packet.dissect(frame, index, packet, parent, size_of_client_soup_bin_tcp_packet)
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
function omi_nasdaq_ntxequities_orders_ouch_v4_2.init()
  nasdaq_ntxequities_orders_ouch_v4_2.accepted_sequence_number.current = nil
  nasdaq_ntxequities_orders_ouch_v4_2.conversation.current = nil
  nasdaq_ntxequities_orders_ouch_v4_2.conversation.flows = {}
end

-- Connection roles for Nasdaq NtxEquities Orders Ouch 4.2: Client is the initiator, Server is the acceptor
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
nasdaq_ntxequities_orders_ouch_v4_2.role = function(packet)
  if omi_nasdaq_ntxequities_orders_ouch_v4_2.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nasdaq_ntxequities_orders_ouch_v4_2.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nasdaq_ntxequities_orders_ouch_v4_2.prefs.acceptor_port

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

  if omi_nasdaq_ntxequities_orders_ouch_v4_2.prefs.swap_sides then
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
nasdaq_ntxequities_orders_ouch_v4_2.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nasdaq NtxEquities Orders Ouch 4.2
function omi_nasdaq_ntxequities_orders_ouch_v4_2.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_ntxequities_orders_ouch_v4_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_ntxequities_orders_ouch_v4_2, buffer(), omi_nasdaq_ntxequities_orders_ouch_v4_2.description, "("..buffer:len().." Bytes)")
  local role = nasdaq_ntxequities_orders_ouch_v4_2.role(packet)

  if role == "initiator" then
    return nasdaq_ntxequities_orders_ouch_v4_2.client_packet.dissect(buffer, packet, protocol)
  end

  return nasdaq_ntxequities_orders_ouch_v4_2.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nasdaq_ntxequities_orders_ouch_v4_2.client_packet.fingerprint = function(buffer)
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
nasdaq_ntxequities_orders_ouch_v4_2.server_packet.fingerprint = function(buffer)
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

-- Dissector Heuristic for Nasdaq NtxEquities Orders Ouch 4.2 (Tcp)
local function omi_nasdaq_ntxequities_orders_ouch_v4_2_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_ntxequities_orders_ouch_v4_2.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp client packet message dispatch
  if not nasdaq_ntxequities_orders_ouch_v4_2.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_ntxequities_orders_ouch_v4_2
  omi_nasdaq_ntxequities_orders_ouch_v4_2.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NtxEquities Orders Ouch 4.2 (Tcp)
local function omi_nasdaq_ntxequities_orders_ouch_v4_2_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_ntxequities_orders_ouch_v4_2.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp server packet message dispatch
  if not nasdaq_ntxequities_orders_ouch_v4_2.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_ntxequities_orders_ouch_v4_2
  omi_nasdaq_ntxequities_orders_ouch_v4_2.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NtxEquities Orders Ouch 4.2 (Tcp): apply the heuristic of the sender's connection role
local function omi_nasdaq_ntxequities_orders_ouch_v4_2_tcp_heuristic(buffer, packet, parent)
  local role = nasdaq_ntxequities_orders_ouch_v4_2.role(packet)
  local initiator = omi_nasdaq_ntxequities_orders_ouch_v4_2_tcp_initiator_heuristic
  local acceptor = omi_nasdaq_ntxequities_orders_ouch_v4_2_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nasdaq_ntxequities_orders_ouch_v4_2.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nasdaq_ntxequities_orders_ouch_v4_2.swap(packet)

  return false
end

-- Register Heuristics for Nasdaq NtxEquities Orders Ouch 4.2
omi_nasdaq_ntxequities_orders_ouch_v4_2:register_heuristic("tcp", omi_nasdaq_ntxequities_orders_ouch_v4_2_tcp_heuristic)

-- Register Nasdaq NtxEquities Orders Ouch 4.2 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nasdaq_ntxequities_orders_ouch_v4_2)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 4.2
--   Date: Monday, July 8, 2019
--   Specification: NTXOUCH42.pdf
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
