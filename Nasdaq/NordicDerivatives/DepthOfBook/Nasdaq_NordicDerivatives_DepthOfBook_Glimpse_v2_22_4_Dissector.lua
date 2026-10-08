-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NordicDerivatives DepthOfBook Glimpse 2.22.4 Protocol
local omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4 = Proto("Omi.Nasdaq.NordicDerivatives.DepthOfBook.Glimpse.v2.22.4", "Nasdaq NordicDerivatives DepthOfBook Glimpse 2.22.4")

-- Protocol table
local nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NordicDerivatives DepthOfBook Glimpse 2.22.4 Fields
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.acceptedsequencenumber", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.accepted_session = ProtoField.new("Accepted Session", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.acceptedsession", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.block_lot_size = ProtoField.new("Block Lot Size", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.blocklotsize", ftypes.UINT32)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.client_packet_type = ProtoField.new("Packet Type", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.clientpackettype", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.convert_to_aggressive = ProtoField.new("Convert To Aggressive", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.converttoaggressive", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.debug_text = ProtoField.new("Debug Text", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.debugtext", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.exchange_order_type = ProtoField.new("Exchange Order Type", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.exchangeordertype", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.fill_and_kill_immediately = ProtoField.new("Fill And Kill Immediately", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.fillandkillimmediately", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0400)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.financial_product = ProtoField.new("Financial Product", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.financialproduct", ftypes.UINT8)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.firm_color_disabled = ProtoField.new("Firm Color Disabled", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.firmcolordisabled", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0800)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.force = ProtoField.new("Force", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.force", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.isin = ProtoField.new("Isin", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.isin", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.leg_1_ratio = ProtoField.new("Leg 1 Ratio", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.leg1ratio", ftypes.UINT32)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.leg_1_side = ProtoField.new("Leg 1 Side", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.leg1side", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.leg_1_symbol = ProtoField.new("Leg 1 Symbol", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.leg1symbol", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.leg_2_ratio = ProtoField.new("Leg 2 Ratio", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.leg2ratio", ftypes.UINT32)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.leg_2_side = ProtoField.new("Leg 2 Side", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.leg2side", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.leg_2_symbol = ProtoField.new("Leg 2 Symbol", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.leg2symbol", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.leg_3_ratio = ProtoField.new("Leg 3 Ratio", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.leg3ratio", ftypes.UINT32)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.leg_3_side = ProtoField.new("Leg 3 Side", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.leg3side", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.leg_3_symbol = ProtoField.new("Leg 3 Symbol", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.leg3symbol", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.leg_4_ratio = ProtoField.new("Leg 4 Ratio", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.leg4ratio", ftypes.UINT32)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.leg_4_side = ProtoField.new("Leg 4 Side", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.leg4side", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.leg_4_symbol = ProtoField.new("Leg 4 Symbol", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.leg4symbol", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.long_name = ProtoField.new("Long Name", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.longname", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.lot_type = ProtoField.new("Lot Type", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.lottype", ftypes.UINT8)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.market_bid = ProtoField.new("Market Bid", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.marketbid", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.nanoseconds = ProtoField.new("Nanoseconds", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.nanoseconds", ftypes.UINT32)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.nominal_value = ProtoField.new("Nominal Value", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.nominalvalue", ftypes.UINT64)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.number_of_decimals_in_nominal_value = ProtoField.new("Number Of Decimals In Nominal Value", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.numberofdecimalsinnominalvalue", ftypes.UINT16)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.number_of_decimals_in_price = ProtoField.new("Number Of Decimals In Price", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.numberofdecimalsinprice", ftypes.UINT16)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.odd_lot_size = ProtoField.new("Odd Lot Size", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.oddlotsize", ftypes.UINT32)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.order_book_id = ProtoField.new("Order Book Id", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.orderbookid", ftypes.UINT32)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.order_book_position = ProtoField.new("Order Book Position", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.orderbookposition", ftypes.UINT32)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.order_id = ProtoField.new("Order Id", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.orderid", ftypes.UINT64)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.override_crossing = ProtoField.new("Override Crossing", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.overridecrossing", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.packetlength", ftypes.UINT16)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.participant_id = ProtoField.new("Participant Id", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.participantid", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.password = ProtoField.new("Password", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.password", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.price = ProtoField.new("Price", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.price", ftypes.INT32)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.price_from = ProtoField.new("Price From", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.pricefrom", ftypes.INT32)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.price_stabilization = ProtoField.new("Price Stabilization", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.pricestabilization", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.price_to = ProtoField.new("Price To", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.priceto", ftypes.INT32)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.quantity = ProtoField.new("Quantity", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.quantity", ftypes.UINT64)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.rejectreasoncode", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.requestedsequencenumber", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.requestedsession", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.reserved_bits_14_to_16 = ProtoField.new("Reserved Bits 14 To 16", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.reservedbits14to16", ftypes.UINT16, nil, base.DEC, 0xE000)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.reserved_bits_7_to_10 = ProtoField.new("Reserved Bits 7 To 10", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.reservedbits7to10", ftypes.UINT16, nil, base.DEC, 0x03C0)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.roundlotsize", ftypes.UINT32)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.second = ProtoField.new("Second", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.second", ftypes.UINT32)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.sequencenumber", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.sequencedmessagetype", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.server_packet_type = ProtoField.new("Packet Type", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.serverpackettype", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.short_sell = ProtoField.new("Short Sell", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.shortsell", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.side = ProtoField.new("Side", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.side", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.state_name = ProtoField.new("State Name", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.statename", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.symbol = ProtoField.new("Symbol", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.symbol", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.tick_size = ProtoField.new("Tick Size", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.ticksize", ftypes.INT64)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.trading_currency = ProtoField.new("Trading Currency", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.tradingcurrency", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.undisclosed = ProtoField.new("Undisclosed", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.undisclosed", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0020)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.unsequencedmessage", ftypes.BYTES)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.unsequencedmessagetype", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.username = ProtoField.new("Username", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.username", ftypes.STRING)

-- Nasdaq NordicDerivatives DepthOfBook Glimpse 2.22.4 Framing
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.client_packet = ProtoField.new("Packet", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.clientpacket", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.client_packet_header = ProtoField.new("Packet Header", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.clientpacketheader", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.clientsoupbintcppacket", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.server_packet = ProtoField.new("Packet", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.serverpacket", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.server_packet_header = ProtoField.new("Packet Header", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.serverpacketheader", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.serversoupbintcppacket", ftypes.STRING)

-- Nasdaq NordicDerivatives DepthOfBook 2.22.4 Application Messages
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.add_order_mpid_attribution = ProtoField.new("Add Order Mpid Attribution", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.addordermpidattribution", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.add_order_no_mpid_attribution = ProtoField.new("Add Order No Mpid Attribution", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.addordernompidattribution", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.combination_order_book_directory = ProtoField.new("Combination Order Book Directory", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.combinationorderbookdirectory", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.end_of_snapshot_message = ProtoField.new("End Of Snapshot Message", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.endofsnapshotmessage", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.order_book_directory = ProtoField.new("Order Book Directory", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.orderbookdirectory", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.order_book_state_message = ProtoField.new("Order Book State Message", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.orderbookstatemessage", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.seconds_message = ProtoField.new("Seconds Message", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.secondsmessage", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.tick_size_table_entry = ProtoField.new("Tick Size Table Entry", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.ticksizetableentry", ftypes.STRING)

-- Nasdaq NordicDerivatives DepthOfBook 2.22.4 Session Messages
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.clientheartbeat", ftypes.BYTES)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.debugpacket", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.endofsession", ftypes.BYTES)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.loginacceptedpacket", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.loginrejectedpacket", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.loginrequestpacket", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.logout_request = ProtoField.new("Logout Request", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.logoutrequest", ftypes.BYTES)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.sequenceddatapacket", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.serverheartbeat", ftypes.BYTES)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.unsequenceddatapacket", ftypes.STRING)

-- Nasdaq NordicDerivatives DepthOfBook Glimpse 2.22.4 Generated Fields
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.sequenceddatapacketsequencenumber", ftypes.UINT64)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nordicderivatives.depthofbook.glimpse.v2.22.4.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nasdaq NordicDerivatives DepthOfBook Glimpse 2.22.4 Formatting
-----------------------------------------------------------------------

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.format_timestamp = true

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

-- Nasdaq NordicDerivatives DepthOfBook Glimpse 2.22.4 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.session_messages = true
show.sequences = true

-- Register Nasdaq NordicDerivatives DepthOfBook Glimpse 2.22.4 Show Options
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

-- Handle changed preferences
function omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.prefs.show_headers then
    show.headers = omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.prefs.show_headers
  end
  if show.session_messages ~= omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.prefs.show_session_messages
  end
  if show.structs ~= omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.prefs.show_structs then
    show.structs = omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.prefs.show_structs
  end
  if show.sequences ~= omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.prefs.show_sequences then
    show.sequences = omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.prefs.show_sequences
  end
  if nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.format_timestamp ~= omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.prefs.format_timestamp then
    nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.format_timestamp = omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.prefs.format_timestamp
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.conversation = {}
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.stream_frame = nil
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.conversation.data = function(packet)
  local key = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.conversation.key(packet)
  local data = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.conversation.flows[key]
  if data == nil then
    data = { accepted_sequence_number = { last = nil, frames = {} }, second = { last = nil, frames = {} }, sequence = { next = nil, frames = {} } }
    nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.conversation.current = nil


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
-- Nasdaq NordicDerivatives DepthOfBook Glimpse 2.22.4 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.accepted_session = {}

-- Size: Accepted Session
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.accepted_session.size = 10

-- Display: Accepted Session
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.accepted_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Block Lot Size
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.block_lot_size = {}

-- Size: Block Lot Size
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.block_lot_size.size = 4

-- Display: Block Lot Size
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.block_lot_size.display = function(value)
  return "Block Lot Size: "..value
end

-- Dissect: Block Lot Size
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.block_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.block_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.block_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.block_lot_size, range, value, display)

  return offset + length, value
end

-- Client Packet Type
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_packet_type = {}

-- Size: Client Packet Type
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_packet_type.size = 1

-- Display: Client Packet Type
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_packet_type.display = function(value)
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
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Debug Text
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.debug_text = {}

-- Display: Debug Text
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.debug_text.display = function(value)
  return "Debug Text: "..value
end

-- Dissect runtime sized field: Debug Text
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.debug_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.debug_text.display(value, packet, parent, size)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.debug_text, range, value, display)

  return offset + size, value
end

-- Financial Product
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.financial_product = {}

-- Size: Financial Product
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.financial_product.size = 1

-- Display: Financial Product
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.financial_product.display = function(value)
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
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.financial_product.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.financial_product.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.financial_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.financial_product, range, value, display)

  return offset + length, value
end

-- Isin
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.isin = {}

-- Size: Isin
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.isin.size = 12

-- Display: Isin
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.isin.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.isin, range, value, display)

  return offset + length, value
end

-- Leg 1 Ratio
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_1_ratio = {}

-- Size: Leg 1 Ratio
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_1_ratio.size = 4

-- Display: Leg 1 Ratio
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_1_ratio.display = function(value)
  return "Leg 1 Ratio: "..value
end

-- Dissect: Leg 1 Ratio
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_1_ratio.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_1_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_1_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.leg_1_ratio, range, value, display)

  return offset + length, value
end

-- Leg 1 Side
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_1_side = {}

-- Size: Leg 1 Side
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_1_side.size = 1

-- Display: Leg 1 Side
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_1_side.display = function(value)
  if value == "B" then
    return "Leg 1 Side: As Defined (B)"
  end
  if value == "C" then
    return "Leg 1 Side: Opposite (C)"
  end

  return "Leg 1 Side: Unknown("..value..")"
end

-- Dissect: Leg 1 Side
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_1_side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_1_side.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_1_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.leg_1_side, range, value, display)

  return offset + length, value
end

-- Leg 1 Symbol
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_1_symbol = {}

-- Size: Leg 1 Symbol
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_1_symbol.size = 32

-- Display: Leg 1 Symbol
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_1_symbol.display = function(value)
  return "Leg 1 Symbol: "..value
end

-- Dissect: Leg 1 Symbol
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_1_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_1_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_1_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.leg_1_symbol, range, value, display)

  return offset + length, value
end

-- Leg 2 Ratio
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_2_ratio = {}

-- Size: Leg 2 Ratio
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_2_ratio.size = 4

-- Display: Leg 2 Ratio
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_2_ratio.display = function(value)
  return "Leg 2 Ratio: "..value
end

-- Dissect: Leg 2 Ratio
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_2_ratio.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_2_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_2_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.leg_2_ratio, range, value, display)

  return offset + length, value
end

-- Leg 2 Side
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_2_side = {}

-- Size: Leg 2 Side
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_2_side.size = 1

-- Display: Leg 2 Side
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_2_side.display = function(value)
  if value == "B" then
    return "Leg 2 Side: As Defined (B)"
  end
  if value == "C" then
    return "Leg 2 Side: Opposite (C)"
  end

  return "Leg 2 Side: Unknown("..value..")"
end

-- Dissect: Leg 2 Side
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_2_side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_2_side.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_2_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.leg_2_side, range, value, display)

  return offset + length, value
end

-- Leg 2 Symbol
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_2_symbol = {}

-- Size: Leg 2 Symbol
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_2_symbol.size = 32

-- Display: Leg 2 Symbol
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_2_symbol.display = function(value)
  return "Leg 2 Symbol: "..value
end

-- Dissect: Leg 2 Symbol
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_2_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_2_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_2_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.leg_2_symbol, range, value, display)

  return offset + length, value
end

-- Leg 3 Ratio
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_3_ratio = {}

-- Size: Leg 3 Ratio
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_3_ratio.size = 4

-- Display: Leg 3 Ratio
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_3_ratio.display = function(value)
  return "Leg 3 Ratio: "..value
end

-- Dissect: Leg 3 Ratio
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_3_ratio.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_3_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_3_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.leg_3_ratio, range, value, display)

  return offset + length, value
end

-- Leg 3 Side
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_3_side = {}

-- Size: Leg 3 Side
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_3_side.size = 1

-- Display: Leg 3 Side
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_3_side.display = function(value)
  if value == "B" then
    return "Leg 3 Side: As Defined (B)"
  end
  if value == "C" then
    return "Leg 3 Side: Opposite (C)"
  end

  return "Leg 3 Side: Unknown("..value..")"
end

-- Dissect: Leg 3 Side
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_3_side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_3_side.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_3_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.leg_3_side, range, value, display)

  return offset + length, value
end

-- Leg 3 Symbol
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_3_symbol = {}

-- Size: Leg 3 Symbol
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_3_symbol.size = 32

-- Display: Leg 3 Symbol
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_3_symbol.display = function(value)
  return "Leg 3 Symbol: "..value
end

-- Dissect: Leg 3 Symbol
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_3_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_3_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_3_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.leg_3_symbol, range, value, display)

  return offset + length, value
end

-- Leg 4 Ratio
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_4_ratio = {}

-- Size: Leg 4 Ratio
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_4_ratio.size = 4

-- Display: Leg 4 Ratio
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_4_ratio.display = function(value)
  return "Leg 4 Ratio: "..value
end

-- Dissect: Leg 4 Ratio
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_4_ratio.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_4_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_4_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.leg_4_ratio, range, value, display)

  return offset + length, value
end

-- Leg 4 Side
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_4_side = {}

-- Size: Leg 4 Side
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_4_side.size = 1

-- Display: Leg 4 Side
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_4_side.display = function(value)
  if value == "B" then
    return "Leg 4 Side: As Defined (B)"
  end
  if value == "C" then
    return "Leg 4 Side: Opposite (C)"
  end

  return "Leg 4 Side: Unknown("..value..")"
end

-- Dissect: Leg 4 Side
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_4_side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_4_side.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_4_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.leg_4_side, range, value, display)

  return offset + length, value
