-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Bist BorsaIstanbul GeniumInet Ouch 2025.0206 Protocol
local omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206 = Proto("Omi.Bist.BorsaIstanbul.GeniumInet.Ouch.v2025.0206", "Bist BorsaIstanbul GeniumInet Ouch 2025.0206")

-- Protocol table
local bist_borsaistanbul_geniuminet_ouch_v2025_0206 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Bist BorsaIstanbul GeniumInet Ouch 2025.0206 Fields
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.acceptedsequencenumber", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.accepted_session = ProtoField.new("Accepted Session", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.acceptedsession", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.bid_price = ProtoField.new("Bid Price", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.bidprice", ftypes.DOUBLE)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.bid_size = ProtoField.new("Bid Size", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.bidsize", ftypes.UINT64)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.client_account = ProtoField.new("Client Account", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.clientaccount", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.client_category = ProtoField.new("Client Category", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.clientcategory", ftypes.UINT8)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.client_packet_type = ProtoField.new("Packet Type", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.clientpackettype", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.customer_info = ProtoField.new("Customer Info", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.customerinfo", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.debug_text = ProtoField.new("Debug Text", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.debugtext", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.display_quantity = ProtoField.new("Display Quantity", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.displayquantity", ftypes.UINT64)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.exchange_info_alpha_16 = ProtoField.new("Exchange Info Alpha 16", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.exchangeinfoalpha16", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.exchange_info_alpha_32 = ProtoField.new("Exchange Info Alpha 32", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.exchangeinfoalpha32", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.existing_order_token = ProtoField.new("Existing Order Token", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.existingordertoken", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.match_id = ProtoField.new("Match Id", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.matchid", ftypes.BYTES)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.nanoseconds = ProtoField.new("Nanoseconds", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.nanoseconds", ftypes.UINT64)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.no_quote_entries = ProtoField.new("No Quote Entries", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.noquoteentries", ftypes.UINT16)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.off_hours = ProtoField.new("Off Hours", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.offhours", ftypes.UINT8)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.offer_price = ProtoField.new("Offer Price", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.offerprice", ftypes.DOUBLE)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.offer_size = ProtoField.new("Offer Size", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.offersize", ftypes.UINT64)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.open_close = ProtoField.new("Open Close", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.openclose", ftypes.UINT8)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.order_book_id = ProtoField.new("Order Book Id", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.orderbookid", ftypes.UINT32)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.order_id = ProtoField.new("Order Id", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.orderid", ftypes.UINT64)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.order_state = ProtoField.new("Order State", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.orderstate", ftypes.UINT8)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.order_token = ProtoField.new("Order Token", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.ordertoken", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.packet_length = ProtoField.new("Packet Length", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.packetlength", ftypes.UINT16)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.password = ProtoField.new("Password", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.password", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.pre_trade_quantity = ProtoField.new("Pre Trade Quantity", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.pretradequantity", ftypes.UINT64)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.previous_order_token = ProtoField.new("Previous Order Token", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.previousordertoken", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.price = ProtoField.new("Price", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.price", ftypes.DOUBLE)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.quantity = ProtoField.new("Quantity", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.quantity", ftypes.UINT64)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.quote_set = ProtoField.new("Quote Set", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.quoteset", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.quote_side = ProtoField.new("Quote Side", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.quoteside", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.quote_status = ProtoField.new("Quote Status", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.quotestatus", ftypes.UINT32)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.reason = ProtoField.new("Reason", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.reason", ftypes.UINT8)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.reject_code = ProtoField.new("Reject Code", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.rejectcode", ftypes.INT32)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.rejectreasoncode", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.replace_open_close = ProtoField.new("Replace Open Close", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.replaceopenclose", ftypes.UINT8)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.replacement_order_token = ProtoField.new("Replacement Order Token", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.replacementordertoken", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.requestedsequencenumber", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.requested_session = ProtoField.new("Requested Session", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.requestedsession", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.reserved_numeric_unsigned_16 = ProtoField.new("Reserved Numeric Unsigned 16", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.reservednumericunsigned16", ftypes.BYTES)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.reserved_numeric_unsigned_2 = ProtoField.new("Reserved Numeric Unsigned 2", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.reservednumericunsigned2", ftypes.UINT16)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.reserved_numeric_unsigned_8 = ProtoField.new("Reserved Numeric Unsigned 8", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.reservednumericunsigned8", ftypes.UINT64)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.sequencedmessagetype", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.server_packet_type = ProtoField.new("Packet Type", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.serverpackettype", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.side = ProtoField.new("Side", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.side", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.smp_id = ProtoField.new("Smp Id", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.smpid", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.smp_level = ProtoField.new("Smp Level", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.smplevel", ftypes.UINT8)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.smp_method = ProtoField.new("Smp Method", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.smpmethod", ftypes.UINT8)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.time_in_force = ProtoField.new("Time In Force", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.timeinforce", ftypes.UINT8)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.trade_price = ProtoField.new("Trade Price", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.tradeprice", ftypes.DOUBLE)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.traded_quantity = ProtoField.new("Traded Quantity", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.tradedquantity", ftypes.UINT64)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.unsequencedmessagetype", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.username = ProtoField.new("Username", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.username", ftypes.STRING)

-- Bist BorsaIstanbul GeniumInet Ouch 2025.0206 Framing
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.client_packet = ProtoField.new("Packet", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.clientpacket", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.client_packet_header = ProtoField.new("Packet Header", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.clientpacketheader", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.clientsoupbintcppacket", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.server_packet = ProtoField.new("Packet", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.serverpacket", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.server_packet_header = ProtoField.new("Packet Header", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.serverpacketheader", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.serversoupbintcppacket", ftypes.STRING)

-- Bist BorsaIstanbul GeniumInet 2025.0206 Application Messages
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.cancel_by_order_id = ProtoField.new("Cancel By Order Id", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.cancelbyorderid", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.cancel_order = ProtoField.new("Cancel Order", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.cancelorder", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.enter_order = ProtoField.new("Enter Order", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.enterorder", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.mass_quote = ProtoField.new("Mass Quote", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.massquote", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.mass_quote_acknowledgement = ProtoField.new("Mass Quote Acknowledgement", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.massquoteacknowledgement", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.mass_quote_rejection = ProtoField.new("Mass Quote Rejection", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.massquoterejection", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.order_accepted = ProtoField.new("Order Accepted", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.orderaccepted", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.order_canceled = ProtoField.new("Order Canceled", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.ordercanceled", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.order_executed = ProtoField.new("Order Executed", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.orderexecuted", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.order_rejected = ProtoField.new("Order Rejected", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.orderrejected", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.order_replaced = ProtoField.new("Order Replaced", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.orderreplaced", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.replace_order = ProtoField.new("Replace Order", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.replaceorder", ftypes.STRING)

-- Bist BorsaIstanbul GeniumInet 2025.0206 Session Messages
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.clientheartbeat", ftypes.BYTES)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.debug_packet = ProtoField.new("Debug Packet", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.debugpacket", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.end_of_session = ProtoField.new("End Of Session", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.endofsession", ftypes.BYTES)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.loginacceptedpacket", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.loginrejectedpacket", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.login_request_packet = ProtoField.new("Login Request Packet", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.loginrequestpacket", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.logout_request = ProtoField.new("Logout Request", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.logoutrequest", ftypes.BYTES)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.sequenceddatapacket", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.serverheartbeat", ftypes.BYTES)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.unsequenceddatapacket", ftypes.STRING)

-- Bist BorsaIstanbul GeniumInet Ouch 2025.0206 Generated Fields
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.quote_set_index = ProtoField.new("Quote Set Index", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.quotesetindex", ftypes.UINT16)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "bist.borsaistanbul.geniuminet.ouch.v2025.0206.sequenceddatapacketsequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Bist BorsaIstanbul GeniumInet Ouch 2025.0206 Formatting
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

-- Bist BorsaIstanbul GeniumInet Ouch 2025.0206 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.session_messages = true
show.repeating_groups = true
show.indexes = true
show.sequences = true

-- Register Bist BorsaIstanbul GeniumInet Ouch 2025.0206 Show Options
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

-- Handle changed preferences
function omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.prefs.show_application_messages then
    show.application_messages = omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.prefs.show_application_messages
  end
  if show.headers ~= omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.prefs.show_headers then
    show.headers = omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.prefs.show_headers
  end
  if show.repeating_groups ~= omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.prefs.show_repeating_groups then
    show.repeating_groups = omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.prefs.show_repeating_groups
  end
  if show.session_messages ~= omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.prefs.show_session_messages then
    show.session_messages = omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.prefs.show_session_messages
  end
  if show.structs ~= omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.prefs.show_structs then
    show.structs = omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.prefs.show_structs
  end
  if show.indexes ~= omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.prefs.show_indexes then
    show.indexes = omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.prefs.show_indexes
  end
  if show.sequences ~= omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.prefs.show_sequences then
    show.sequences = omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.prefs.show_sequences
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
bist_borsaistanbul_geniuminet_ouch_v2025_0206.conversation = {}
bist_borsaistanbul_geniuminet_ouch_v2025_0206.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
bist_borsaistanbul_geniuminet_ouch_v2025_0206.stream_frame = nil
bist_borsaistanbul_geniuminet_ouch_v2025_0206.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
bist_borsaistanbul_geniuminet_ouch_v2025_0206.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
bist_borsaistanbul_geniuminet_ouch_v2025_0206.conversation.data = function(packet)
  local key = bist_borsaistanbul_geniuminet_ouch_v2025_0206.conversation.key(packet)
  local data = bist_borsaistanbul_geniuminet_ouch_v2025_0206.conversation.flows[key]
  if data == nil then
    data = { accepted_sequence_number = { last = nil, frames = {} }, sequence = { next = nil, frames = {} } }
    bist_borsaistanbul_geniuminet_ouch_v2025_0206.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
bist_borsaistanbul_geniuminet_ouch_v2025_0206.conversation.current = nil


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
-- Bist BorsaIstanbul GeniumInet Ouch 2025.0206 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
bist_borsaistanbul_geniuminet_ouch_v2025_0206.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
bist_borsaistanbul_geniuminet_ouch_v2025_0206.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
bist_borsaistanbul_geniuminet_ouch_v2025_0206.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
bist_borsaistanbul_geniuminet_ouch_v2025_0206.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
bist_borsaistanbul_geniuminet_ouch_v2025_0206.accepted_session = {}

-- Size: Accepted Session
bist_borsaistanbul_geniuminet_ouch_v2025_0206.accepted_session.size = 10

-- Display: Accepted Session
bist_borsaistanbul_geniuminet_ouch_v2025_0206.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
bist_borsaistanbul_geniuminet_ouch_v2025_0206.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.accepted_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Bid Price
bist_borsaistanbul_geniuminet_ouch_v2025_0206.bid_price = {}

-- Size: Bid Price
bist_borsaistanbul_geniuminet_ouch_v2025_0206.bid_price.size = 4

-- Display: Bid Price
bist_borsaistanbul_geniuminet_ouch_v2025_0206.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
bist_borsaistanbul_geniuminet_ouch_v2025_0206.bid_price.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price
bist_borsaistanbul_geniuminet_ouch_v2025_0206.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.bid_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bist_borsaistanbul_geniuminet_ouch_v2025_0206.bid_price.translate(raw)
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Size
bist_borsaistanbul_geniuminet_ouch_v2025_0206.bid_size = {}

-- Size: Bid Size
bist_borsaistanbul_geniuminet_ouch_v2025_0206.bid_size.size = 8

-- Display: Bid Size
bist_borsaistanbul_geniuminet_ouch_v2025_0206.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
bist_borsaistanbul_geniuminet_ouch_v2025_0206.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.bid_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Client Account
bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_account = {}

-- Size: Client Account
bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_account.size = 16

-- Display: Client Account
bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_account.display = function(value)
  return "Client Account: "..value
end

-- Dissect: Client Account
bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_account.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_account.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.client_account, range, value, display)

  return offset + length, value
end

-- Client Category
bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_category = {}

-- Size: Client Category
bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_category.size = 1

-- Display: Client Category
bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_category.display = function(value)
  if value == 1 then
    return "Client Category: Client (1)"
  end
  if value == 2 then
    return "Client Category: House (2)"
  end
  if value == 7 then
    return "Client Category: Fund (7)"
  end
  if value == 9 then
    return "Client Category: Investment Trust (9)"
  end
  if value == 10 then
    return "Client Category: Primary Dealer Govt (10)"
  end
  if value == 11 then
    return "Client Category: Primary Dealer Corp (11)"
  end
  if value == 12 then
    return "Client Category: Portfolio Mgmt Company (12)"
  end

  return "Client Category: Unknown("..value..")"
end

-- Dissect: Client Category
bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_category.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_category.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.client_category, range, value, display)

  return offset + length, value
end

-- Client Packet Type
bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_packet_type = {}

-- Size: Client Packet Type
bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_packet_type.size = 1

-- Display: Client Packet Type
bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_packet_type.display = function(value)
  if value == "+" then
    return "Packet Type: Debug Packet (+)"
  end
  if value == "L" then
    return "Packet Type: Login Request Packet (L)"
  end
  if value == "U" then
    return "Packet Type: Unsequenced Data Packet (U)"
  end
  if value == "R" then
    return "Packet Type: Client Heartbeat Packet (R)"
  end
  if value == "O" then
    return "Packet Type: Logout Request Packet (O)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Client Packet Type
bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Customer Info
bist_borsaistanbul_geniuminet_ouch_v2025_0206.customer_info = {}

-- Size: Customer Info
bist_borsaistanbul_geniuminet_ouch_v2025_0206.customer_info.size = 15

-- Display: Customer Info
bist_borsaistanbul_geniuminet_ouch_v2025_0206.customer_info.display = function(value)
  return "Customer Info: "..value
end

-- Dissect: Customer Info
bist_borsaistanbul_geniuminet_ouch_v2025_0206.customer_info.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.customer_info.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.customer_info.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.customer_info, range, value, display)

  return offset + length, value
end

-- Debug Text
bist_borsaistanbul_geniuminet_ouch_v2025_0206.debug_text = {}

-- Size: Debug Text
bist_borsaistanbul_geniuminet_ouch_v2025_0206.debug_text.size = 1

-- Display: Debug Text
bist_borsaistanbul_geniuminet_ouch_v2025_0206.debug_text.display = function(value)
  return "Debug Text: "..value
end

-- Dissect: Debug Text
bist_borsaistanbul_geniuminet_ouch_v2025_0206.debug_text.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.debug_text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.debug_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.debug_text, range, value, display)

  return offset + length, value
end

-- Display Quantity
bist_borsaistanbul_geniuminet_ouch_v2025_0206.display_quantity = {}

-- Size: Display Quantity
bist_borsaistanbul_geniuminet_ouch_v2025_0206.display_quantity.size = 8

-- Display: Display Quantity
bist_borsaistanbul_geniuminet_ouch_v2025_0206.display_quantity.display = function(value)
  return "Display Quantity: "..value
end

-- Dissect: Display Quantity
bist_borsaistanbul_geniuminet_ouch_v2025_0206.display_quantity.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.display_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.display_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.display_quantity, range, value, display)

  return offset + length, value
end

-- Exchange Info Alpha 16
bist_borsaistanbul_geniuminet_ouch_v2025_0206.exchange_info_alpha_16 = {}

-- Size: Exchange Info Alpha 16
bist_borsaistanbul_geniuminet_ouch_v2025_0206.exchange_info_alpha_16.size = 16

-- Display: Exchange Info Alpha 16
bist_borsaistanbul_geniuminet_ouch_v2025_0206.exchange_info_alpha_16.display = function(value)
  return "Exchange Info Alpha 16: "..value
end

-- Dissect: Exchange Info Alpha 16
bist_borsaistanbul_geniuminet_ouch_v2025_0206.exchange_info_alpha_16.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.exchange_info_alpha_16.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.exchange_info_alpha_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.exchange_info_alpha_16, range, value, display)

  return offset + length, value
end

-- Exchange Info Alpha 32
bist_borsaistanbul_geniuminet_ouch_v2025_0206.exchange_info_alpha_32 = {}

-- Size: Exchange Info Alpha 32
bist_borsaistanbul_geniuminet_ouch_v2025_0206.exchange_info_alpha_32.size = 32

-- Display: Exchange Info Alpha 32
bist_borsaistanbul_geniuminet_ouch_v2025_0206.exchange_info_alpha_32.display = function(value)
  return "Exchange Info Alpha 32: "..value
end

-- Dissect: Exchange Info Alpha 32
bist_borsaistanbul_geniuminet_ouch_v2025_0206.exchange_info_alpha_32.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.exchange_info_alpha_32.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.exchange_info_alpha_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.exchange_info_alpha_32, range, value, display)

  return offset + length, value
end

-- Existing Order Token
bist_borsaistanbul_geniuminet_ouch_v2025_0206.existing_order_token = {}

-- Size: Existing Order Token
bist_borsaistanbul_geniuminet_ouch_v2025_0206.existing_order_token.size = 14

-- Display: Existing Order Token
bist_borsaistanbul_geniuminet_ouch_v2025_0206.existing_order_token.display = function(value)
  return "Existing Order Token: "..value
end

-- Dissect: Existing Order Token
bist_borsaistanbul_geniuminet_ouch_v2025_0206.existing_order_token.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.existing_order_token.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.existing_order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.existing_order_token, range, value, display)

  return offset + length, value
end

-- Match Id
bist_borsaistanbul_geniuminet_ouch_v2025_0206.match_id = {}

-- Size: Match Id
bist_borsaistanbul_geniuminet_ouch_v2025_0206.match_id.size = 12

-- Display: Match Id
bist_borsaistanbul_geniuminet_ouch_v2025_0206.match_id.display = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
bist_borsaistanbul_geniuminet_ouch_v2025_0206.match_id.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.match_id.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.match_id, range, value, display)

  return offset + length, value
end

-- Nanoseconds
bist_borsaistanbul_geniuminet_ouch_v2025_0206.nanoseconds = {}

-- Size: Nanoseconds
bist_borsaistanbul_geniuminet_ouch_v2025_0206.nanoseconds.size = 8

-- Display: Nanoseconds
bist_borsaistanbul_geniuminet_ouch_v2025_0206.nanoseconds.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Nanoseconds: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Nanoseconds
bist_borsaistanbul_geniuminet_ouch_v2025_0206.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- No Quote Entries
bist_borsaistanbul_geniuminet_ouch_v2025_0206.no_quote_entries = {}

-- Size: No Quote Entries
bist_borsaistanbul_geniuminet_ouch_v2025_0206.no_quote_entries.size = 2

-- Display: No Quote Entries
bist_borsaistanbul_geniuminet_ouch_v2025_0206.no_quote_entries.display = function(value)
  return "No Quote Entries: "..value
end

-- Dissect: No Quote Entries
bist_borsaistanbul_geniuminet_ouch_v2025_0206.no_quote_entries.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.no_quote_entries.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.no_quote_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.no_quote_entries, range, value, display)

  return offset + length, value
end

-- Off Hours
bist_borsaistanbul_geniuminet_ouch_v2025_0206.off_hours = {}

-- Size: Off Hours
bist_borsaistanbul_geniuminet_ouch_v2025_0206.off_hours.size = 1

-- Display: Off Hours
bist_borsaistanbul_geniuminet_ouch_v2025_0206.off_hours.display = function(value)
  if value == 0 then
    return "Off Hours: Normal Hours (0)"
  end
  if value == 1 then
    return "Off Hours: Off Hour Orders (1)"
  end

  return "Off Hours: Unknown("..value..")"
end

-- Dissect: Off Hours
bist_borsaistanbul_geniuminet_ouch_v2025_0206.off_hours.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.off_hours.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.off_hours.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.off_hours, range, value, display)

  return offset + length, value
end

-- Offer Price
bist_borsaistanbul_geniuminet_ouch_v2025_0206.offer_price = {}

-- Size: Offer Price
bist_borsaistanbul_geniuminet_ouch_v2025_0206.offer_price.size = 4

-- Display: Offer Price
bist_borsaistanbul_geniuminet_ouch_v2025_0206.offer_price.display = function(value)
  return "Offer Price: "..value
end

-- Translate: Offer Price
bist_borsaistanbul_geniuminet_ouch_v2025_0206.offer_price.translate = function(raw)
  return raw/100
end

-- Dissect: Offer Price
bist_borsaistanbul_geniuminet_ouch_v2025_0206.offer_price.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.offer_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bist_borsaistanbul_geniuminet_ouch_v2025_0206.offer_price.translate(raw)
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.offer_price, range, value, display)

  return offset + length, value
end

-- Offer Size
bist_borsaistanbul_geniuminet_ouch_v2025_0206.offer_size = {}

-- Size: Offer Size
bist_borsaistanbul_geniuminet_ouch_v2025_0206.offer_size.size = 8

-- Display: Offer Size
bist_borsaistanbul_geniuminet_ouch_v2025_0206.offer_size.display = function(value)
  return "Offer Size: "..value
end

-- Dissect: Offer Size
bist_borsaistanbul_geniuminet_ouch_v2025_0206.offer_size.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.offer_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Open Close
bist_borsaistanbul_geniuminet_ouch_v2025_0206.open_close = {}

-- Size: Open Close
bist_borsaistanbul_geniuminet_ouch_v2025_0206.open_close.size = 1

-- Display: Open Close
bist_borsaistanbul_geniuminet_ouch_v2025_0206.open_close.display = function(value)
  if value == 0 then
    return "Open Close: Default (0)"
  end
  if value == 1 then
    return "Open Close: Open (1)"
  end
  if value == 2 then
    return "Open Close: Close Net (2)"
  end

  return "Open Close: Unknown("..value..")"
end

-- Dissect: Open Close
bist_borsaistanbul_geniuminet_ouch_v2025_0206.open_close.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.open_close.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.open_close, range, value, display)

  return offset + length, value
end

-- Order Book Id
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_book_id = {}

-- Size: Order Book Id
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_book_id.size = 4

-- Display: Order Book Id
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_book_id.display = function(value)
  return "Order Book Id: "..value
end

-- Dissect: Order Book Id
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.order_book_id, range, value, display)

  return offset + length, value
end

-- Order Id
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_id = {}

-- Size: Order Id
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_id.size = 8

-- Display: Order Id
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_id.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order State
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_state = {}

-- Size: Order State
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_state.size = 1

-- Display: Order State
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_state.display = function(value)
  if value == 1 then
    return "Order State: On Book (1)"
  end
  if value == 2 then
    return "Order State: Not On Book (2)"
  end
  if value == 98 then
    return "Order State: Paused (98)"
  end
  if value == 99 then
    return "Order State: Ouch Order Ownership Lost (99)"
  end

  return "Order State: Unknown("..value..")"
end

-- Dissect: Order State
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_state.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_state.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.order_state, range, value, display)

  return offset + length, value
end

-- Order Token
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_token = {}

-- Size: Order Token
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_token.size = 14

-- Display: Order Token
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_token.display = function(value)
  return "Order Token: "..value
end

-- Dissect: Order Token
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_token.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_token.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.order_token, range, value, display)

  return offset + length, value
end

-- Packet Length
bist_borsaistanbul_geniuminet_ouch_v2025_0206.packet_length = {}

-- Size: Packet Length
bist_borsaistanbul_geniuminet_ouch_v2025_0206.packet_length.size = 2

-- Display: Packet Length
bist_borsaistanbul_geniuminet_ouch_v2025_0206.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
bist_borsaistanbul_geniuminet_ouch_v2025_0206.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Password
bist_borsaistanbul_geniuminet_ouch_v2025_0206.password = {}

-- Size: Password
bist_borsaistanbul_geniuminet_ouch_v2025_0206.password.size = 10

-- Display: Password
bist_borsaistanbul_geniuminet_ouch_v2025_0206.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
bist_borsaistanbul_geniuminet_ouch_v2025_0206.password.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.password, range, value, display)

  return offset + length, value
