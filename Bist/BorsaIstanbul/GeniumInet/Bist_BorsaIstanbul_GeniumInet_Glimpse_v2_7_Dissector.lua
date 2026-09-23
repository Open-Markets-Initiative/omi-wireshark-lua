-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Bist BorsaIstanbul GeniumInet Glimpse 2.7 Protocol
local omi_bist_borsaistanbul_geniuminet_glimpse_v2_7 = Proto("Omi.Bist.BorsaIstanbul.GeniumInet.Glimpse.v2.7", "Bist BorsaIstanbul GeniumInet Glimpse 2.7")

-- Protocol table
local bist_borsaistanbul_geniuminet_glimpse_v2_7 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Bist BorsaIstanbul GeniumInet Glimpse 2.7 Fields
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.bait_implied_order = ProtoField.new("Bait Implied Order", "bist.borsaistanbul.geniuminet.glimpse.v2.7.baitimpliedorder", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.block_lot_size = ProtoField.new("Block Lot Size", "bist.borsaistanbul.geniuminet.glimpse.v2.7.blocklotsize", ftypes.UINT32)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.client_packet_type = ProtoField.new("Packet Type", "bist.borsaistanbul.geniuminet.glimpse.v2.7.clientpackettype", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.combination_order_book_id = ProtoField.new("Combination Order Book Id", "bist.borsaistanbul.geniuminet.glimpse.v2.7.combinationorderbookid", ftypes.UINT32)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.decimals_in_nominal_value = ProtoField.new("Decimals In Nominal Value", "bist.borsaistanbul.geniuminet.glimpse.v2.7.decimalsinnominalvalue", ftypes.UINT16)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.decimals_in_price = ProtoField.new("Decimals In Price", "bist.borsaistanbul.geniuminet.glimpse.v2.7.decimalsinprice", ftypes.UINT16)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.decimals_in_strike_price = ProtoField.new("Decimals In Strike Price", "bist.borsaistanbul.geniuminet.glimpse.v2.7.decimalsinstrikeprice", ftypes.UINT16)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.expiration_date = ProtoField.new("Expiration Date", "bist.borsaistanbul.geniuminet.glimpse.v2.7.expirationdate", ftypes.UINT32)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.financial_product = ProtoField.new("Financial Product", "bist.borsaistanbul.geniuminet.glimpse.v2.7.financialproduct", ftypes.UINT8)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.isin = ProtoField.new("Isin", "bist.borsaistanbul.geniuminet.glimpse.v2.7.isin", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.leg_order_book_id = ProtoField.new("Leg Order Book Id", "bist.borsaistanbul.geniuminet.glimpse.v2.7.legorderbookid", ftypes.UINT32)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.leg_ratio = ProtoField.new("Leg Ratio", "bist.borsaistanbul.geniuminet.glimpse.v2.7.legratio", ftypes.UINT32)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.leg_side = ProtoField.new("Leg Side", "bist.borsaistanbul.geniuminet.glimpse.v2.7.legside", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.long_name = ProtoField.new("Long Name", "bist.borsaistanbul.geniuminet.glimpse.v2.7.longname", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.lot_type = ProtoField.new("Lot Type", "bist.borsaistanbul.geniuminet.glimpse.v2.7.lottype", ftypes.UINT8)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.nanoseconds = ProtoField.new("Nanoseconds", "bist.borsaistanbul.geniuminet.glimpse.v2.7.nanoseconds", ftypes.UINT32)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.nominal_value = ProtoField.new("Nominal Value", "bist.borsaistanbul.geniuminet.glimpse.v2.7.nominalvalue", ftypes.UINT64)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.number_of_legs = ProtoField.new("Number Of Legs", "bist.borsaistanbul.geniuminet.glimpse.v2.7.numberoflegs", ftypes.UINT8)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.odd_lot_size = ProtoField.new("Odd Lot Size", "bist.borsaistanbul.geniuminet.glimpse.v2.7.oddlotsize", ftypes.UINT32)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.order_attributes = ProtoField.new("Order Attributes", "bist.borsaistanbul.geniuminet.glimpse.v2.7.orderattributes", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.order_book_id = ProtoField.new("Order Book Id", "bist.borsaistanbul.geniuminet.glimpse.v2.7.orderbookid", ftypes.UINT32)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.order_id = ProtoField.new("Order Id", "bist.borsaistanbul.geniuminet.glimpse.v2.7.orderid", ftypes.UINT64)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.packet_length = ProtoField.new("Packet Length", "bist.borsaistanbul.geniuminet.glimpse.v2.7.packetlength", ftypes.UINT16)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.participant_id = ProtoField.new("Participant Id", "bist.borsaistanbul.geniuminet.glimpse.v2.7.participantid", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.password = ProtoField.new("Password", "bist.borsaistanbul.geniuminet.glimpse.v2.7.password", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.price = ProtoField.new("Price", "bist.borsaistanbul.geniuminet.glimpse.v2.7.price", ftypes.INT32)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.price_from = ProtoField.new("Price From", "bist.borsaistanbul.geniuminet.glimpse.v2.7.pricefrom", ftypes.INT32)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.price_to = ProtoField.new("Price To", "bist.borsaistanbul.geniuminet.glimpse.v2.7.priceto", ftypes.INT32)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.put_or_call = ProtoField.new("Put Or Call", "bist.borsaistanbul.geniuminet.glimpse.v2.7.putorcall", ftypes.UINT8)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.quantity = ProtoField.new("Quantity", "bist.borsaistanbul.geniuminet.glimpse.v2.7.quantity", ftypes.UINT64)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.ranking_sequence_number = ProtoField.new("Ranking Sequence Number", "bist.borsaistanbul.geniuminet.glimpse.v2.7.rankingsequencenumber", ftypes.UINT32)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.ranking_time = ProtoField.new("Ranking Time", "bist.borsaistanbul.geniuminet.glimpse.v2.7.rankingtime", ftypes.UINT64)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.ranking_type = ProtoField.new("Ranking Type", "bist.borsaistanbul.geniuminet.glimpse.v2.7.rankingtype", ftypes.UINT8)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "bist.borsaistanbul.geniuminet.glimpse.v2.7.rejectreasoncode", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "bist.borsaistanbul.geniuminet.glimpse.v2.7.requestedsequencenumber", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.requested_session = ProtoField.new("Requested Session", "bist.borsaistanbul.geniuminet.glimpse.v2.7.requestedsession", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.reserved_13 = ProtoField.new("Reserved 13", "bist.borsaistanbul.geniuminet.glimpse.v2.7.reserved13", ftypes.UINT16, nil, base.DEC, 0x1FFF)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.reserved_2 = ProtoField.new("Reserved 2", "bist.borsaistanbul.geniuminet.glimpse.v2.7.reserved2", ftypes.UINT16, nil, base.DEC, 0xC000)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.reserved_4 = ProtoField.new("Reserved 4", "bist.borsaistanbul.geniuminet.glimpse.v2.7.reserved4", ftypes.BYTES)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.round_lot_size = ProtoField.new("Round Lot Size", "bist.borsaistanbul.geniuminet.glimpse.v2.7.roundlotsize", ftypes.UINT32)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.second = ProtoField.new("Second", "bist.borsaistanbul.geniuminet.glimpse.v2.7.second", ftypes.UINT32)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.sequence_number = ProtoField.new("Sequence Number", "bist.borsaistanbul.geniuminet.glimpse.v2.7.sequencenumber", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "bist.borsaistanbul.geniuminet.glimpse.v2.7.sequencedmessagetype", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.server_packet_type = ProtoField.new("Packet Type", "bist.borsaistanbul.geniuminet.glimpse.v2.7.serverpackettype", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.session = ProtoField.new("Session", "bist.borsaistanbul.geniuminet.glimpse.v2.7.session", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.short_sale_restriction = ProtoField.new("Short Sale Restriction", "bist.borsaistanbul.geniuminet.glimpse.v2.7.shortsalerestriction", ftypes.UINT8)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.side = ProtoField.new("Side", "bist.borsaistanbul.geniuminet.glimpse.v2.7.side", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.state_name = ProtoField.new("State Name", "bist.borsaistanbul.geniuminet.glimpse.v2.7.statename", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.strike_price = ProtoField.new("Strike Price", "bist.borsaistanbul.geniuminet.glimpse.v2.7.strikeprice", ftypes.INT32)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.symbol = ProtoField.new("Symbol", "bist.borsaistanbul.geniuminet.glimpse.v2.7.symbol", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.text = ProtoField.new("Text", "bist.borsaistanbul.geniuminet.glimpse.v2.7.text", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.tick_size = ProtoField.new("Tick Size", "bist.borsaistanbul.geniuminet.glimpse.v2.7.ticksize", ftypes.UINT64)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.trading_currency = ProtoField.new("Trading Currency", "bist.borsaistanbul.geniuminet.glimpse.v2.7.tradingcurrency", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.underlying_order_book_id = ProtoField.new("Underlying Order Book Id", "bist.borsaistanbul.geniuminet.glimpse.v2.7.underlyingorderbookid", ftypes.UINT32)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "bist.borsaistanbul.geniuminet.glimpse.v2.7.unsequencedmessage", ftypes.BYTES)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "bist.borsaistanbul.geniuminet.glimpse.v2.7.unsequencedmessagetype", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.username = ProtoField.new("Username", "bist.borsaistanbul.geniuminet.glimpse.v2.7.username", ftypes.STRING)

-- Bist BorsaIstanbul GeniumInet Glimpse 2.7 Framing
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.client_packet = ProtoField.new("Packet", "bist.borsaistanbul.geniuminet.glimpse.v2.7.clientpacket", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.client_packet_header = ProtoField.new("Packet Header", "bist.borsaistanbul.geniuminet.glimpse.v2.7.clientpacketheader", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "bist.borsaistanbul.geniuminet.glimpse.v2.7.clientsoupbintcppacket", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.server_packet = ProtoField.new("Packet", "bist.borsaistanbul.geniuminet.glimpse.v2.7.serverpacket", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.server_packet_header = ProtoField.new("Packet Header", "bist.borsaistanbul.geniuminet.glimpse.v2.7.serverpacketheader", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "bist.borsaistanbul.geniuminet.glimpse.v2.7.serversoupbintcppacket", ftypes.STRING)

-- Bist BorsaIstanbul GeniumInet 2.7 Application Messages
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.add_order_no_mpid_attribution = ProtoField.new("Add Order No Mpid Attribution", "bist.borsaistanbul.geniuminet.glimpse.v2.7.addordernompidattribution", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.add_order_with_mpid_attribution = ProtoField.new("Add Order With Mpid Attribution", "bist.borsaistanbul.geniuminet.glimpse.v2.7.addorderwithmpidattribution", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.combination_order_book_leg = ProtoField.new("Combination Order Book Leg", "bist.borsaistanbul.geniuminet.glimpse.v2.7.combinationorderbookleg", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.end_of_snapshot_message = ProtoField.new("End Of Snapshot Message", "bist.borsaistanbul.geniuminet.glimpse.v2.7.endofsnapshotmessage", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.order_book_directory = ProtoField.new("Order Book Directory", "bist.borsaistanbul.geniuminet.glimpse.v2.7.orderbookdirectory", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.order_book_state_message = ProtoField.new("Order Book State Message", "bist.borsaistanbul.geniuminet.glimpse.v2.7.orderbookstatemessage", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.seconds_message = ProtoField.new("Seconds Message", "bist.borsaistanbul.geniuminet.glimpse.v2.7.secondsmessage", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.short_sell_status = ProtoField.new("Short Sell Status", "bist.borsaistanbul.geniuminet.glimpse.v2.7.shortsellstatus", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.tick_size_table_entry = ProtoField.new("Tick Size Table Entry", "bist.borsaistanbul.geniuminet.glimpse.v2.7.ticksizetableentry", ftypes.STRING)

-- Bist BorsaIstanbul GeniumInet 2.7 Session Messages
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "bist.borsaistanbul.geniuminet.glimpse.v2.7.clientheartbeat", ftypes.BYTES)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.debug_packet = ProtoField.new("Debug Packet", "bist.borsaistanbul.geniuminet.glimpse.v2.7.debugpacket", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.end_of_session = ProtoField.new("End Of Session", "bist.borsaistanbul.geniuminet.glimpse.v2.7.endofsession", ftypes.BYTES)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "bist.borsaistanbul.geniuminet.glimpse.v2.7.loginacceptedpacket", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "bist.borsaistanbul.geniuminet.glimpse.v2.7.loginrejectedpacket", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.login_request_packet = ProtoField.new("Login Request Packet", "bist.borsaistanbul.geniuminet.glimpse.v2.7.loginrequestpacket", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.logout_request = ProtoField.new("Logout Request", "bist.borsaistanbul.geniuminet.glimpse.v2.7.logoutrequest", ftypes.BYTES)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "bist.borsaistanbul.geniuminet.glimpse.v2.7.sequenceddatapacket", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "bist.borsaistanbul.geniuminet.glimpse.v2.7.serverheartbeat", ftypes.BYTES)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "bist.borsaistanbul.geniuminet.glimpse.v2.7.unsequenceddatapacket", ftypes.STRING)

-- Bist BorsaIstanbul GeniumInet Glimpse 2.7 Generated Fields
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "bist.borsaistanbul.geniuminet.glimpse.v2.7.sequenceddatapacketsequencenumber", ftypes.UINT64)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.timestamp = ProtoField.new("Timestamp", "bist.borsaistanbul.geniuminet.glimpse.v2.7.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Bist BorsaIstanbul GeniumInet Glimpse 2.7 Formatting
-----------------------------------------------------------------------

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
bist_borsaistanbul_geniuminet_glimpse_v2_7.format_timestamp = true

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

-- Bist BorsaIstanbul GeniumInet Glimpse 2.7 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.session_messages = true
show.sequences = true

-- Register Bist BorsaIstanbul GeniumInet Glimpse 2.7 Show Options
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

-- Handle changed preferences
function omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.prefs.show_application_messages then
    show.application_messages = omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.prefs.show_application_messages
  end
  if show.headers ~= omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.prefs.show_headers then
    show.headers = omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.prefs.show_headers
  end
  if show.session_messages ~= omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.prefs.show_session_messages then
    show.session_messages = omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.prefs.show_session_messages
  end
  if show.structs ~= omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.prefs.show_structs then
    show.structs = omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.prefs.show_structs
  end
  if show.sequences ~= omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.prefs.show_sequences then
    show.sequences = omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.prefs.show_sequences
  end
  if bist_borsaistanbul_geniuminet_glimpse_v2_7.format_timestamp ~= omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.prefs.format_timestamp then
    bist_borsaistanbul_geniuminet_glimpse_v2_7.format_timestamp = omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.prefs.format_timestamp
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
bist_borsaistanbul_geniuminet_glimpse_v2_7.conversation = {}
bist_borsaistanbul_geniuminet_glimpse_v2_7.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
bist_borsaistanbul_geniuminet_glimpse_v2_7.stream_frame = nil
bist_borsaistanbul_geniuminet_glimpse_v2_7.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
bist_borsaistanbul_geniuminet_glimpse_v2_7.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
bist_borsaistanbul_geniuminet_glimpse_v2_7.conversation.data = function(packet)
  local key = bist_borsaistanbul_geniuminet_glimpse_v2_7.conversation.key(packet)
  local data = bist_borsaistanbul_geniuminet_glimpse_v2_7.conversation.flows[key]
  if data == nil then
    data = { sequence_number = { last = nil, frames = {} }, second = { last = nil, frames = {} }, sequence = { next = nil, frames = {} } }
    bist_borsaistanbul_geniuminet_glimpse_v2_7.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
bist_borsaistanbul_geniuminet_glimpse_v2_7.conversation.current = nil


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
-- Bist BorsaIstanbul GeniumInet Glimpse 2.7 Fields
-----------------------------------------------------------------------

-- Block Lot Size
bist_borsaistanbul_geniuminet_glimpse_v2_7.block_lot_size = {}

-- Size: Block Lot Size
bist_borsaistanbul_geniuminet_glimpse_v2_7.block_lot_size.size = 4

-- Display: Block Lot Size
bist_borsaistanbul_geniuminet_glimpse_v2_7.block_lot_size.display = function(value)
  return "Block Lot Size: "..value
end

-- Dissect: Block Lot Size
bist_borsaistanbul_geniuminet_glimpse_v2_7.block_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.block_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.block_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.block_lot_size, range, value, display)

  return offset + length, value
end

-- Client Packet Type
bist_borsaistanbul_geniuminet_glimpse_v2_7.client_packet_type = {}

-- Size: Client Packet Type
bist_borsaistanbul_geniuminet_glimpse_v2_7.client_packet_type.size = 1

-- Display: Client Packet Type
bist_borsaistanbul_geniuminet_glimpse_v2_7.client_packet_type.display = function(value)
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
bist_borsaistanbul_geniuminet_glimpse_v2_7.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Combination Order Book Id
bist_borsaistanbul_geniuminet_glimpse_v2_7.combination_order_book_id = {}

-- Size: Combination Order Book Id
bist_borsaistanbul_geniuminet_glimpse_v2_7.combination_order_book_id.size = 4

-- Display: Combination Order Book Id
bist_borsaistanbul_geniuminet_glimpse_v2_7.combination_order_book_id.display = function(value)
  return "Combination Order Book Id: "..value
end

-- Dissect: Combination Order Book Id
bist_borsaistanbul_geniuminet_glimpse_v2_7.combination_order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.combination_order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.combination_order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.combination_order_book_id, range, value, display)

  return offset + length, value
end

-- Decimals In Nominal Value
bist_borsaistanbul_geniuminet_glimpse_v2_7.decimals_in_nominal_value = {}

-- Size: Decimals In Nominal Value
bist_borsaistanbul_geniuminet_glimpse_v2_7.decimals_in_nominal_value.size = 2

-- Display: Decimals In Nominal Value
bist_borsaistanbul_geniuminet_glimpse_v2_7.decimals_in_nominal_value.display = function(value)
  return "Decimals In Nominal Value: "..value
end

-- Dissect: Decimals In Nominal Value
bist_borsaistanbul_geniuminet_glimpse_v2_7.decimals_in_nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.decimals_in_nominal_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.decimals_in_nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.decimals_in_nominal_value, range, value, display)

  return offset + length, value
end

-- Decimals In Price
bist_borsaistanbul_geniuminet_glimpse_v2_7.decimals_in_price = {}

-- Size: Decimals In Price
bist_borsaistanbul_geniuminet_glimpse_v2_7.decimals_in_price.size = 2

-- Display: Decimals In Price
bist_borsaistanbul_geniuminet_glimpse_v2_7.decimals_in_price.display = function(value)
  return "Decimals In Price: "..value
end

-- Dissect: Decimals In Price
bist_borsaistanbul_geniuminet_glimpse_v2_7.decimals_in_price.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.decimals_in_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.decimals_in_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.decimals_in_price, range, value, display)

  return offset + length, value
end

-- Decimals In Strike Price
bist_borsaistanbul_geniuminet_glimpse_v2_7.decimals_in_strike_price = {}

-- Size: Decimals In Strike Price
bist_borsaistanbul_geniuminet_glimpse_v2_7.decimals_in_strike_price.size = 2

-- Display: Decimals In Strike Price
bist_borsaistanbul_geniuminet_glimpse_v2_7.decimals_in_strike_price.display = function(value)
  return "Decimals In Strike Price: "..value
end

-- Dissect: Decimals In Strike Price
bist_borsaistanbul_geniuminet_glimpse_v2_7.decimals_in_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.decimals_in_strike_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.decimals_in_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.decimals_in_strike_price, range, value, display)

  return offset + length, value
end

-- Expiration Date
bist_borsaistanbul_geniuminet_glimpse_v2_7.expiration_date = {}

-- Size: Expiration Date
bist_borsaistanbul_geniuminet_glimpse_v2_7.expiration_date.size = 4

-- Display: Expiration Date
bist_borsaistanbul_geniuminet_glimpse_v2_7.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
bist_borsaistanbul_geniuminet_glimpse_v2_7.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.expiration_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Financial Product
bist_borsaistanbul_geniuminet_glimpse_v2_7.financial_product = {}

-- Size: Financial Product
bist_borsaistanbul_geniuminet_glimpse_v2_7.financial_product.size = 1

-- Display: Financial Product
bist_borsaistanbul_geniuminet_glimpse_v2_7.financial_product.display = function(value)
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
  if value == 18 then
    return "Financial Product: Certificate (18)"
  end

  return "Financial Product: Unknown("..value..")"
end

-- Dissect: Financial Product
bist_borsaistanbul_geniuminet_glimpse_v2_7.financial_product.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.financial_product.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.financial_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.financial_product, range, value, display)

  return offset + length, value
end

-- Isin
bist_borsaistanbul_geniuminet_glimpse_v2_7.isin = {}

-- Size: Isin
bist_borsaistanbul_geniuminet_glimpse_v2_7.isin.size = 12

-- Display: Isin
bist_borsaistanbul_geniuminet_glimpse_v2_7.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
bist_borsaistanbul_geniuminet_glimpse_v2_7.isin.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.isin, range, value, display)

  return offset + length, value
end

-- Leg Order Book Id
bist_borsaistanbul_geniuminet_glimpse_v2_7.leg_order_book_id = {}

-- Size: Leg Order Book Id
bist_borsaistanbul_geniuminet_glimpse_v2_7.leg_order_book_id.size = 4

-- Display: Leg Order Book Id
bist_borsaistanbul_geniuminet_glimpse_v2_7.leg_order_book_id.display = function(value)
  return "Leg Order Book Id: "..value
end

-- Dissect: Leg Order Book Id
bist_borsaistanbul_geniuminet_glimpse_v2_7.leg_order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.leg_order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.leg_order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.leg_order_book_id, range, value, display)

  return offset + length, value
end

-- Leg Ratio
bist_borsaistanbul_geniuminet_glimpse_v2_7.leg_ratio = {}

-- Size: Leg Ratio
bist_borsaistanbul_geniuminet_glimpse_v2_7.leg_ratio.size = 4

-- Display: Leg Ratio
bist_borsaistanbul_geniuminet_glimpse_v2_7.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
bist_borsaistanbul_geniuminet_glimpse_v2_7.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Side
bist_borsaistanbul_geniuminet_glimpse_v2_7.leg_side = {}

-- Size: Leg Side
bist_borsaistanbul_geniuminet_glimpse_v2_7.leg_side.size = 1

-- Display: Leg Side
bist_borsaistanbul_geniuminet_glimpse_v2_7.leg_side.display = function(value)
  if value == "B" then
    return "Leg Side: As Defined (B)"
  end
  if value == "C" then
    return "Leg Side: Opposite (C)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
bist_borsaistanbul_geniuminet_glimpse_v2_7.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.leg_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Long Name
bist_borsaistanbul_geniuminet_glimpse_v2_7.long_name = {}

-- Size: Long Name
bist_borsaistanbul_geniuminet_glimpse_v2_7.long_name.size = 32

-- Display: Long Name
bist_borsaistanbul_geniuminet_glimpse_v2_7.long_name.display = function(value)
  return "Long Name: "..value
end

-- Dissect: Long Name
bist_borsaistanbul_geniuminet_glimpse_v2_7.long_name.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.long_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.long_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.long_name, range, value, display)

  return offset + length, value
end

-- Lot Type
bist_borsaistanbul_geniuminet_glimpse_v2_7.lot_type = {}

-- Size: Lot Type
bist_borsaistanbul_geniuminet_glimpse_v2_7.lot_type.size = 1

-- Display: Lot Type
bist_borsaistanbul_geniuminet_glimpse_v2_7.lot_type.display = function(value)
  if value == 2 then
    return "Lot Type: Round Lot (2)"
  end

  return "Lot Type: Unknown("..value..")"
end

-- Dissect: Lot Type
bist_borsaistanbul_geniuminet_glimpse_v2_7.lot_type.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.lot_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.lot_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.lot_type, range, value, display)

  return offset + length, value
end

-- Nanoseconds
bist_borsaistanbul_geniuminet_glimpse_v2_7.nanoseconds = {}

-- Size: Nanoseconds
bist_borsaistanbul_geniuminet_glimpse_v2_7.nanoseconds.size = 4

-- Display: Nanoseconds
bist_borsaistanbul_geniuminet_glimpse_v2_7.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
bist_borsaistanbul_geniuminet_glimpse_v2_7.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Nominal Value
bist_borsaistanbul_geniuminet_glimpse_v2_7.nominal_value = {}

-- Size: Nominal Value
bist_borsaistanbul_geniuminet_glimpse_v2_7.nominal_value.size = 8

-- Display: Nominal Value
bist_borsaistanbul_geniuminet_glimpse_v2_7.nominal_value.display = function(value)
  return "Nominal Value: "..value
end

-- Dissect: Nominal Value
bist_borsaistanbul_geniuminet_glimpse_v2_7.nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.nominal_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.nominal_value, range, value, display)

  return offset + length, value
end

-- Number Of Legs
bist_borsaistanbul_geniuminet_glimpse_v2_7.number_of_legs = {}

-- Size: Number Of Legs
bist_borsaistanbul_geniuminet_glimpse_v2_7.number_of_legs.size = 1

-- Display: Number Of Legs
bist_borsaistanbul_geniuminet_glimpse_v2_7.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
bist_borsaistanbul_geniuminet_glimpse_v2_7.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Odd Lot Size
bist_borsaistanbul_geniuminet_glimpse_v2_7.odd_lot_size = {}

-- Size: Odd Lot Size
bist_borsaistanbul_geniuminet_glimpse_v2_7.odd_lot_size.size = 4

-- Display: Odd Lot Size
bist_borsaistanbul_geniuminet_glimpse_v2_7.odd_lot_size.display = function(value)
  return "Odd Lot Size: "..value
end

-- Dissect: Odd Lot Size
bist_borsaistanbul_geniuminet_glimpse_v2_7.odd_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.odd_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.odd_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.odd_lot_size, range, value, display)

  return offset + length, value
end

-- Order Book Id
bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_id = {}

-- Size: Order Book Id
bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_id.size = 4

-- Display: Order Book Id
bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_id.display = function(value)
  return "Order Book Id: "..value
end

-- Dissect: Order Book Id
bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.order_book_id, range, value, display)

  return offset + length, value
end

-- Order Id
bist_borsaistanbul_geniuminet_glimpse_v2_7.order_id = {}

-- Size: Order Id
bist_borsaistanbul_geniuminet_glimpse_v2_7.order_id.size = 8

-- Display: Order Id
bist_borsaistanbul_geniuminet_glimpse_v2_7.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
bist_borsaistanbul_geniuminet_glimpse_v2_7.order_id.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.order_id, range, value, display)

  return offset + length, value
end

-- Packet Length
bist_borsaistanbul_geniuminet_glimpse_v2_7.packet_length = {}

-- Size: Packet Length
bist_borsaistanbul_geniuminet_glimpse_v2_7.packet_length.size = 2

-- Display: Packet Length
bist_borsaistanbul_geniuminet_glimpse_v2_7.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
bist_borsaistanbul_geniuminet_glimpse_v2_7.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Participant Id
bist_borsaistanbul_geniuminet_glimpse_v2_7.participant_id = {}

-- Size: Participant Id
bist_borsaistanbul_geniuminet_glimpse_v2_7.participant_id.size = 7

-- Display: Participant Id
bist_borsaistanbul_geniuminet_glimpse_v2_7.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
bist_borsaistanbul_geniuminet_glimpse_v2_7.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Password
bist_borsaistanbul_geniuminet_glimpse_v2_7.password = {}

-- Size: Password
bist_borsaistanbul_geniuminet_glimpse_v2_7.password.size = 10

-- Display: Password
bist_borsaistanbul_geniuminet_glimpse_v2_7.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
bist_borsaistanbul_geniuminet_glimpse_v2_7.password.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.password, range, value, display)

  return offset + length, value
end

-- Price
bist_borsaistanbul_geniuminet_glimpse_v2_7.price = {}

-- Size: Price
bist_borsaistanbul_geniuminet_glimpse_v2_7.price.size = 4

-- Display: Price
bist_borsaistanbul_geniuminet_glimpse_v2_7.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
bist_borsaistanbul_geniuminet_glimpse_v2_7.price.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.price, range, value, display)

  return offset + length, value
end

-- Price From
bist_borsaistanbul_geniuminet_glimpse_v2_7.price_from = {}

-- Size: Price From
bist_borsaistanbul_geniuminet_glimpse_v2_7.price_from.size = 4

-- Display: Price From
bist_borsaistanbul_geniuminet_glimpse_v2_7.price_from.display = function(value)
  return "Price From: "..value
end

-- Dissect: Price From
bist_borsaistanbul_geniuminet_glimpse_v2_7.price_from.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.price_from.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.price_from.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.price_from, range, value, display)

  return offset + length, value
end

-- Price To
bist_borsaistanbul_geniuminet_glimpse_v2_7.price_to = {}

-- Size: Price To
bist_borsaistanbul_geniuminet_glimpse_v2_7.price_to.size = 4

-- Display: Price To
bist_borsaistanbul_geniuminet_glimpse_v2_7.price_to.display = function(value)
  return "Price To: "..value
end

-- Dissect: Price To
bist_borsaistanbul_geniuminet_glimpse_v2_7.price_to.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.price_to.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.price_to.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.price_to, range, value, display)

  return offset + length, value
end

-- Put Or Call
bist_borsaistanbul_geniuminet_glimpse_v2_7.put_or_call = {}

-- Size: Put Or Call
bist_borsaistanbul_geniuminet_glimpse_v2_7.put_or_call.size = 1

-- Display: Put Or Call
bist_borsaistanbul_geniuminet_glimpse_v2_7.put_or_call.display = function(value)
  if value == 0 then
    return "Put Or Call: Undefined (0)"
  end
  if value == 1 then
    return "Put Or Call: Call (1)"
  end
  if value == 2 then
    return "Put Or Call: Put (2)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
bist_borsaistanbul_geniuminet_glimpse_v2_7.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.put_or_call.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Quantity
bist_borsaistanbul_geniuminet_glimpse_v2_7.quantity = {}

-- Size: Quantity
bist_borsaistanbul_geniuminet_glimpse_v2_7.quantity.size = 8

-- Display: Quantity
bist_borsaistanbul_geniuminet_glimpse_v2_7.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
bist_borsaistanbul_geniuminet_glimpse_v2_7.quantity.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.quantity, range, value, display)

  return offset + length, value
end

-- Ranking Sequence Number
bist_borsaistanbul_geniuminet_glimpse_v2_7.ranking_sequence_number = {}

-- Size: Ranking Sequence Number
bist_borsaistanbul_geniuminet_glimpse_v2_7.ranking_sequence_number.size = 4

-- Display: Ranking Sequence Number
bist_borsaistanbul_geniuminet_glimpse_v2_7.ranking_sequence_number.display = function(value)
  return "Ranking Sequence Number: "..value
end

-- Dissect: Ranking Sequence Number
bist_borsaistanbul_geniuminet_glimpse_v2_7.ranking_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.ranking_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.ranking_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.ranking_sequence_number, range, value, display)

  return offset + length, value
end

-- Ranking Time
bist_borsaistanbul_geniuminet_glimpse_v2_7.ranking_time = {}

-- Size: Ranking Time
bist_borsaistanbul_geniuminet_glimpse_v2_7.ranking_time.size = 8

-- Display: Ranking Time
bist_borsaistanbul_geniuminet_glimpse_v2_7.ranking_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Ranking Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Ranking Time
bist_borsaistanbul_geniuminet_glimpse_v2_7.ranking_time.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.ranking_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.ranking_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.ranking_time, range, value, display)

  return offset + length, value
end

-- Ranking Type
bist_borsaistanbul_geniuminet_glimpse_v2_7.ranking_type = {}

-- Size: Ranking Type
bist_borsaistanbul_geniuminet_glimpse_v2_7.ranking_type.size = 1

-- Display: Ranking Type
bist_borsaistanbul_geniuminet_glimpse_v2_7.ranking_type.display = function(value)
  if value == 1 then
    return "Ranking Type: Price Time (1)"
  end

  return "Ranking Type: Unknown("..value..")"
end

-- Dissect: Ranking Type
bist_borsaistanbul_geniuminet_glimpse_v2_7.ranking_type.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.ranking_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.ranking_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.ranking_type, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
bist_borsaistanbul_geniuminet_glimpse_v2_7.reject_reason_code = {}

-- Size: Reject Reason Code
bist_borsaistanbul_geniuminet_glimpse_v2_7.reject_reason_code.size = 1

-- Display: Reject Reason Code
bist_borsaistanbul_geniuminet_glimpse_v2_7.reject_reason_code.display = function(value)
  if value == "A" then
    return "Reject Reason Code: Not Authorized (A)"
  end
  if value == "S" then
    return "Reject Reason Code: Session Not Available (S)"
  end

  return "Reject Reason Code: Unknown("..value..")"
end

-- Dissect: Reject Reason Code
bist_borsaistanbul_geniuminet_glimpse_v2_7.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
bist_borsaistanbul_geniuminet_glimpse_v2_7.requested_sequence_number = {}

-- Size: Requested Sequence Number
bist_borsaistanbul_geniuminet_glimpse_v2_7.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
bist_borsaistanbul_geniuminet_glimpse_v2_7.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
bist_borsaistanbul_geniuminet_glimpse_v2_7.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
bist_borsaistanbul_geniuminet_glimpse_v2_7.requested_session = {}

-- Size: Requested Session
bist_borsaistanbul_geniuminet_glimpse_v2_7.requested_session.size = 10

-- Display: Requested Session
bist_borsaistanbul_geniuminet_glimpse_v2_7.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
bist_borsaistanbul_geniuminet_glimpse_v2_7.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.requested_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved 4
bist_borsaistanbul_geniuminet_glimpse_v2_7.reserved_4 = {}

-- Size: Reserved 4
bist_borsaistanbul_geniuminet_glimpse_v2_7.reserved_4.size = 4

-- Display: Reserved 4
bist_borsaistanbul_geniuminet_glimpse_v2_7.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
bist_borsaistanbul_geniuminet_glimpse_v2_7.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Round Lot Size
bist_borsaistanbul_geniuminet_glimpse_v2_7.round_lot_size = {}

-- Size: Round Lot Size
bist_borsaistanbul_geniuminet_glimpse_v2_7.round_lot_size.size = 4

-- Display: Round Lot Size
bist_borsaistanbul_geniuminet_glimpse_v2_7.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
bist_borsaistanbul_geniuminet_glimpse_v2_7.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Second
bist_borsaistanbul_geniuminet_glimpse_v2_7.second = {}

-- Size: Second
bist_borsaistanbul_geniuminet_glimpse_v2_7.second.size = 4

-- Store: Second
bist_borsaistanbul_geniuminet_glimpse_v2_7.second.current = nil

-- Generated: Second
bist_borsaistanbul_geniuminet_glimpse_v2_7.second.generated = function(value, range, packet, parent)
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.second.display(value)
  local second = parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.second, range, value, display)
  second:set_generated()
end

-- Display: Second
bist_borsaistanbul_geniuminet_glimpse_v2_7.second.display = function(value)
  -- Parse unix seconds timestamp
  return "Second: "..os.date("%Y-%m-%d %H:%M:%S", value)
end

-- Dissect: Second
bist_borsaistanbul_geniuminet_glimpse_v2_7.second.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.second.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.second.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.second, range, value, display)

  return offset + length, value
end

-- Sequence Number
bist_borsaistanbul_geniuminet_glimpse_v2_7.sequence_number = {}

-- Size: Sequence Number
bist_borsaistanbul_geniuminet_glimpse_v2_7.sequence_number.size = 20

-- Display: Sequence Number
bist_borsaistanbul_geniuminet_glimpse_v2_7.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
bist_borsaistanbul_geniuminet_glimpse_v2_7.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.sequence_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
bist_borsaistanbul_geniuminet_glimpse_v2_7.sequenced_message_type = {}

-- Size: Sequenced Message Type
bist_borsaistanbul_geniuminet_glimpse_v2_7.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
bist_borsaistanbul_geniuminet_glimpse_v2_7.sequenced_message_type.display = function(value)
  if value == "T" then
    return "Sequenced Message Type: Seconds Message (T)"
  end
  if value == "R" then
    return "Sequenced Message Type: Order Book Directory (R)"
  end
  if value == "M" then
    return "Sequenced Message Type: Combination Order Book Leg (M)"
  end
  if value == "L" then
    return "Sequenced Message Type: Tick Size Table Entry (L)"
  end
  if value == "V" then
    return "Sequenced Message Type: Short Sell Status (V)"
  end
  if value == "O" then
    return "Sequenced Message Type: Order Book State Message (O)"
  end
  if value == "A" then
    return "Sequenced Message Type: Add Order No Mpid Attribution (A)"
  end
  if value == "F" then
    return "Sequenced Message Type: Add Order With Mpid Attribution (F)"
  end
  if value == "G" then
    return "Sequenced Message Type: End Of Snapshot Message (G)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
bist_borsaistanbul_geniuminet_glimpse_v2_7.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
bist_borsaistanbul_geniuminet_glimpse_v2_7.server_packet_type = {}

-- Size: Server Packet Type
bist_borsaistanbul_geniuminet_glimpse_v2_7.server_packet_type.size = 1

-- Display: Server Packet Type
bist_borsaistanbul_geniuminet_glimpse_v2_7.server_packet_type.display = function(value)
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
bist_borsaistanbul_geniuminet_glimpse_v2_7.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Session
bist_borsaistanbul_geniuminet_glimpse_v2_7.session = {}

-- Size: Session
bist_borsaistanbul_geniuminet_glimpse_v2_7.session.size = 10

-- Display: Session
bist_borsaistanbul_geniuminet_glimpse_v2_7.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
bist_borsaistanbul_geniuminet_glimpse_v2_7.session.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.session, range, value, display)

  return offset + length, value
end

-- Short Sale Restriction
bist_borsaistanbul_geniuminet_glimpse_v2_7.short_sale_restriction = {}

-- Size: Short Sale Restriction
bist_borsaistanbul_geniuminet_glimpse_v2_7.short_sale_restriction.size = 1

-- Display: Short Sale Restriction
bist_borsaistanbul_geniuminet_glimpse_v2_7.short_sale_restriction.display = function(value)
  if value == 0 then
    return "Short Sale Restriction: No Restrictions (0)"
  end
  if value == 1 then
    return "Short Sale Restriction: Short Selling Not Allowed (1)"
  end
  if value == 2 then
    return "Short Sale Restriction: Short Selling Allowed With Up Tick Rule (2)"
  end

  return "Short Sale Restriction: Unknown("..value..")"
end

-- Dissect: Short Sale Restriction
bist_borsaistanbul_geniuminet_glimpse_v2_7.short_sale_restriction.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.short_sale_restriction.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.short_sale_restriction.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.short_sale_restriction, range, value, display)

  return offset + length, value
end

-- Side
bist_borsaistanbul_geniuminet_glimpse_v2_7.side = {}

-- Size: Side
bist_borsaistanbul_geniuminet_glimpse_v2_7.side.size = 1

-- Display: Side
bist_borsaistanbul_geniuminet_glimpse_v2_7.side.display = function(value)
  if value == "B" then
    return "Side: Buy Order (B)"
  end
  if value == "S" then
    return "Side: Sell Order (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
bist_borsaistanbul_geniuminet_glimpse_v2_7.side.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.side, range, value, display)

  return offset + length, value