end

-- Leg 4 Symbol
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_4_symbol = {}

-- Size: Leg 4 Symbol
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_4_symbol.size = 32

-- Display: Leg 4 Symbol
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_4_symbol.display = function(value)
  return "Leg 4 Symbol: "..value
end

-- Dissect: Leg 4 Symbol
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_4_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_4_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_4_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.leg_4_symbol, range, value, display)

  return offset + length, value
end

-- Long Name
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.long_name = {}

-- Size: Long Name
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.long_name.size = 32

-- Display: Long Name
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.long_name.display = function(value)
  return "Long Name: "..value
end

-- Dissect: Long Name
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.long_name.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.long_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.long_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.long_name, range, value, display)

  return offset + length, value
end

-- Lot Type
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.lot_type = {}

-- Size: Lot Type
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.lot_type.size = 1

-- Display: Lot Type
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.lot_type.display = function(value)
  if value == 0 then
    return "Lot Type: Undefined (0)"
  end
  if value == 1 then
    return "Lot Type: Odd Lot (1)"
  end
  if value == 2 then
    return "Lot Type: Round Lot (2)"
  end
  if value == 3 then
    return "Lot Type: Block Lot (3)"
  end
  if value == 4 then
    return "Lot Type: All Or None Lot (4)"
  end

  return "Lot Type: Unknown("..value..")"