end

-- Pre Trade Quantity
bist_borsaistanbul_geniuminet_ouch_v2025_0206.pre_trade_quantity = {}

-- Size: Pre Trade Quantity
bist_borsaistanbul_geniuminet_ouch_v2025_0206.pre_trade_quantity.size = 8

-- Display: Pre Trade Quantity
bist_borsaistanbul_geniuminet_ouch_v2025_0206.pre_trade_quantity.display = function(value)
  return "Pre Trade Quantity: "..value
end

-- Dissect: Pre Trade Quantity
bist_borsaistanbul_geniuminet_ouch_v2025_0206.pre_trade_quantity.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.pre_trade_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.pre_trade_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.pre_trade_quantity, range, value, display)

  return offset + length, value
end

-- Previous Order Token
bist_borsaistanbul_geniuminet_ouch_v2025_0206.previous_order_token = {}

-- Size: Previous Order Token
bist_borsaistanbul_geniuminet_ouch_v2025_0206.previous_order_token.size = 14

-- Display: Previous Order Token
bist_borsaistanbul_geniuminet_ouch_v2025_0206.previous_order_token.display = function(value)
  return "Previous Order Token: "..value
end

-- Dissect: Previous Order Token
bist_borsaistanbul_geniuminet_ouch_v2025_0206.previous_order_token.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.previous_order_token.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.previous_order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.previous_order_token, range, value, display)

  return offset + length, value
