-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Sgx TitanDt DepthOfBook Glimpse 1.4 Protocol
local omi_sgx_titandt_depthofbook_glimpse_v1_4 = Proto("Omi.Sgx.TitanDt.DepthOfBook.Glimpse.v1.4", "Sgx TitanDt DepthOfBook Glimpse 1.4")

-- Protocol table
local sgx_titandt_depthofbook_glimpse_v1_4 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Sgx TitanDt DepthOfBook Glimpse 1.4 Fields
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.bait_implied_order = ProtoField.new("Bait Implied Order", "sgx.titandt.depthofbook.glimpse.v1.4.baitimpliedorder", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.client_packet_type = ProtoField.new("Packet Type", "sgx.titandt.depthofbook.glimpse.v1.4.clientpackettype", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.financial_product = ProtoField.new("Financial Product", "sgx.titandt.depthofbook.glimpse.v1.4.financialproduct", ftypes.UINT8)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.itch_sequence_number = ProtoField.new("Itch Sequence Number", "sgx.titandt.depthofbook.glimpse.v1.4.itchsequencenumber", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.leg_1_ratio = ProtoField.new("Leg 1 Ratio", "sgx.titandt.depthofbook.glimpse.v1.4.leg1ratio", ftypes.UINT32)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.leg_1_side = ProtoField.new("Leg 1 Side", "sgx.titandt.depthofbook.glimpse.v1.4.leg1side", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.leg_1_symbol = ProtoField.new("Leg 1 Symbol", "sgx.titandt.depthofbook.glimpse.v1.4.leg1symbol", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.leg_2_ratio = ProtoField.new("Leg 2 Ratio", "sgx.titandt.depthofbook.glimpse.v1.4.leg2ratio", ftypes.UINT32)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.leg_2_side = ProtoField.new("Leg 2 Side", "sgx.titandt.depthofbook.glimpse.v1.4.leg2side", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.leg_2_symbol = ProtoField.new("Leg 2 Symbol", "sgx.titandt.depthofbook.glimpse.v1.4.leg2symbol", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.leg_3_ratio = ProtoField.new("Leg 3 Ratio", "sgx.titandt.depthofbook.glimpse.v1.4.leg3ratio", ftypes.UINT32)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.leg_3_side = ProtoField.new("Leg 3 Side", "sgx.titandt.depthofbook.glimpse.v1.4.leg3side", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.leg_3_symbol = ProtoField.new("Leg 3 Symbol", "sgx.titandt.depthofbook.glimpse.v1.4.leg3symbol", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.leg_4_ratio = ProtoField.new("Leg 4 Ratio", "sgx.titandt.depthofbook.glimpse.v1.4.leg4ratio", ftypes.UINT32)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.leg_4_side = ProtoField.new("Leg 4 Side", "sgx.titandt.depthofbook.glimpse.v1.4.leg4side", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.leg_4_symbol = ProtoField.new("Leg 4 Symbol", "sgx.titandt.depthofbook.glimpse.v1.4.leg4symbol", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.long_name = ProtoField.new("Long Name", "sgx.titandt.depthofbook.glimpse.v1.4.longname", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.lot_type = ProtoField.new("Lot Type", "sgx.titandt.depthofbook.glimpse.v1.4.lottype", ftypes.UINT8)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.nanoseconds = ProtoField.new("Nanoseconds", "sgx.titandt.depthofbook.glimpse.v1.4.nanoseconds", ftypes.UINT32)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.nominal_value = ProtoField.new("Nominal Value", "sgx.titandt.depthofbook.glimpse.v1.4.nominalvalue", ftypes.UINT64)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.number_of_decimals_in_nominal_value = ProtoField.new("Number Of Decimals In Nominal Value", "sgx.titandt.depthofbook.glimpse.v1.4.numberofdecimalsinnominalvalue", ftypes.UINT16)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.number_of_decimals_in_price = ProtoField.new("Number Of Decimals In Price", "sgx.titandt.depthofbook.glimpse.v1.4.numberofdecimalsinprice", ftypes.UINT16)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.order_attributes = ProtoField.new("Order Attributes", "sgx.titandt.depthofbook.glimpse.v1.4.orderattributes", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.order_book_id = ProtoField.new("Order Book Id", "sgx.titandt.depthofbook.glimpse.v1.4.orderbookid", ftypes.UINT32)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.order_book_position = ProtoField.new("Order Book Position", "sgx.titandt.depthofbook.glimpse.v1.4.orderbookposition", ftypes.UINT32)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.order_id = ProtoField.new("Order Id", "sgx.titandt.depthofbook.glimpse.v1.4.orderid", ftypes.UINT64)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.packet_length = ProtoField.new("Packet Length", "sgx.titandt.depthofbook.glimpse.v1.4.packetlength", ftypes.UINT16)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.password = ProtoField.new("Password", "sgx.titandt.depthofbook.glimpse.v1.4.password", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.price = ProtoField.new("Price", "sgx.titandt.depthofbook.glimpse.v1.4.price", ftypes.INT32)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.price_from = ProtoField.new("Price From", "sgx.titandt.depthofbook.glimpse.v1.4.pricefrom", ftypes.INT32)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.price_to = ProtoField.new("Price To", "sgx.titandt.depthofbook.glimpse.v1.4.priceto", ftypes.INT32)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.quantity = ProtoField.new("Quantity", "sgx.titandt.depthofbook.glimpse.v1.4.quantity", ftypes.UINT64)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "sgx.titandt.depthofbook.glimpse.v1.4.rejectreasoncode", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "sgx.titandt.depthofbook.glimpse.v1.4.requestedsequencenumber", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.requested_session = ProtoField.new("Requested Session", "sgx.titandt.depthofbook.glimpse.v1.4.requestedsession", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.reserved_12 = ProtoField.new("Reserved 12", "sgx.titandt.depthofbook.glimpse.v1.4.reserved12", ftypes.BYTES)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.reserved_4_a = ProtoField.new("Reserved 4 A", "sgx.titandt.depthofbook.glimpse.v1.4.reserved4a", ftypes.BYTES)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.reserved_4_b = ProtoField.new("Reserved 4 B", "sgx.titandt.depthofbook.glimpse.v1.4.reserved4b", ftypes.BYTES)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.reserved_4_c = ProtoField.new("Reserved 4 C", "sgx.titandt.depthofbook.glimpse.v1.4.reserved4c", ftypes.BYTES)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.reserved_bits_1_to_13 = ProtoField.new("Reserved Bits 1 To 13", "sgx.titandt.depthofbook.glimpse.v1.4.reservedbits1to13", ftypes.UINT16, nil, base.DEC, 0x1FFF)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.reserved_bits_15_to_16 = ProtoField.new("Reserved Bits 15 To 16", "sgx.titandt.depthofbook.glimpse.v1.4.reservedbits15to16", ftypes.UINT16, nil, base.DEC, 0xC000)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.second = ProtoField.new("Second", "sgx.titandt.depthofbook.glimpse.v1.4.second", ftypes.UINT32)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.sequence_number = ProtoField.new("Sequence Number", "sgx.titandt.depthofbook.glimpse.v1.4.sequencenumber", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "sgx.titandt.depthofbook.glimpse.v1.4.sequencedmessagetype", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.server_packet_type = ProtoField.new("Packet Type", "sgx.titandt.depthofbook.glimpse.v1.4.serverpackettype", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.session = ProtoField.new("Session", "sgx.titandt.depthofbook.glimpse.v1.4.session", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.side = ProtoField.new("Side", "sgx.titandt.depthofbook.glimpse.v1.4.side", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.state_name = ProtoField.new("State Name", "sgx.titandt.depthofbook.glimpse.v1.4.statename", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.symbol = ProtoField.new("Symbol", "sgx.titandt.depthofbook.glimpse.v1.4.symbol", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.text = ProtoField.new("Text", "sgx.titandt.depthofbook.glimpse.v1.4.text", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.tick_size = ProtoField.new("Tick Size", "sgx.titandt.depthofbook.glimpse.v1.4.ticksize", ftypes.UINT64)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.trading_currency = ProtoField.new("Trading Currency", "sgx.titandt.depthofbook.glimpse.v1.4.tradingcurrency", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "sgx.titandt.depthofbook.glimpse.v1.4.unsequencedmessage", ftypes.BYTES)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "sgx.titandt.depthofbook.glimpse.v1.4.unsequencedmessagetype", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.username = ProtoField.new("Username", "sgx.titandt.depthofbook.glimpse.v1.4.username", ftypes.STRING)

-- Sgx TitanDt DepthOfBook Glimpse 1.4 Framing
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.client_packet = ProtoField.new("Packet", "sgx.titandt.depthofbook.glimpse.v1.4.clientpacket", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.client_packet_header = ProtoField.new("Packet Header", "sgx.titandt.depthofbook.glimpse.v1.4.clientpacketheader", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "sgx.titandt.depthofbook.glimpse.v1.4.clientsoupbintcppacket", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.server_packet = ProtoField.new("Packet", "sgx.titandt.depthofbook.glimpse.v1.4.serverpacket", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.server_packet_header = ProtoField.new("Packet Header", "sgx.titandt.depthofbook.glimpse.v1.4.serverpacketheader", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "sgx.titandt.depthofbook.glimpse.v1.4.serversoupbintcppacket", ftypes.STRING)

-- Sgx TitanDt DepthOfBook 1.4 Application Messages
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.add_order_message = ProtoField.new("Add Order Message", "sgx.titandt.depthofbook.glimpse.v1.4.addordermessage", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.combination_order_book_directory_message = ProtoField.new("Combination Order Book Directory Message", "sgx.titandt.depthofbook.glimpse.v1.4.combinationorderbookdirectorymessage", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.end_of_snapshot_message = ProtoField.new("End Of Snapshot Message", "sgx.titandt.depthofbook.glimpse.v1.4.endofsnapshotmessage", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.order_book_directory_message = ProtoField.new("Order Book Directory Message", "sgx.titandt.depthofbook.glimpse.v1.4.orderbookdirectorymessage", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.order_book_state_message = ProtoField.new("Order Book State Message", "sgx.titandt.depthofbook.glimpse.v1.4.orderbookstatemessage", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.seconds_message = ProtoField.new("Seconds Message", "sgx.titandt.depthofbook.glimpse.v1.4.secondsmessage", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.tick_size_table_entry_message = ProtoField.new("Tick Size Table Entry Message", "sgx.titandt.depthofbook.glimpse.v1.4.ticksizetableentrymessage", ftypes.STRING)

-- Sgx TitanDt DepthOfBook 1.4 Session Messages
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "sgx.titandt.depthofbook.glimpse.v1.4.clientheartbeat", ftypes.BYTES)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.debug_packet = ProtoField.new("Debug Packet", "sgx.titandt.depthofbook.glimpse.v1.4.debugpacket", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.end_of_session = ProtoField.new("End Of Session", "sgx.titandt.depthofbook.glimpse.v1.4.endofsession", ftypes.BYTES)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "sgx.titandt.depthofbook.glimpse.v1.4.loginacceptedpacket", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "sgx.titandt.depthofbook.glimpse.v1.4.loginrejectedpacket", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.login_request_packet = ProtoField.new("Login Request Packet", "sgx.titandt.depthofbook.glimpse.v1.4.loginrequestpacket", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.logout_request = ProtoField.new("Logout Request", "sgx.titandt.depthofbook.glimpse.v1.4.logoutrequest", ftypes.BYTES)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "sgx.titandt.depthofbook.glimpse.v1.4.sequenceddatapacket", ftypes.STRING)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "sgx.titandt.depthofbook.glimpse.v1.4.serverheartbeat", ftypes.BYTES)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "sgx.titandt.depthofbook.glimpse.v1.4.unsequenceddatapacket", ftypes.STRING)

-- Sgx TitanDt DepthOfBook Glimpse 1.4 Generated Fields
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "sgx.titandt.depthofbook.glimpse.v1.4.sequenceddatapacketsequencenumber", ftypes.UINT64)
omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.timestamp = ProtoField.new("Timestamp", "sgx.titandt.depthofbook.glimpse.v1.4.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Sgx TitanDt DepthOfBook Glimpse 1.4 Formatting
-----------------------------------------------------------------------

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
sgx_titandt_depthofbook_glimpse_v1_4.format_timestamp = true

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

-- Sgx TitanDt DepthOfBook Glimpse 1.4 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.session_messages = true
show.sequences = true

-- Register Sgx TitanDt DepthOfBook Glimpse 1.4 Show Options
omi_sgx_titandt_depthofbook_glimpse_v1_4.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_sgx_titandt_depthofbook_glimpse_v1_4.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_sgx_titandt_depthofbook_glimpse_v1_4.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_sgx_titandt_depthofbook_glimpse_v1_4.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_sgx_titandt_depthofbook_glimpse_v1_4.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_sgx_titandt_depthofbook_glimpse_v1_4.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_sgx_titandt_depthofbook_glimpse_v1_4.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_sgx_titandt_depthofbook_glimpse_v1_4.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")
omi_sgx_titandt_depthofbook_glimpse_v1_4.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

-- Handle changed preferences
function omi_sgx_titandt_depthofbook_glimpse_v1_4.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_sgx_titandt_depthofbook_glimpse_v1_4.prefs.show_application_messages then
    show.application_messages = omi_sgx_titandt_depthofbook_glimpse_v1_4.prefs.show_application_messages
  end
  if show.headers ~= omi_sgx_titandt_depthofbook_glimpse_v1_4.prefs.show_headers then
    show.headers = omi_sgx_titandt_depthofbook_glimpse_v1_4.prefs.show_headers
  end
  if show.session_messages ~= omi_sgx_titandt_depthofbook_glimpse_v1_4.prefs.show_session_messages then
    show.session_messages = omi_sgx_titandt_depthofbook_glimpse_v1_4.prefs.show_session_messages
  end
  if show.structs ~= omi_sgx_titandt_depthofbook_glimpse_v1_4.prefs.show_structs then
    show.structs = omi_sgx_titandt_depthofbook_glimpse_v1_4.prefs.show_structs
  end
  if show.sequences ~= omi_sgx_titandt_depthofbook_glimpse_v1_4.prefs.show_sequences then
    show.sequences = omi_sgx_titandt_depthofbook_glimpse_v1_4.prefs.show_sequences
  end
  if sgx_titandt_depthofbook_glimpse_v1_4.format_timestamp ~= omi_sgx_titandt_depthofbook_glimpse_v1_4.prefs.format_timestamp then
    sgx_titandt_depthofbook_glimpse_v1_4.format_timestamp = omi_sgx_titandt_depthofbook_glimpse_v1_4.prefs.format_timestamp
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
sgx_titandt_depthofbook_glimpse_v1_4.conversation = {}
sgx_titandt_depthofbook_glimpse_v1_4.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
sgx_titandt_depthofbook_glimpse_v1_4.stream_frame = nil
sgx_titandt_depthofbook_glimpse_v1_4.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
sgx_titandt_depthofbook_glimpse_v1_4.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
sgx_titandt_depthofbook_glimpse_v1_4.conversation.data = function(packet)
  local key = sgx_titandt_depthofbook_glimpse_v1_4.conversation.key(packet)
  local data = sgx_titandt_depthofbook_glimpse_v1_4.conversation.flows[key]
  if data == nil then
    data = { sequence_number = { last = nil, frames = {} }, second = { last = nil, frames = {} }, sequence = { next = nil, frames = {} } }
    sgx_titandt_depthofbook_glimpse_v1_4.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
sgx_titandt_depthofbook_glimpse_v1_4.conversation.current = nil


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
-- Sgx TitanDt DepthOfBook Glimpse 1.4 Fields
-----------------------------------------------------------------------

-- Client Packet Type
sgx_titandt_depthofbook_glimpse_v1_4.client_packet_type = {}

-- Size: Client Packet Type
sgx_titandt_depthofbook_glimpse_v1_4.client_packet_type.size = 1

-- Display: Client Packet Type
sgx_titandt_depthofbook_glimpse_v1_4.client_packet_type.display = function(value)
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
sgx_titandt_depthofbook_glimpse_v1_4.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Financial Product
sgx_titandt_depthofbook_glimpse_v1_4.financial_product = {}

-- Size: Financial Product
sgx_titandt_depthofbook_glimpse_v1_4.financial_product.size = 1

-- Display: Financial Product
sgx_titandt_depthofbook_glimpse_v1_4.financial_product.display = function(value)
  if value == 1 then
    return "Financial Product: Option (1)"
  end
  if value == 2 then
    return "Financial Product: Forward (2)"
  end
  if value == 3 then
    return "Financial Product: Future (3)"
  end
  if value == 4 then
    return "Financial Product: Fra (4)"
  end
  if value == 5 then
    return "Financial Product: Cash (5)"
  end
  if value == 6 then
    return "Financial Product: Payment (6)"
  end
  if value == 7 then
    return "Financial Product: Exchange Rate (7)"
  end
  if value == 8 then
    return "Financial Product: Interest Rate Swap (8)"
  end
  if value == 9 then
    return "Financial Product: Repo (9)"
  end
  if value == 10 then
    return "Financial Product: Synthetic Box Leg Or Reference (10)"
  end
  if value == 11 then
    return "Financial Product: Standard Combination (11)"
  end
  if value == 12 then
    return "Financial Product: Guarantee (12)"
  end
  if value == 13 then
    return "Financial Product: Otc General (13)"
  end
  if value == 14 then
    return "Financial Product: Equity Warrant (14)"
  end
  if value == 15 then
    return "Financial Product: Security Lending (15)"
  end

  return "Financial Product: Unknown("..value..")"
end

-- Dissect: Financial Product
sgx_titandt_depthofbook_glimpse_v1_4.financial_product.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.financial_product.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.financial_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.financial_product, range, value, display)

  return offset + length, value
end

-- Itch Sequence Number
sgx_titandt_depthofbook_glimpse_v1_4.itch_sequence_number = {}

-- Size: Itch Sequence Number
sgx_titandt_depthofbook_glimpse_v1_4.itch_sequence_number.size = 20

-- Display: Itch Sequence Number
sgx_titandt_depthofbook_glimpse_v1_4.itch_sequence_number.display = function(value)
  return "Itch Sequence Number: "..value
end

-- Dissect: Itch Sequence Number
sgx_titandt_depthofbook_glimpse_v1_4.itch_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.itch_sequence_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = sgx_titandt_depthofbook_glimpse_v1_4.itch_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.itch_sequence_number, range, value, display)

  return offset + length, value
end

-- Leg 1 Ratio
sgx_titandt_depthofbook_glimpse_v1_4.leg_1_ratio = {}

-- Size: Leg 1 Ratio
sgx_titandt_depthofbook_glimpse_v1_4.leg_1_ratio.size = 4

-- Display: Leg 1 Ratio
sgx_titandt_depthofbook_glimpse_v1_4.leg_1_ratio.display = function(value)
  return "Leg 1 Ratio: "..value
end

-- Dissect: Leg 1 Ratio
sgx_titandt_depthofbook_glimpse_v1_4.leg_1_ratio.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.leg_1_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.leg_1_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.leg_1_ratio, range, value, display)

  return offset + length, value
end

-- Leg 1 Side
sgx_titandt_depthofbook_glimpse_v1_4.leg_1_side = {}

-- Size: Leg 1 Side
sgx_titandt_depthofbook_glimpse_v1_4.leg_1_side.size = 1

-- Display: Leg 1 Side
sgx_titandt_depthofbook_glimpse_v1_4.leg_1_side.display = function(value)
  if value == "B" then
    return "Leg 1 Side: As Defined (B)"
  end
  if value == "C" then
    return "Leg 1 Side: Opposite (C)"
  end

  return "Leg 1 Side: Unknown("..value..")"
end

-- Dissect: Leg 1 Side
sgx_titandt_depthofbook_glimpse_v1_4.leg_1_side.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.leg_1_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.leg_1_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.leg_1_side, range, value, display)

  return offset + length, value
end

-- Leg 1 Symbol
sgx_titandt_depthofbook_glimpse_v1_4.leg_1_symbol = {}

-- Size: Leg 1 Symbol
sgx_titandt_depthofbook_glimpse_v1_4.leg_1_symbol.size = 32

-- Display: Leg 1 Symbol
sgx_titandt_depthofbook_glimpse_v1_4.leg_1_symbol.display = function(value)
  return "Leg 1 Symbol: "..value
end

-- Dissect: Leg 1 Symbol
sgx_titandt_depthofbook_glimpse_v1_4.leg_1_symbol.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.leg_1_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = sgx_titandt_depthofbook_glimpse_v1_4.leg_1_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.leg_1_symbol, range, value, display)

  return offset + length, value
end

-- Leg 2 Ratio
sgx_titandt_depthofbook_glimpse_v1_4.leg_2_ratio = {}

-- Size: Leg 2 Ratio
sgx_titandt_depthofbook_glimpse_v1_4.leg_2_ratio.size = 4

-- Display: Leg 2 Ratio
sgx_titandt_depthofbook_glimpse_v1_4.leg_2_ratio.display = function(value)
  return "Leg 2 Ratio: "..value
end

-- Dissect: Leg 2 Ratio
sgx_titandt_depthofbook_glimpse_v1_4.leg_2_ratio.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.leg_2_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.leg_2_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.leg_2_ratio, range, value, display)

  return offset + length, value
end

-- Leg 2 Side
sgx_titandt_depthofbook_glimpse_v1_4.leg_2_side = {}

-- Size: Leg 2 Side
sgx_titandt_depthofbook_glimpse_v1_4.leg_2_side.size = 1

-- Display: Leg 2 Side
sgx_titandt_depthofbook_glimpse_v1_4.leg_2_side.display = function(value)
  if value == "B" then
    return "Leg 2 Side: As Defined (B)"
  end
  if value == "C" then
    return "Leg 2 Side: Opposite (C)"
  end

  return "Leg 2 Side: Unknown("..value..")"
end

-- Dissect: Leg 2 Side
sgx_titandt_depthofbook_glimpse_v1_4.leg_2_side.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.leg_2_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.leg_2_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.leg_2_side, range, value, display)

  return offset + length, value
end

-- Leg 2 Symbol
sgx_titandt_depthofbook_glimpse_v1_4.leg_2_symbol = {}

-- Size: Leg 2 Symbol
sgx_titandt_depthofbook_glimpse_v1_4.leg_2_symbol.size = 32

-- Display: Leg 2 Symbol
sgx_titandt_depthofbook_glimpse_v1_4.leg_2_symbol.display = function(value)
  return "Leg 2 Symbol: "..value
end

-- Dissect: Leg 2 Symbol
sgx_titandt_depthofbook_glimpse_v1_4.leg_2_symbol.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.leg_2_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = sgx_titandt_depthofbook_glimpse_v1_4.leg_2_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.leg_2_symbol, range, value, display)

  return offset + length, value
end

-- Leg 3 Ratio
sgx_titandt_depthofbook_glimpse_v1_4.leg_3_ratio = {}

-- Size: Leg 3 Ratio
sgx_titandt_depthofbook_glimpse_v1_4.leg_3_ratio.size = 4

-- Display: Leg 3 Ratio
sgx_titandt_depthofbook_glimpse_v1_4.leg_3_ratio.display = function(value)
  return "Leg 3 Ratio: "..value
end

-- Dissect: Leg 3 Ratio
sgx_titandt_depthofbook_glimpse_v1_4.leg_3_ratio.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.leg_3_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.leg_3_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.leg_3_ratio, range, value, display)

  return offset + length, value
end

-- Leg 3 Side
sgx_titandt_depthofbook_glimpse_v1_4.leg_3_side = {}

-- Size: Leg 3 Side
sgx_titandt_depthofbook_glimpse_v1_4.leg_3_side.size = 1

-- Display: Leg 3 Side
sgx_titandt_depthofbook_glimpse_v1_4.leg_3_side.display = function(value)
  if value == "B" then
    return "Leg 3 Side: As Defined (B)"
  end
  if value == "C" then
    return "Leg 3 Side: Opposite (C)"
  end

  return "Leg 3 Side: Unknown("..value..")"
end

-- Dissect: Leg 3 Side
sgx_titandt_depthofbook_glimpse_v1_4.leg_3_side.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.leg_3_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.leg_3_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.leg_3_side, range, value, display)

  return offset + length, value
end

-- Leg 3 Symbol
sgx_titandt_depthofbook_glimpse_v1_4.leg_3_symbol = {}

-- Size: Leg 3 Symbol
sgx_titandt_depthofbook_glimpse_v1_4.leg_3_symbol.size = 32

-- Display: Leg 3 Symbol
sgx_titandt_depthofbook_glimpse_v1_4.leg_3_symbol.display = function(value)
  return "Leg 3 Symbol: "..value
end

-- Dissect: Leg 3 Symbol
sgx_titandt_depthofbook_glimpse_v1_4.leg_3_symbol.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.leg_3_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = sgx_titandt_depthofbook_glimpse_v1_4.leg_3_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.leg_3_symbol, range, value, display)

  return offset + length, value
end

-- Leg 4 Ratio
sgx_titandt_depthofbook_glimpse_v1_4.leg_4_ratio = {}

-- Size: Leg 4 Ratio
sgx_titandt_depthofbook_glimpse_v1_4.leg_4_ratio.size = 4

-- Display: Leg 4 Ratio
sgx_titandt_depthofbook_glimpse_v1_4.leg_4_ratio.display = function(value)
  return "Leg 4 Ratio: "..value
end

-- Dissect: Leg 4 Ratio
sgx_titandt_depthofbook_glimpse_v1_4.leg_4_ratio.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.leg_4_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.leg_4_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.leg_4_ratio, range, value, display)

  return offset + length, value
end

-- Leg 4 Side
sgx_titandt_depthofbook_glimpse_v1_4.leg_4_side = {}

-- Size: Leg 4 Side
sgx_titandt_depthofbook_glimpse_v1_4.leg_4_side.size = 1

-- Display: Leg 4 Side
sgx_titandt_depthofbook_glimpse_v1_4.leg_4_side.display = function(value)
  if value == "B" then
    return "Leg 4 Side: As Defined (B)"
  end
  if value == "C" then
    return "Leg 4 Side: Opposite (C)"
  end

  return "Leg 4 Side: Unknown("..value..")"
end

-- Dissect: Leg 4 Side
sgx_titandt_depthofbook_glimpse_v1_4.leg_4_side.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.leg_4_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.leg_4_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.leg_4_side, range, value, display)

  return offset + length, value
end

-- Leg 4 Symbol
sgx_titandt_depthofbook_glimpse_v1_4.leg_4_symbol = {}

-- Size: Leg 4 Symbol
sgx_titandt_depthofbook_glimpse_v1_4.leg_4_symbol.size = 32

-- Display: Leg 4 Symbol
sgx_titandt_depthofbook_glimpse_v1_4.leg_4_symbol.display = function(value)
  return "Leg 4 Symbol: "..value
end

-- Dissect: Leg 4 Symbol
sgx_titandt_depthofbook_glimpse_v1_4.leg_4_symbol.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.leg_4_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = sgx_titandt_depthofbook_glimpse_v1_4.leg_4_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.leg_4_symbol, range, value, display)

  return offset + length, value
end

-- Long Name
sgx_titandt_depthofbook_glimpse_v1_4.long_name = {}

-- Size: Long Name
sgx_titandt_depthofbook_glimpse_v1_4.long_name.size = 32

-- Display: Long Name
sgx_titandt_depthofbook_glimpse_v1_4.long_name.display = function(value)
  return "Long Name: "..value
end

-- Dissect: Long Name
sgx_titandt_depthofbook_glimpse_v1_4.long_name.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.long_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = sgx_titandt_depthofbook_glimpse_v1_4.long_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.long_name, range, value, display)

  return offset + length, value
end

-- Lot Type
sgx_titandt_depthofbook_glimpse_v1_4.lot_type = {}

-- Size: Lot Type
sgx_titandt_depthofbook_glimpse_v1_4.lot_type.size = 1

-- Display: Lot Type
sgx_titandt_depthofbook_glimpse_v1_4.lot_type.display = function(value)
  if value == 2 then
    return "Lot Type: Round Lot (2)"
  end

  return "Lot Type: Unknown("..value..")"
end

-- Dissect: Lot Type
sgx_titandt_depthofbook_glimpse_v1_4.lot_type.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.lot_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.lot_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.lot_type, range, value, display)

  return offset + length, value
end

-- Nanoseconds
sgx_titandt_depthofbook_glimpse_v1_4.nanoseconds = {}

-- Size: Nanoseconds
sgx_titandt_depthofbook_glimpse_v1_4.nanoseconds.size = 4

-- Display: Nanoseconds
sgx_titandt_depthofbook_glimpse_v1_4.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
sgx_titandt_depthofbook_glimpse_v1_4.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Nominal Value
sgx_titandt_depthofbook_glimpse_v1_4.nominal_value = {}

-- Size: Nominal Value
sgx_titandt_depthofbook_glimpse_v1_4.nominal_value.size = 8

-- Display: Nominal Value
sgx_titandt_depthofbook_glimpse_v1_4.nominal_value.display = function(value)
  return "Nominal Value: "..value
end

-- Dissect: Nominal Value
sgx_titandt_depthofbook_glimpse_v1_4.nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.nominal_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.nominal_value, range, value, display)

  return offset + length, value
end

-- Number Of Decimals In Nominal Value
sgx_titandt_depthofbook_glimpse_v1_4.number_of_decimals_in_nominal_value = {}

-- Size: Number Of Decimals In Nominal Value
sgx_titandt_depthofbook_glimpse_v1_4.number_of_decimals_in_nominal_value.size = 2

-- Display: Number Of Decimals In Nominal Value
sgx_titandt_depthofbook_glimpse_v1_4.number_of_decimals_in_nominal_value.display = function(value)
  return "Number Of Decimals In Nominal Value: "..value
end

-- Dissect: Number Of Decimals In Nominal Value
sgx_titandt_depthofbook_glimpse_v1_4.number_of_decimals_in_nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.number_of_decimals_in_nominal_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.number_of_decimals_in_nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.number_of_decimals_in_nominal_value, range, value, display)

  return offset + length, value
end

-- Number Of Decimals In Price
sgx_titandt_depthofbook_glimpse_v1_4.number_of_decimals_in_price = {}

-- Size: Number Of Decimals In Price
sgx_titandt_depthofbook_glimpse_v1_4.number_of_decimals_in_price.size = 2

-- Display: Number Of Decimals In Price
sgx_titandt_depthofbook_glimpse_v1_4.number_of_decimals_in_price.display = function(value)
  return "Number Of Decimals In Price: "..value
end

-- Dissect: Number Of Decimals In Price
sgx_titandt_depthofbook_glimpse_v1_4.number_of_decimals_in_price.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.number_of_decimals_in_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.number_of_decimals_in_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.number_of_decimals_in_price, range, value, display)

  return offset + length, value
end

-- Order Book Id
sgx_titandt_depthofbook_glimpse_v1_4.order_book_id = {}

-- Size: Order Book Id
sgx_titandt_depthofbook_glimpse_v1_4.order_book_id.size = 4

-- Display: Order Book Id
sgx_titandt_depthofbook_glimpse_v1_4.order_book_id.display = function(value)
  return "Order Book Id: "..value
end

-- Dissect: Order Book Id
sgx_titandt_depthofbook_glimpse_v1_4.order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.order_book_id, range, value, display)

  return offset + length, value
end

-- Order Book Position
sgx_titandt_depthofbook_glimpse_v1_4.order_book_position = {}

-- Size: Order Book Position
sgx_titandt_depthofbook_glimpse_v1_4.order_book_position.size = 4

-- Display: Order Book Position
sgx_titandt_depthofbook_glimpse_v1_4.order_book_position.display = function(value)
  return "Order Book Position: "..value
end

-- Dissect: Order Book Position
sgx_titandt_depthofbook_glimpse_v1_4.order_book_position.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.order_book_position.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.order_book_position.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.order_book_position, range, value, display)

  return offset + length, value
end

-- Order Id
sgx_titandt_depthofbook_glimpse_v1_4.order_id = {}

-- Size: Order Id
sgx_titandt_depthofbook_glimpse_v1_4.order_id.size = 8

-- Display: Order Id
sgx_titandt_depthofbook_glimpse_v1_4.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
sgx_titandt_depthofbook_glimpse_v1_4.order_id.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.order_id, range, value, display)

  return offset + length, value
end

-- Packet Length
sgx_titandt_depthofbook_glimpse_v1_4.packet_length = {}

-- Size: Packet Length
sgx_titandt_depthofbook_glimpse_v1_4.packet_length.size = 2

-- Display: Packet Length
sgx_titandt_depthofbook_glimpse_v1_4.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
sgx_titandt_depthofbook_glimpse_v1_4.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Password
sgx_titandt_depthofbook_glimpse_v1_4.password = {}

-- Size: Password
sgx_titandt_depthofbook_glimpse_v1_4.password.size = 10

-- Display: Password
sgx_titandt_depthofbook_glimpse_v1_4.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
sgx_titandt_depthofbook_glimpse_v1_4.password.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = sgx_titandt_depthofbook_glimpse_v1_4.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.password, range, value, display)

  return offset + length, value
end

-- Price
sgx_titandt_depthofbook_glimpse_v1_4.price = {}

-- Size: Price
sgx_titandt_depthofbook_glimpse_v1_4.price.size = 4

-- Display: Price
sgx_titandt_depthofbook_glimpse_v1_4.price.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Dissect: Price
sgx_titandt_depthofbook_glimpse_v1_4.price.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.price, range, value, display)

  return offset + length, value
end

-- Price From
sgx_titandt_depthofbook_glimpse_v1_4.price_from = {}

-- Size: Price From
sgx_titandt_depthofbook_glimpse_v1_4.price_from.size = 4

-- Display: Price From
sgx_titandt_depthofbook_glimpse_v1_4.price_from.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Price From: No Value"
  end

  return "Price From: "..value
end

-- Dissect: Price From
sgx_titandt_depthofbook_glimpse_v1_4.price_from.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.price_from.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.price_from.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.price_from, range, value, display)

  return offset + length, value
end

-- Price To
sgx_titandt_depthofbook_glimpse_v1_4.price_to = {}

-- Size: Price To
sgx_titandt_depthofbook_glimpse_v1_4.price_to.size = 4

-- Display: Price To
sgx_titandt_depthofbook_glimpse_v1_4.price_to.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Price To: No Value"
  end

  return "Price To: "..value
end

-- Dissect: Price To
sgx_titandt_depthofbook_glimpse_v1_4.price_to.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.price_to.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.price_to.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.price_to, range, value, display)

  return offset + length, value
end

-- Quantity
sgx_titandt_depthofbook_glimpse_v1_4.quantity = {}

-- Size: Quantity
sgx_titandt_depthofbook_glimpse_v1_4.quantity.size = 8

-- Display: Quantity
sgx_titandt_depthofbook_glimpse_v1_4.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
sgx_titandt_depthofbook_glimpse_v1_4.quantity.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
sgx_titandt_depthofbook_glimpse_v1_4.reject_reason_code = {}

-- Size: Reject Reason Code
sgx_titandt_depthofbook_glimpse_v1_4.reject_reason_code.size = 1

-- Display: Reject Reason Code
sgx_titandt_depthofbook_glimpse_v1_4.reject_reason_code.display = function(value)
  if value == "A" then
    return "Reject Reason Code: Not Authorized (A)"
  end
  if value == "S" then
    return "Reject Reason Code: Session Not Available (S)"
  end

  return "Reject Reason Code: Unknown("..value..")"
end

-- Dissect: Reject Reason Code
sgx_titandt_depthofbook_glimpse_v1_4.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
sgx_titandt_depthofbook_glimpse_v1_4.requested_sequence_number = {}

-- Size: Requested Sequence Number
sgx_titandt_depthofbook_glimpse_v1_4.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
sgx_titandt_depthofbook_glimpse_v1_4.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
sgx_titandt_depthofbook_glimpse_v1_4.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = sgx_titandt_depthofbook_glimpse_v1_4.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
sgx_titandt_depthofbook_glimpse_v1_4.requested_session = {}

-- Size: Requested Session
sgx_titandt_depthofbook_glimpse_v1_4.requested_session.size = 10

-- Display: Requested Session
sgx_titandt_depthofbook_glimpse_v1_4.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
sgx_titandt_depthofbook_glimpse_v1_4.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.requested_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = sgx_titandt_depthofbook_glimpse_v1_4.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved 12
sgx_titandt_depthofbook_glimpse_v1_4.reserved_12 = {}

-- Size: Reserved 12
sgx_titandt_depthofbook_glimpse_v1_4.reserved_12.size = 12

-- Display: Reserved 12
sgx_titandt_depthofbook_glimpse_v1_4.reserved_12.display = function(value)
  return "Reserved 12: "..value
end

-- Dissect: Reserved 12
sgx_titandt_depthofbook_glimpse_v1_4.reserved_12.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.reserved_12.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = sgx_titandt_depthofbook_glimpse_v1_4.reserved_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.reserved_12, range, value, display)

  return offset + length, value
end

-- Reserved 4 A
sgx_titandt_depthofbook_glimpse_v1_4.reserved_4_a = {}

-- Size: Reserved 4 A
sgx_titandt_depthofbook_glimpse_v1_4.reserved_4_a.size = 4

-- Display: Reserved 4 A
sgx_titandt_depthofbook_glimpse_v1_4.reserved_4_a.display = function(value)
  return "Reserved 4 A: "..value
end

-- Dissect: Reserved 4 A
sgx_titandt_depthofbook_glimpse_v1_4.reserved_4_a.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.reserved_4_a.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = sgx_titandt_depthofbook_glimpse_v1_4.reserved_4_a.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.reserved_4_a, range, value, display)

  return offset + length, value
end

-- Reserved 4 B
sgx_titandt_depthofbook_glimpse_v1_4.reserved_4_b = {}

-- Size: Reserved 4 B
sgx_titandt_depthofbook_glimpse_v1_4.reserved_4_b.size = 4

-- Display: Reserved 4 B
sgx_titandt_depthofbook_glimpse_v1_4.reserved_4_b.display = function(value)
  return "Reserved 4 B: "..value
end

-- Dissect: Reserved 4 B
sgx_titandt_depthofbook_glimpse_v1_4.reserved_4_b.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.reserved_4_b.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = sgx_titandt_depthofbook_glimpse_v1_4.reserved_4_b.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.reserved_4_b, range, value, display)

  return offset + length, value