end

-- Dissect: Lot Type
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.lot_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.lot_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.lot_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.lot_type, range, value, display)

  return offset + length, value
end

-- Nanoseconds
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.nanoseconds = {}

-- Size: Nanoseconds
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.nanoseconds.size = 4

-- Display: Nanoseconds
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Nominal Value
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.nominal_value = {}

-- Size: Nominal Value
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.nominal_value.size = 8

-- Display: Nominal Value
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.nominal_value.display = function(value)
  return "Nominal Value: "..value
end

-- Dissect: Nominal Value
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.nominal_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.nominal_value, range, value, display)

  return offset + length, value
end

-- Number Of Decimals In Nominal Value
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.number_of_decimals_in_nominal_value = {}

-- Size: Number Of Decimals In Nominal Value
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.number_of_decimals_in_nominal_value.size = 2

-- Display: Number Of Decimals In Nominal Value
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.number_of_decimals_in_nominal_value.display = function(value)
  return "Number Of Decimals In Nominal Value: "..value
end

-- Dissect: Number Of Decimals In Nominal Value
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.number_of_decimals_in_nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.number_of_decimals_in_nominal_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.number_of_decimals_in_nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.number_of_decimals_in_nominal_value, range, value, display)

  return offset + length, value
end

-- Number Of Decimals In Price
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.number_of_decimals_in_price = {}