end

-- State Name
bist_borsaistanbul_geniuminet_glimpse_v2_7.state_name = {}

-- Size: State Name
bist_borsaistanbul_geniuminet_glimpse_v2_7.state_name.size = 20

-- Display: State Name
bist_borsaistanbul_geniuminet_glimpse_v2_7.state_name.display = function(value)
  return "State Name: "..value
end

-- Dissect: State Name
bist_borsaistanbul_geniuminet_glimpse_v2_7.state_name.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.state_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.state_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.state_name, range, value, display)

  return offset + length, value
end

-- Strike Price
bist_borsaistanbul_geniuminet_glimpse_v2_7.strike_price = {}

-- Size: Strike Price
bist_borsaistanbul_geniuminet_glimpse_v2_7.strike_price.size = 4

-- Display: Strike Price
bist_borsaistanbul_geniuminet_glimpse_v2_7.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
bist_borsaistanbul_geniuminet_glimpse_v2_7.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.strike_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Symbol
bist_borsaistanbul_geniuminet_glimpse_v2_7.symbol = {}

-- Size: Symbol
bist_borsaistanbul_geniuminet_glimpse_v2_7.symbol.size = 32

-- Display: Symbol
bist_borsaistanbul_geniuminet_glimpse_v2_7.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
bist_borsaistanbul_geniuminet_glimpse_v2_7.symbol.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.symbol, range, value, display)

  return offset + length, value