end

-- Price
bist_borsaistanbul_geniuminet_ouch_v2025_0206.price = {}

-- Size: Price
bist_borsaistanbul_geniuminet_ouch_v2025_0206.price.size = 4

-- Display: Price
bist_borsaistanbul_geniuminet_ouch_v2025_0206.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
bist_borsaistanbul_geniuminet_ouch_v2025_0206.price.translate = function(raw)
  return raw/100
end

-- Dissect: Price
bist_borsaistanbul_geniuminet_ouch_v2025_0206.price.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bist_borsaistanbul_geniuminet_ouch_v2025_0206.price.translate(raw)
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
bist_borsaistanbul_geniuminet_ouch_v2025_0206.quantity = {}

-- Size: Quantity
bist_borsaistanbul_geniuminet_ouch_v2025_0206.quantity.size = 8

-- Display: Quantity
bist_borsaistanbul_geniuminet_ouch_v2025_0206.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
bist_borsaistanbul_geniuminet_ouch_v2025_0206.quantity.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.quantity, range, value, display)

  return offset + length, value
end

-- Quote Side
bist_borsaistanbul_geniuminet_ouch_v2025_0206.quote_side = {}

-- Size: Quote Side
bist_borsaistanbul_geniuminet_ouch_v2025_0206.quote_side.size = 1

-- Display: Quote Side
bist_borsaistanbul_geniuminet_ouch_v2025_0206.quote_side.display = function(value)
  if value == "B" then
    return "Quote Side: Bid (B)"
  end
  if value == "S" then
    return "Quote Side: Offer (S)"
  end

  return "Quote Side: Unknown("..value..")"
end

-- Dissect: Quote Side
bist_borsaistanbul_geniuminet_ouch_v2025_0206.quote_side.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.quote_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.quote_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.quote_side, range, value, display)

  return offset + length, value
end

-- Quote Status
bist_borsaistanbul_geniuminet_ouch_v2025_0206.quote_status = {}

-- Size: Quote Status
bist_borsaistanbul_geniuminet_ouch_v2025_0206.quote_status.size = 4

-- Display: Quote Status
bist_borsaistanbul_geniuminet_ouch_v2025_0206.quote_status.display = function(value)
  if value == 0 then
    return "Quote Status: Accept (0)"
  end
  if value == 1 then
    return "Quote Status: Updated (1)"
  end
  if value == 2 then
    return "Quote Status: Canceled (2)"
  end
  if value == 3 then
    return "Quote Status: Unsolicited Update (3)"
  end
  if value == 4 then
    return "Quote Status: Unsolicited Cancel (4)"
  end
  if value == 5 then
    return "Quote Status: Traded (5)"
  end

  return "Quote Status: Unknown("..value..")"
end

-- Dissect: Quote Status
bist_borsaistanbul_geniuminet_ouch_v2025_0206.quote_status.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.quote_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.quote_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.quote_status, range, value, display)

  return offset + length, value
end

-- Reason
bist_borsaistanbul_geniuminet_ouch_v2025_0206.reason = {}

-- Size: Reason
bist_borsaistanbul_geniuminet_ouch_v2025_0206.reason.size = 1

-- Display: Reason
bist_borsaistanbul_geniuminet_ouch_v2025_0206.reason.display = function(value)
  if value == 1 then
    return "Reason: Canceled By User Or Other User (1)"
  end
  if value == 3 then
    return "Reason: Trade (3)"
  end
  if value == 4 then
    return "Reason: Inactivate (4)"
  end
  if value == 5 then
    return "Reason: Replaced By User (5)"
  end
  if value == 6 then
    return "Reason: New (6)"
  end
  if value == 8 then
    return "Reason: Converted By System (8)"
  end
  if value == 9 then
    return "Reason: Canceled By System (9)"
  end
  if value == 10 then
    return "Reason: Canceled By Proxy (10)"
  end
  if value == 11 then
    return "Reason: Bait Recalculated (11)"
  end
  if value == 12 then
    return "Reason: Triggered By System (12)"
  end
  if value == 13 then
    return "Reason: Refreshed By System (13)"
  end
  if value == 15 then
    return "Reason: Canceled By System Limit Change (15)"
  end
  if value == 17 then
    return "Reason: Linked Leg Canceled (17)"
  end
  if value == 18 then
    return "Reason: Linked Leg Modified (18)"
  end
  if value == 19 then
    return "Reason: Expired (19)"
  end
  if value == 20 then
    return "Reason: Canceled Due To Iss (20)"
  end
  if value == 21 then
    return "Reason: Inactivated Due To Iss (21)"
  end
  if value == 23 then
    return "Reason: Inactivated Due To Purge (23)"
  end
  if value == 24 then
    return "Reason: Inactivated Day Order (24)"
  end
  if value == 25 then
    return "Reason: Inactivated Due To Delist (25)"
  end
  if value == 26 then
    return "Reason: Inactivated Due To Expiry (26)"
  end
  if value == 27 then
    return "Reason: Inactivated Due To Outside Limits (27)"
  end
  if value == 28 then
    return "Reason: Transfer Of Ownership (28)"
  end
  if value == 29 then
    return "Reason: New Inactive (29)"
  end
  if value == 30 then
    return "Reason: Reloaded (30)"
  end
  if value == 31 then
    return "Reason: Reloaded Intraday (31)"
  end
  if value == 34 then
    return "Reason: Canceled After Auction (34)"
  end
  if value == 35 then
    return "Reason: Inactivated Due To Outside Price Limits (35)"
  end
  if value == 36 then
    return "Reason: Activated Due To Outside Limits (36)"
  end
  if value == 37 then
    return "Reason: Trigger On Session Order Triggered (37)"
  end
  if value == 39 then
    return "Reason: Undisclosed Quantity Order Converted (39)"
  end
  if value == 40 then
    return "Reason: Inactivated Due To Order Value (40)"
  end
  if value == 41 then
    return "Reason: Canceled By System Delta Protection (41)"
  end
  if value == 42 then
    return "Reason: Canceled By System Quantity Protection (42)"
  end
  if value == 43 then
    return "Reason: Internal Crossing Delete (43)"
  end
  if value == 44 then
    return "Reason: Canceled Due To Participant Block On Market (44)"
  end
  if value == 45 then
    return "Reason: Inactivated Due To Participant Block On Market (45)"
  end
  if value == 46 then
    return "Reason: Order Deleted Due To Smp (46)"
  end
  if value == 52 then
    return "Reason: Paused (52)"
  end
  if value == 53 then
    return "Reason: Activated Paused Order (53)"
  end
  if value == 56 then
    return "Reason: Linked Leg Activated (56)"
  end
  if value == 115 then
    return "Reason: Deleted Ptrm Misc (115)"
  end
  if value == 116 then
    return "Reason: Deleted Ptrm User Limits Auto (116)"
  end
  if value == 117 then
    return "Reason: Deleted Ptrm User Limits Manual (117)"
  end
  if value == 118 then
    return "Reason: Deleted Ptrm Market Limits (118)"
  end
  if value == 119 then
    return "Reason: Deleted Ptrm Investor Limits (119)"
  end
  if value == 120 then
    return "Reason: Deleted Ptrm Margin Breach (120)"
  end
  if value == 121 then
    return "Reason: Deleted Ptrm Participant Suspension (121)"
  end
  if value == 122 then
    return "Reason: Deleted Ptrm Mra Suspension (122)"
  end
  if value == 123 then
    return "Reason: Deleted Ptrm Mca Suspension (123)"
  end
  if value == 124 then
    return "Reason: Deleted Ptrm Ta Suspension (124)"
  end
  if value == 125 then
    return "Reason: Canceled By Ptrm Suspension Product Due To Investor Position Value Limit (125)"
  end

  return "Reason: Unknown("..value..")"