-- Size: Number Of Decimals In Price
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.number_of_decimals_in_price.size = 2

-- Display: Number Of Decimals In Price
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.number_of_decimals_in_price.display = function(value)
  return "Number Of Decimals In Price: "..value
end

-- Dissect: Number Of Decimals In Price
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.number_of_decimals_in_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.number_of_decimals_in_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.number_of_decimals_in_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.number_of_decimals_in_price, range, value, display)

  return offset + length, value
end

-- Odd Lot Size
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.odd_lot_size = {}

-- Size: Odd Lot Size
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.odd_lot_size.size = 4

-- Display: Odd Lot Size
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.odd_lot_size.display = function(value)
  return "Odd Lot Size: "..value
end

-- Dissect: Odd Lot Size
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.odd_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.odd_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.odd_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.odd_lot_size, range, value, display)

  return offset + length, value
end

-- Order Book Id
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_id = {}

-- Size: Order Book Id
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_id.size = 4

-- Display: Order Book Id
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_id.display = function(value)
  return "Order Book Id: "..value
end

-- Dissect: Order Book Id
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.order_book_id, range, value, display)

  return offset + length, value
end

-- Order Book Position
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_position = {}

-- Size: Order Book Position
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_position.size = 4

-- Display: Order Book Position
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_position.display = function(value)
  return "Order Book Position: "..value
end

-- Dissect: Order Book Position
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_position.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_position.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_position.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.order_book_position, range, value, display)

  return offset + length, value
end

-- Order Id
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_id = {}

-- Size: Order Id
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_id.size = 8

-- Display: Order Id
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.order_id, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.packet_length = {}

-- Size: Packet Length
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.packet_length.size = 2

-- Display: Packet Length
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Participant Id
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.participant_id = {}

-- Size: Participant Id
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.participant_id.size = 7

-- Display: Participant Id
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.password = {}

-- Size: Password
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.password.size = 10

-- Display: Password
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.password, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.price = {}

-- Size: Price
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.price.size = 4

-- Display: Price
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.price.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Dissect: Price
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.price, range, value, display)

  return offset + length, value
end

-- Price From
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.price_from = {}

-- Size: Price From
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.price_from.size = 4

-- Display: Price From
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.price_from.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Price From: No Value"
  end

  return "Price From: "..value
end

-- Dissect: Price From
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.price_from.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.price_from.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.price_from.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.price_from, range, value, display)

  return offset + length, value
end

-- Price To
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.price_to = {}

-- Size: Price To
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.price_to.size = 4

-- Display: Price To
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.price_to.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Price To: No Value"
  end

  return "Price To: "..value
end

-- Dissect: Price To
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.price_to.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.price_to.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.price_to.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.price_to, range, value, display)

  return offset + length, value
end

-- Quantity
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.quantity = {}

-- Size: Quantity
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.quantity.size = 8

-- Display: Quantity
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.reject_reason_code.display = function(value)
  if value == "A" then
    return "Reject Reason Code: Not Authorized (A)"
  end
  if value == "S" then
    return "Reject Reason Code: Session Not Available (S)"
  end

  return "Reject Reason Code: Unknown("..value..")"
end

-- Dissect: Reject Reason Code
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.requested_session = {}

-- Size: Requested Session
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.requested_session.size = 10

-- Display: Requested Session
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.requested_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.round_lot_size.size = 4

-- Display: Round Lot Size
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Second
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.second = {}

-- Size: Second
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.second.size = 4

-- Store: Second
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.second.current = nil

-- Generated: Second
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.second.generated = function(value, range, packet, parent)
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.second.display(value)
  local second = parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.second, range, value, display)
  second:set_generated()
end