end

-- Text
bist_borsaistanbul_geniuminet_glimpse_v2_7.text = {}

-- Size: Text
bist_borsaistanbul_geniuminet_glimpse_v2_7.text.size = 1

-- Display: Text
bist_borsaistanbul_geniuminet_glimpse_v2_7.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
bist_borsaistanbul_geniuminet_glimpse_v2_7.text.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.text, range, value, display)

  return offset + length, value
end

-- Tick Size
bist_borsaistanbul_geniuminet_glimpse_v2_7.tick_size = {}

-- Size: Tick Size
bist_borsaistanbul_geniuminet_glimpse_v2_7.tick_size.size = 8

-- Display: Tick Size
bist_borsaistanbul_geniuminet_glimpse_v2_7.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Dissect: Tick Size
bist_borsaistanbul_geniuminet_glimpse_v2_7.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.tick_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Trading Currency
bist_borsaistanbul_geniuminet_glimpse_v2_7.trading_currency = {}

-- Size: Trading Currency
bist_borsaistanbul_geniuminet_glimpse_v2_7.trading_currency.size = 3

-- Display: Trading Currency
bist_borsaistanbul_geniuminet_glimpse_v2_7.trading_currency.display = function(value)
  return "Trading Currency: "..value
end

-- Dissect: Trading Currency
bist_borsaistanbul_geniuminet_glimpse_v2_7.trading_currency.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.trading_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.trading_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.trading_currency, range, value, display)

  return offset + length, value