end

-- Reserved 4 C
sgx_titandt_depthofbook_glimpse_v1_4.reserved_4_c = {}

-- Size: Reserved 4 C
sgx_titandt_depthofbook_glimpse_v1_4.reserved_4_c.size = 4

-- Display: Reserved 4 C
sgx_titandt_depthofbook_glimpse_v1_4.reserved_4_c.display = function(value)
  return "Reserved 4 C: "..value
end

-- Dissect: Reserved 4 C
sgx_titandt_depthofbook_glimpse_v1_4.reserved_4_c.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.reserved_4_c.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = sgx_titandt_depthofbook_glimpse_v1_4.reserved_4_c.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.reserved_4_c, range, value, display)

  return offset + length, value
end

-- Second
sgx_titandt_depthofbook_glimpse_v1_4.second = {}

-- Size: Second
sgx_titandt_depthofbook_glimpse_v1_4.second.size = 4

-- Store: Second
sgx_titandt_depthofbook_glimpse_v1_4.second.current = nil

-- Generated: Second
sgx_titandt_depthofbook_glimpse_v1_4.second.generated = function(value, range, packet, parent)
  local display = sgx_titandt_depthofbook_glimpse_v1_4.second.display(value)
  local second = parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.second, range, value, display)
  second:set_generated()