-- Display: Second
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.second.display = function(value)
  -- Parse unix seconds timestamp
  return "Second: "..os.date("%Y-%m-%d %H:%M:%S", value)
end

-- Dissect: Second
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.second.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.second.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.second.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.second, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.sequence_number = {}

-- Size: Sequence Number
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.sequence_number.size = 20

-- Display: Sequence Number
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.sequence_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.sequenced_message_type = {}

-- Size: Sequenced Message Type
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.sequenced_message_type.display = function(value)
  if value == "T" then
    return "Sequenced Message Type: Seconds Message (T)"
  end
  if value == "R" then
    return "Sequenced Message Type: Order Book Directory (R)"
  end
  if value == "M" then
    return "Sequenced Message Type: Combination Order Book Directory (M)"
  end
  if value == "L" then
    return "Sequenced Message Type: Tick Size Table Entry (L)"
  end
  if value == "O" then
    return "Sequenced Message Type: Order Book State Message (O)"
  end
  if value == "A" then
    return "Sequenced Message Type: Add Order No Mpid Attribution (A)"
  end
  if value == "F" then
    return "Sequenced Message Type: Add Order Mpid Attribution (F)"
  end
  if value == "G" then
    return "Sequenced Message Type: End Of Snapshot Message (G)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_packet_type = {}

-- Size: Server Packet Type
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_packet_type.size = 1

-- Display: Server Packet Type
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_packet_type.display = function(value)
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
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Side
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.side = {}

-- Size: Side
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.side.size = 1

-- Display: Side
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.side.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.side, range, value, display)

  return offset + length, value
end

-- State Name
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.state_name = {}

-- Size: State Name
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.state_name.size = 20

-- Display: State Name
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.state_name.display = function(value)
  return "State Name: "..value
end

-- Dissect: State Name
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.state_name.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.state_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.state_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.state_name, range, value, display)

  return offset + length, value
end

-- Symbol
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.symbol = {}

-- Size: Symbol
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.symbol.size = 32

-- Display: Symbol
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.symbol, range, value, display)

  return offset + length, value
end

-- Tick Size
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.tick_size = {}

-- Size: Tick Size
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.tick_size.size = 8

-- Display: Tick Size
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Dissect: Tick Size
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.tick_size.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Trading Currency
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.trading_currency = {}

-- Size: Trading Currency
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.trading_currency.size = 3

-- Display: Trading Currency
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.trading_currency.display = function(value)
  return "Trading Currency: "..value
end

-- Dissect: Trading Currency
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.trading_currency.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.trading_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.trading_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.trading_currency, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.unsequenced_message = {}

-- Display: Unsequenced Message
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.unsequenced_message, range, value, display)

  return offset + size, value
end

-- Unsequenced Message Type
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.username = {}

-- Size: Username
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.username.size = 6

-- Display: Username
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.username, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.timestamp = {}

-- Translate: Timestamp
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.timestamp.translate = function(nanoseconds, stored_second)
  return UInt64.new(stored_second * 1000000000 + nanoseconds)
end

-- Display: Timestamp
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.timestamp.display = function(nanoseconds, stored_second)
  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", stored_second)..string.format("%09d", nanoseconds)
end

-- Composite: Timestamp
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.timestamp.composite = function(buffer, offset, stored_second, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.nanoseconds.size
  local range = buffer(offset, length)
  local nanoseconds = range:uint()
  local value = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.timestamp.translate(nanoseconds, stored_second)
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.timestamp.display(nanoseconds, stored_second, packet)
  parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.timestamp, range, value, display)

  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.second.generated(stored_second, range, packet, parent)

  display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.nanoseconds.display(nanoseconds)
  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.nanoseconds, range, nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.timestamp.dissect = function(buffer, offset, packet, parent)
  if nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.format_timestamp then
    local stored_second = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.second.current

    if stored_second ~= nil then
      return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.timestamp.composite(buffer, offset, stored_second, packet, parent)
    end
  end

  return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NordicDerivatives DepthOfBook Glimpse 2.22.4
-----------------------------------------------------------------------

-- End Of Session
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.end_of_session = {}

-- Display: End Of Session
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_heartbeat = {}

-- Display: Server Heartbeat
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- End Of Snapshot Message
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.end_of_snapshot_message = {}

-- Size: End Of Snapshot Message
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.end_of_snapshot_message.size =
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.sequence_number.size

-- Display: End Of Snapshot Message
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.end_of_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Snapshot Message
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.end_of_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: Alpha
  index, sequence_number = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Snapshot Message
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.end_of_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.end_of_snapshot_message, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.end_of_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.end_of_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.end_of_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Exchange Order Type
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.exchange_order_type = {}

-- Size: Exchange Order Type
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.exchange_order_type.size = 2