end

-- Dissect: Reason
bist_borsaistanbul_geniuminet_ouch_v2025_0206.reason.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.reason, range, value, display)

  return offset + length, value
end

-- Reject Code
bist_borsaistanbul_geniuminet_ouch_v2025_0206.reject_code = {}

-- Size: Reject Code
bist_borsaistanbul_geniuminet_ouch_v2025_0206.reject_code.size = 4

-- Display: Reject Code
bist_borsaistanbul_geniuminet_ouch_v2025_0206.reject_code.display = function(value)
  return "Reject Code: "..value
end

-- Dissect: Reject Code
bist_borsaistanbul_geniuminet_ouch_v2025_0206.reject_code.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.reject_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.reject_code, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
bist_borsaistanbul_geniuminet_ouch_v2025_0206.reject_reason_code = {}

-- Size: Reject Reason Code
bist_borsaistanbul_geniuminet_ouch_v2025_0206.reject_reason_code.size = 1

-- Display: Reject Reason Code
bist_borsaistanbul_geniuminet_ouch_v2025_0206.reject_reason_code.display = function(value)
  if value == "A" then
    return "Reject Reason Code: Not Authorized (A)"
  end
  if value == "S" then
    return "Reject Reason Code: Session Not Available (S)"
  end

  return "Reject Reason Code: Unknown("..value..")"
end

-- Dissect: Reject Reason Code
bist_borsaistanbul_geniuminet_ouch_v2025_0206.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Replace Open Close
bist_borsaistanbul_geniuminet_ouch_v2025_0206.replace_open_close = {}

-- Size: Replace Open Close
bist_borsaistanbul_geniuminet_ouch_v2025_0206.replace_open_close.size = 1

-- Display: Replace Open Close
bist_borsaistanbul_geniuminet_ouch_v2025_0206.replace_open_close.display = function(value)
  if value == 0 then
    return "Replace Open Close: No Change (0)"
  end
  if value == 1 then
    return "Replace Open Close: Open (1)"
  end
  if value == 2 then
    return "Replace Open Close: Close Net (2)"
  end
  if value == 4 then
    return "Replace Open Close: Default (4)"
  end

  return "Replace Open Close: Unknown("..value..")"
end

-- Dissect: Replace Open Close
bist_borsaistanbul_geniuminet_ouch_v2025_0206.replace_open_close.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.replace_open_close.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.replace_open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.replace_open_close, range, value, display)

  return offset + length, value
end

-- Replacement Order Token
bist_borsaistanbul_geniuminet_ouch_v2025_0206.replacement_order_token = {}

-- Size: Replacement Order Token
bist_borsaistanbul_geniuminet_ouch_v2025_0206.replacement_order_token.size = 14

-- Display: Replacement Order Token
bist_borsaistanbul_geniuminet_ouch_v2025_0206.replacement_order_token.display = function(value)
  return "Replacement Order Token: "..value
end

-- Dissect: Replacement Order Token
bist_borsaistanbul_geniuminet_ouch_v2025_0206.replacement_order_token.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.replacement_order_token.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.replacement_order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.replacement_order_token, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
bist_borsaistanbul_geniuminet_ouch_v2025_0206.requested_sequence_number = {}

-- Size: Requested Sequence Number
bist_borsaistanbul_geniuminet_ouch_v2025_0206.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
bist_borsaistanbul_geniuminet_ouch_v2025_0206.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
bist_borsaistanbul_geniuminet_ouch_v2025_0206.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
bist_borsaistanbul_geniuminet_ouch_v2025_0206.requested_session = {}

-- Size: Requested Session
bist_borsaistanbul_geniuminet_ouch_v2025_0206.requested_session.size = 10

-- Display: Requested Session
bist_borsaistanbul_geniuminet_ouch_v2025_0206.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
bist_borsaistanbul_geniuminet_ouch_v2025_0206.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.requested_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved Numeric Unsigned 16
bist_borsaistanbul_geniuminet_ouch_v2025_0206.reserved_numeric_unsigned_16 = {}

-- Size: Reserved Numeric Unsigned 16
bist_borsaistanbul_geniuminet_ouch_v2025_0206.reserved_numeric_unsigned_16.size = 16

-- Display: Reserved Numeric Unsigned 16
bist_borsaistanbul_geniuminet_ouch_v2025_0206.reserved_numeric_unsigned_16.display = function(value)
  return "Reserved Numeric Unsigned 16: "..value
end

-- Dissect: Reserved Numeric Unsigned 16
bist_borsaistanbul_geniuminet_ouch_v2025_0206.reserved_numeric_unsigned_16.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.reserved_numeric_unsigned_16.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.reserved_numeric_unsigned_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.reserved_numeric_unsigned_16, range, value, display)

  return offset + length, value
end

-- Reserved Numeric Unsigned 2
bist_borsaistanbul_geniuminet_ouch_v2025_0206.reserved_numeric_unsigned_2 = {}

-- Size: Reserved Numeric Unsigned 2
bist_borsaistanbul_geniuminet_ouch_v2025_0206.reserved_numeric_unsigned_2.size = 2

-- Display: Reserved Numeric Unsigned 2
bist_borsaistanbul_geniuminet_ouch_v2025_0206.reserved_numeric_unsigned_2.display = function(value)
  return "Reserved Numeric Unsigned 2: "..value
end

-- Dissect: Reserved Numeric Unsigned 2
bist_borsaistanbul_geniuminet_ouch_v2025_0206.reserved_numeric_unsigned_2.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.reserved_numeric_unsigned_2.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.reserved_numeric_unsigned_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.reserved_numeric_unsigned_2, range, value, display)

  return offset + length, value
end

-- Reserved Numeric Unsigned 8
bist_borsaistanbul_geniuminet_ouch_v2025_0206.reserved_numeric_unsigned_8 = {}

-- Size: Reserved Numeric Unsigned 8
bist_borsaistanbul_geniuminet_ouch_v2025_0206.reserved_numeric_unsigned_8.size = 8

-- Display: Reserved Numeric Unsigned 8
bist_borsaistanbul_geniuminet_ouch_v2025_0206.reserved_numeric_unsigned_8.display = function(value)
  return "Reserved Numeric Unsigned 8: "..value
end

-- Dissect: Reserved Numeric Unsigned 8
bist_borsaistanbul_geniuminet_ouch_v2025_0206.reserved_numeric_unsigned_8.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.reserved_numeric_unsigned_8.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.reserved_numeric_unsigned_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.reserved_numeric_unsigned_8, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
bist_borsaistanbul_geniuminet_ouch_v2025_0206.sequenced_message_type = {}

-- Size: Sequenced Message Type
bist_borsaistanbul_geniuminet_ouch_v2025_0206.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
bist_borsaistanbul_geniuminet_ouch_v2025_0206.sequenced_message_type.display = function(value)
  if value == "A" then
    return "Sequenced Message Type: Order Accepted (A)"
  end
  if value == "J" then
    return "Sequenced Message Type: Order Rejected (J)"
  end
  if value == "U" then
    return "Sequenced Message Type: Order Replaced (U)"
  end
  if value == "C" then
    return "Sequenced Message Type: Order Canceled (C)"
  end
  if value == "E" then
    return "Sequenced Message Type: Order Executed (E)"
  end
  if value == "K" then
    return "Sequenced Message Type: Mass Quote Acknowledgement (K)"
  end
  if value == "R" then
    return "Sequenced Message Type: Mass Quote Rejection (R)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
bist_borsaistanbul_geniuminet_ouch_v2025_0206.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_packet_type = {}

-- Size: Server Packet Type
bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_packet_type.size = 1

-- Display: Server Packet Type
bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_packet_type.display = function(value)
  if value == "+" then
    return "Packet Type: Debug Packet (+)"
  end
  if value == "A" then
    return "Packet Type: Login Accepted Packet (A)"
  end
  if value == "J" then
    return "Packet Type: Login Rejected Packet (J)"
  end
  if value == "S" then
    return "Packet Type: Sequenced Data Packet (S)"
  end
  if value == "H" then
    return "Packet Type: Server Heartbeat Packet (H)"
  end
  if value == "Z" then
    return "Packet Type: End Of Session Packet (Z)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Server Packet Type
bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Side
bist_borsaistanbul_geniuminet_ouch_v2025_0206.side = {}

-- Size: Side
bist_borsaistanbul_geniuminet_ouch_v2025_0206.side.size = 1

-- Display: Side
bist_borsaistanbul_geniuminet_ouch_v2025_0206.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end
  if value == "T" then
    return "Side: Short Sell (T)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
bist_borsaistanbul_geniuminet_ouch_v2025_0206.side.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.side, range, value, display)

  return offset + length, value
end

-- Smp Id
bist_borsaistanbul_geniuminet_ouch_v2025_0206.smp_id = {}