end

-- Display: Second
sgx_titandt_depthofbook_glimpse_v1_4.second.display = function(value)
  -- Parse unix seconds timestamp
  return "Second: "..os.date("%Y-%m-%d %H:%M:%S", value)
end

-- Dissect: Second
sgx_titandt_depthofbook_glimpse_v1_4.second.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.second.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.second.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.second, range, value, display)

  return offset + length, value
end

-- Sequence Number
sgx_titandt_depthofbook_glimpse_v1_4.sequence_number = {}

-- Size: Sequence Number
sgx_titandt_depthofbook_glimpse_v1_4.sequence_number.size = 20

-- Display: Sequence Number
sgx_titandt_depthofbook_glimpse_v1_4.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
sgx_titandt_depthofbook_glimpse_v1_4.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = sgx_titandt_depthofbook_glimpse_v1_4.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
sgx_titandt_depthofbook_glimpse_v1_4.sequenced_message_type = {}

-- Size: Sequenced Message Type
sgx_titandt_depthofbook_glimpse_v1_4.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
sgx_titandt_depthofbook_glimpse_v1_4.sequenced_message_type.display = function(value)
  if value == "T" then
    return "Sequenced Message Type: Seconds Message (T)"
  end
  if value == "R" then
    return "Sequenced Message Type: Order Book Directory Message (R)"
  end
  if value == "M" then
    return "Sequenced Message Type: Combination Order Book Directory Message (M)"
  end
  if value == "L" then
    return "Sequenced Message Type: Tick Size Table Entry Message (L)"
  end
  if value == "O" then
    return "Sequenced Message Type: Order Book State Message (O)"
  end
  if value == "A" then
    return "Sequenced Message Type: Add Order Message (A)"
  end
  if value == "G" then
    return "Sequenced Message Type: End Of Snapshot Message (G)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