-- Display: Exchange Order Type
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.exchange_order_type.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Force flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Force"
  end
  -- Is Short Sell flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Short Sell"
  end
  -- Is Market Bid flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Market Bid"
  end
  -- Is Price Stabilization flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Price Stabilization"
  end
  -- Is Override Crossing flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Override Crossing"
  end
  -- Is Undisclosed flag set?
  if bit.band(value, 0x0020) ~= 0 then
    flags[#flags + 1] = "Undisclosed"
  end
  -- Is Fill And Kill Immediately flag set?
  if bit.band(value, 0x0400) ~= 0 then
    flags[#flags + 1] = "Fill And Kill Immediately"
  end
  -- Is Firm Color Disabled flag set?
  if bit.band(value, 0x0800) ~= 0 then
    flags[#flags + 1] = "Firm Color Disabled"
  end
  -- Is Convert To Aggressive flag set?
  if bit.band(value, 0x1000) ~= 0 then
    flags[#flags + 1] = "Convert To Aggressive"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Exchange Order Type
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.exchange_order_type.bits = function(range, value, packet, parent)

  -- Force: 1 Bit
  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.force, range, value)

  -- Short Sell: 1 Bit
  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.short_sell, range, value)

  -- Market Bid: 1 Bit
  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.market_bid, range, value)

  -- Price Stabilization: 1 Bit
  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.price_stabilization, range, value)

  -- Override Crossing: 1 Bit
  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.override_crossing, range, value)

  -- Undisclosed: 1 Bit
  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.undisclosed, range, value)

  -- Reserved Bits 7 To 10: 4 Bit
  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.reserved_bits_7_to_10, range, value)

  -- Fill And Kill Immediately: 1 Bit
  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.fill_and_kill_immediately, range, value)

  -- Firm Color Disabled: 1 Bit
  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.firm_color_disabled, range, value)

  -- Convert To Aggressive: 1 Bit
  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.convert_to_aggressive, range, value)

  -- Reserved Bits 14 To 16: 3 Bit
  parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.reserved_bits_14_to_16, range, value)
end

-- Dissect: Exchange Order Type
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.exchange_order_type.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.exchange_order_type.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.exchange_order_type.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.exchange_order_type, range, display)

  if show.structs then
    nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.exchange_order_type.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Add Order Mpid Attribution
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.add_order_mpid_attribution = {}

-- Size: Add Order Mpid Attribution
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.add_order_mpid_attribution.size =
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.nanoseconds.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_id.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_id.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.side.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_position.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.quantity.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.price.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.exchange_order_type.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.lot_type.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.participant_id.size

-- Display: Add Order Mpid Attribution
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.add_order_mpid_attribution.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Mpid Attribution
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.add_order_mpid_attribution.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.side.dissect(buffer, index, packet, parent)

  -- Order Book Position: Numeric
  index, order_book_position = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_position.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.price.dissect(buffer, index, packet, parent)

  -- Exchange Order Type: Struct of 11 fields
  index, exchange_order_type = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.exchange_order_type.dissect(buffer, index, packet, parent)

  -- Lot Type: Numeric
  index, lot_type = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.lot_type.dissect(buffer, index, packet, parent)

  -- Participant Id: Alpha
  index, participant_id = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.participant_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Mpid Attribution
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.add_order_mpid_attribution.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.add_order_mpid_attribution, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.add_order_mpid_attribution.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.add_order_mpid_attribution.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.add_order_mpid_attribution.fields(buffer, offset, packet, parent)
  end
end

-- Add Order No Mpid Attribution
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.add_order_no_mpid_attribution = {}

-- Size: Add Order No Mpid Attribution
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.add_order_no_mpid_attribution.size =
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.nanoseconds.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_id.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_id.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.side.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_position.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.quantity.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.price.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.exchange_order_type.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.lot_type.size

-- Display: Add Order No Mpid Attribution
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.add_order_no_mpid_attribution.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order No Mpid Attribution
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.add_order_no_mpid_attribution.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.side.dissect(buffer, index, packet, parent)

  -- Order Book Position: Numeric
  index, order_book_position = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_position.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.price.dissect(buffer, index, packet, parent)

  -- Exchange Order Type: Struct of 11 fields
  index, exchange_order_type = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.exchange_order_type.dissect(buffer, index, packet, parent)

  -- Lot Type: Numeric
  index, lot_type = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.lot_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order No Mpid Attribution
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.add_order_no_mpid_attribution.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.add_order_no_mpid_attribution, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.add_order_no_mpid_attribution.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.add_order_no_mpid_attribution.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.add_order_no_mpid_attribution.fields(buffer, offset, packet, parent)
  end
end

-- Order Book State Message
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_state_message = {}

-- Size: Order Book State Message
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_state_message.size =
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.nanoseconds.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_id.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.state_name.size

-- Display: Order Book State Message
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book State Message
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_id.dissect(buffer, index, packet, parent)

  -- State Name: Alpha
  index, state_name = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.state_name.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book State Message
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.order_book_state_message, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Tick Size Table Entry
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.tick_size_table_entry = {}

-- Size: Tick Size Table Entry
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.tick_size_table_entry.size =
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.nanoseconds.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_id.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.tick_size.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.price_from.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.price_to.size

-- Display: Tick Size Table Entry
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.tick_size_table_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Size Table Entry
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.tick_size_table_entry.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_id.dissect(buffer, index, packet, parent)

  -- Tick Size: Price
  index, tick_size = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.tick_size.dissect(buffer, index, packet, parent)

  -- Price From: Price
  index, price_from = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.price_from.dissect(buffer, index, packet, parent)

  -- Price To: Price
  index, price_to = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.price_to.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Size Table Entry
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.tick_size_table_entry.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.tick_size_table_entry, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.tick_size_table_entry.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.tick_size_table_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.tick_size_table_entry.fields(buffer, offset, packet, parent)
  end
end

-- Combination Order Book Directory
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.combination_order_book_directory = {}

-- Size: Combination Order Book Directory
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.combination_order_book_directory.size =
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.nanoseconds.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_id.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.symbol.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.long_name.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.isin.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.financial_product.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.trading_currency.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.number_of_decimals_in_price.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.number_of_decimals_in_nominal_value.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.odd_lot_size.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.round_lot_size.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.block_lot_size.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.nominal_value.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_1_symbol.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_1_side.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_1_ratio.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_2_symbol.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_2_side.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_2_ratio.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_3_symbol.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_3_side.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_3_ratio.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_4_symbol.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_4_side.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_4_ratio.size