-- Size: Smp Id
bist_borsaistanbul_geniuminet_ouch_v2025_0206.smp_id.size = 3

-- Display: Smp Id
bist_borsaistanbul_geniuminet_ouch_v2025_0206.smp_id.display = function(value)
  return "Smp Id: "..value
end

-- Dissect: Smp Id
bist_borsaistanbul_geniuminet_ouch_v2025_0206.smp_id.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.smp_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.smp_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.smp_id, range, value, display)

  return offset + length, value
end

-- Smp Level
bist_borsaistanbul_geniuminet_ouch_v2025_0206.smp_level = {}

-- Size: Smp Level
bist_borsaistanbul_geniuminet_ouch_v2025_0206.smp_level.size = 1

-- Display: Smp Level
bist_borsaistanbul_geniuminet_ouch_v2025_0206.smp_level.display = function(value)
  if value == 0 then
    return "Smp Level: Empty (0)"
  end
  if value == 1 then
    return "Smp Level: Within A Member (1)"
  end
  if value == 2 then
    return "Smp Level: Across Members (2)"
  end

  return "Smp Level: Unknown("..value..")"
end

-- Dissect: Smp Level
bist_borsaistanbul_geniuminet_ouch_v2025_0206.smp_level.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.smp_level.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.smp_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.smp_level, range, value, display)

  return offset + length, value
end

-- Smp Method
bist_borsaistanbul_geniuminet_ouch_v2025_0206.smp_method = {}

-- Size: Smp Method
bist_borsaistanbul_geniuminet_ouch_v2025_0206.smp_method.size = 1

-- Display: Smp Method
bist_borsaistanbul_geniuminet_ouch_v2025_0206.smp_method.display = function(value)
  if value == 0 then
    return "Smp Method: Empty (0)"
  end
  if value == 1 then
    return "Smp Method: Cancel Aggressive (1)"
  end
  if value == 2 then
    return "Smp Method: Cancel Passive (2)"
  end
  if value == 3 then
    return "Smp Method: Cancel Both (3)"
  end

  return "Smp Method: Unknown("..value..")"
end

-- Dissect: Smp Method
bist_borsaistanbul_geniuminet_ouch_v2025_0206.smp_method.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.smp_method.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.smp_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.smp_method, range, value, display)

  return offset + length, value
end

-- Time In Force
bist_borsaistanbul_geniuminet_ouch_v2025_0206.time_in_force = {}

-- Size: Time In Force
bist_borsaistanbul_geniuminet_ouch_v2025_0206.time_in_force.size = 1

-- Display: Time In Force
bist_borsaistanbul_geniuminet_ouch_v2025_0206.time_in_force.display = function(value)
  if value == 0 then
    return "Time In Force: Day (0)"
  end
  if value == 3 then
    return "Time In Force: Immediate Or Cancel (3)"
  end
  if value == 4 then
    return "Time In Force: Fill Or Kill (4)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
bist_borsaistanbul_geniuminet_ouch_v2025_0206.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.time_in_force.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Trade Price
bist_borsaistanbul_geniuminet_ouch_v2025_0206.trade_price = {}

-- Size: Trade Price
bist_borsaistanbul_geniuminet_ouch_v2025_0206.trade_price.size = 4

-- Display: Trade Price
bist_borsaistanbul_geniuminet_ouch_v2025_0206.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
bist_borsaistanbul_geniuminet_ouch_v2025_0206.trade_price.translate = function(raw)
  return raw/100
end

-- Dissect: Trade Price
bist_borsaistanbul_geniuminet_ouch_v2025_0206.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.trade_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bist_borsaistanbul_geniuminet_ouch_v2025_0206.trade_price.translate(raw)
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Traded Quantity
bist_borsaistanbul_geniuminet_ouch_v2025_0206.traded_quantity = {}

-- Size: Traded Quantity
bist_borsaistanbul_geniuminet_ouch_v2025_0206.traded_quantity.size = 8

-- Display: Traded Quantity
bist_borsaistanbul_geniuminet_ouch_v2025_0206.traded_quantity.display = function(value)
  return "Traded Quantity: "..value
end

-- Dissect: Traded Quantity
bist_borsaistanbul_geniuminet_ouch_v2025_0206.traded_quantity.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.traded_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.traded_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.traded_quantity, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
bist_borsaistanbul_geniuminet_ouch_v2025_0206.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
bist_borsaistanbul_geniuminet_ouch_v2025_0206.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
bist_borsaistanbul_geniuminet_ouch_v2025_0206.unsequenced_message_type.display = function(value)
  if value == "O" then
    return "Unsequenced Message Type: Enter Order (O)"
  end
  if value == "U" then
    return "Unsequenced Message Type: Replace Order (U)"
  end
  if value == "X" then
    return "Unsequenced Message Type: Cancel Order (X)"
  end
  if value == "Y" then
    return "Unsequenced Message Type: Cancel By Order Id (Y)"
  end
  if value == "Q" then
    return "Unsequenced Message Type: Mass Quote (Q)"
  end

  return "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
bist_borsaistanbul_geniuminet_ouch_v2025_0206.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
bist_borsaistanbul_geniuminet_ouch_v2025_0206.username = {}

-- Size: Username
bist_borsaistanbul_geniuminet_ouch_v2025_0206.username.size = 6

-- Display: Username
bist_borsaistanbul_geniuminet_ouch_v2025_0206.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
bist_borsaistanbul_geniuminet_ouch_v2025_0206.username.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Bist BorsaIstanbul GeniumInet Ouch 2025.0206
-----------------------------------------------------------------------

-- End Of Session
bist_borsaistanbul_geniuminet_ouch_v2025_0206.end_of_session = {}

-- Display: End Of Session
bist_borsaistanbul_geniuminet_ouch_v2025_0206.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
bist_borsaistanbul_geniuminet_ouch_v2025_0206.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_heartbeat = {}

-- Display: Server Heartbeat
bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Mass Quote Rejection
bist_borsaistanbul_geniuminet_ouch_v2025_0206.mass_quote_rejection = {}

-- Size: Mass Quote Rejection
bist_borsaistanbul_geniuminet_ouch_v2025_0206.mass_quote_rejection.size =
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.nanoseconds.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_token.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_book_id.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.reject_code.size

-- Display: Mass Quote Rejection
bist_borsaistanbul_geniuminet_ouch_v2025_0206.mass_quote_rejection.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Rejection
bist_borsaistanbul_geniuminet_ouch_v2025_0206.mass_quote_rejection.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Timestamp
  index, nanoseconds = bist_borsaistanbul_geniuminet_ouch_v2025_0206.nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Token: Alpha
  index, order_token = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_token.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric unsigned
  index, order_book_id = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_book_id.dissect(buffer, index, packet, parent)

  -- Reject Code: Numeric signed
  index, reject_code = bist_borsaistanbul_geniuminet_ouch_v2025_0206.reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote Rejection
bist_borsaistanbul_geniuminet_ouch_v2025_0206.mass_quote_rejection.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.mass_quote_rejection, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_ouch_v2025_0206.mass_quote_rejection.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.mass_quote_rejection.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.mass_quote_rejection.fields(buffer, offset, packet, parent)
  end
end

-- Mass Quote Acknowledgement
bist_borsaistanbul_geniuminet_ouch_v2025_0206.mass_quote_acknowledgement = {}

-- Size: Mass Quote Acknowledgement
bist_borsaistanbul_geniuminet_ouch_v2025_0206.mass_quote_acknowledgement.size =
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.nanoseconds.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_token.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_book_id.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.quantity.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.traded_quantity.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.price.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.quote_side.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.quote_status.size

-- Display: Mass Quote Acknowledgement
bist_borsaistanbul_geniuminet_ouch_v2025_0206.mass_quote_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Acknowledgement
bist_borsaistanbul_geniuminet_ouch_v2025_0206.mass_quote_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Timestamp
  index, nanoseconds = bist_borsaistanbul_geniuminet_ouch_v2025_0206.nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Token: Alpha
  index, order_token = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_token.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric unsigned
  index, order_book_id = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_book_id.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric unsigned
  index, quantity = bist_borsaistanbul_geniuminet_ouch_v2025_0206.quantity.dissect(buffer, index, packet, parent)

  -- Traded Quantity: Numeric unsigned
  index, traded_quantity = bist_borsaistanbul_geniuminet_ouch_v2025_0206.traded_quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = bist_borsaistanbul_geniuminet_ouch_v2025_0206.price.dissect(buffer, index, packet, parent)

  -- Quote Side: Alpha
  index, quote_side = bist_borsaistanbul_geniuminet_ouch_v2025_0206.quote_side.dissect(buffer, index, packet, parent)

  -- Quote Status: Numeric unsigned
  index, quote_status = bist_borsaistanbul_geniuminet_ouch_v2025_0206.quote_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote Acknowledgement
bist_borsaistanbul_geniuminet_ouch_v2025_0206.mass_quote_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.mass_quote_acknowledgement, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_ouch_v2025_0206.mass_quote_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.mass_quote_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.mass_quote_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_executed = {}

-- Size: Order Executed
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_executed.size =
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.nanoseconds.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_token.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_book_id.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.traded_quantity.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.trade_price.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.match_id.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_category.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.reserved_numeric_unsigned_16.size

-- Display: Order Executed
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_executed.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_executed.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Timestamp
  index, nanoseconds = bist_borsaistanbul_geniuminet_ouch_v2025_0206.nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Token: Alpha
  index, order_token = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_token.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric unsigned
  index, order_book_id = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_book_id.dissect(buffer, index, packet, parent)

  -- Traded Quantity: Numeric unsigned
  index, traded_quantity = bist_borsaistanbul_geniuminet_ouch_v2025_0206.traded_quantity.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = bist_borsaistanbul_geniuminet_ouch_v2025_0206.trade_price.dissect(buffer, index, packet, parent)

  -- Match Id: Numeric unsigned
  index, match_id = bist_borsaistanbul_geniuminet_ouch_v2025_0206.match_id.dissect(buffer, index, packet, parent)

  -- Client Category: Numeric unsigned
  index, client_category = bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_category.dissect(buffer, index, packet, parent)

  -- Reserved Numeric Unsigned 16: Numeric unsigned
  index, reserved_numeric_unsigned_16 = bist_borsaistanbul_geniuminet_ouch_v2025_0206.reserved_numeric_unsigned_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_executed.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.order_executed, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_executed.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_executed.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_executed.fields(buffer, offset, packet, parent)
  end
end

-- Order Canceled
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_canceled = {}