sgx_titandt_depthofbook_glimpse_v1_4.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
sgx_titandt_depthofbook_glimpse_v1_4.server_packet_type = {}

-- Size: Server Packet Type
sgx_titandt_depthofbook_glimpse_v1_4.server_packet_type.size = 1

-- Display: Server Packet Type
sgx_titandt_depthofbook_glimpse_v1_4.server_packet_type.display = function(value)
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
sgx_titandt_depthofbook_glimpse_v1_4.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Session
sgx_titandt_depthofbook_glimpse_v1_4.session = {}

-- Size: Session
sgx_titandt_depthofbook_glimpse_v1_4.session.size = 10

-- Display: Session
sgx_titandt_depthofbook_glimpse_v1_4.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
sgx_titandt_depthofbook_glimpse_v1_4.session.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = sgx_titandt_depthofbook_glimpse_v1_4.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.session, range, value, display)

  return offset + length, value
end

-- Side
sgx_titandt_depthofbook_glimpse_v1_4.side = {}

-- Size: Side
sgx_titandt_depthofbook_glimpse_v1_4.side.size = 1

-- Display: Side
sgx_titandt_depthofbook_glimpse_v1_4.side.display = function(value)
  if value == "B" then
    return "Side: Buy Order (B)"
  end
  if value == "S" then
    return "Side: Sell Order (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