-- Display: Combination Order Book Directory
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.combination_order_book_directory.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Combination Order Book Directory
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.combination_order_book_directory.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.symbol.dissect(buffer, index, packet, parent)

  -- Long Name: Alpha
  index, long_name = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.long_name.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.isin.dissect(buffer, index, packet, parent)

  -- Financial Product: Numeric
  index, financial_product = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.financial_product.dissect(buffer, index, packet, parent)

  -- Trading Currency: Alpha
  index, trading_currency = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.trading_currency.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Price: Numeric
  index, number_of_decimals_in_price = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.number_of_decimals_in_price.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Nominal Value: Numeric
  index, number_of_decimals_in_nominal_value = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.number_of_decimals_in_nominal_value.dissect(buffer, index, packet, parent)

  -- Odd Lot Size: Numeric
  index, odd_lot_size = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.odd_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Numeric
  index, round_lot_size = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.round_lot_size.dissect(buffer, index, packet, parent)

  -- Block Lot Size: Numeric
  index, block_lot_size = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.block_lot_size.dissect(buffer, index, packet, parent)

  -- Nominal Value: Numeric
  index, nominal_value = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.nominal_value.dissect(buffer, index, packet, parent)

  -- Leg 1 Symbol: Alpha
  index, leg_1_symbol = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_1_symbol.dissect(buffer, index, packet, parent)

  -- Leg 1 Side: Alpha
  index, leg_1_side = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_1_side.dissect(buffer, index, packet, parent)

  -- Leg 1 Ratio: Numeric
  index, leg_1_ratio = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_1_ratio.dissect(buffer, index, packet, parent)

  -- Leg 2 Symbol: Alpha
  index, leg_2_symbol = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_2_symbol.dissect(buffer, index, packet, parent)

  -- Leg 2 Side: Alpha
  index, leg_2_side = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_2_side.dissect(buffer, index, packet, parent)

  -- Leg 2 Ratio: Numeric
  index, leg_2_ratio = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_2_ratio.dissect(buffer, index, packet, parent)

  -- Leg 3 Symbol: Alpha
  index, leg_3_symbol = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_3_symbol.dissect(buffer, index, packet, parent)

  -- Leg 3 Side: Alpha
  index, leg_3_side = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_3_side.dissect(buffer, index, packet, parent)

  -- Leg 3 Ratio: Numeric
  index, leg_3_ratio = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_3_ratio.dissect(buffer, index, packet, parent)

  -- Leg 4 Symbol: Alpha
  index, leg_4_symbol = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_4_symbol.dissect(buffer, index, packet, parent)

  -- Leg 4 Side: Alpha
  index, leg_4_side = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_4_side.dissect(buffer, index, packet, parent)

  -- Leg 4 Ratio: Numeric
  index, leg_4_ratio = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.leg_4_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Combination Order Book Directory
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.combination_order_book_directory.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.combination_order_book_directory, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.combination_order_book_directory.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.combination_order_book_directory.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.combination_order_book_directory.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Directory
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_directory = {}

-- Size: Order Book Directory
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_directory.size =
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.nanoseconds.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_id.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.symbol.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.long_name.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.isin.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.financial_product.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.trading_currency.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.number_of_decimals_in_price.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.number_of_decimals_in_nominal_value.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.odd_lot_size.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.round_lot_size.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.block_lot_size.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.nominal_value.size

-- Display: Order Book Directory
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_directory.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Directory
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_directory.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.symbol.dissect(buffer, index, packet, parent)

  -- Long Name: Alpha
  index, long_name = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.long_name.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.isin.dissect(buffer, index, packet, parent)

  -- Financial Product: Numeric
  index, financial_product = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.financial_product.dissect(buffer, index, packet, parent)

  -- Trading Currency: Alpha
  index, trading_currency = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.trading_currency.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Price: Numeric
  index, number_of_decimals_in_price = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.number_of_decimals_in_price.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Nominal Value: Numeric
  index, number_of_decimals_in_nominal_value = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.number_of_decimals_in_nominal_value.dissect(buffer, index, packet, parent)

  -- Odd Lot Size: Numeric
  index, odd_lot_size = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.odd_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Numeric
  index, round_lot_size = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.round_lot_size.dissect(buffer, index, packet, parent)

  -- Block Lot Size: Numeric
  index, block_lot_size = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.block_lot_size.dissect(buffer, index, packet, parent)

  -- Nominal Value: Numeric
  index, nominal_value = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.nominal_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Directory
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_directory.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.order_book_directory, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_directory.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_directory.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_directory.fields(buffer, offset, packet, parent)
  end
end

-- Seconds Message
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.seconds_message = {}

-- Size: Seconds Message
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.seconds_message.size =
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.second.size

-- Display: Seconds Message
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seconds Message
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: Numeric
  index, second = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.second.dissect(buffer, index, packet, parent)

  -- Store Second Value
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.second.current = second

  if not packet.visited then
    nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.conversation.current.second.last = second
  end

  return index
end

-- Dissect: Seconds Message
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.seconds_message, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.sequenced_message = {}