-- Size: Order Canceled
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_canceled.size =
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.nanoseconds.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_token.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_book_id.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.side.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_id.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.reason.size

-- Display: Order Canceled
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_canceled.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Canceled
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_canceled.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Timestamp
  index, nanoseconds = bist_borsaistanbul_geniuminet_ouch_v2025_0206.nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Token: Alpha
  index, order_token = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_token.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric unsigned
  index, order_book_id = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = bist_borsaistanbul_geniuminet_ouch_v2025_0206.side.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric unsigned
  index, order_id = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_id.dissect(buffer, index, packet, parent)

  -- Reason: Numeric unsigned
  index, reason = bist_borsaistanbul_geniuminet_ouch_v2025_0206.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Canceled
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_canceled.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.order_canceled, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_canceled.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_canceled.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_canceled.fields(buffer, offset, packet, parent)
  end
end

-- Order Replaced
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_replaced = {}

-- Size: Order Replaced
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_replaced.size =
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.nanoseconds.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.replacement_order_token.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.previous_order_token.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_book_id.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.side.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_id.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.quantity.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.price.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.time_in_force.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.replace_open_close.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_account.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_state.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.customer_info.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.exchange_info_alpha_32.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.pre_trade_quantity.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.display_quantity.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_category.size

-- Display: Order Replaced
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_replaced.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replaced
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_replaced.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Timestamp
  index, nanoseconds = bist_borsaistanbul_geniuminet_ouch_v2025_0206.nanoseconds.dissect(buffer, index, packet, parent)

  -- Replacement Order Token: Alpha
  index, replacement_order_token = bist_borsaistanbul_geniuminet_ouch_v2025_0206.replacement_order_token.dissect(buffer, index, packet, parent)

  -- Previous Order Token: Alpha
  index, previous_order_token = bist_borsaistanbul_geniuminet_ouch_v2025_0206.previous_order_token.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric unsigned
  index, order_book_id = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = bist_borsaistanbul_geniuminet_ouch_v2025_0206.side.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric unsigned
  index, order_id = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_id.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric unsigned
  index, quantity = bist_borsaistanbul_geniuminet_ouch_v2025_0206.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = bist_borsaistanbul_geniuminet_ouch_v2025_0206.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Numeric unsigned
  index, time_in_force = bist_borsaistanbul_geniuminet_ouch_v2025_0206.time_in_force.dissect(buffer, index, packet, parent)

  -- Replace Open Close: Numeric unsigned
  index, replace_open_close = bist_borsaistanbul_geniuminet_ouch_v2025_0206.replace_open_close.dissect(buffer, index, packet, parent)

  -- Client Account: Alpha
  index, client_account = bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_account.dissect(buffer, index, packet, parent)

  -- Order State: Numeric unsigned
  index, order_state = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_state.dissect(buffer, index, packet, parent)

  -- Customer Info: Alpha
  index, customer_info = bist_borsaistanbul_geniuminet_ouch_v2025_0206.customer_info.dissect(buffer, index, packet, parent)

  -- Exchange Info Alpha 32: Alpha
  index, exchange_info_alpha_32 = bist_borsaistanbul_geniuminet_ouch_v2025_0206.exchange_info_alpha_32.dissect(buffer, index, packet, parent)

  -- Pre Trade Quantity: Numeric unsigned
  index, pre_trade_quantity = bist_borsaistanbul_geniuminet_ouch_v2025_0206.pre_trade_quantity.dissect(buffer, index, packet, parent)

  -- Display Quantity: Numeric unsigned
  index, display_quantity = bist_borsaistanbul_geniuminet_ouch_v2025_0206.display_quantity.dissect(buffer, index, packet, parent)

  -- Client Category: Numeric unsigned
  index, client_category = bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_category.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replaced
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_replaced.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.order_replaced, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_replaced.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_replaced.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_replaced.fields(buffer, offset, packet, parent)
  end
end

-- Order Rejected
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_rejected = {}

-- Size: Order Rejected
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_rejected.size =
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.nanoseconds.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_token.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.reject_code.size

-- Display: Order Rejected
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_rejected.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Rejected
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_rejected.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Timestamp
  index, nanoseconds = bist_borsaistanbul_geniuminet_ouch_v2025_0206.nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Token: Alpha
  index, order_token = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_token.dissect(buffer, index, packet, parent)

  -- Reject Code: Numeric signed
  index, reject_code = bist_borsaistanbul_geniuminet_ouch_v2025_0206.reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Rejected
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_rejected.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.order_rejected, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_rejected.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_rejected.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_rejected.fields(buffer, offset, packet, parent)
  end
end

-- Order Accepted
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_accepted = {}

-- Size: Order Accepted
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_accepted.size =
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.nanoseconds.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_token.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_book_id.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.side.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_id.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.quantity.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.price.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.time_in_force.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.open_close.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_account.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_state.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.customer_info.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.exchange_info_alpha_32.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.pre_trade_quantity.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.display_quantity.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_category.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.off_hours.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.smp_level.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.smp_method.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.smp_id.size

-- Display: Order Accepted
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_accepted.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Accepted
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_accepted.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Timestamp
  index, nanoseconds = bist_borsaistanbul_geniuminet_ouch_v2025_0206.nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Token: Alpha
  index, order_token = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_token.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric unsigned
  index, order_book_id = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = bist_borsaistanbul_geniuminet_ouch_v2025_0206.side.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric unsigned
  index, order_id = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_id.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric unsigned
  index, quantity = bist_borsaistanbul_geniuminet_ouch_v2025_0206.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = bist_borsaistanbul_geniuminet_ouch_v2025_0206.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Numeric unsigned
  index, time_in_force = bist_borsaistanbul_geniuminet_ouch_v2025_0206.time_in_force.dissect(buffer, index, packet, parent)

  -- Open Close: Numeric unsigned
  index, open_close = bist_borsaistanbul_geniuminet_ouch_v2025_0206.open_close.dissect(buffer, index, packet, parent)

  -- Client Account: Alpha
  index, client_account = bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_account.dissect(buffer, index, packet, parent)

  -- Order State: Numeric unsigned
  index, order_state = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_state.dissect(buffer, index, packet, parent)

  -- Customer Info: Alpha
  index, customer_info = bist_borsaistanbul_geniuminet_ouch_v2025_0206.customer_info.dissect(buffer, index, packet, parent)

  -- Exchange Info Alpha 32: Alpha
  index, exchange_info_alpha_32 = bist_borsaistanbul_geniuminet_ouch_v2025_0206.exchange_info_alpha_32.dissect(buffer, index, packet, parent)

  -- Pre Trade Quantity: Numeric unsigned
  index, pre_trade_quantity = bist_borsaistanbul_geniuminet_ouch_v2025_0206.pre_trade_quantity.dissect(buffer, index, packet, parent)

  -- Display Quantity: Numeric unsigned
  index, display_quantity = bist_borsaistanbul_geniuminet_ouch_v2025_0206.display_quantity.dissect(buffer, index, packet, parent)

  -- Client Category: Numeric unsigned
  index, client_category = bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_category.dissect(buffer, index, packet, parent)

  -- Off Hours: Numeric unsigned
  index, off_hours = bist_borsaistanbul_geniuminet_ouch_v2025_0206.off_hours.dissect(buffer, index, packet, parent)

  -- Smp Level: Numeric unsigned
  index, smp_level = bist_borsaistanbul_geniuminet_ouch_v2025_0206.smp_level.dissect(buffer, index, packet, parent)

  -- Smp Method: Numeric unsigned
  index, smp_method = bist_borsaistanbul_geniuminet_ouch_v2025_0206.smp_method.dissect(buffer, index, packet, parent)

  -- Smp Id: Alpha
  index, smp_id = bist_borsaistanbul_geniuminet_ouch_v2025_0206.smp_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Accepted
bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_accepted.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.order_accepted, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_accepted.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_accepted.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_accepted.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
bist_borsaistanbul_geniuminet_ouch_v2025_0206.sequenced_message = {}

-- Dissect: Sequenced Message
bist_borsaistanbul_geniuminet_ouch_v2025_0206.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect Order Accepted
  if sequenced_message_type == "A" then
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_accepted.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Rejected
  if sequenced_message_type == "J" then
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_rejected.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replaced
  if sequenced_message_type == "U" then
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_replaced.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Canceled
  if sequenced_message_type == "C" then
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_canceled.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed
  if sequenced_message_type == "E" then
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_executed.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Quote Acknowledgement
  if sequenced_message_type == "K" then
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.mass_quote_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Quote Rejection
  if sequenced_message_type == "R" then
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.mass_quote_rejection.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = bist_borsaistanbul_geniuminet_ouch_v2025_0206.conversation.current
  if flow ~= nil then
    local memo = flow.sequence.frames[packet.number]
    if not packet.visited then
      if flow.sequence.next == nil then
        flow.sequence.next = tonumber(bist_borsaistanbul_geniuminet_ouch_v2025_0206.accepted_sequence_number.current)
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
          local sequence = parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if bist_borsaistanbul_geniuminet_ouch_v2025_0206.stream_frame ~= packet.number or bist_borsaistanbul_geniuminet_ouch_v2025_0206.stream_occurrence >= #memo then
          bist_borsaistanbul_geniuminet_ouch_v2025_0206.stream_frame = packet.number
          bist_borsaistanbul_geniuminet_ouch_v2025_0206.stream_occurrence = 0
        end
        bist_borsaistanbul_geniuminet_ouch_v2025_0206.stream_occurrence = bist_borsaistanbul_geniuminet_ouch_v2025_0206.stream_occurrence + 1
        local value = memo[bist_borsaistanbul_geniuminet_ouch_v2025_0206.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 7 values
  index, sequenced_message_type = bist_borsaistanbul_geniuminet_ouch_v2025_0206.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 7 branches
  index = bist_borsaistanbul_geniuminet_ouch_v2025_0206.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = bist_borsaistanbul_geniuminet_ouch_v2025_0206.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.sequenced_data_packet, buffer(offset, 0))
    local current = bist_borsaistanbul_geniuminet_ouch_v2025_0206.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bist_borsaistanbul_geniuminet_ouch_v2025_0206.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.login_rejected_packet = {}

-- Size: Login Rejected Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.login_rejected_packet.size =
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.reject_reason_code.size

-- Display: Login Rejected Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String Enum with 2 values
  index, reject_reason_code = bist_borsaistanbul_geniuminet_ouch_v2025_0206.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.login_rejected_packet, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_ouch_v2025_0206.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.login_accepted_packet = {}