end

-- Underlying Order Book Id
bist_borsaistanbul_geniuminet_glimpse_v2_7.underlying_order_book_id = {}

-- Size: Underlying Order Book Id
bist_borsaistanbul_geniuminet_glimpse_v2_7.underlying_order_book_id.size = 4

-- Display: Underlying Order Book Id
bist_borsaistanbul_geniuminet_glimpse_v2_7.underlying_order_book_id.display = function(value)
  return "Underlying Order Book Id: "..value
end

-- Dissect: Underlying Order Book Id
bist_borsaistanbul_geniuminet_glimpse_v2_7.underlying_order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.underlying_order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.underlying_order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.underlying_order_book_id, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
bist_borsaistanbul_geniuminet_glimpse_v2_7.unsequenced_message = {}

-- Display: Unsequenced Message
bist_borsaistanbul_geniuminet_glimpse_v2_7.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
bist_borsaistanbul_geniuminet_glimpse_v2_7.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.unsequenced_message, range, value, display)

  return offset + size, value
end

-- Unsequenced Message Type
bist_borsaistanbul_geniuminet_glimpse_v2_7.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
bist_borsaistanbul_geniuminet_glimpse_v2_7.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
bist_borsaistanbul_geniuminet_glimpse_v2_7.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
bist_borsaistanbul_geniuminet_glimpse_v2_7.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
bist_borsaistanbul_geniuminet_glimpse_v2_7.username = {}