sgx_titandt_depthofbook_glimpse_v1_4.side.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.side, range, value, display)

  return offset + length, value
end

-- State Name
sgx_titandt_depthofbook_glimpse_v1_4.state_name = {}

-- Size: State Name
sgx_titandt_depthofbook_glimpse_v1_4.state_name.size = 20

-- Display: State Name
sgx_titandt_depthofbook_glimpse_v1_4.state_name.display = function(value)
  return "State Name: "..value
end

-- Dissect: State Name
sgx_titandt_depthofbook_glimpse_v1_4.state_name.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.state_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = sgx_titandt_depthofbook_glimpse_v1_4.state_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.state_name, range, value, display)

  return offset + length, value
end

-- Symbol
sgx_titandt_depthofbook_glimpse_v1_4.symbol = {}

-- Size: Symbol
sgx_titandt_depthofbook_glimpse_v1_4.symbol.size = 32

-- Display: Symbol
sgx_titandt_depthofbook_glimpse_v1_4.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
sgx_titandt_depthofbook_glimpse_v1_4.symbol.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = sgx_titandt_depthofbook_glimpse_v1_4.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.symbol, range, value, display)

  return offset + length, value
end

-- Text
sgx_titandt_depthofbook_glimpse_v1_4.text = {}

-- Size: Text
sgx_titandt_depthofbook_glimpse_v1_4.text.size = 1

-- Display: Text
sgx_titandt_depthofbook_glimpse_v1_4.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
sgx_titandt_depthofbook_glimpse_v1_4.text.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.text, range, value, display)

  return offset + length, value
end

-- Tick Size
sgx_titandt_depthofbook_glimpse_v1_4.tick_size = {}

-- Size: Tick Size
sgx_titandt_depthofbook_glimpse_v1_4.tick_size.size = 8

-- Display: Tick Size
sgx_titandt_depthofbook_glimpse_v1_4.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Dissect: Tick Size
sgx_titandt_depthofbook_glimpse_v1_4.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.tick_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Trading Currency
sgx_titandt_depthofbook_glimpse_v1_4.trading_currency = {}

-- Size: Trading Currency
sgx_titandt_depthofbook_glimpse_v1_4.trading_currency.size = 3

-- Display: Trading Currency
sgx_titandt_depthofbook_glimpse_v1_4.trading_currency.display = function(value)
  return "Trading Currency: "..value
end

-- Dissect: Trading Currency
sgx_titandt_depthofbook_glimpse_v1_4.trading_currency.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.trading_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = sgx_titandt_depthofbook_glimpse_v1_4.trading_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.trading_currency, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
sgx_titandt_depthofbook_glimpse_v1_4.unsequenced_message = {}

-- Display: Unsequenced Message
sgx_titandt_depthofbook_glimpse_v1_4.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
sgx_titandt_depthofbook_glimpse_v1_4.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = sgx_titandt_depthofbook_glimpse_v1_4.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.unsequenced_message, range, value, display)

  return offset + size, value
end

-- Unsequenced Message Type
sgx_titandt_depthofbook_glimpse_v1_4.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
sgx_titandt_depthofbook_glimpse_v1_4.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
sgx_titandt_depthofbook_glimpse_v1_4.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
sgx_titandt_depthofbook_glimpse_v1_4.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
sgx_titandt_depthofbook_glimpse_v1_4.username = {}

-- Size: Username
sgx_titandt_depthofbook_glimpse_v1_4.username.size = 6

-- Display: Username
sgx_titandt_depthofbook_glimpse_v1_4.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
sgx_titandt_depthofbook_glimpse_v1_4.username.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = sgx_titandt_depthofbook_glimpse_v1_4.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.username, range, value, display)

  return offset + length, value
end

-- Timestamp
sgx_titandt_depthofbook_glimpse_v1_4.timestamp = {}

-- Translate: Timestamp
sgx_titandt_depthofbook_glimpse_v1_4.timestamp.translate = function(nanoseconds, stored_second)
  return UInt64.new(stored_second * 1000000000 + nanoseconds)
end

-- Display: Timestamp
sgx_titandt_depthofbook_glimpse_v1_4.timestamp.display = function(nanoseconds, stored_second)
  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", stored_second)..string.format("%09d", nanoseconds)
end

-- Composite: Timestamp
sgx_titandt_depthofbook_glimpse_v1_4.timestamp.composite = function(buffer, offset, stored_second, packet, parent)
  local length = sgx_titandt_depthofbook_glimpse_v1_4.nanoseconds.size
  local range = buffer(offset, length)
  local nanoseconds = range:uint()
  local value = sgx_titandt_depthofbook_glimpse_v1_4.timestamp.translate(nanoseconds, stored_second)
  local display = sgx_titandt_depthofbook_glimpse_v1_4.timestamp.display(nanoseconds, stored_second, packet)
  parent = parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.timestamp, range, value, display)

  sgx_titandt_depthofbook_glimpse_v1_4.second.generated(stored_second, range, packet, parent)

  display = sgx_titandt_depthofbook_glimpse_v1_4.nanoseconds.display(nanoseconds)
  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.nanoseconds, range, nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
sgx_titandt_depthofbook_glimpse_v1_4.timestamp.dissect = function(buffer, offset, packet, parent)
  if sgx_titandt_depthofbook_glimpse_v1_4.format_timestamp then
    local stored_second = sgx_titandt_depthofbook_glimpse_v1_4.second.current

    if stored_second ~= nil then
      return sgx_titandt_depthofbook_glimpse_v1_4.timestamp.composite(buffer, offset, stored_second, packet, parent)
    end
  end

  return sgx_titandt_depthofbook_glimpse_v1_4.nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Sgx TitanDt DepthOfBook Glimpse 1.4
-----------------------------------------------------------------------

-- End Of Session
sgx_titandt_depthofbook_glimpse_v1_4.end_of_session = {}

-- Display: End Of Session
sgx_titandt_depthofbook_glimpse_v1_4.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
sgx_titandt_depthofbook_glimpse_v1_4.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = sgx_titandt_depthofbook_glimpse_v1_4.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
sgx_titandt_depthofbook_glimpse_v1_4.server_heartbeat = {}

-- Display: Server Heartbeat
sgx_titandt_depthofbook_glimpse_v1_4.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
sgx_titandt_depthofbook_glimpse_v1_4.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = sgx_titandt_depthofbook_glimpse_v1_4.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- End Of Snapshot Message
sgx_titandt_depthofbook_glimpse_v1_4.end_of_snapshot_message = {}

-- Size: End Of Snapshot Message
sgx_titandt_depthofbook_glimpse_v1_4.end_of_snapshot_message.size =
  sgx_titandt_depthofbook_glimpse_v1_4.itch_sequence_number.size

-- Display: End Of Snapshot Message
sgx_titandt_depthofbook_glimpse_v1_4.end_of_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Snapshot Message
sgx_titandt_depthofbook_glimpse_v1_4.end_of_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Itch Sequence Number: Alpha
  index, itch_sequence_number = sgx_titandt_depthofbook_glimpse_v1_4.itch_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Snapshot Message
sgx_titandt_depthofbook_glimpse_v1_4.end_of_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.end_of_snapshot_message, buffer(offset, 0))
    local index = sgx_titandt_depthofbook_glimpse_v1_4.end_of_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sgx_titandt_depthofbook_glimpse_v1_4.end_of_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sgx_titandt_depthofbook_glimpse_v1_4.end_of_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Attributes
sgx_titandt_depthofbook_glimpse_v1_4.order_attributes = {}

-- Size: Order Attributes
sgx_titandt_depthofbook_glimpse_v1_4.order_attributes.size = 2

-- Display: Order Attributes
sgx_titandt_depthofbook_glimpse_v1_4.order_attributes.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Bait Implied Order flag set?
  if bit.band(value, 0x2000) ~= 0 then
    flags[#flags + 1] = "Bait Implied Order"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Order Attributes
sgx_titandt_depthofbook_glimpse_v1_4.order_attributes.bits = function(range, value, packet, parent)

  -- Reserved Bits 1 To 13: 13 Bit
  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.reserved_bits_1_to_13, range, value)

  -- Bait Implied Order: 1 Bit
  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.bait_implied_order, range, value)

  -- Reserved Bits 15 To 16: 2 Bit
  parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.reserved_bits_15_to_16, range, value)
end

-- Dissect: Order Attributes
sgx_titandt_depthofbook_glimpse_v1_4.order_attributes.dissect = function(buffer, offset, packet, parent)
  local size = sgx_titandt_depthofbook_glimpse_v1_4.order_attributes.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_glimpse_v1_4.order_attributes.display(range, value, packet, parent)
  local element = parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.order_attributes, range, display)

  if show.structs then
    sgx_titandt_depthofbook_glimpse_v1_4.order_attributes.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Add Order Message
sgx_titandt_depthofbook_glimpse_v1_4.add_order_message = {}

-- Size: Add Order Message
sgx_titandt_depthofbook_glimpse_v1_4.add_order_message.size =
  sgx_titandt_depthofbook_glimpse_v1_4.nanoseconds.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.order_id.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.order_book_id.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.side.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.order_book_position.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.quantity.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.price.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.order_attributes.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.lot_type.size

-- Display: Add Order Message
sgx_titandt_depthofbook_glimpse_v1_4.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
sgx_titandt_depthofbook_glimpse_v1_4.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = sgx_titandt_depthofbook_glimpse_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = sgx_titandt_depthofbook_glimpse_v1_4.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = sgx_titandt_depthofbook_glimpse_v1_4.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = sgx_titandt_depthofbook_glimpse_v1_4.side.dissect(buffer, index, packet, parent)

  -- Order Book Position: Numeric
  index, order_book_position = sgx_titandt_depthofbook_glimpse_v1_4.order_book_position.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = sgx_titandt_depthofbook_glimpse_v1_4.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = sgx_titandt_depthofbook_glimpse_v1_4.price.dissect(buffer, index, packet, parent)

  -- Order Attributes: Struct of 3 fields
  index, order_attributes = sgx_titandt_depthofbook_glimpse_v1_4.order_attributes.dissect(buffer, index, packet, parent)

  -- Lot Type: Numeric
  index, lot_type = sgx_titandt_depthofbook_glimpse_v1_4.lot_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
sgx_titandt_depthofbook_glimpse_v1_4.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.add_order_message, buffer(offset, 0))
    local index = sgx_titandt_depthofbook_glimpse_v1_4.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sgx_titandt_depthofbook_glimpse_v1_4.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sgx_titandt_depthofbook_glimpse_v1_4.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book State Message
sgx_titandt_depthofbook_glimpse_v1_4.order_book_state_message = {}

-- Size: Order Book State Message
sgx_titandt_depthofbook_glimpse_v1_4.order_book_state_message.size =
  sgx_titandt_depthofbook_glimpse_v1_4.nanoseconds.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.order_book_id.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.state_name.size