-- Size: Login Accepted Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.login_accepted_packet.size =
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.accepted_session.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.accepted_sequence_number.size

-- Display: Login Accepted Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = bist_borsaistanbul_geniuminet_ouch_v2025_0206.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = bist_borsaistanbul_geniuminet_ouch_v2025_0206.accepted_sequence_number.dissect(buffer, index, packet, parent)

  -- Store Accepted Sequence Number Value
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.accepted_sequence_number.current = accepted_sequence_number

  if not packet.visited then
    bist_borsaistanbul_geniuminet_ouch_v2025_0206.conversation.current.accepted_sequence_number.last = accepted_sequence_number
  end

  return index
end

-- Dissect: Login Accepted Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.login_accepted_packet, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_ouch_v2025_0206.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.debug_packet = {}

-- Size: Debug Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.debug_packet.size =
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.debug_text.size

-- Display: Debug Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Debug Text: 1 Byte Ascii String
  index, debug_text = bist_borsaistanbul_geniuminet_ouch_v2025_0206.debug_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.debug_packet, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_ouch_v2025_0206.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_payload = {}

-- Dissect: Server Payload
bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  -- Dissect Debug Packet
  if server_packet_type == "+" then
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if server_packet_type == "A" then
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if server_packet_type == "J" then
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if server_packet_type == "S" then
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat
  if server_packet_type == "H" then
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if server_packet_type == "Z" then
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.end_of_session.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_packet_header = {}

-- Size: Server Packet Header
bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_packet_header.size =
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.packet_length.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_packet_type.size

-- Display: Server Packet Header
bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.server_packet_header, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_packet_header.size then
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
bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_packet = {}

-- Verify required size of Tcp packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_packet.requiredsize = function(buffer)
  return buffer:len() >= bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_packet_header.size
end

-- Dissect Server Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = bist_borsaistanbul_geniuminet_ouch_v2025_0206.conversation.data(packet)
  if not packet.visited then
    data.accepted_sequence_number.frames[packet.number] = data.accepted_sequence_number.last
  end
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.accepted_sequence_number.current = data.accepted_sequence_number.frames[packet.number]
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.conversation.current = data

  local index = 0

  -- Dependency for Server Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Server Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_soup_bin_tcp_packet = server_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_server_soup_bin_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end

-- Logout Request
bist_borsaistanbul_geniuminet_ouch_v2025_0206.logout_request = {}

-- Display: Logout Request
bist_borsaistanbul_geniuminet_ouch_v2025_0206.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
bist_borsaistanbul_geniuminet_ouch_v2025_0206.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_heartbeat = {}

-- Display: Client Heartbeat
bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Quote Set
bist_borsaistanbul_geniuminet_ouch_v2025_0206.quote_set = {}

-- Size: Quote Set
bist_borsaistanbul_geniuminet_ouch_v2025_0206.quote_set.size =
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_book_id.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.bid_price.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.offer_price.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.bid_size.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.offer_size.size

-- Display: Quote Set
bist_borsaistanbul_geniuminet_ouch_v2025_0206.quote_set.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Set
bist_borsaistanbul_geniuminet_ouch_v2025_0206.quote_set.fields = function(buffer, offset, packet, parent, quote_set_index)
  local index = offset

  -- Implicit Quote Set Index
  if quote_set_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.quote_set_index, quote_set_index)
    iteration:set_generated()
  end

  -- Order Book Id: Numeric unsigned
  index, order_book_id = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_book_id.dissect(buffer, index, packet, parent)

  -- Bid Price: Price
  index, bid_price = bist_borsaistanbul_geniuminet_ouch_v2025_0206.bid_price.dissect(buffer, index, packet, parent)

  -- Offer Price: Price
  index, offer_price = bist_borsaistanbul_geniuminet_ouch_v2025_0206.offer_price.dissect(buffer, index, packet, parent)

  -- Bid Size: Numeric unsigned
  index, bid_size = bist_borsaistanbul_geniuminet_ouch_v2025_0206.bid_size.dissect(buffer, index, packet, parent)

  -- Offer Size: Numeric unsigned
  index, offer_size = bist_borsaistanbul_geniuminet_ouch_v2025_0206.offer_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Set