-- Size: Username
bist_borsaistanbul_geniuminet_glimpse_v2_7.username.size = 6

-- Display: Username
bist_borsaistanbul_geniuminet_glimpse_v2_7.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
bist_borsaistanbul_geniuminet_glimpse_v2_7.username.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.username, range, value, display)

  return offset + length, value
end

-- Timestamp
bist_borsaistanbul_geniuminet_glimpse_v2_7.timestamp = {}

-- Translate: Timestamp
bist_borsaistanbul_geniuminet_glimpse_v2_7.timestamp.translate = function(nanoseconds, stored_second)
  return UInt64.new(stored_second * 1000000000 + nanoseconds)
end

-- Display: Timestamp
bist_borsaistanbul_geniuminet_glimpse_v2_7.timestamp.display = function(nanoseconds, stored_second)
  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", stored_second)..string.format("%09d", nanoseconds)
end

-- Composite: Timestamp
bist_borsaistanbul_geniuminet_glimpse_v2_7.timestamp.composite = function(buffer, offset, stored_second, packet, parent)
  local length = bist_borsaistanbul_geniuminet_glimpse_v2_7.nanoseconds.size
  local range = buffer(offset, length)
  local nanoseconds = range:uint()
  local value = bist_borsaistanbul_geniuminet_glimpse_v2_7.timestamp.translate(nanoseconds, stored_second)
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.timestamp.display(nanoseconds, stored_second, packet)
  parent = parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.timestamp, range, value, display)

  bist_borsaistanbul_geniuminet_glimpse_v2_7.second.generated(stored_second, range, packet, parent)

  display = bist_borsaistanbul_geniuminet_glimpse_v2_7.nanoseconds.display(nanoseconds)
  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.nanoseconds, range, nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
bist_borsaistanbul_geniuminet_glimpse_v2_7.timestamp.dissect = function(buffer, offset, packet, parent)
  if bist_borsaistanbul_geniuminet_glimpse_v2_7.format_timestamp then
    local stored_second = bist_borsaistanbul_geniuminet_glimpse_v2_7.second.current

    if stored_second ~= nil then
      return bist_borsaistanbul_geniuminet_glimpse_v2_7.timestamp.composite(buffer, offset, stored_second, packet, parent)
    end
  end

  return bist_borsaistanbul_geniuminet_glimpse_v2_7.nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Bist BorsaIstanbul GeniumInet Glimpse 2.7
-----------------------------------------------------------------------

-- End Of Session
bist_borsaistanbul_geniuminet_glimpse_v2_7.end_of_session = {}

-- Display: End Of Session
bist_borsaistanbul_geniuminet_glimpse_v2_7.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
bist_borsaistanbul_geniuminet_glimpse_v2_7.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
bist_borsaistanbul_geniuminet_glimpse_v2_7.server_heartbeat = {}

-- Display: Server Heartbeat
bist_borsaistanbul_geniuminet_glimpse_v2_7.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
bist_borsaistanbul_geniuminet_glimpse_v2_7.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- End Of Snapshot Message
bist_borsaistanbul_geniuminet_glimpse_v2_7.end_of_snapshot_message = {}

-- Size: End Of Snapshot Message
bist_borsaistanbul_geniuminet_glimpse_v2_7.end_of_snapshot_message.size =
  bist_borsaistanbul_geniuminet_glimpse_v2_7.sequence_number.size

-- Display: End Of Snapshot Message
bist_borsaistanbul_geniuminet_glimpse_v2_7.end_of_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Snapshot Message
bist_borsaistanbul_geniuminet_glimpse_v2_7.end_of_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: Alpha
  index, sequence_number = bist_borsaistanbul_geniuminet_glimpse_v2_7.sequence_number.dissect(buffer, index, packet, parent)

  -- Store Sequence Number Value
  bist_borsaistanbul_geniuminet_glimpse_v2_7.sequence_number.current = sequence_number

  if not packet.visited then
    bist_borsaistanbul_geniuminet_glimpse_v2_7.conversation.current.sequence_number.last = sequence_number
  end

  return index
end

-- Dissect: End Of Snapshot Message
bist_borsaistanbul_geniuminet_glimpse_v2_7.end_of_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.end_of_snapshot_message, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_glimpse_v2_7.end_of_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.end_of_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.end_of_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Attributes
bist_borsaistanbul_geniuminet_glimpse_v2_7.order_attributes = {}

-- Size: Order Attributes
bist_borsaistanbul_geniuminet_glimpse_v2_7.order_attributes.size = 2

-- Display: Order Attributes
bist_borsaistanbul_geniuminet_glimpse_v2_7.order_attributes.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Bait Implied Order flag set?
  if bit.band(value, 0x2000) ~= 0 then
    flags[#flags + 1] = "Bait Implied Order"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Order Attributes
bist_borsaistanbul_geniuminet_glimpse_v2_7.order_attributes.bits = function(range, value, packet, parent)

  -- Reserved 13: 13 Bit
  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.reserved_13, range, value)

  -- Bait Implied Order: 1 Bit
  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.bait_implied_order, range, value)

  -- Reserved 2: 2 Bit
  parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.reserved_2, range, value)
end

-- Dissect: Order Attributes
bist_borsaistanbul_geniuminet_glimpse_v2_7.order_attributes.dissect = function(buffer, offset, packet, parent)
  local size = bist_borsaistanbul_geniuminet_glimpse_v2_7.order_attributes.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.order_attributes.display(range, value, packet, parent)
  local element = parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.order_attributes, range, display)

  if show.structs then
    bist_borsaistanbul_geniuminet_glimpse_v2_7.order_attributes.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Add Order With Mpid Attribution