-- Dissect: Sequenced Message
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect Seconds Message
  if sequenced_message_type == "T" then
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.seconds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Directory
  if sequenced_message_type == "R" then
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_directory.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Combination Order Book Directory
  if sequenced_message_type == "M" then
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.combination_order_book_directory.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Size Table Entry
  if sequenced_message_type == "L" then
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.tick_size_table_entry.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book State Message
  if sequenced_message_type == "O" then
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.order_book_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order No Mpid Attribution
  if sequenced_message_type == "A" then
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.add_order_no_mpid_attribution.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Mpid Attribution
  if sequenced_message_type == "F" then
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.add_order_mpid_attribution.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Snapshot Message
  if sequenced_message_type == "G" then
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.end_of_snapshot_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.conversation.current
  if flow ~= nil then
    local memo = flow.sequence.frames[packet.number]
    if not packet.visited then
      if flow.sequence.next == nil then
        flow.sequence.next = tonumber(nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.accepted_sequence_number.current)
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
          local sequence = parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.stream_frame ~= packet.number or nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.stream_occurrence >= #memo then
          nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.stream_frame = packet.number
          nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.stream_occurrence = 0
        end
        nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.stream_occurrence = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.stream_occurrence + 1
        local value = memo[nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 8 values
  index, sequenced_message_type = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 8 branches
  index = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.sequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.login_rejected_packet.size =
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String Enum with 2 values
  index, reject_reason_code = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.login_accepted_packet.size =
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.accepted_session.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.accepted_sequence_number.size

-- Display: Login Accepted Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.accepted_sequence_number.dissect(buffer, index, packet, parent)

  -- Store Accepted Sequence Number Value
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.accepted_sequence_number.current = accepted_sequence_number

  if not packet.visited then
    nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.conversation.current.accepted_sequence_number.last = accepted_sequence_number
  end

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.debug_packet = {}

-- Calculate size of: Debug Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.debug_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Debug Text
  index = index + buffer(offset + index - 3, 2):uint()

  return index
end

-- Display: Debug Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Debug Text
  local size_of_debug_text = packet_length - 1

  -- Debug Text: 0 Byte Ascii String
  index, debug_text = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.debug_text.dissect(buffer, index, packet, parent, size_of_debug_text)

  return index
end

-- Dissect: Debug Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_payload = {}

-- Dissect: Server Payload
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  -- Dissect Debug Packet
  if server_packet_type == "+" then
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if server_packet_type == "A" then
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if server_packet_type == "J" then
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if server_packet_type == "S" then
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat
  if server_packet_type == "H" then
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if server_packet_type == "Z" then
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.end_of_session.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_packet_header = {}

-- Size: Server Packet Header
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_packet_header.size =
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.packet_length.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_packet_type.size

-- Display: Server Packet Header
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.server_packet_header, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_packet_header.size then
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
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_packet = {}

-- Verify required size of Tcp packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_packet_header.size
end

-- Dissect Server Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.conversation.data(packet)
  if not packet.visited then
    data.accepted_sequence_number.frames[packet.number] = data.accepted_sequence_number.last
    data.second.frames[packet.number] = data.second.last
  end
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.accepted_sequence_number.current = data.accepted_sequence_number.frames[packet.number]
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.second.current = data.second.frames[packet.number]
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.conversation.current = data

  local index = 0

  -- Dependency for Server Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Server Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_soup_bin_tcp_packet = server_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_server_soup_bin_tcp_packet)
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
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.logout_request = {}

-- Display: Logout Request
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_heartbeat = {}

-- Display: Client Heartbeat
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Unsequenced Data Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = packet_length - 2

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.login_request_packet.size =
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.username.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.password.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.requested_session.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_payload = {}

-- Dissect: Client Payload
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  -- Dissect Debug Packet
  if client_packet_type == "+" then
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if client_packet_type == "L" then
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if client_packet_type == "U" then
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat
  if client_packet_type == "R" then
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if client_packet_type == "O" then
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.logout_request.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_packet_header = {}

-- Size: Client Packet Header
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_packet_header.size =
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.packet_length.size + 
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_packet_type.size

-- Display: Client Packet Header
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.client_packet_header, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_packet_header.size then
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
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_packet = {}

-- Verify required size of Tcp packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_packet_header.size
end

-- Dissect Client Packet
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Client Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_soup_bin_tcp_packet = client_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_client_soup_bin_tcp_packet)
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
function omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.init()
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.accepted_sequence_number.current = nil
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.second.current = nil
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.conversation.current = nil
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.conversation.flows = {}
end

-- Connection roles for Nasdaq NordicDerivatives DepthOfBook Glimpse 2.22.4: Client is the initiator, Server is the acceptor
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
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.role = function(packet)
  if omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.prefs.acceptor_port

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

  if omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.prefs.swap_sides then
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
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nasdaq NordicDerivatives DepthOfBook Glimpse 2.22.4
function omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4, buffer(), omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.description, "("..buffer:len().." Bytes)")
  local role = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.role(packet)

  if role == "initiator" then
    return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_packet.dissect(buffer, packet, protocol)
  end

  return nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_packet.fingerprint = function(buffer)
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
nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_packet.fingerprint = function(buffer)
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

-- Dissector Heuristic for Nasdaq NordicDerivatives DepthOfBook Glimpse 2.22.4 (Tcp)
local function omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4
  omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NordicDerivatives DepthOfBook Glimpse 2.22.4 (Tcp)
local function omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4
  omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NordicDerivatives DepthOfBook Glimpse 2.22.4 (Tcp): apply the heuristic of the sender's connection role
local function omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4_tcp_heuristic(buffer, packet, parent)
  local role = nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.role(packet)
  local initiator = omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4_tcp_initiator_heuristic
  local acceptor = omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4.swap(packet)

  return false
end

-- Register Heuristics for Nasdaq NordicDerivatives DepthOfBook Glimpse 2.22.4
omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4:register_heuristic("tcp", omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4_tcp_heuristic)

-- Register Nasdaq NordicDerivatives DepthOfBook Glimpse 2.22.4 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nasdaq_nordicderivatives_depthofbook_glimpse_v2_22_4)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 2.22.4
--   Date: Wednesday, August 16, 2017
--   Specification: Nasdaq Nordic Genium INET GLIMPSE Protocol Specification (a2.22.4).pdf
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