bist_borsaistanbul_geniuminet_ouch_v2025_0206.quote_set.dissect = function(buffer, offset, packet, parent, quote_set_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.quote_set, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_ouch_v2025_0206.quote_set.fields(buffer, offset, packet, parent, quote_set_index)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.quote_set.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.quote_set.fields(buffer, offset, packet, parent, quote_set_index)
  end
end

-- Mass Quote
bist_borsaistanbul_geniuminet_ouch_v2025_0206.mass_quote = {}

-- Calculate size of: Mass Quote
bist_borsaistanbul_geniuminet_ouch_v2025_0206.mass_quote.size = function(buffer, offset)
  local index = 0

  index = index + bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_token.size

  index = index + bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_category.size

  index = index + bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_account.size

  index = index + bist_borsaistanbul_geniuminet_ouch_v2025_0206.exchange_info_alpha_16.size

  index = index + bist_borsaistanbul_geniuminet_ouch_v2025_0206.no_quote_entries.size

  -- Calculate field size from count
  local quote_set_count = buffer(offset + index - 2, 2):uint()
  index = index + quote_set_count * 28

  return index
end

-- Display: Mass Quote
bist_borsaistanbul_geniuminet_ouch_v2025_0206.mass_quote.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote
bist_borsaistanbul_geniuminet_ouch_v2025_0206.mass_quote.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: Alpha
  index, order_token = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_token.dissect(buffer, index, packet, parent)

  -- Client Category: Numeric unsigned
  index, client_category = bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_category.dissect(buffer, index, packet, parent)

  -- Client Account: Alpha
  index, client_account = bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_account.dissect(buffer, index, packet, parent)

  -- Exchange Info Alpha 16: Alpha
  index, exchange_info_alpha_16 = bist_borsaistanbul_geniuminet_ouch_v2025_0206.exchange_info_alpha_16.dissect(buffer, index, packet, parent)

  -- No Quote Entries: Numeric unsigned
  index, no_quote_entries = bist_borsaistanbul_geniuminet_ouch_v2025_0206.no_quote_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Quote Set
  for quote_set_index = 1, no_quote_entries do
    index, quote_set = bist_borsaistanbul_geniuminet_ouch_v2025_0206.quote_set.dissect(buffer, index, packet, parent, quote_set_index)
  end

  return index
end

-- Dissect: Mass Quote
bist_borsaistanbul_geniuminet_ouch_v2025_0206.mass_quote.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.mass_quote, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_ouch_v2025_0206.mass_quote.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.mass_quote.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.mass_quote.fields(buffer, offset, packet, parent)
  end
end

-- Cancel By Order Id
bist_borsaistanbul_geniuminet_ouch_v2025_0206.cancel_by_order_id = {}

-- Size: Cancel By Order Id
bist_borsaistanbul_geniuminet_ouch_v2025_0206.cancel_by_order_id.size =
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_book_id.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.side.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_id.size

-- Display: Cancel By Order Id
bist_borsaistanbul_geniuminet_ouch_v2025_0206.cancel_by_order_id.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel By Order Id
bist_borsaistanbul_geniuminet_ouch_v2025_0206.cancel_by_order_id.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Book Id: Numeric unsigned
  index, order_book_id = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = bist_borsaistanbul_geniuminet_ouch_v2025_0206.side.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric unsigned
  index, order_id = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel By Order Id
bist_borsaistanbul_geniuminet_ouch_v2025_0206.cancel_by_order_id.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.cancel_by_order_id, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_ouch_v2025_0206.cancel_by_order_id.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.cancel_by_order_id.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.cancel_by_order_id.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order
bist_borsaistanbul_geniuminet_ouch_v2025_0206.cancel_order = {}

-- Size: Cancel Order
bist_borsaistanbul_geniuminet_ouch_v2025_0206.cancel_order.size =
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_token.size

-- Display: Cancel Order
bist_borsaistanbul_geniuminet_ouch_v2025_0206.cancel_order.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order
bist_borsaistanbul_geniuminet_ouch_v2025_0206.cancel_order.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: Alpha
  index, order_token = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order
bist_borsaistanbul_geniuminet_ouch_v2025_0206.cancel_order.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.cancel_order, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_ouch_v2025_0206.cancel_order.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.cancel_order.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.cancel_order.fields(buffer, offset, packet, parent)
  end
end

-- Replace Order
bist_borsaistanbul_geniuminet_ouch_v2025_0206.replace_order = {}

-- Size: Replace Order
bist_borsaistanbul_geniuminet_ouch_v2025_0206.replace_order.size =
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.existing_order_token.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.replacement_order_token.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.quantity.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.price.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.replace_open_close.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_account.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.customer_info.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.exchange_info_alpha_32.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.display_quantity.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_category.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.reserved_numeric_unsigned_8.size

-- Display: Replace Order
bist_borsaistanbul_geniuminet_ouch_v2025_0206.replace_order.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replace Order
bist_borsaistanbul_geniuminet_ouch_v2025_0206.replace_order.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Existing Order Token: Alpha
  index, existing_order_token = bist_borsaistanbul_geniuminet_ouch_v2025_0206.existing_order_token.dissect(buffer, index, packet, parent)

  -- Replacement Order Token: Alpha
  index, replacement_order_token = bist_borsaistanbul_geniuminet_ouch_v2025_0206.replacement_order_token.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric unsigned
  index, quantity = bist_borsaistanbul_geniuminet_ouch_v2025_0206.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = bist_borsaistanbul_geniuminet_ouch_v2025_0206.price.dissect(buffer, index, packet, parent)

  -- Replace Open Close: Numeric unsigned
  index, replace_open_close = bist_borsaistanbul_geniuminet_ouch_v2025_0206.replace_open_close.dissect(buffer, index, packet, parent)

  -- Client Account: Alpha
  index, client_account = bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_account.dissect(buffer, index, packet, parent)

  -- Customer Info: Alpha
  index, customer_info = bist_borsaistanbul_geniuminet_ouch_v2025_0206.customer_info.dissect(buffer, index, packet, parent)

  -- Exchange Info Alpha 32: Alpha
  index, exchange_info_alpha_32 = bist_borsaistanbul_geniuminet_ouch_v2025_0206.exchange_info_alpha_32.dissect(buffer, index, packet, parent)

  -- Display Quantity: Numeric unsigned
  index, display_quantity = bist_borsaistanbul_geniuminet_ouch_v2025_0206.display_quantity.dissect(buffer, index, packet, parent)

  -- Client Category: Numeric unsigned
  index, client_category = bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_category.dissect(buffer, index, packet, parent)

  -- Reserved Numeric Unsigned 8: Numeric unsigned
  index, reserved_numeric_unsigned_8 = bist_borsaistanbul_geniuminet_ouch_v2025_0206.reserved_numeric_unsigned_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replace Order
bist_borsaistanbul_geniuminet_ouch_v2025_0206.replace_order.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.replace_order, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_ouch_v2025_0206.replace_order.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.replace_order.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.replace_order.fields(buffer, offset, packet, parent)
  end
end

-- Enter Order
bist_borsaistanbul_geniuminet_ouch_v2025_0206.enter_order = {}

-- Size: Enter Order
bist_borsaistanbul_geniuminet_ouch_v2025_0206.enter_order.size =
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_token.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_book_id.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.side.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.quantity.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.price.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.time_in_force.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.open_close.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_account.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.customer_info.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.exchange_info_alpha_32.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.display_quantity.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_category.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.off_hours.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.smp_level.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.smp_method.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.smp_id.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.reserved_numeric_unsigned_2.size

-- Display: Enter Order
bist_borsaistanbul_geniuminet_ouch_v2025_0206.enter_order.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enter Order
bist_borsaistanbul_geniuminet_ouch_v2025_0206.enter_order.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: Alpha
  index, order_token = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_token.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric unsigned
  index, order_book_id = bist_borsaistanbul_geniuminet_ouch_v2025_0206.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = bist_borsaistanbul_geniuminet_ouch_v2025_0206.side.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric unsigned
  index, quantity = bist_borsaistanbul_geniuminet_ouch_v2025_0206.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = bist_borsaistanbul_geniuminet_ouch_v2025_0206.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Numeric unsigned
  index, time_in_force = bist_borsaistanbul_geniuminet_ouch_v2025_0206.time_in_force.dissect(buffer, index, packet, parent)

  -- Open Close: Numeric unsigned
  index, open_close = bist_borsaistanbul_geniuminet_ouch_v2025_0206.open_close.dissect(buffer, index, packet, parent)

  -- Client Account: Alpha
  index, client_account = bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_account.dissect(buffer, index, packet, parent)

  -- Customer Info: Alpha
  index, customer_info = bist_borsaistanbul_geniuminet_ouch_v2025_0206.customer_info.dissect(buffer, index, packet, parent)

  -- Exchange Info Alpha 32: Alpha
  index, exchange_info_alpha_32 = bist_borsaistanbul_geniuminet_ouch_v2025_0206.exchange_info_alpha_32.dissect(buffer, index, packet, parent)

  -- Display Quantity: Numeric unsigned
  index, display_quantity = bist_borsaistanbul_geniuminet_ouch_v2025_0206.display_quantity.dissect(buffer, index, packet, parent)

  -- Client Category: Numeric unsigned
  index, client_category = bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_category.dissect(buffer, index, packet, parent)

  -- Off Hours: Numeric unsigned
  index, off_hours = bist_borsaistanbul_geniuminet_ouch_v2025_0206.off_hours.dissect(buffer, index, packet, parent)

  -- Smp Level: Numeric unsigned
  index, smp_level = bist_borsaistanbul_geniuminet_ouch_v2025_0206.smp_level.dissect(buffer, index, packet, parent)

  -- Smp Method: Numeric unsigned
  index, smp_method = bist_borsaistanbul_geniuminet_ouch_v2025_0206.smp_method.dissect(buffer, index, packet, parent)

  -- Smp Id: Alpha
  index, smp_id = bist_borsaistanbul_geniuminet_ouch_v2025_0206.smp_id.dissect(buffer, index, packet, parent)

  -- Reserved Numeric Unsigned 2: Numeric unsigned
  index, reserved_numeric_unsigned_2 = bist_borsaistanbul_geniuminet_ouch_v2025_0206.reserved_numeric_unsigned_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enter Order
bist_borsaistanbul_geniuminet_ouch_v2025_0206.enter_order.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.enter_order, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_ouch_v2025_0206.enter_order.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.enter_order.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.enter_order.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
bist_borsaistanbul_geniuminet_ouch_v2025_0206.unsequenced_message = {}

-- Dissect: Unsequenced Message
bist_borsaistanbul_geniuminet_ouch_v2025_0206.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  -- Dissect Enter Order
  if unsequenced_message_type == "O" then
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.enter_order.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replace Order
  if unsequenced_message_type == "U" then
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.replace_order.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order
  if unsequenced_message_type == "X" then
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.cancel_order.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel By Order Id
  if unsequenced_message_type == "Y" then
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.cancel_by_order_id.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Quote
  if unsequenced_message_type == "Q" then
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.mass_quote.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String Enum with 5 values
  index, unsequenced_message_type = bist_borsaistanbul_geniuminet_ouch_v2025_0206.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 5 branches
  index = bist_borsaistanbul_geniuminet_ouch_v2025_0206.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = bist_borsaistanbul_geniuminet_ouch_v2025_0206.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = bist_borsaistanbul_geniuminet_ouch_v2025_0206.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bist_borsaistanbul_geniuminet_ouch_v2025_0206.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.login_request_packet = {}

-- Size: Login Request Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.login_request_packet.size =
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.username.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.password.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.requested_session.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.requested_sequence_number.size

-- Display: Login Request Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = bist_borsaistanbul_geniuminet_ouch_v2025_0206.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = bist_borsaistanbul_geniuminet_ouch_v2025_0206.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = bist_borsaistanbul_geniuminet_ouch_v2025_0206.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = bist_borsaistanbul_geniuminet_ouch_v2025_0206.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.login_request_packet, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_ouch_v2025_0206.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_payload = {}

-- Dissect: Client Payload
bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  -- Dissect Debug Packet
  if client_packet_type == "+" then
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if client_packet_type == "L" then
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if client_packet_type == "U" then
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat
  if client_packet_type == "R" then
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if client_packet_type == "O" then
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.logout_request.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_packet_header = {}

-- Size: Client Packet Header
bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_packet_header.size =
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.packet_length.size + 
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_packet_type.size

-- Display: Client Packet Header
bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = bist_borsaistanbul_geniuminet_ouch_v2025_0206.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.client_packet_header, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_packet_header.size then
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
bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_packet = {}

-- Verify required size of Tcp packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_packet.requiredsize = function(buffer)
  return buffer:len() >= bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_packet_header.size
end

-- Dissect Client Packet
bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Client Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_soup_bin_tcp_packet = client_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_client_soup_bin_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.init()
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.accepted_sequence_number.current = nil
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.conversation.current = nil
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.conversation.flows = {}
end

-- Connection roles for Bist BorsaIstanbul GeniumInet Ouch 2025.0206: Client is the initiator, Server is the acceptor
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
bist_borsaistanbul_geniuminet_ouch_v2025_0206.role = function(packet)
  if omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.prefs.acceptor_port

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

  if omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.prefs.swap_sides then
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
bist_borsaistanbul_geniuminet_ouch_v2025_0206.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Bist BorsaIstanbul GeniumInet Ouch 2025.0206
function omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.name

  -- Dissect protocol
  local protocol = parent:add(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206, buffer(), omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.description, "("..buffer:len().." Bytes)")

  local role = bist_borsaistanbul_geniuminet_ouch_v2025_0206.role(packet)

  if role == "initiator" then
    return bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_packet.dissect(buffer, packet, protocol)
  end

  return bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_packet.fingerprint = function(buffer)
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

  -- Unsequenced Data Packet: carries the application messages, which tell this protocol from others sharing the session framing
  if client_packet_type == "U" then
    if buffer:len() < 4 then
      return false
    end

    local unsequenced_message_type = buffer(3, 1):string()

    -- Enter Order
    if unsequenced_message_type == "O" then
      return true
    end

    -- Replace Order
    if unsequenced_message_type == "U" then
      return true
    end

    -- Cancel Order
    if unsequenced_message_type == "X" then
      return true
    end

    -- Cancel By Order Id
    if unsequenced_message_type == "Y" then
      return true
    end

    -- Mass Quote
    if unsequenced_message_type == "Q" then
      return true
    end

    return false
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
bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_packet.fingerprint = function(buffer)
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

  -- Sequenced Data Packet: carries the application messages, which tell this protocol from others sharing the session framing
  if server_packet_type == "S" then
    if buffer:len() < 4 then
      return false
    end

    local sequenced_message_type = buffer(3, 1):string()

    -- Order Accepted
    if sequenced_message_type == "A" then
      return true
    end

    -- Order Rejected
    if sequenced_message_type == "J" then
      return true
    end

    -- Order Replaced
    if sequenced_message_type == "U" then
      return true
    end

    -- Order Canceled
    if sequenced_message_type == "C" then
      return true
    end

    -- Order Executed
    if sequenced_message_type == "E" then
      return true
    end

    -- Mass Quote Acknowledgement
    if sequenced_message_type == "K" then
      return true
    end

    -- Mass Quote Rejection
    if sequenced_message_type == "R" then
      return true
    end

    return false
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

-- Dissector Heuristic for Bist BorsaIstanbul GeniumInet Ouch 2025.0206 (Tcp)
local function omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not bist_borsaistanbul_geniuminet_ouch_v2025_0206.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206
  omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Bist BorsaIstanbul GeniumInet Ouch 2025.0206 (Tcp)
local function omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not bist_borsaistanbul_geniuminet_ouch_v2025_0206.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206
  omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Bist BorsaIstanbul GeniumInet Ouch 2025.0206 (Tcp): apply the heuristic of the sender's connection role
local function omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206_tcp_heuristic(buffer, packet, parent)
  local role = bist_borsaistanbul_geniuminet_ouch_v2025_0206.role(packet)
  local initiator = omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206_tcp_initiator_heuristic
  local acceptor = omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  bist_borsaistanbul_geniuminet_ouch_v2025_0206.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  bist_borsaistanbul_geniuminet_ouch_v2025_0206.swap(packet)

  return false
end

-- Register Heuristics for Bist BorsaIstanbul GeniumInet Ouch 2025.0206
omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206:register_heuristic("tcp", omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206_tcp_heuristic)

-- Register Bist BorsaIstanbul GeniumInet Ouch 2025.0206 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_bist_borsaistanbul_geniuminet_ouch_v2025_0206)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Borsa İstanbul A.Ş.
--   Version: 2025.0206
--   Date: Thursday, February 6, 2025
--   Specification: bistech-ouch-protocol-specification.pdf
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