bist_borsaistanbul_geniuminet_glimpse_v2_7.add_order_with_mpid_attribution = {}

-- Size: Add Order With Mpid Attribution
bist_borsaistanbul_geniuminet_glimpse_v2_7.add_order_with_mpid_attribution.size =
  bist_borsaistanbul_geniuminet_glimpse_v2_7.nanoseconds.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.order_id.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_id.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.side.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.reserved_4.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.quantity.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.price.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.order_attributes.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.lot_type.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.participant_id.size

-- Display: Add Order With Mpid Attribution
bist_borsaistanbul_geniuminet_glimpse_v2_7.add_order_with_mpid_attribution.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order With Mpid Attribution
bist_borsaistanbul_geniuminet_glimpse_v2_7.add_order_with_mpid_attribution.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = bist_borsaistanbul_geniuminet_glimpse_v2_7.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = bist_borsaistanbul_geniuminet_glimpse_v2_7.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = bist_borsaistanbul_geniuminet_glimpse_v2_7.side.dissect(buffer, index, packet, parent)

  -- Reserved 4: Reserved
  index, reserved_4 = bist_borsaistanbul_geniuminet_glimpse_v2_7.reserved_4.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = bist_borsaistanbul_geniuminet_glimpse_v2_7.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = bist_borsaistanbul_geniuminet_glimpse_v2_7.price.dissect(buffer, index, packet, parent)

  -- Order Attributes: Struct of 3 fields
  index, order_attributes = bist_borsaistanbul_geniuminet_glimpse_v2_7.order_attributes.dissect(buffer, index, packet, parent)

  -- Lot Type: Numeric
  index, lot_type = bist_borsaistanbul_geniuminet_glimpse_v2_7.lot_type.dissect(buffer, index, packet, parent)

  -- Participant Id: Alpha
  index, participant_id = bist_borsaistanbul_geniuminet_glimpse_v2_7.participant_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order With Mpid Attribution
bist_borsaistanbul_geniuminet_glimpse_v2_7.add_order_with_mpid_attribution.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.add_order_with_mpid_attribution, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_glimpse_v2_7.add_order_with_mpid_attribution.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.add_order_with_mpid_attribution.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.add_order_with_mpid_attribution.fields(buffer, offset, packet, parent)
  end
end

-- Add Order No Mpid Attribution
bist_borsaistanbul_geniuminet_glimpse_v2_7.add_order_no_mpid_attribution = {}

-- Size: Add Order No Mpid Attribution
bist_borsaistanbul_geniuminet_glimpse_v2_7.add_order_no_mpid_attribution.size =
  bist_borsaistanbul_geniuminet_glimpse_v2_7.nanoseconds.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.order_id.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_id.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.side.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.ranking_sequence_number.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.quantity.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.price.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.order_attributes.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.lot_type.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.ranking_time.size

-- Display: Add Order No Mpid Attribution
bist_borsaistanbul_geniuminet_glimpse_v2_7.add_order_no_mpid_attribution.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order No Mpid Attribution
bist_borsaistanbul_geniuminet_glimpse_v2_7.add_order_no_mpid_attribution.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = bist_borsaistanbul_geniuminet_glimpse_v2_7.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = bist_borsaistanbul_geniuminet_glimpse_v2_7.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = bist_borsaistanbul_geniuminet_glimpse_v2_7.side.dissect(buffer, index, packet, parent)

  -- Ranking Sequence Number: Numeric
  index, ranking_sequence_number = bist_borsaistanbul_geniuminet_glimpse_v2_7.ranking_sequence_number.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = bist_borsaistanbul_geniuminet_glimpse_v2_7.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = bist_borsaistanbul_geniuminet_glimpse_v2_7.price.dissect(buffer, index, packet, parent)

  -- Order Attributes: Struct of 3 fields
  index, order_attributes = bist_borsaistanbul_geniuminet_glimpse_v2_7.order_attributes.dissect(buffer, index, packet, parent)

  -- Lot Type: Numeric
  index, lot_type = bist_borsaistanbul_geniuminet_glimpse_v2_7.lot_type.dissect(buffer, index, packet, parent)

  -- Ranking Time: Numeric
  index, ranking_time = bist_borsaistanbul_geniuminet_glimpse_v2_7.ranking_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order No Mpid Attribution
bist_borsaistanbul_geniuminet_glimpse_v2_7.add_order_no_mpid_attribution.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.add_order_no_mpid_attribution, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_glimpse_v2_7.add_order_no_mpid_attribution.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.add_order_no_mpid_attribution.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.add_order_no_mpid_attribution.fields(buffer, offset, packet, parent)
  end
end

-- Order Book State Message
bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_state_message = {}

-- Size: Order Book State Message
bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_state_message.size =
  bist_borsaistanbul_geniuminet_glimpse_v2_7.nanoseconds.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_id.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.state_name.size

-- Display: Order Book State Message
bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book State Message
bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = bist_borsaistanbul_geniuminet_glimpse_v2_7.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_id.dissect(buffer, index, packet, parent)

  -- State Name: Alpha
  index, state_name = bist_borsaistanbul_geniuminet_glimpse_v2_7.state_name.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book State Message
bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.order_book_state_message, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Sell Status
bist_borsaistanbul_geniuminet_glimpse_v2_7.short_sell_status = {}

-- Size: Short Sell Status
bist_borsaistanbul_geniuminet_glimpse_v2_7.short_sell_status.size =
  bist_borsaistanbul_geniuminet_glimpse_v2_7.nanoseconds.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_id.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.short_sale_restriction.size

-- Display: Short Sell Status
bist_borsaistanbul_geniuminet_glimpse_v2_7.short_sell_status.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Sell Status
bist_borsaistanbul_geniuminet_glimpse_v2_7.short_sell_status.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = bist_borsaistanbul_geniuminet_glimpse_v2_7.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_id.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction: Numeric
  index, short_sale_restriction = bist_borsaistanbul_geniuminet_glimpse_v2_7.short_sale_restriction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Sell Status
bist_borsaistanbul_geniuminet_glimpse_v2_7.short_sell_status.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.short_sell_status, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_glimpse_v2_7.short_sell_status.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.short_sell_status.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.short_sell_status.fields(buffer, offset, packet, parent)
  end
end

-- Tick Size Table Entry
bist_borsaistanbul_geniuminet_glimpse_v2_7.tick_size_table_entry = {}

-- Size: Tick Size Table Entry
bist_borsaistanbul_geniuminet_glimpse_v2_7.tick_size_table_entry.size =
  bist_borsaistanbul_geniuminet_glimpse_v2_7.nanoseconds.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_id.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.tick_size.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.price_from.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.price_to.size

-- Display: Tick Size Table Entry
bist_borsaistanbul_geniuminet_glimpse_v2_7.tick_size_table_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Size Table Entry
bist_borsaistanbul_geniuminet_glimpse_v2_7.tick_size_table_entry.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = bist_borsaistanbul_geniuminet_glimpse_v2_7.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_id.dissect(buffer, index, packet, parent)

  -- Tick Size: Numeric
  index, tick_size = bist_borsaistanbul_geniuminet_glimpse_v2_7.tick_size.dissect(buffer, index, packet, parent)

  -- Price From: Price
  index, price_from = bist_borsaistanbul_geniuminet_glimpse_v2_7.price_from.dissect(buffer, index, packet, parent)

  -- Price To: Price
  index, price_to = bist_borsaistanbul_geniuminet_glimpse_v2_7.price_to.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Size Table Entry
bist_borsaistanbul_geniuminet_glimpse_v2_7.tick_size_table_entry.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.tick_size_table_entry, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_glimpse_v2_7.tick_size_table_entry.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.tick_size_table_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.tick_size_table_entry.fields(buffer, offset, packet, parent)
  end
end

-- Combination Order Book Leg
bist_borsaistanbul_geniuminet_glimpse_v2_7.combination_order_book_leg = {}

-- Size: Combination Order Book Leg
bist_borsaistanbul_geniuminet_glimpse_v2_7.combination_order_book_leg.size =
  bist_borsaistanbul_geniuminet_glimpse_v2_7.nanoseconds.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.combination_order_book_id.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.leg_order_book_id.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.leg_side.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.leg_ratio.size

-- Display: Combination Order Book Leg
bist_borsaistanbul_geniuminet_glimpse_v2_7.combination_order_book_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Combination Order Book Leg
bist_borsaistanbul_geniuminet_glimpse_v2_7.combination_order_book_leg.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = bist_borsaistanbul_geniuminet_glimpse_v2_7.timestamp.dissect(buffer, index, packet, parent)

  -- Combination Order Book Id: Numeric
  index, combination_order_book_id = bist_borsaistanbul_geniuminet_glimpse_v2_7.combination_order_book_id.dissect(buffer, index, packet, parent)

  -- Leg Order Book Id: Numeric
  index, leg_order_book_id = bist_borsaistanbul_geniuminet_glimpse_v2_7.leg_order_book_id.dissect(buffer, index, packet, parent)

  -- Leg Side: Alpha
  index, leg_side = bist_borsaistanbul_geniuminet_glimpse_v2_7.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Numeric
  index, leg_ratio = bist_borsaistanbul_geniuminet_glimpse_v2_7.leg_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Combination Order Book Leg
bist_borsaistanbul_geniuminet_glimpse_v2_7.combination_order_book_leg.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.combination_order_book_leg, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_glimpse_v2_7.combination_order_book_leg.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.combination_order_book_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.combination_order_book_leg.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Directory
bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_directory = {}

-- Size: Order Book Directory
bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_directory.size =
  bist_borsaistanbul_geniuminet_glimpse_v2_7.nanoseconds.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_id.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.symbol.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.long_name.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.isin.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.financial_product.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.trading_currency.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.decimals_in_price.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.decimals_in_nominal_value.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.odd_lot_size.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.round_lot_size.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.block_lot_size.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.nominal_value.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.number_of_legs.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.underlying_order_book_id.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.strike_price.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.expiration_date.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.decimals_in_strike_price.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.put_or_call.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.ranking_type.size