-- Display: Order Book State Message
sgx_titandt_depthofbook_glimpse_v1_4.order_book_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book State Message
sgx_titandt_depthofbook_glimpse_v1_4.order_book_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = sgx_titandt_depthofbook_glimpse_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = sgx_titandt_depthofbook_glimpse_v1_4.order_book_id.dissect(buffer, index, packet, parent)

  -- State Name: Alpha
  index, state_name = sgx_titandt_depthofbook_glimpse_v1_4.state_name.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book State Message
sgx_titandt_depthofbook_glimpse_v1_4.order_book_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.order_book_state_message, buffer(offset, 0))
    local index = sgx_titandt_depthofbook_glimpse_v1_4.order_book_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sgx_titandt_depthofbook_glimpse_v1_4.order_book_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sgx_titandt_depthofbook_glimpse_v1_4.order_book_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Tick Size Table Entry Message
sgx_titandt_depthofbook_glimpse_v1_4.tick_size_table_entry_message = {}

-- Size: Tick Size Table Entry Message
sgx_titandt_depthofbook_glimpse_v1_4.tick_size_table_entry_message.size =
  sgx_titandt_depthofbook_glimpse_v1_4.nanoseconds.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.order_book_id.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.tick_size.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.price_from.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.price_to.size

-- Display: Tick Size Table Entry Message
sgx_titandt_depthofbook_glimpse_v1_4.tick_size_table_entry_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Size Table Entry Message
sgx_titandt_depthofbook_glimpse_v1_4.tick_size_table_entry_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = sgx_titandt_depthofbook_glimpse_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = sgx_titandt_depthofbook_glimpse_v1_4.order_book_id.dissect(buffer, index, packet, parent)

  -- Tick Size: Numeric
  index, tick_size = sgx_titandt_depthofbook_glimpse_v1_4.tick_size.dissect(buffer, index, packet, parent)

  -- Price From: Price
  index, price_from = sgx_titandt_depthofbook_glimpse_v1_4.price_from.dissect(buffer, index, packet, parent)

  -- Price To: Price
  index, price_to = sgx_titandt_depthofbook_glimpse_v1_4.price_to.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Size Table Entry Message
sgx_titandt_depthofbook_glimpse_v1_4.tick_size_table_entry_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.tick_size_table_entry_message, buffer(offset, 0))
    local index = sgx_titandt_depthofbook_glimpse_v1_4.tick_size_table_entry_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sgx_titandt_depthofbook_glimpse_v1_4.tick_size_table_entry_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sgx_titandt_depthofbook_glimpse_v1_4.tick_size_table_entry_message.fields(buffer, offset, packet, parent)
  end
end

-- Combination Order Book Directory Message
sgx_titandt_depthofbook_glimpse_v1_4.combination_order_book_directory_message = {}

-- Size: Combination Order Book Directory Message
sgx_titandt_depthofbook_glimpse_v1_4.combination_order_book_directory_message.size =
  sgx_titandt_depthofbook_glimpse_v1_4.nanoseconds.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.order_book_id.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.symbol.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.long_name.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.reserved_12.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.financial_product.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.trading_currency.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.number_of_decimals_in_price.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.number_of_decimals_in_nominal_value.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.reserved_4_a.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.reserved_4_b.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.reserved_4_c.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.nominal_value.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.leg_1_symbol.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.leg_1_side.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.leg_1_ratio.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.leg_2_symbol.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.leg_2_side.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.leg_2_ratio.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.leg_3_symbol.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.leg_3_side.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.leg_3_ratio.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.leg_4_symbol.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.leg_4_side.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.leg_4_ratio.size

-- Display: Combination Order Book Directory Message
sgx_titandt_depthofbook_glimpse_v1_4.combination_order_book_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Combination Order Book Directory Message
sgx_titandt_depthofbook_glimpse_v1_4.combination_order_book_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = sgx_titandt_depthofbook_glimpse_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = sgx_titandt_depthofbook_glimpse_v1_4.order_book_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = sgx_titandt_depthofbook_glimpse_v1_4.symbol.dissect(buffer, index, packet, parent)

  -- Long Name: Alpha
  index, long_name = sgx_titandt_depthofbook_glimpse_v1_4.long_name.dissect(buffer, index, packet, parent)

  -- Reserved 12: Reserved
  index, reserved_12 = sgx_titandt_depthofbook_glimpse_v1_4.reserved_12.dissect(buffer, index, packet, parent)

  -- Financial Product: Numeric
  index, financial_product = sgx_titandt_depthofbook_glimpse_v1_4.financial_product.dissect(buffer, index, packet, parent)

  -- Trading Currency: Alpha
  index, trading_currency = sgx_titandt_depthofbook_glimpse_v1_4.trading_currency.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Price: Numeric
  index, number_of_decimals_in_price = sgx_titandt_depthofbook_glimpse_v1_4.number_of_decimals_in_price.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Nominal Value: Numeric
  index, number_of_decimals_in_nominal_value = sgx_titandt_depthofbook_glimpse_v1_4.number_of_decimals_in_nominal_value.dissect(buffer, index, packet, parent)

  -- Reserved 4 A: Reserved
  index, reserved_4_a = sgx_titandt_depthofbook_glimpse_v1_4.reserved_4_a.dissect(buffer, index, packet, parent)

  -- Reserved 4 B: Reserved
  index, reserved_4_b = sgx_titandt_depthofbook_glimpse_v1_4.reserved_4_b.dissect(buffer, index, packet, parent)

  -- Reserved 4 C: Reserved
  index, reserved_4_c = sgx_titandt_depthofbook_glimpse_v1_4.reserved_4_c.dissect(buffer, index, packet, parent)

  -- Nominal Value: Numeric
  index, nominal_value = sgx_titandt_depthofbook_glimpse_v1_4.nominal_value.dissect(buffer, index, packet, parent)

  -- Leg 1 Symbol: Alpha
  index, leg_1_symbol = sgx_titandt_depthofbook_glimpse_v1_4.leg_1_symbol.dissect(buffer, index, packet, parent)

  -- Leg 1 Side: Alpha
  index, leg_1_side = sgx_titandt_depthofbook_glimpse_v1_4.leg_1_side.dissect(buffer, index, packet, parent)

  -- Leg 1 Ratio: Numeric
  index, leg_1_ratio = sgx_titandt_depthofbook_glimpse_v1_4.leg_1_ratio.dissect(buffer, index, packet, parent)

  -- Leg 2 Symbol: Alpha
  index, leg_2_symbol = sgx_titandt_depthofbook_glimpse_v1_4.leg_2_symbol.dissect(buffer, index, packet, parent)

  -- Leg 2 Side: Alpha
  index, leg_2_side = sgx_titandt_depthofbook_glimpse_v1_4.leg_2_side.dissect(buffer, index, packet, parent)

  -- Leg 2 Ratio: Numeric
  index, leg_2_ratio = sgx_titandt_depthofbook_glimpse_v1_4.leg_2_ratio.dissect(buffer, index, packet, parent)

  -- Leg 3 Symbol: Alpha
  index, leg_3_symbol = sgx_titandt_depthofbook_glimpse_v1_4.leg_3_symbol.dissect(buffer, index, packet, parent)

  -- Leg 3 Side: Alpha
  index, leg_3_side = sgx_titandt_depthofbook_glimpse_v1_4.leg_3_side.dissect(buffer, index, packet, parent)

  -- Leg 3 Ratio: Numeric
  index, leg_3_ratio = sgx_titandt_depthofbook_glimpse_v1_4.leg_3_ratio.dissect(buffer, index, packet, parent)

  -- Leg 4 Symbol: Alpha
  index, leg_4_symbol = sgx_titandt_depthofbook_glimpse_v1_4.leg_4_symbol.dissect(buffer, index, packet, parent)

  -- Leg 4 Side: Alpha
  index, leg_4_side = sgx_titandt_depthofbook_glimpse_v1_4.leg_4_side.dissect(buffer, index, packet, parent)

  -- Leg 4 Ratio: Numeric
  index, leg_4_ratio = sgx_titandt_depthofbook_glimpse_v1_4.leg_4_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Combination Order Book Directory Message
sgx_titandt_depthofbook_glimpse_v1_4.combination_order_book_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.combination_order_book_directory_message, buffer(offset, 0))
    local index = sgx_titandt_depthofbook_glimpse_v1_4.combination_order_book_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sgx_titandt_depthofbook_glimpse_v1_4.combination_order_book_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sgx_titandt_depthofbook_glimpse_v1_4.combination_order_book_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Directory Message
sgx_titandt_depthofbook_glimpse_v1_4.order_book_directory_message = {}

-- Size: Order Book Directory Message
sgx_titandt_depthofbook_glimpse_v1_4.order_book_directory_message.size =
  sgx_titandt_depthofbook_glimpse_v1_4.nanoseconds.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.order_book_id.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.symbol.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.long_name.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.reserved_12.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.financial_product.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.trading_currency.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.number_of_decimals_in_price.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.number_of_decimals_in_nominal_value.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.reserved_4_a.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.reserved_4_b.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.reserved_4_c.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.nominal_value.size

-- Display: Order Book Directory Message
sgx_titandt_depthofbook_glimpse_v1_4.order_book_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Directory Message
sgx_titandt_depthofbook_glimpse_v1_4.order_book_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = sgx_titandt_depthofbook_glimpse_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = sgx_titandt_depthofbook_glimpse_v1_4.order_book_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = sgx_titandt_depthofbook_glimpse_v1_4.symbol.dissect(buffer, index, packet, parent)

  -- Long Name: Alpha
  index, long_name = sgx_titandt_depthofbook_glimpse_v1_4.long_name.dissect(buffer, index, packet, parent)

  -- Reserved 12: Reserved
  index, reserved_12 = sgx_titandt_depthofbook_glimpse_v1_4.reserved_12.dissect(buffer, index, packet, parent)

  -- Financial Product: Numeric
  index, financial_product = sgx_titandt_depthofbook_glimpse_v1_4.financial_product.dissect(buffer, index, packet, parent)

  -- Trading Currency: Alpha
  index, trading_currency = sgx_titandt_depthofbook_glimpse_v1_4.trading_currency.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Price: Numeric
  index, number_of_decimals_in_price = sgx_titandt_depthofbook_glimpse_v1_4.number_of_decimals_in_price.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Nominal Value: Numeric
  index, number_of_decimals_in_nominal_value = sgx_titandt_depthofbook_glimpse_v1_4.number_of_decimals_in_nominal_value.dissect(buffer, index, packet, parent)

  -- Reserved 4 A: Reserved
  index, reserved_4_a = sgx_titandt_depthofbook_glimpse_v1_4.reserved_4_a.dissect(buffer, index, packet, parent)

  -- Reserved 4 B: Reserved
  index, reserved_4_b = sgx_titandt_depthofbook_glimpse_v1_4.reserved_4_b.dissect(buffer, index, packet, parent)

  -- Reserved 4 C: Reserved
  index, reserved_4_c = sgx_titandt_depthofbook_glimpse_v1_4.reserved_4_c.dissect(buffer, index, packet, parent)

  -- Nominal Value: Numeric
  index, nominal_value = sgx_titandt_depthofbook_glimpse_v1_4.nominal_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Directory Message