-- Display: Order Book Directory
bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_directory.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Directory
bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_directory.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = bist_borsaistanbul_geniuminet_glimpse_v2_7.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = bist_borsaistanbul_geniuminet_glimpse_v2_7.symbol.dissect(buffer, index, packet, parent)

  -- Long Name: Alpha
  index, long_name = bist_borsaistanbul_geniuminet_glimpse_v2_7.long_name.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = bist_borsaistanbul_geniuminet_glimpse_v2_7.isin.dissect(buffer, index, packet, parent)

  -- Financial Product: Numeric
  index, financial_product = bist_borsaistanbul_geniuminet_glimpse_v2_7.financial_product.dissect(buffer, index, packet, parent)

  -- Trading Currency: Alpha
  index, trading_currency = bist_borsaistanbul_geniuminet_glimpse_v2_7.trading_currency.dissect(buffer, index, packet, parent)

  -- Decimals In Price: Numeric
  index, decimals_in_price = bist_borsaistanbul_geniuminet_glimpse_v2_7.decimals_in_price.dissect(buffer, index, packet, parent)

  -- Decimals In Nominal Value: Numeric
  index, decimals_in_nominal_value = bist_borsaistanbul_geniuminet_glimpse_v2_7.decimals_in_nominal_value.dissect(buffer, index, packet, parent)

  -- Odd Lot Size: Numeric
  index, odd_lot_size = bist_borsaistanbul_geniuminet_glimpse_v2_7.odd_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Numeric
  index, round_lot_size = bist_borsaistanbul_geniuminet_glimpse_v2_7.round_lot_size.dissect(buffer, index, packet, parent)

  -- Block Lot Size: Numeric
  index, block_lot_size = bist_borsaistanbul_geniuminet_glimpse_v2_7.block_lot_size.dissect(buffer, index, packet, parent)

  -- Nominal Value: Numeric
  index, nominal_value = bist_borsaistanbul_geniuminet_glimpse_v2_7.nominal_value.dissect(buffer, index, packet, parent)

  -- Number Of Legs: Numeric
  index, number_of_legs = bist_borsaistanbul_geniuminet_glimpse_v2_7.number_of_legs.dissect(buffer, index, packet, parent)

  -- Underlying Order Book Id: Numeric
  index, underlying_order_book_id = bist_borsaistanbul_geniuminet_glimpse_v2_7.underlying_order_book_id.dissect(buffer, index, packet, parent)

  -- Strike Price: Price
  index, strike_price = bist_borsaistanbul_geniuminet_glimpse_v2_7.strike_price.dissect(buffer, index, packet, parent)

  -- Expiration Date: Numeric
  index, expiration_date = bist_borsaistanbul_geniuminet_glimpse_v2_7.expiration_date.dissect(buffer, index, packet, parent)

  -- Decimals In Strike Price: Numeric
  index, decimals_in_strike_price = bist_borsaistanbul_geniuminet_glimpse_v2_7.decimals_in_strike_price.dissect(buffer, index, packet, parent)

  -- Put Or Call: Numeric
  index, put_or_call = bist_borsaistanbul_geniuminet_glimpse_v2_7.put_or_call.dissect(buffer, index, packet, parent)

  -- Ranking Type: Numeric
  index, ranking_type = bist_borsaistanbul_geniuminet_glimpse_v2_7.ranking_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Directory
bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_directory.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.order_book_directory, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_directory.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_directory.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_directory.fields(buffer, offset, packet, parent)
  end
end

-- Seconds Message
bist_borsaistanbul_geniuminet_glimpse_v2_7.seconds_message = {}

-- Size: Seconds Message
bist_borsaistanbul_geniuminet_glimpse_v2_7.seconds_message.size =
  bist_borsaistanbul_geniuminet_glimpse_v2_7.second.size

-- Display: Seconds Message
bist_borsaistanbul_geniuminet_glimpse_v2_7.seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seconds Message
bist_borsaistanbul_geniuminet_glimpse_v2_7.seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: Numeric
  index, second = bist_borsaistanbul_geniuminet_glimpse_v2_7.second.dissect(buffer, index, packet, parent)

  -- Store Second Value
  bist_borsaistanbul_geniuminet_glimpse_v2_7.second.current = second

  if not packet.visited then
    bist_borsaistanbul_geniuminet_glimpse_v2_7.conversation.current.second.last = second
  end

  return index
end

-- Dissect: Seconds Message
bist_borsaistanbul_geniuminet_glimpse_v2_7.seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.seconds_message, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_glimpse_v2_7.seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
bist_borsaistanbul_geniuminet_glimpse_v2_7.sequenced_message = {}

-- Dissect: Sequenced Message
bist_borsaistanbul_geniuminet_glimpse_v2_7.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect Seconds Message
  if sequenced_message_type == "T" then
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.seconds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Directory
  if sequenced_message_type == "R" then
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_directory.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Combination Order Book Leg
  if sequenced_message_type == "M" then
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.combination_order_book_leg.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Size Table Entry
  if sequenced_message_type == "L" then
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.tick_size_table_entry.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Sell Status
  if sequenced_message_type == "V" then
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.short_sell_status.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book State Message
  if sequenced_message_type == "O" then
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.order_book_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order No Mpid Attribution
  if sequenced_message_type == "A" then
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.add_order_no_mpid_attribution.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order With Mpid Attribution
  if sequenced_message_type == "F" then
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.add_order_with_mpid_attribution.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Snapshot Message
  if sequenced_message_type == "G" then
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.end_of_snapshot_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = bist_borsaistanbul_geniuminet_glimpse_v2_7.conversation.current
  if flow ~= nil then
    local memo = flow.sequence.frames[packet.number]
    if not packet.visited then
      if flow.sequence.next == nil then
        flow.sequence.next = tonumber(bist_borsaistanbul_geniuminet_glimpse_v2_7.sequence_number.current)
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
          local sequence = parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if bist_borsaistanbul_geniuminet_glimpse_v2_7.stream_frame ~= packet.number or bist_borsaistanbul_geniuminet_glimpse_v2_7.stream_occurrence >= #memo then
          bist_borsaistanbul_geniuminet_glimpse_v2_7.stream_frame = packet.number
          bist_borsaistanbul_geniuminet_glimpse_v2_7.stream_occurrence = 0
        end
        bist_borsaistanbul_geniuminet_glimpse_v2_7.stream_occurrence = bist_borsaistanbul_geniuminet_glimpse_v2_7.stream_occurrence + 1
        local value = memo[bist_borsaistanbul_geniuminet_glimpse_v2_7.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 9 values
  index, sequenced_message_type = bist_borsaistanbul_geniuminet_glimpse_v2_7.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 9 branches
  index = bist_borsaistanbul_geniuminet_glimpse_v2_7.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = bist_borsaistanbul_geniuminet_glimpse_v2_7.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.sequenced_data_packet, buffer(offset, 0))
    local current = bist_borsaistanbul_geniuminet_glimpse_v2_7.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bist_borsaistanbul_geniuminet_glimpse_v2_7.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.login_rejected_packet = {}

-- Size: Login Rejected Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.login_rejected_packet.size =
  bist_borsaistanbul_geniuminet_glimpse_v2_7.reject_reason_code.size

-- Display: Login Rejected Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String Enum with 2 values
  index, reject_reason_code = bist_borsaistanbul_geniuminet_glimpse_v2_7.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.login_rejected_packet, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_glimpse_v2_7.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.login_accepted_packet = {}

-- Size: Login Accepted Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.login_accepted_packet.size =
  bist_borsaistanbul_geniuminet_glimpse_v2_7.session.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.sequence_number.size

-- Display: Login Accepted Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = bist_borsaistanbul_geniuminet_glimpse_v2_7.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: Alpha
  index, sequence_number = bist_borsaistanbul_geniuminet_glimpse_v2_7.sequence_number.dissect(buffer, index, packet, parent)

  -- Store Sequence Number Value
  bist_borsaistanbul_geniuminet_glimpse_v2_7.sequence_number.current = sequence_number

  if not packet.visited then
    bist_borsaistanbul_geniuminet_glimpse_v2_7.conversation.current.sequence_number.last = sequence_number
  end

  return index
end

-- Dissect: Login Accepted Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.login_accepted_packet, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_glimpse_v2_7.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.debug_packet = {}

-- Size: Debug Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.debug_packet.size =
  bist_borsaistanbul_geniuminet_glimpse_v2_7.text.size

-- Display: Debug Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = bist_borsaistanbul_geniuminet_glimpse_v2_7.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.debug_packet, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_glimpse_v2_7.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
bist_borsaistanbul_geniuminet_glimpse_v2_7.server_payload = {}

-- Dissect: Server Payload
bist_borsaistanbul_geniuminet_glimpse_v2_7.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  -- Dissect Debug Packet
  if server_packet_type == "+" then
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if server_packet_type == "A" then
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if server_packet_type == "J" then
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if server_packet_type == "S" then
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat
  if server_packet_type == "H" then
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.server_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if server_packet_type == "Z" then
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.end_of_session.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
bist_borsaistanbul_geniuminet_glimpse_v2_7.server_packet_header = {}

-- Size: Server Packet Header
bist_borsaistanbul_geniuminet_glimpse_v2_7.server_packet_header.size =
  bist_borsaistanbul_geniuminet_glimpse_v2_7.packet_length.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.server_packet_type.size

-- Display: Server Packet Header
bist_borsaistanbul_geniuminet_glimpse_v2_7.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
bist_borsaistanbul_geniuminet_glimpse_v2_7.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = bist_borsaistanbul_geniuminet_glimpse_v2_7.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = bist_borsaistanbul_geniuminet_glimpse_v2_7.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
bist_borsaistanbul_geniuminet_glimpse_v2_7.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.server_packet_header, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_glimpse_v2_7.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = bist_borsaistanbul_geniuminet_glimpse_v2_7.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = bist_borsaistanbul_geniuminet_glimpse_v2_7.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = bist_borsaistanbul_geniuminet_glimpse_v2_7.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bist_borsaistanbul_geniuminet_glimpse_v2_7.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < bist_borsaistanbul_geniuminet_glimpse_v2_7.server_packet_header.size then
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
bist_borsaistanbul_geniuminet_glimpse_v2_7.server_packet = {}

-- Verify required size of Tcp packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.server_packet.requiredsize = function(buffer)
  return buffer:len() >= bist_borsaistanbul_geniuminet_glimpse_v2_7.server_packet_header.size
end

-- Dissect Server Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = bist_borsaistanbul_geniuminet_glimpse_v2_7.conversation.data(packet)
  if not packet.visited then
    data.sequence_number.frames[packet.number] = data.sequence_number.last
    data.second.frames[packet.number] = data.second.last
    data.sequence_number.frames[packet.number] = data.sequence_number.last
  end
  bist_borsaistanbul_geniuminet_glimpse_v2_7.sequence_number.current = data.sequence_number.frames[packet.number]
  bist_borsaistanbul_geniuminet_glimpse_v2_7.second.current = data.second.frames[packet.number]
  bist_borsaistanbul_geniuminet_glimpse_v2_7.sequence_number.current = data.sequence_number.frames[packet.number]
  bist_borsaistanbul_geniuminet_glimpse_v2_7.conversation.current = data

  local index = 0

  -- Dependency for Server Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Server Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_soup_bin_tcp_packet = server_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = bist_borsaistanbul_geniuminet_glimpse_v2_7.server_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_server_soup_bin_tcp_packet)
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
bist_borsaistanbul_geniuminet_glimpse_v2_7.logout_request = {}

-- Display: Logout Request
bist_borsaistanbul_geniuminet_glimpse_v2_7.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
bist_borsaistanbul_geniuminet_glimpse_v2_7.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
bist_borsaistanbul_geniuminet_glimpse_v2_7.client_heartbeat = {}

-- Display: Client Heartbeat
bist_borsaistanbul_geniuminet_glimpse_v2_7.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
bist_borsaistanbul_geniuminet_glimpse_v2_7.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Unsequenced Data Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = bist_borsaistanbul_geniuminet_glimpse_v2_7.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = packet_length - 2

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = bist_borsaistanbul_geniuminet_glimpse_v2_7.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = bist_borsaistanbul_geniuminet_glimpse_v2_7.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = bist_borsaistanbul_geniuminet_glimpse_v2_7.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bist_borsaistanbul_geniuminet_glimpse_v2_7.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.login_request_packet = {}

-- Size: Login Request Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.login_request_packet.size =
  bist_borsaistanbul_geniuminet_glimpse_v2_7.username.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.password.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.requested_session.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.requested_sequence_number.size

-- Display: Login Request Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = bist_borsaistanbul_geniuminet_glimpse_v2_7.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = bist_borsaistanbul_geniuminet_glimpse_v2_7.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = bist_borsaistanbul_geniuminet_glimpse_v2_7.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = bist_borsaistanbul_geniuminet_glimpse_v2_7.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.login_request_packet, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_glimpse_v2_7.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
bist_borsaistanbul_geniuminet_glimpse_v2_7.client_payload = {}

-- Dissect: Client Payload
bist_borsaistanbul_geniuminet_glimpse_v2_7.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  -- Dissect Debug Packet
  if client_packet_type == "+" then
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if client_packet_type == "L" then
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if client_packet_type == "U" then
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat
  if client_packet_type == "R" then
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.client_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if client_packet_type == "O" then
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.logout_request.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
bist_borsaistanbul_geniuminet_glimpse_v2_7.client_packet_header = {}

-- Size: Client Packet Header
bist_borsaistanbul_geniuminet_glimpse_v2_7.client_packet_header.size =
  bist_borsaistanbul_geniuminet_glimpse_v2_7.packet_length.size + 
  bist_borsaistanbul_geniuminet_glimpse_v2_7.client_packet_type.size

-- Display: Client Packet Header
bist_borsaistanbul_geniuminet_glimpse_v2_7.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
bist_borsaistanbul_geniuminet_glimpse_v2_7.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = bist_borsaistanbul_geniuminet_glimpse_v2_7.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = bist_borsaistanbul_geniuminet_glimpse_v2_7.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
bist_borsaistanbul_geniuminet_glimpse_v2_7.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.client_packet_header, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_glimpse_v2_7.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = bist_borsaistanbul_geniuminet_glimpse_v2_7.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = bist_borsaistanbul_geniuminet_glimpse_v2_7.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = bist_borsaistanbul_geniuminet_glimpse_v2_7.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = bist_borsaistanbul_geniuminet_glimpse_v2_7.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bist_borsaistanbul_geniuminet_glimpse_v2_7.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < bist_borsaistanbul_geniuminet_glimpse_v2_7.client_packet_header.size then
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
bist_borsaistanbul_geniuminet_glimpse_v2_7.client_packet = {}

-- Verify required size of Tcp packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.client_packet.requiredsize = function(buffer)
  return buffer:len() >= bist_borsaistanbul_geniuminet_glimpse_v2_7.client_packet_header.size
end

-- Dissect Client Packet
bist_borsaistanbul_geniuminet_glimpse_v2_7.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Client Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_soup_bin_tcp_packet = client_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = bist_borsaistanbul_geniuminet_glimpse_v2_7.client_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_client_soup_bin_tcp_packet)
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
function omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.init()
  bist_borsaistanbul_geniuminet_glimpse_v2_7.sequence_number.current = nil
  bist_borsaistanbul_geniuminet_glimpse_v2_7.second.current = nil
  bist_borsaistanbul_geniuminet_glimpse_v2_7.conversation.current = nil
  bist_borsaistanbul_geniuminet_glimpse_v2_7.conversation.flows = {}
end

-- Connection roles for Bist BorsaIstanbul GeniumInet Glimpse 2.7: Client is the initiator, Server is the acceptor
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
bist_borsaistanbul_geniuminet_glimpse_v2_7.role = function(packet)
  if omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.prefs.acceptor_port

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

  if omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.prefs.swap_sides then
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
bist_borsaistanbul_geniuminet_glimpse_v2_7.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Bist BorsaIstanbul GeniumInet Glimpse 2.7
function omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.name

  -- Dissect protocol
  local protocol = parent:add(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7, buffer(), omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.description, "("..buffer:len().." Bytes)")

  local role = bist_borsaistanbul_geniuminet_glimpse_v2_7.role(packet)

  if role == "initiator" then
    return bist_borsaistanbul_geniuminet_glimpse_v2_7.client_packet.dissect(buffer, packet, protocol)
  end

  return bist_borsaistanbul_geniuminet_glimpse_v2_7.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
bist_borsaistanbul_geniuminet_glimpse_v2_7.client_packet.fingerprint = function(buffer)
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
bist_borsaistanbul_geniuminet_glimpse_v2_7.server_packet.fingerprint = function(buffer)
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

    -- Order Book Directory
    if sequenced_message_type == "R" then
      return true
    end

    -- Combination Order Book Leg
    if sequenced_message_type == "M" then
      return true
    end

    -- Tick Size Table Entry
    if sequenced_message_type == "L" then
      return true
    end

    -- Short Sell Status
    if sequenced_message_type == "V" then
      return true
    end

    -- Order Book State Message
    if sequenced_message_type == "O" then
      return true
    end

    -- Add Order No Mpid Attribution
    if sequenced_message_type == "A" then
      return true
    end

    -- Add Order With Mpid Attribution
    if sequenced_message_type == "F" then
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

-- Dissector Heuristic for Bist BorsaIstanbul GeniumInet Glimpse 2.7 (Tcp)
local function omi_bist_borsaistanbul_geniuminet_glimpse_v2_7_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not bist_borsaistanbul_geniuminet_glimpse_v2_7.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not bist_borsaistanbul_geniuminet_glimpse_v2_7.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_bist_borsaistanbul_geniuminet_glimpse_v2_7
  omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Bist BorsaIstanbul GeniumInet Glimpse 2.7 (Tcp)
local function omi_bist_borsaistanbul_geniuminet_glimpse_v2_7_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not bist_borsaistanbul_geniuminet_glimpse_v2_7.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not bist_borsaistanbul_geniuminet_glimpse_v2_7.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_bist_borsaistanbul_geniuminet_glimpse_v2_7
  omi_bist_borsaistanbul_geniuminet_glimpse_v2_7.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Bist BorsaIstanbul GeniumInet Glimpse 2.7 (Tcp): apply the heuristic of the sender's connection role
local function omi_bist_borsaistanbul_geniuminet_glimpse_v2_7_tcp_heuristic(buffer, packet, parent)
  local role = bist_borsaistanbul_geniuminet_glimpse_v2_7.role(packet)
  local initiator = omi_bist_borsaistanbul_geniuminet_glimpse_v2_7_tcp_initiator_heuristic
  local acceptor = omi_bist_borsaistanbul_geniuminet_glimpse_v2_7_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  bist_borsaistanbul_geniuminet_glimpse_v2_7.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  bist_borsaistanbul_geniuminet_glimpse_v2_7.swap(packet)

  return false
end

-- Register Heuristics for Bist BorsaIstanbul GeniumInet Glimpse 2.7
omi_bist_borsaistanbul_geniuminet_glimpse_v2_7:register_heuristic("tcp", omi_bist_borsaistanbul_geniuminet_glimpse_v2_7_tcp_heuristic)

-- Register Bist BorsaIstanbul GeniumInet Glimpse 2.7 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_bist_borsaistanbul_geniuminet_glimpse_v2_7)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Borsa İstanbul A.Ş.
--   Version: 2.7
--   Date: Friday, January 17, 2025
--   Specification: bistech-glimpse-protocol-specification.pdf
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