sgx_titandt_depthofbook_glimpse_v1_4.order_book_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.order_book_directory_message, buffer(offset, 0))
    local index = sgx_titandt_depthofbook_glimpse_v1_4.order_book_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sgx_titandt_depthofbook_glimpse_v1_4.order_book_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sgx_titandt_depthofbook_glimpse_v1_4.order_book_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Seconds Message
sgx_titandt_depthofbook_glimpse_v1_4.seconds_message = {}

-- Size: Seconds Message
sgx_titandt_depthofbook_glimpse_v1_4.seconds_message.size =
  sgx_titandt_depthofbook_glimpse_v1_4.second.size

-- Display: Seconds Message
sgx_titandt_depthofbook_glimpse_v1_4.seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seconds Message
sgx_titandt_depthofbook_glimpse_v1_4.seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: Numeric
  index, second = sgx_titandt_depthofbook_glimpse_v1_4.second.dissect(buffer, index, packet, parent)

  -- Store Second Value
  sgx_titandt_depthofbook_glimpse_v1_4.second.current = second

  if not packet.visited then
    sgx_titandt_depthofbook_glimpse_v1_4.conversation.current.second.last = second
  end

  return index
end

-- Dissect: Seconds Message
sgx_titandt_depthofbook_glimpse_v1_4.seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.seconds_message, buffer(offset, 0))
    local index = sgx_titandt_depthofbook_glimpse_v1_4.seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sgx_titandt_depthofbook_glimpse_v1_4.seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sgx_titandt_depthofbook_glimpse_v1_4.seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
sgx_titandt_depthofbook_glimpse_v1_4.sequenced_message = {}

-- Dissect: Sequenced Message
sgx_titandt_depthofbook_glimpse_v1_4.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect Seconds Message
  if sequenced_message_type == "T" then
    return sgx_titandt_depthofbook_glimpse_v1_4.seconds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Directory Message
  if sequenced_message_type == "R" then
    return sgx_titandt_depthofbook_glimpse_v1_4.order_book_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Combination Order Book Directory Message
  if sequenced_message_type == "M" then
    return sgx_titandt_depthofbook_glimpse_v1_4.combination_order_book_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Size Table Entry Message
  if sequenced_message_type == "L" then
    return sgx_titandt_depthofbook_glimpse_v1_4.tick_size_table_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book State Message
  if sequenced_message_type == "O" then
    return sgx_titandt_depthofbook_glimpse_v1_4.order_book_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if sequenced_message_type == "A" then
    return sgx_titandt_depthofbook_glimpse_v1_4.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Snapshot Message
  if sequenced_message_type == "G" then
    return sgx_titandt_depthofbook_glimpse_v1_4.end_of_snapshot_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
sgx_titandt_depthofbook_glimpse_v1_4.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
sgx_titandt_depthofbook_glimpse_v1_4.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
sgx_titandt_depthofbook_glimpse_v1_4.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
sgx_titandt_depthofbook_glimpse_v1_4.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = sgx_titandt_depthofbook_glimpse_v1_4.conversation.current
  if flow ~= nil then
    local memo = flow.sequence.frames[packet.number]
    if not packet.visited then
      if flow.sequence.next == nil then
        flow.sequence.next = tonumber(sgx_titandt_depthofbook_glimpse_v1_4.sequence_number.current)
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
          local sequence = parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if sgx_titandt_depthofbook_glimpse_v1_4.stream_frame ~= packet.number or sgx_titandt_depthofbook_glimpse_v1_4.stream_occurrence >= #memo then
          sgx_titandt_depthofbook_glimpse_v1_4.stream_frame = packet.number
          sgx_titandt_depthofbook_glimpse_v1_4.stream_occurrence = 0
        end
        sgx_titandt_depthofbook_glimpse_v1_4.stream_occurrence = sgx_titandt_depthofbook_glimpse_v1_4.stream_occurrence + 1
        local value = memo[sgx_titandt_depthofbook_glimpse_v1_4.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 7 values
  index, sequenced_message_type = sgx_titandt_depthofbook_glimpse_v1_4.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 7 branches
  index = sgx_titandt_depthofbook_glimpse_v1_4.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
sgx_titandt_depthofbook_glimpse_v1_4.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = sgx_titandt_depthofbook_glimpse_v1_4.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.sequenced_data_packet, buffer(offset, 0))
    local current = sgx_titandt_depthofbook_glimpse_v1_4.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = sgx_titandt_depthofbook_glimpse_v1_4.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    sgx_titandt_depthofbook_glimpse_v1_4.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
sgx_titandt_depthofbook_glimpse_v1_4.login_rejected_packet = {}

-- Size: Login Rejected Packet
sgx_titandt_depthofbook_glimpse_v1_4.login_rejected_packet.size =
  sgx_titandt_depthofbook_glimpse_v1_4.reject_reason_code.size

-- Display: Login Rejected Packet
sgx_titandt_depthofbook_glimpse_v1_4.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
sgx_titandt_depthofbook_glimpse_v1_4.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String Enum with 2 values
  index, reject_reason_code = sgx_titandt_depthofbook_glimpse_v1_4.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
sgx_titandt_depthofbook_glimpse_v1_4.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.login_rejected_packet, buffer(offset, 0))
    local index = sgx_titandt_depthofbook_glimpse_v1_4.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sgx_titandt_depthofbook_glimpse_v1_4.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sgx_titandt_depthofbook_glimpse_v1_4.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
sgx_titandt_depthofbook_glimpse_v1_4.login_accepted_packet = {}

-- Size: Login Accepted Packet
sgx_titandt_depthofbook_glimpse_v1_4.login_accepted_packet.size =
  sgx_titandt_depthofbook_glimpse_v1_4.session.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.sequence_number.size

-- Display: Login Accepted Packet
sgx_titandt_depthofbook_glimpse_v1_4.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
sgx_titandt_depthofbook_glimpse_v1_4.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = sgx_titandt_depthofbook_glimpse_v1_4.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 20 Byte Ascii String
  index, sequence_number = sgx_titandt_depthofbook_glimpse_v1_4.sequence_number.dissect(buffer, index, packet, parent)

  -- Store Sequence Number Value
  sgx_titandt_depthofbook_glimpse_v1_4.sequence_number.current = sequence_number

  if not packet.visited then
    sgx_titandt_depthofbook_glimpse_v1_4.conversation.current.sequence_number.last = sequence_number
  end

  return index
end

-- Dissect: Login Accepted Packet
sgx_titandt_depthofbook_glimpse_v1_4.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.login_accepted_packet, buffer(offset, 0))
    local index = sgx_titandt_depthofbook_glimpse_v1_4.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sgx_titandt_depthofbook_glimpse_v1_4.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sgx_titandt_depthofbook_glimpse_v1_4.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
sgx_titandt_depthofbook_glimpse_v1_4.debug_packet = {}

-- Size: Debug Packet
sgx_titandt_depthofbook_glimpse_v1_4.debug_packet.size =
  sgx_titandt_depthofbook_glimpse_v1_4.text.size

-- Display: Debug Packet
sgx_titandt_depthofbook_glimpse_v1_4.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
sgx_titandt_depthofbook_glimpse_v1_4.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = sgx_titandt_depthofbook_glimpse_v1_4.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
sgx_titandt_depthofbook_glimpse_v1_4.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.debug_packet, buffer(offset, 0))
    local index = sgx_titandt_depthofbook_glimpse_v1_4.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sgx_titandt_depthofbook_glimpse_v1_4.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sgx_titandt_depthofbook_glimpse_v1_4.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
sgx_titandt_depthofbook_glimpse_v1_4.server_payload = {}

-- Dissect: Server Payload
sgx_titandt_depthofbook_glimpse_v1_4.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  -- Dissect Debug Packet
  if server_packet_type == "+" then
    return sgx_titandt_depthofbook_glimpse_v1_4.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if server_packet_type == "A" then
    return sgx_titandt_depthofbook_glimpse_v1_4.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if server_packet_type == "J" then
    return sgx_titandt_depthofbook_glimpse_v1_4.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if server_packet_type == "S" then
    return sgx_titandt_depthofbook_glimpse_v1_4.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat
  if server_packet_type == "H" then
    return sgx_titandt_depthofbook_glimpse_v1_4.server_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if server_packet_type == "Z" then
    return sgx_titandt_depthofbook_glimpse_v1_4.end_of_session.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
sgx_titandt_depthofbook_glimpse_v1_4.server_packet_header = {}

-- Size: Server Packet Header
sgx_titandt_depthofbook_glimpse_v1_4.server_packet_header.size =
  sgx_titandt_depthofbook_glimpse_v1_4.packet_length.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.server_packet_type.size

-- Display: Server Packet Header
sgx_titandt_depthofbook_glimpse_v1_4.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
sgx_titandt_depthofbook_glimpse_v1_4.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = sgx_titandt_depthofbook_glimpse_v1_4.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = sgx_titandt_depthofbook_glimpse_v1_4.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
sgx_titandt_depthofbook_glimpse_v1_4.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.server_packet_header, buffer(offset, 0))
    local index = sgx_titandt_depthofbook_glimpse_v1_4.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sgx_titandt_depthofbook_glimpse_v1_4.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sgx_titandt_depthofbook_glimpse_v1_4.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
sgx_titandt_depthofbook_glimpse_v1_4.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
sgx_titandt_depthofbook_glimpse_v1_4.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
sgx_titandt_depthofbook_glimpse_v1_4.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = sgx_titandt_depthofbook_glimpse_v1_4.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = sgx_titandt_depthofbook_glimpse_v1_4.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
sgx_titandt_depthofbook_glimpse_v1_4.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = sgx_titandt_depthofbook_glimpse_v1_4.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = sgx_titandt_depthofbook_glimpse_v1_4.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    sgx_titandt_depthofbook_glimpse_v1_4.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < sgx_titandt_depthofbook_glimpse_v1_4.server_packet_header.size then
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
sgx_titandt_depthofbook_glimpse_v1_4.server_packet = {}

-- Verify required size of Tcp packet
sgx_titandt_depthofbook_glimpse_v1_4.server_packet.requiredsize = function(buffer)
  return buffer:len() >= sgx_titandt_depthofbook_glimpse_v1_4.server_packet_header.size
end

-- Dissect Server Packet
sgx_titandt_depthofbook_glimpse_v1_4.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = sgx_titandt_depthofbook_glimpse_v1_4.conversation.data(packet)
  if not packet.visited then
    data.sequence_number.frames[packet.number] = data.sequence_number.last
    data.second.frames[packet.number] = data.second.last
  end
  sgx_titandt_depthofbook_glimpse_v1_4.sequence_number.current = data.sequence_number.frames[packet.number]
  sgx_titandt_depthofbook_glimpse_v1_4.second.current = data.second.frames[packet.number]
  sgx_titandt_depthofbook_glimpse_v1_4.conversation.current = data

  local index = 0

  -- Dependency for Server Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Server Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_soup_bin_tcp_packet = server_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = sgx_titandt_depthofbook_glimpse_v1_4.server_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_server_soup_bin_tcp_packet)
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
sgx_titandt_depthofbook_glimpse_v1_4.logout_request = {}

-- Display: Logout Request
sgx_titandt_depthofbook_glimpse_v1_4.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
sgx_titandt_depthofbook_glimpse_v1_4.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = sgx_titandt_depthofbook_glimpse_v1_4.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
sgx_titandt_depthofbook_glimpse_v1_4.client_heartbeat = {}

-- Display: Client Heartbeat
sgx_titandt_depthofbook_glimpse_v1_4.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
sgx_titandt_depthofbook_glimpse_v1_4.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = sgx_titandt_depthofbook_glimpse_v1_4.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Unsequenced Data Packet
sgx_titandt_depthofbook_glimpse_v1_4.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
sgx_titandt_depthofbook_glimpse_v1_4.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
sgx_titandt_depthofbook_glimpse_v1_4.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
sgx_titandt_depthofbook_glimpse_v1_4.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = sgx_titandt_depthofbook_glimpse_v1_4.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = packet_length - 2

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = sgx_titandt_depthofbook_glimpse_v1_4.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
sgx_titandt_depthofbook_glimpse_v1_4.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = sgx_titandt_depthofbook_glimpse_v1_4.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = sgx_titandt_depthofbook_glimpse_v1_4.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = sgx_titandt_depthofbook_glimpse_v1_4.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    sgx_titandt_depthofbook_glimpse_v1_4.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
sgx_titandt_depthofbook_glimpse_v1_4.login_request_packet = {}

-- Size: Login Request Packet
sgx_titandt_depthofbook_glimpse_v1_4.login_request_packet.size =
  sgx_titandt_depthofbook_glimpse_v1_4.username.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.password.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.requested_session.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.requested_sequence_number.size

-- Display: Login Request Packet
sgx_titandt_depthofbook_glimpse_v1_4.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
sgx_titandt_depthofbook_glimpse_v1_4.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = sgx_titandt_depthofbook_glimpse_v1_4.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = sgx_titandt_depthofbook_glimpse_v1_4.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = sgx_titandt_depthofbook_glimpse_v1_4.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = sgx_titandt_depthofbook_glimpse_v1_4.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
sgx_titandt_depthofbook_glimpse_v1_4.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.login_request_packet, buffer(offset, 0))
    local index = sgx_titandt_depthofbook_glimpse_v1_4.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sgx_titandt_depthofbook_glimpse_v1_4.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sgx_titandt_depthofbook_glimpse_v1_4.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
sgx_titandt_depthofbook_glimpse_v1_4.client_payload = {}

-- Dissect: Client Payload
sgx_titandt_depthofbook_glimpse_v1_4.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  -- Dissect Debug Packet
  if client_packet_type == "+" then
    return sgx_titandt_depthofbook_glimpse_v1_4.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if client_packet_type == "L" then
    return sgx_titandt_depthofbook_glimpse_v1_4.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if client_packet_type == "U" then
    return sgx_titandt_depthofbook_glimpse_v1_4.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat
  if client_packet_type == "R" then
    return sgx_titandt_depthofbook_glimpse_v1_4.client_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if client_packet_type == "O" then
    return sgx_titandt_depthofbook_glimpse_v1_4.logout_request.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
sgx_titandt_depthofbook_glimpse_v1_4.client_packet_header = {}

-- Size: Client Packet Header
sgx_titandt_depthofbook_glimpse_v1_4.client_packet_header.size =
  sgx_titandt_depthofbook_glimpse_v1_4.packet_length.size + 
  sgx_titandt_depthofbook_glimpse_v1_4.client_packet_type.size

-- Display: Client Packet Header
sgx_titandt_depthofbook_glimpse_v1_4.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
sgx_titandt_depthofbook_glimpse_v1_4.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = sgx_titandt_depthofbook_glimpse_v1_4.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = sgx_titandt_depthofbook_glimpse_v1_4.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
sgx_titandt_depthofbook_glimpse_v1_4.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.client_packet_header, buffer(offset, 0))
    local index = sgx_titandt_depthofbook_glimpse_v1_4.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sgx_titandt_depthofbook_glimpse_v1_4.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sgx_titandt_depthofbook_glimpse_v1_4.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
sgx_titandt_depthofbook_glimpse_v1_4.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
sgx_titandt_depthofbook_glimpse_v1_4.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
sgx_titandt_depthofbook_glimpse_v1_4.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = sgx_titandt_depthofbook_glimpse_v1_4.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = sgx_titandt_depthofbook_glimpse_v1_4.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
sgx_titandt_depthofbook_glimpse_v1_4.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = sgx_titandt_depthofbook_glimpse_v1_4.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = sgx_titandt_depthofbook_glimpse_v1_4.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    sgx_titandt_depthofbook_glimpse_v1_4.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < sgx_titandt_depthofbook_glimpse_v1_4.client_packet_header.size then
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
sgx_titandt_depthofbook_glimpse_v1_4.client_packet = {}

-- Verify required size of Tcp packet
sgx_titandt_depthofbook_glimpse_v1_4.client_packet.requiredsize = function(buffer)
  return buffer:len() >= sgx_titandt_depthofbook_glimpse_v1_4.client_packet_header.size
end

-- Dissect Client Packet
sgx_titandt_depthofbook_glimpse_v1_4.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Client Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_soup_bin_tcp_packet = client_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = sgx_titandt_depthofbook_glimpse_v1_4.client_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_client_soup_bin_tcp_packet)
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
function omi_sgx_titandt_depthofbook_glimpse_v1_4.init()
  sgx_titandt_depthofbook_glimpse_v1_4.sequence_number.current = nil
  sgx_titandt_depthofbook_glimpse_v1_4.second.current = nil
  sgx_titandt_depthofbook_glimpse_v1_4.conversation.current = nil
  sgx_titandt_depthofbook_glimpse_v1_4.conversation.flows = {}
end

-- Connection roles for Sgx TitanDt DepthOfBook Glimpse 1.4: Client is the initiator, Server is the acceptor
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
sgx_titandt_depthofbook_glimpse_v1_4.role = function(packet)
  if omi_sgx_titandt_depthofbook_glimpse_v1_4.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_sgx_titandt_depthofbook_glimpse_v1_4.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_sgx_titandt_depthofbook_glimpse_v1_4.prefs.acceptor_port

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

  if omi_sgx_titandt_depthofbook_glimpse_v1_4.prefs.swap_sides then
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
sgx_titandt_depthofbook_glimpse_v1_4.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Sgx TitanDt DepthOfBook Glimpse 1.4
function omi_sgx_titandt_depthofbook_glimpse_v1_4.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_sgx_titandt_depthofbook_glimpse_v1_4.name

  -- Dissect protocol
  local protocol = parent:add(omi_sgx_titandt_depthofbook_glimpse_v1_4, buffer(), omi_sgx_titandt_depthofbook_glimpse_v1_4.description, "("..buffer:len().." Bytes)")

  local role = sgx_titandt_depthofbook_glimpse_v1_4.role(packet)

  if role == "initiator" then
    return sgx_titandt_depthofbook_glimpse_v1_4.client_packet.dissect(buffer, packet, protocol)
  end

  return sgx_titandt_depthofbook_glimpse_v1_4.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
sgx_titandt_depthofbook_glimpse_v1_4.client_packet.fingerprint = function(buffer)
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
sgx_titandt_depthofbook_glimpse_v1_4.server_packet.fingerprint = function(buffer)
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

    -- Seconds Message
    if sequenced_message_type == "T" then
      return true
    end

    -- Order Book Directory Message
    if sequenced_message_type == "R" then
      return true
    end

    -- Combination Order Book Directory Message
    if sequenced_message_type == "M" then
      return true
    end

    -- Tick Size Table Entry Message
    if sequenced_message_type == "L" then
      return true
    end

    -- Order Book State Message
    if sequenced_message_type == "O" then
      return true
    end

    -- Add Order Message
    if sequenced_message_type == "A" then
      return true
    end

    -- End Of Snapshot Message
    if sequenced_message_type == "G" then
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

-- Dissector Heuristic for Sgx TitanDt DepthOfBook Glimpse 1.4 (Tcp)
local function omi_sgx_titandt_depthofbook_glimpse_v1_4_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not sgx_titandt_depthofbook_glimpse_v1_4.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not sgx_titandt_depthofbook_glimpse_v1_4.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_sgx_titandt_depthofbook_glimpse_v1_4
  omi_sgx_titandt_depthofbook_glimpse_v1_4.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Sgx TitanDt DepthOfBook Glimpse 1.4 (Tcp)
local function omi_sgx_titandt_depthofbook_glimpse_v1_4_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not sgx_titandt_depthofbook_glimpse_v1_4.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not sgx_titandt_depthofbook_glimpse_v1_4.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_sgx_titandt_depthofbook_glimpse_v1_4
  omi_sgx_titandt_depthofbook_glimpse_v1_4.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Sgx TitanDt DepthOfBook Glimpse 1.4 (Tcp): apply the heuristic of the sender's connection role
local function omi_sgx_titandt_depthofbook_glimpse_v1_4_tcp_heuristic(buffer, packet, parent)
  local role = sgx_titandt_depthofbook_glimpse_v1_4.role(packet)
  local initiator = omi_sgx_titandt_depthofbook_glimpse_v1_4_tcp_initiator_heuristic
  local acceptor = omi_sgx_titandt_depthofbook_glimpse_v1_4_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  sgx_titandt_depthofbook_glimpse_v1_4.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  sgx_titandt_depthofbook_glimpse_v1_4.swap(packet)

  return false
end

-- Register Heuristics for Sgx TitanDt DepthOfBook Glimpse 1.4
omi_sgx_titandt_depthofbook_glimpse_v1_4:register_heuristic("tcp", omi_sgx_titandt_depthofbook_glimpse_v1_4_tcp_heuristic)

-- Register Sgx TitanDt DepthOfBook Glimpse 1.4 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_sgx_titandt_depthofbook_glimpse_v1_4)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Singapore Exchange
--   Version: 1.4
--   Date: Tuesday, May 10, 2016
--   Specification: Titan_ITCH_and_GLIMPSE_Protocol_Specifications.pdf
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
