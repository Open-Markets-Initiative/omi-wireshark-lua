-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NsmEquities TotalView Itch 4.1 Protocol
local omi_nasdaq_nsmequities_totalview_itch_v4_1 = Proto("Omi.Nasdaq.NsmEquities.TotalView.Itch.v4.1", "Nasdaq NsmEquities TotalView Itch 4.1")

-- Protocol table
local nasdaq_nsmequities_totalview_itch_v4_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NsmEquities TotalView Itch 4.1 Fields
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "nasdaq.nsmequities.totalview.itch.v4.1.acceptedsequencenumber", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.accepted_session = ProtoField.new("Accepted Session", "nasdaq.nsmequities.totalview.itch.v4.1.acceptedsession", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.attribution = ProtoField.new("Attribution", "nasdaq.nsmequities.totalview.itch.v4.1.attribution", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.canceled_shares = ProtoField.new("Canceled Shares", "nasdaq.nsmequities.totalview.itch.v4.1.canceledshares", ftypes.UINT32)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.client_packet_type = ProtoField.new("Packet Type", "nasdaq.nsmequities.totalview.itch.v4.1.clientpackettype", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.cross_price = ProtoField.new("Cross Price", "nasdaq.nsmequities.totalview.itch.v4.1.crossprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.cross_shares = ProtoField.new("Cross Shares", "nasdaq.nsmequities.totalview.itch.v4.1.crossshares", ftypes.UINT64)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.nsmequities.totalview.itch.v4.1.crosstype", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.current_reference_price = ProtoField.new("Current Reference Price", "nasdaq.nsmequities.totalview.itch.v4.1.currentreferenceprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.debug_text = ProtoField.new("Debug Text", "nasdaq.nsmequities.totalview.itch.v4.1.debugtext", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.event_code = ProtoField.new("Event Code", "nasdaq.nsmequities.totalview.itch.v4.1.eventcode", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.executed_shares = ProtoField.new("Executed Shares", "nasdaq.nsmequities.totalview.itch.v4.1.executedshares", ftypes.UINT32)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.execution_price = ProtoField.new("Execution Price", "nasdaq.nsmequities.totalview.itch.v4.1.executionprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.far_price = ProtoField.new("Far Price", "nasdaq.nsmequities.totalview.itch.v4.1.farprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.nsmequities.totalview.itch.v4.1.financialstatusindicator", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nasdaq.nsmequities.totalview.itch.v4.1.imbalancedirection", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.imbalance_shares = ProtoField.new("Imbalance Shares", "nasdaq.nsmequities.totalview.itch.v4.1.imbalanceshares", ftypes.UINT64)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.interest_flag = ProtoField.new("Interest Flag", "nasdaq.nsmequities.totalview.itch.v4.1.interestflag", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.market_category = ProtoField.new("Market Category", "nasdaq.nsmequities.totalview.itch.v4.1.marketcategory", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.market_maker_mode = ProtoField.new("Market Maker Mode", "nasdaq.nsmequities.totalview.itch.v4.1.marketmakermode", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.market_participant_state = ProtoField.new("Market Participant State", "nasdaq.nsmequities.totalview.itch.v4.1.marketparticipantstate", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.match_number = ProtoField.new("Match Number", "nasdaq.nsmequities.totalview.itch.v4.1.matchnumber", ftypes.UINT64)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.message_count = ProtoField.new("Message Count", "nasdaq.nsmequities.totalview.itch.v4.1.messagecount", ftypes.UINT16)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.message_length = ProtoField.new("Message Length", "nasdaq.nsmequities.totalview.itch.v4.1.messagelength", ftypes.UINT16)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.message_type = ProtoField.new("Message Type", "nasdaq.nsmequities.totalview.itch.v4.1.messagetype", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.mpid = ProtoField.new("Mpid", "nasdaq.nsmequities.totalview.itch.v4.1.mpid", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.nanoseconds = ProtoField.new("Nanoseconds", "nasdaq.nsmequities.totalview.itch.v4.1.nanoseconds", ftypes.UINT32)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.near_price = ProtoField.new("Near Price", "nasdaq.nsmequities.totalview.itch.v4.1.nearprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.new_order_reference_number = ProtoField.new("New Order Reference Number", "nasdaq.nsmequities.totalview.itch.v4.1.neworderreferencenumber", ftypes.UINT64)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.nsmequities.totalview.itch.v4.1.orderreferencenumber", ftypes.UINT64)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.original_order_reference_number = ProtoField.new("Original Order Reference Number", "nasdaq.nsmequities.totalview.itch.v4.1.originalorderreferencenumber", ftypes.UINT64)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.nsmequities.totalview.itch.v4.1.packetlength", ftypes.UINT16)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.paired_shares = ProtoField.new("Paired Shares", "nasdaq.nsmequities.totalview.itch.v4.1.pairedshares", ftypes.UINT64)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.password = ProtoField.new("Password", "nasdaq.nsmequities.totalview.itch.v4.1.password", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.price = ProtoField.new("Price", "nasdaq.nsmequities.totalview.itch.v4.1.price", ftypes.DOUBLE)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.price_variation_indicator = ProtoField.new("Price Variation Indicator", "nasdaq.nsmequities.totalview.itch.v4.1.pricevariationindicator", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.primary_market_maker = ProtoField.new("Primary Market Maker", "nasdaq.nsmequities.totalview.itch.v4.1.primarymarketmaker", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.printable = ProtoField.new("Printable", "nasdaq.nsmequities.totalview.itch.v4.1.printable", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.reason = ProtoField.new("Reason", "nasdaq.nsmequities.totalview.itch.v4.1.reason", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.nsmequities.totalview.itch.v4.1.regshoaction", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.nsmequities.totalview.itch.v4.1.rejectreasoncode", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.nsmequities.totalview.itch.v4.1.requestedsequencenumber", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.nsmequities.totalview.itch.v4.1.requestedsession", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.reserved = ProtoField.new("Reserved", "nasdaq.nsmequities.totalview.itch.v4.1.reserved", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.nsmequities.totalview.itch.v4.1.roundlotsize", ftypes.UINT32)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.round_lots_only = ProtoField.new("Round Lots Only", "nasdaq.nsmequities.totalview.itch.v4.1.roundlotsonly", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.second = ProtoField.new("Second", "nasdaq.nsmequities.totalview.itch.v4.1.second", ftypes.UINT32)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.nsmequities.totalview.itch.v4.1.sequencenumber", ftypes.UINT64)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.nsmequities.totalview.itch.v4.1.sequencedmessagetype", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.server_packet_type = ProtoField.new("Packet Type", "nasdaq.nsmequities.totalview.itch.v4.1.serverpackettype", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.session = ProtoField.new("Session", "nasdaq.nsmequities.totalview.itch.v4.1.session", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.shares = ProtoField.new("Shares", "nasdaq.nsmequities.totalview.itch.v4.1.shares", ftypes.UINT32)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.side = ProtoField.new("Side", "nasdaq.nsmequities.totalview.itch.v4.1.side", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.stock = ProtoField.new("Stock", "nasdaq.nsmequities.totalview.itch.v4.1.stock", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.trading_state = ProtoField.new("Trading State", "nasdaq.nsmequities.totalview.itch.v4.1.tradingstate", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "nasdaq.nsmequities.totalview.itch.v4.1.unsequencedmessage", ftypes.BYTES)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.nsmequities.totalview.itch.v4.1.unsequencedmessagetype", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.username = ProtoField.new("Username", "nasdaq.nsmequities.totalview.itch.v4.1.username", ftypes.STRING)

-- Nasdaq NsmEquities TotalView Itch 4.1 Framing
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.client_packet = ProtoField.new("Packet", "nasdaq.nsmequities.totalview.itch.v4.1.clientpacket", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.client_packet_header = ProtoField.new("Packet Header", "nasdaq.nsmequities.totalview.itch.v4.1.clientpacketheader", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.nsmequities.totalview.itch.v4.1.clientsoupbintcppacket", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.message = ProtoField.new("Message", "nasdaq.nsmequities.totalview.itch.v4.1.message", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.message_header = ProtoField.new("Message Header", "nasdaq.nsmequities.totalview.itch.v4.1.messageheader", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.packet = ProtoField.new("Packet", "nasdaq.nsmequities.totalview.itch.v4.1.packet", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.nsmequities.totalview.itch.v4.1.packetheader", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.server_packet = ProtoField.new("Packet", "nasdaq.nsmequities.totalview.itch.v4.1.serverpacket", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.server_packet_header = ProtoField.new("Packet Header", "nasdaq.nsmequities.totalview.itch.v4.1.serverpacketheader", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.nsmequities.totalview.itch.v4.1.serversoupbintcppacket", ftypes.STRING)

-- Nasdaq NsmEquities TotalView 4.1 Application Messages
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.add_order_message = ProtoField.new("Add Order Message", "nasdaq.nsmequities.totalview.itch.v4.1.addordermessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.add_order_with_mpid_message = ProtoField.new("Add Order With Mpid Message", "nasdaq.nsmequities.totalview.itch.v4.1.addorderwithmpidmessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "nasdaq.nsmequities.totalview.itch.v4.1.brokentrademessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.cross_trade_message = ProtoField.new("Cross Trade Message", "nasdaq.nsmequities.totalview.itch.v4.1.crosstrademessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.market_participant_position_message = ProtoField.new("Market Participant Position Message", "nasdaq.nsmequities.totalview.itch.v4.1.marketparticipantpositionmessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.net_order_imbalance_indicator_message = ProtoField.new("Net Order Imbalance Indicator Message", "nasdaq.nsmequities.totalview.itch.v4.1.netorderimbalanceindicatormessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "nasdaq.nsmequities.totalview.itch.v4.1.ordercancelmessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.order_delete_message = ProtoField.new("Order Delete Message", "nasdaq.nsmequities.totalview.itch.v4.1.orderdeletemessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.order_executed_message = ProtoField.new("Order Executed Message", "nasdaq.nsmequities.totalview.itch.v4.1.orderexecutedmessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.order_executed_with_price_message = ProtoField.new("Order Executed With Price Message", "nasdaq.nsmequities.totalview.itch.v4.1.orderexecutedwithpricemessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.order_replace_message = ProtoField.new("Order Replace Message", "nasdaq.nsmequities.totalview.itch.v4.1.orderreplacemessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.reg_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Reg Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.nsmequities.totalview.itch.v4.1.regshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.retail_price_improvement_indicator_message = ProtoField.new("Retail Price Improvement Indicator Message", "nasdaq.nsmequities.totalview.itch.v4.1.retailpriceimprovementindicatormessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.nsmequities.totalview.itch.v4.1.stockdirectorymessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.stock_trading_action_message = ProtoField.new("Stock Trading Action Message", "nasdaq.nsmequities.totalview.itch.v4.1.stocktradingactionmessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nsmequities.totalview.itch.v4.1.systemeventmessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.timestamp_message = ProtoField.new("Timestamp Message", "nasdaq.nsmequities.totalview.itch.v4.1.timestampmessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.trade_message = ProtoField.new("Trade Message", "nasdaq.nsmequities.totalview.itch.v4.1.trademessage", ftypes.STRING)

-- Nasdaq NsmEquities TotalView 4.1 Session Messages
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "nasdaq.nsmequities.totalview.itch.v4.1.clientheartbeat", ftypes.BYTES)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.nsmequities.totalview.itch.v4.1.debugpacket", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.nsmequities.totalview.itch.v4.1.endofsession", ftypes.BYTES)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.heartbeat = ProtoField.new("Heartbeat", "nasdaq.nsmequities.totalview.itch.v4.1.heartbeat", ftypes.BYTES)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.nsmequities.totalview.itch.v4.1.loginacceptedpacket", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.nsmequities.totalview.itch.v4.1.loginrejectedpacket", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.nsmequities.totalview.itch.v4.1.loginrequestpacket", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.logout_request = ProtoField.new("Logout Request", "nasdaq.nsmequities.totalview.itch.v4.1.logoutrequest", ftypes.BYTES)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.nsmequities.totalview.itch.v4.1.sequenceddatapacket", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "nasdaq.nsmequities.totalview.itch.v4.1.serverheartbeat", ftypes.BYTES)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.nsmequities.totalview.itch.v4.1.unsequenceddatapacket", ftypes.STRING)

-- Nasdaq NsmEquities TotalView Itch 4.1 Generated Fields
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.message_index = ProtoField.new("Message Index", "nasdaq.nsmequities.totalview.itch.v4.1.messageindex", ftypes.UINT16)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nasdaq.nsmequities.totalview.itch.v4.1.messagesequencenumber", ftypes.UINT64)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "nasdaq.nsmequities.totalview.itch.v4.1.sequenceddatapacketsequencenumber", ftypes.UINT64)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nsmequities.totalview.itch.v4.1.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nasdaq NsmEquities TotalView Itch 4.1 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_nsmequities_totalview_itch_v4_1.timestamp_format = 2

-- Hours behind UTC (EST) for midnight calculation
nasdaq_nsmequities_totalview_itch_v4_1.utc_offset_hours = 5

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
nasdaq_nsmequities_totalview_itch_v4_1.format_timestamp = true

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

-- Nasdaq NsmEquities TotalView Itch 4.1 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.session_messages = true
show.indexes = true
show.sequences = true

-- Register Nasdaq NsmEquities TotalView Itch 4.1 Show Options
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.timestamp_format = Pref.enum("Nanoseconds Format", 2, "Nanoseconds display format", timestamp_format_enum, false)
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_headers then
    show.headers = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_headers
  end
  if show.session_messages ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_session_messages
  end
  if show.structs ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_structs then
    show.structs = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_indexes then
    show.indexes = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_indexes
  end
  if show.sequences ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_sequences then
    show.sequences = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_sequences
  end
  if nasdaq_nsmequities_totalview_itch_v4_1.format_timestamp ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.format_timestamp then
    nasdaq_nsmequities_totalview_itch_v4_1.format_timestamp = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.format_timestamp
  end
  if nasdaq_nsmequities_totalview_itch_v4_1.timestamp_format ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.timestamp_format then
    nasdaq_nsmequities_totalview_itch_v4_1.timestamp_format = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.timestamp_format
  end
  if nasdaq_nsmequities_totalview_itch_v4_1.utc_offset_hours ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.utc_offset_hours then
    nasdaq_nsmequities_totalview_itch_v4_1.utc_offset_hours = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.utc_offset_hours
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nasdaq_nsmequities_totalview_itch_v4_1.conversation = {}
nasdaq_nsmequities_totalview_itch_v4_1.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
nasdaq_nsmequities_totalview_itch_v4_1.stream_frame = nil
nasdaq_nsmequities_totalview_itch_v4_1.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
nasdaq_nsmequities_totalview_itch_v4_1.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nasdaq_nsmequities_totalview_itch_v4_1.conversation.data = function(packet)
  local key = nasdaq_nsmequities_totalview_itch_v4_1.conversation.key(packet)
  local data = nasdaq_nsmequities_totalview_itch_v4_1.conversation.flows[key]
  if data == nil then
    data = { accepted_sequence_number = { last = nil, frames = {} }, second = { last = nil, frames = {} }, sequence = { next = nil, frames = {} } }
    nasdaq_nsmequities_totalview_itch_v4_1.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nasdaq_nsmequities_totalview_itch_v4_1.conversation.current = nil


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
-- Nasdaq NsmEquities TotalView Itch 4.1 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
nasdaq_nsmequities_totalview_itch_v4_1.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
nasdaq_nsmequities_totalview_itch_v4_1.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
nasdaq_nsmequities_totalview_itch_v4_1.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
nasdaq_nsmequities_totalview_itch_v4_1.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nsmequities_totalview_itch_v4_1.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
nasdaq_nsmequities_totalview_itch_v4_1.accepted_session = {}

-- Size: Accepted Session
nasdaq_nsmequities_totalview_itch_v4_1.accepted_session.size = 10

-- Display: Accepted Session
nasdaq_nsmequities_totalview_itch_v4_1.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
nasdaq_nsmequities_totalview_itch_v4_1.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.accepted_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v4_1.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Attribution
nasdaq_nsmequities_totalview_itch_v4_1.attribution = {}

-- Size: Attribution
nasdaq_nsmequities_totalview_itch_v4_1.attribution.size = 4

-- Display: Attribution
nasdaq_nsmequities_totalview_itch_v4_1.attribution.display = function(value)
  return "Attribution: "..value
end

-- Dissect: Attribution
nasdaq_nsmequities_totalview_itch_v4_1.attribution.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.attribution.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v4_1.attribution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.attribution, range, value, display)

  return offset + length, value
end

-- Canceled Shares
nasdaq_nsmequities_totalview_itch_v4_1.canceled_shares = {}

-- Size: Canceled Shares
nasdaq_nsmequities_totalview_itch_v4_1.canceled_shares.size = 4

-- Display: Canceled Shares
nasdaq_nsmequities_totalview_itch_v4_1.canceled_shares.display = function(value)
  return "Canceled Shares: "..value
end

-- Dissect: Canceled Shares
nasdaq_nsmequities_totalview_itch_v4_1.canceled_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.canceled_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.canceled_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.canceled_shares, range, value, display)

  return offset + length, value
end

-- Client Packet Type
nasdaq_nsmequities_totalview_itch_v4_1.client_packet_type = {}

-- Size: Client Packet Type
nasdaq_nsmequities_totalview_itch_v4_1.client_packet_type.size = 1

-- Display: Client Packet Type
nasdaq_nsmequities_totalview_itch_v4_1.client_packet_type.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v4_1.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Cross Price
nasdaq_nsmequities_totalview_itch_v4_1.cross_price = {}

-- Size: Cross Price
nasdaq_nsmequities_totalview_itch_v4_1.cross_price.size = 4

-- Display: Cross Price
nasdaq_nsmequities_totalview_itch_v4_1.cross_price.display = function(value)
  return "Cross Price: "..value
end

-- Translate: Cross Price
nasdaq_nsmequities_totalview_itch_v4_1.cross_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Cross Price
nasdaq_nsmequities_totalview_itch_v4_1.cross_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.cross_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_totalview_itch_v4_1.cross_price.translate(raw)
  local display = nasdaq_nsmequities_totalview_itch_v4_1.cross_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.cross_price, range, value, display)

  return offset + length, value
end

-- Cross Shares
nasdaq_nsmequities_totalview_itch_v4_1.cross_shares = {}

-- Size: Cross Shares
nasdaq_nsmequities_totalview_itch_v4_1.cross_shares.size = 8

-- Display: Cross Shares
nasdaq_nsmequities_totalview_itch_v4_1.cross_shares.display = function(value)
  return "Cross Shares: "..value
end

-- Dissect: Cross Shares
nasdaq_nsmequities_totalview_itch_v4_1.cross_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.cross_shares.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.cross_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.cross_shares, range, value, display)

  return offset + length, value
end

-- Cross Type
nasdaq_nsmequities_totalview_itch_v4_1.cross_type = {}

-- Size: Cross Type
nasdaq_nsmequities_totalview_itch_v4_1.cross_type.size = 1

-- Display: Cross Type
nasdaq_nsmequities_totalview_itch_v4_1.cross_type.display = function(value)
  if value == "O" then
    return "Cross Type: Opening (O)"
  end
  if value == "C" then
    return "Cross Type: Closing (C)"
  end
  if value == "H" then
    return "Cross Type: Cross For Ipo And Halted (H)"
  end
  if value == "I" then
    return "Cross Type: Nasdaq Cross Network (I)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nasdaq_nsmequities_totalview_itch_v4_1.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Current Reference Price
nasdaq_nsmequities_totalview_itch_v4_1.current_reference_price = {}

-- Size: Current Reference Price
nasdaq_nsmequities_totalview_itch_v4_1.current_reference_price.size = 4

-- Display: Current Reference Price
nasdaq_nsmequities_totalview_itch_v4_1.current_reference_price.display = function(value)
  return "Current Reference Price: "..value
end

-- Translate: Current Reference Price
nasdaq_nsmequities_totalview_itch_v4_1.current_reference_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Current Reference Price
nasdaq_nsmequities_totalview_itch_v4_1.current_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.current_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_totalview_itch_v4_1.current_reference_price.translate(raw)
  local display = nasdaq_nsmequities_totalview_itch_v4_1.current_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.current_reference_price, range, value, display)

  return offset + length, value
end

-- Debug Text
nasdaq_nsmequities_totalview_itch_v4_1.debug_text = {}

-- Size: Debug Text
nasdaq_nsmequities_totalview_itch_v4_1.debug_text.size = 1

-- Display: Debug Text
nasdaq_nsmequities_totalview_itch_v4_1.debug_text.display = function(value)
  return "Debug Text: "..value
end

-- Dissect: Debug Text
nasdaq_nsmequities_totalview_itch_v4_1.debug_text.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.debug_text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.debug_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.debug_text, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_nsmequities_totalview_itch_v4_1.event_code = {}

-- Size: Event Code
nasdaq_nsmequities_totalview_itch_v4_1.event_code.size = 1

-- Display: Event Code
nasdaq_nsmequities_totalview_itch_v4_1.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages (O)"
  end
  if value == "S" then
    return "Event Code: Start Of System Hours (S)"
  end
  if value == "Q" then
    return "Event Code: Start Of Market Hours (Q)"
  end
  if value == "M" then
    return "Event Code: End Of Market Hours (M)"
  end
  if value == "E" then
    return "Event Code: End Of System Hours (E)"
  end
  if value == "C" then
    return "Event Code: End Of Messages (C)"
  end
  if value == "A" then
    return "Event Code: Emergency Market Condition Halt (A)"
  end
  if value == "R" then
    return "Event Code: Emergency Market Condition Quote Only Period (R)"
  end
  if value == "B" then
    return "Event Code: Emergency Market Condition Resumption (B)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_nsmequities_totalview_itch_v4_1.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executed Shares
nasdaq_nsmequities_totalview_itch_v4_1.executed_shares = {}

-- Size: Executed Shares
nasdaq_nsmequities_totalview_itch_v4_1.executed_shares.size = 4

-- Display: Executed Shares
nasdaq_nsmequities_totalview_itch_v4_1.executed_shares.display = function(value)
  return "Executed Shares: "..value
end

-- Dissect: Executed Shares
nasdaq_nsmequities_totalview_itch_v4_1.executed_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.executed_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.executed_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.executed_shares, range, value, display)

  return offset + length, value
end

-- Execution Price
nasdaq_nsmequities_totalview_itch_v4_1.execution_price = {}

-- Size: Execution Price
nasdaq_nsmequities_totalview_itch_v4_1.execution_price.size = 4

-- Display: Execution Price
nasdaq_nsmequities_totalview_itch_v4_1.execution_price.display = function(value)
  return "Execution Price: "..value
end

-- Translate: Execution Price
nasdaq_nsmequities_totalview_itch_v4_1.execution_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Execution Price
nasdaq_nsmequities_totalview_itch_v4_1.execution_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.execution_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_totalview_itch_v4_1.execution_price.translate(raw)
  local display = nasdaq_nsmequities_totalview_itch_v4_1.execution_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Far Price
nasdaq_nsmequities_totalview_itch_v4_1.far_price = {}

-- Size: Far Price
nasdaq_nsmequities_totalview_itch_v4_1.far_price.size = 4

-- Display: Far Price
nasdaq_nsmequities_totalview_itch_v4_1.far_price.display = function(value)
  return "Far Price: "..value
end

-- Translate: Far Price
nasdaq_nsmequities_totalview_itch_v4_1.far_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Far Price
nasdaq_nsmequities_totalview_itch_v4_1.far_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.far_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_totalview_itch_v4_1.far_price.translate(raw)
  local display = nasdaq_nsmequities_totalview_itch_v4_1.far_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.far_price, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
nasdaq_nsmequities_totalview_itch_v4_1.financial_status_indicator = {}

-- Size: Financial Status Indicator
nasdaq_nsmequities_totalview_itch_v4_1.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
nasdaq_nsmequities_totalview_itch_v4_1.financial_status_indicator.display = function(value)
  if value == "D" then
    return "Financial Status Indicator: Deficient (D)"
  end
  if value == "E" then
    return "Financial Status Indicator: Delinquent (E)"
  end
  if value == "Q" then
    return "Financial Status Indicator: Bankrupt (Q)"
  end
  if value == "S" then
    return "Financial Status Indicator: Suspended (S)"
  end
  if value == "G" then
    return "Financial Status Indicator: Deficient And Bankrupt (G)"
  end
  if value == "H" then
    return "Financial Status Indicator: Deficient And Delinquent (H)"
  end
  if value == "J" then
    return "Financial Status Indicator: Delinquent And Bankrupt (J)"
  end
  if value == "K" then
    return "Financial Status Indicator: Deficient Delinquent And Bankrupt (K)"
  end
  if value == " " then
    return "Financial Status Indicator: In Compliance (<whitespace>)"
  end

  return "Financial Status Indicator: Unknown("..value..")"
end

-- Dissect: Financial Status Indicator
nasdaq_nsmequities_totalview_itch_v4_1.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Imbalance Direction
nasdaq_nsmequities_totalview_itch_v4_1.imbalance_direction = {}

-- Size: Imbalance Direction
nasdaq_nsmequities_totalview_itch_v4_1.imbalance_direction.size = 1

-- Display: Imbalance Direction
nasdaq_nsmequities_totalview_itch_v4_1.imbalance_direction.display = function(value)
  if value == "B" then
    return "Imbalance Direction: Buy (B)"
  end
  if value == "S" then
    return "Imbalance Direction: Sell (S)"
  end
  if value == "N" then
    return "Imbalance Direction: No (N)"
  end
  if value == "O" then
    return "Imbalance Direction: Insufficient Orders (O)"
  end

  return "Imbalance Direction: Unknown("..value..")"
end

-- Dissect: Imbalance Direction
nasdaq_nsmequities_totalview_itch_v4_1.imbalance_direction.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.imbalance_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.imbalance_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Imbalance Shares
nasdaq_nsmequities_totalview_itch_v4_1.imbalance_shares = {}

-- Size: Imbalance Shares
nasdaq_nsmequities_totalview_itch_v4_1.imbalance_shares.size = 8

-- Display: Imbalance Shares
nasdaq_nsmequities_totalview_itch_v4_1.imbalance_shares.display = function(value)
  return "Imbalance Shares: "..value
end

-- Dissect: Imbalance Shares
nasdaq_nsmequities_totalview_itch_v4_1.imbalance_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.imbalance_shares.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.imbalance_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.imbalance_shares, range, value, display)

  return offset + length, value
end

-- Interest Flag
nasdaq_nsmequities_totalview_itch_v4_1.interest_flag = {}

-- Size: Interest Flag
nasdaq_nsmequities_totalview_itch_v4_1.interest_flag.size = 1

-- Display: Interest Flag
nasdaq_nsmequities_totalview_itch_v4_1.interest_flag.display = function(value)
  if value == "B" then
    return "Interest Flag: Rpi Buy (B)"
  end
  if value == "S" then
    return "Interest Flag: Rpi Sell (S)"
  end
  if value == "A" then
    return "Interest Flag: Rpi Both (A)"
  end
  if value == "N" then
    return "Interest Flag: No Rpi (N)"
  end

  return "Interest Flag: Unknown("..value..")"
end

-- Dissect: Interest Flag
nasdaq_nsmequities_totalview_itch_v4_1.interest_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.interest_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.interest_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.interest_flag, range, value, display)

  return offset + length, value
end

-- Market Category
nasdaq_nsmequities_totalview_itch_v4_1.market_category = {}

-- Size: Market Category
nasdaq_nsmequities_totalview_itch_v4_1.market_category.size = 1

-- Display: Market Category
nasdaq_nsmequities_totalview_itch_v4_1.market_category.display = function(value)
  if value == "N" then
    return "Market Category: Nyse (N)"
  end
  if value == "A" then
    return "Market Category: Amex (A)"
  end
  if value == "P" then
    return "Market Category: Arca (P)"
  end
  if value == "Q" then
    return "Market Category: Nasdaq Gsm (Q)"
  end
  if value == "G" then
    return "Market Category: Nasdaq Gm (G)"
  end
  if value == "S" then
    return "Market Category: Nasdaq Cm (S)"
  end
  if value == "Z" then
    return "Market Category: Bats (Z)"
  end

  return "Market Category: Unknown("..value..")"
end

-- Dissect: Market Category
nasdaq_nsmequities_totalview_itch_v4_1.market_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.market_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.market_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.market_category, range, value, display)

  return offset + length, value
end

-- Market Maker Mode
nasdaq_nsmequities_totalview_itch_v4_1.market_maker_mode = {}

-- Size: Market Maker Mode
nasdaq_nsmequities_totalview_itch_v4_1.market_maker_mode.size = 1

-- Display: Market Maker Mode
nasdaq_nsmequities_totalview_itch_v4_1.market_maker_mode.display = function(value)
  if value == "N" then
    return "Market Maker Mode: Normal (N)"
  end
  if value == "P" then
    return "Market Maker Mode: Passive (P)"
  end
  if value == "S" then
    return "Market Maker Mode: Syndicate (S)"
  end
  if value == "R" then
    return "Market Maker Mode: Pre Syndicate (R)"
  end
  if value == "L" then
    return "Market Maker Mode: Penalty (L)"
  end

  return "Market Maker Mode: Unknown("..value..")"
end

-- Dissect: Market Maker Mode
nasdaq_nsmequities_totalview_itch_v4_1.market_maker_mode.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.market_maker_mode.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.market_maker_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.market_maker_mode, range, value, display)

  return offset + length, value
end

-- Market Participant State
nasdaq_nsmequities_totalview_itch_v4_1.market_participant_state = {}

-- Size: Market Participant State
nasdaq_nsmequities_totalview_itch_v4_1.market_participant_state.size = 1

-- Display: Market Participant State
nasdaq_nsmequities_totalview_itch_v4_1.market_participant_state.display = function(value)
  if value == "A" then
    return "Market Participant State: Active (A)"
  end
  if value == "E" then
    return "Market Participant State: Excused Withdrawn (E)"
  end
  if value == "W" then
    return "Market Participant State: Withdrawn (W)"
  end
  if value == "S" then
    return "Market Participant State: Suspended (S)"
  end
  if value == "D" then
    return "Market Participant State: Deleted (D)"
  end

  return "Market Participant State: Unknown("..value..")"
end

-- Dissect: Market Participant State
nasdaq_nsmequities_totalview_itch_v4_1.market_participant_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.market_participant_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.market_participant_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.market_participant_state, range, value, display)

  return offset + length, value
end

-- Match Number
nasdaq_nsmequities_totalview_itch_v4_1.match_number = {}

-- Size: Match Number
nasdaq_nsmequities_totalview_itch_v4_1.match_number.size = 8

-- Display: Match Number
nasdaq_nsmequities_totalview_itch_v4_1.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_nsmequities_totalview_itch_v4_1.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.match_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.match_number, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_nsmequities_totalview_itch_v4_1.message_count = {}

-- Size: Message Count
nasdaq_nsmequities_totalview_itch_v4_1.message_count.size = 2

-- Display: Message Count
nasdaq_nsmequities_totalview_itch_v4_1.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_nsmequities_totalview_itch_v4_1.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_nsmequities_totalview_itch_v4_1.message_length = {}

-- Size: Message Length
nasdaq_nsmequities_totalview_itch_v4_1.message_length.size = 2

-- Display: Message Length
nasdaq_nsmequities_totalview_itch_v4_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_nsmequities_totalview_itch_v4_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_nsmequities_totalview_itch_v4_1.message_type = {}

-- Size: Message Type
nasdaq_nsmequities_totalview_itch_v4_1.message_type.size = 1

-- Display: Message Type
nasdaq_nsmequities_totalview_itch_v4_1.message_type.display = function(value)
  if value == "T" then
    return "Message Type: Timestamp Message (T)"
  end
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "R" then
    return "Message Type: Stock Directory Message (R)"
  end
  if value == "H" then
    return "Message Type: Stock Trading Action Message (H)"
  end
  if value == "Y" then
    return "Message Type: Reg Sho Short Sale Price Test Restricted Indicator Message (Y)"
  end
  if value == "L" then
    return "Message Type: Market Participant Position Message (L)"
  end
  if value == "A" then
    return "Message Type: Add Order Message (A)"
  end
  if value == "F" then
    return "Message Type: Add Order With Mpid Message (F)"
  end
  if value == "E" then
    return "Message Type: Order Executed Message (E)"
  end
  if value == "C" then
    return "Message Type: Order Executed With Price Message (C)"
  end
  if value == "X" then
    return "Message Type: Order Cancel Message (X)"
  end
  if value == "D" then
    return "Message Type: Order Delete Message (D)"
  end
  if value == "U" then
    return "Message Type: Order Replace Message (U)"
  end
  if value == "P" then
    return "Message Type: Trade Message (P)"
  end
  if value == "Q" then
    return "Message Type: Cross Trade Message (Q)"
  end
  if value == "B" then
    return "Message Type: Broken Trade Message (B)"
  end
  if value == "I" then
    return "Message Type: Net Order Imbalance Indicator Message (I)"
  end
  if value == "N" then
    return "Message Type: Retail Price Improvement Indicator Message (N)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_nsmequities_totalview_itch_v4_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mpid
nasdaq_nsmequities_totalview_itch_v4_1.mpid = {}

-- Size: Mpid
nasdaq_nsmequities_totalview_itch_v4_1.mpid.size = 4

-- Display: Mpid
nasdaq_nsmequities_totalview_itch_v4_1.mpid.display = function(value)
  return "Mpid: "..value
end

-- Dissect: Mpid
nasdaq_nsmequities_totalview_itch_v4_1.mpid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v4_1.mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.mpid, range, value, display)

  return offset + length, value
end

-- Nanoseconds
nasdaq_nsmequities_totalview_itch_v4_1.nanoseconds = {}

-- Size: Nanoseconds
nasdaq_nsmequities_totalview_itch_v4_1.nanoseconds.size = 4

-- Display: Nanoseconds
nasdaq_nsmequities_totalview_itch_v4_1.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nasdaq_nsmequities_totalview_itch_v4_1.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Near Price
nasdaq_nsmequities_totalview_itch_v4_1.near_price = {}

-- Size: Near Price
nasdaq_nsmequities_totalview_itch_v4_1.near_price.size = 4

-- Display: Near Price
nasdaq_nsmequities_totalview_itch_v4_1.near_price.display = function(value)
  return "Near Price: "..value
end

-- Translate: Near Price
nasdaq_nsmequities_totalview_itch_v4_1.near_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Near Price
nasdaq_nsmequities_totalview_itch_v4_1.near_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.near_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_totalview_itch_v4_1.near_price.translate(raw)
  local display = nasdaq_nsmequities_totalview_itch_v4_1.near_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.near_price, range, value, display)

  return offset + length, value
end

-- New Order Reference Number
nasdaq_nsmequities_totalview_itch_v4_1.new_order_reference_number = {}

-- Size: New Order Reference Number
nasdaq_nsmequities_totalview_itch_v4_1.new_order_reference_number.size = 8

-- Display: New Order Reference Number
nasdaq_nsmequities_totalview_itch_v4_1.new_order_reference_number.display = function(value)
  return "New Order Reference Number: "..value
end

-- Dissect: New Order Reference Number
nasdaq_nsmequities_totalview_itch_v4_1.new_order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.new_order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.new_order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.new_order_reference_number, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.size = 8

-- Display: Order Reference Number
nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Original Order Reference Number
nasdaq_nsmequities_totalview_itch_v4_1.original_order_reference_number = {}

-- Size: Original Order Reference Number
nasdaq_nsmequities_totalview_itch_v4_1.original_order_reference_number.size = 8

-- Display: Original Order Reference Number
nasdaq_nsmequities_totalview_itch_v4_1.original_order_reference_number.display = function(value)
  return "Original Order Reference Number: "..value
end

-- Dissect: Original Order Reference Number
nasdaq_nsmequities_totalview_itch_v4_1.original_order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.original_order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.original_order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.original_order_reference_number, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_nsmequities_totalview_itch_v4_1.packet_length = {}

-- Size: Packet Length
nasdaq_nsmequities_totalview_itch_v4_1.packet_length.size = 2

-- Display: Packet Length
nasdaq_nsmequities_totalview_itch_v4_1.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_nsmequities_totalview_itch_v4_1.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Paired Shares
nasdaq_nsmequities_totalview_itch_v4_1.paired_shares = {}

-- Size: Paired Shares
nasdaq_nsmequities_totalview_itch_v4_1.paired_shares.size = 8

-- Display: Paired Shares
nasdaq_nsmequities_totalview_itch_v4_1.paired_shares.display = function(value)
  return "Paired Shares: "..value
end

-- Dissect: Paired Shares
nasdaq_nsmequities_totalview_itch_v4_1.paired_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.paired_shares.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.paired_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.paired_shares, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_nsmequities_totalview_itch_v4_1.password = {}

-- Size: Password
nasdaq_nsmequities_totalview_itch_v4_1.password.size = 10

-- Display: Password
nasdaq_nsmequities_totalview_itch_v4_1.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_nsmequities_totalview_itch_v4_1.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v4_1.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.password, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_nsmequities_totalview_itch_v4_1.price = {}

-- Size: Price
nasdaq_nsmequities_totalview_itch_v4_1.price.size = 4

-- Display: Price
nasdaq_nsmequities_totalview_itch_v4_1.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nasdaq_nsmequities_totalview_itch_v4_1.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
nasdaq_nsmequities_totalview_itch_v4_1.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_totalview_itch_v4_1.price.translate(raw)
  local display = nasdaq_nsmequities_totalview_itch_v4_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.price, range, value, display)

  return offset + length, value
end

-- Price Variation Indicator
nasdaq_nsmequities_totalview_itch_v4_1.price_variation_indicator = {}

-- Size: Price Variation Indicator
nasdaq_nsmequities_totalview_itch_v4_1.price_variation_indicator.size = 1

-- Display: Price Variation Indicator
nasdaq_nsmequities_totalview_itch_v4_1.price_variation_indicator.display = function(value)
  if value == "L" then
    return "Price Variation Indicator: Less (L)"
  end
  if value == "1" then
    return "Price Variation Indicator: One To One Point Nine Nine Percent (1)"
  end
  if value == "2" then
    return "Price Variation Indicator: Two To Two Point Nine Nine Percent (2)"
  end
  if value == "3" then
    return "Price Variation Indicator: Three To Three Point Nine Nine Percent (3)"
  end
  if value == "4" then
    return "Price Variation Indicator: Four To Four Point Nine Nine Percent (4)"
  end
  if value == "5" then
    return "Price Variation Indicator: Five To Five Point Nine Nine Percent (5)"
  end
  if value == "6" then
    return "Price Variation Indicator: Six To Six Point Nine Nine Percent (6)"
  end
  if value == "7" then
    return "Price Variation Indicator: Seven To Seven Point Nine Nine Percent (7)"
  end
  if value == "8" then
    return "Price Variation Indicator: Eight To Eight Point Nine Nine Percent (8)"
  end
  if value == "9" then
    return "Price Variation Indicator: Nine To Nine Point Nine Nine Percent (9)"
  end
  if value == "A" then
    return "Price Variation Indicator: Ten To Nineteen Point Nine Nine Percent (A)"
  end
  if value == "B" then
    return "Price Variation Indicator: Twenty To Twenty Nine Point Nine Nine Percent (B)"
  end
  if value == "C" then
    return "Price Variation Indicator: Thirty Percent Or Greater (C)"
  end
  if value == " " then
    return "Price Variation Indicator: No Calculation (<whitespace>)"
  end

  return "Price Variation Indicator: Unknown("..value..")"
end

-- Dissect: Price Variation Indicator
nasdaq_nsmequities_totalview_itch_v4_1.price_variation_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.price_variation_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.price_variation_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.price_variation_indicator, range, value, display)

  return offset + length, value
end

-- Primary Market Maker
nasdaq_nsmequities_totalview_itch_v4_1.primary_market_maker = {}

-- Size: Primary Market Maker
nasdaq_nsmequities_totalview_itch_v4_1.primary_market_maker.size = 1

-- Display: Primary Market Maker
nasdaq_nsmequities_totalview_itch_v4_1.primary_market_maker.display = function(value)
  if value == "Y" then
    return "Primary Market Maker: Primary (Y)"
  end
  if value == "N" then
    return "Primary Market Maker: Non Primary (N)"
  end

  return "Primary Market Maker: Unknown("..value..")"
end

-- Dissect: Primary Market Maker
nasdaq_nsmequities_totalview_itch_v4_1.primary_market_maker.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.primary_market_maker.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.primary_market_maker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.primary_market_maker, range, value, display)

  return offset + length, value
end

-- Printable
nasdaq_nsmequities_totalview_itch_v4_1.printable = {}

-- Size: Printable
nasdaq_nsmequities_totalview_itch_v4_1.printable.size = 1

-- Display: Printable
nasdaq_nsmequities_totalview_itch_v4_1.printable.display = function(value)
  if value == "N" then
    return "Printable: Non Printable (N)"
  end
  if value == "Y" then
    return "Printable: Printable (Y)"
  end

  return "Printable: Unknown("..value..")"
end

-- Dissect: Printable
nasdaq_nsmequities_totalview_itch_v4_1.printable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.printable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.printable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.printable, range, value, display)

  return offset + length, value
end

-- Reason
nasdaq_nsmequities_totalview_itch_v4_1.reason = {}

-- Size: Reason
nasdaq_nsmequities_totalview_itch_v4_1.reason.size = 4

-- Display: Reason
nasdaq_nsmequities_totalview_itch_v4_1.reason.display = function(value)
  if value == "T1" then
    return "Reason: Halt News Pending (T1)"
  end
  if value == "T2" then
    return "Reason: Halt News Disseminated (T2)"
  end
  if value == "T5" then
    return "Reason: Single Security Trading Pause In Effect (T5)"
  end
  if value == "T6" then
    return "Reason: Regulatory Halt Extraordinary Market Activity (T6)"
  end
  if value == "T8" then
    return "Reason: Halt Etf (T8)"
  end
  if value == "T12" then
    return "Reason: Trading Halted For Information Requested (T12)"
  end
  if value == "H4" then
    return "Reason: Halt Non Compliance (H4)"
  end
  if value == "H9" then
    return "Reason: Halt Filings Not Current (H9)"
  end
  if value == "H10" then
    return "Reason: Halt Sec Trading Suspension (H10)"
  end
  if value == "H11" then
    return "Reason: Halt Regulatory Concern (H11)"
  end
  if value == "O1" then
    return "Reason: Operations Halt (O1)"
  end
  if value == "LUDP" then
    return "Reason: Volatility Trading Pause (LUDP)"
  end
  if value == "LUDS" then
    return "Reason: Volatility Trading Pause Straddle Condition (LUDS)"
  end
  if value == "MWC1" then
    return "Reason: Market Wide Circuit Breaker Halt Level One (MWC1)"
  end
  if value == "MWC2" then
    return "Reason: Market Wide Circuit Breaker Halt Level Two (MWC2)"
  end
  if value == "MWC3" then
    return "Reason: Market Wide Circuit Breaker Halt Level Three (MWC3)"
  end
  if value == "MWC0" then
    return "Reason: Market Wide Circuit Breaker Halt Carry Over (MWC0)"
  end
  if value == "IPO1" then
    return "Reason: Ipo Issue Not Yet Trading (IPO1)"
  end
  if value == "M1" then
    return "Reason: Corporate Action (M1)"
  end
  if value == "M2" then
    return "Reason: Quotation Not Available (M2)"
  end
  if value == "T3" then
    return "Reason: News And Resumption Times (T3)"
  end
  if value == "T7" then
    return "Reason: Single Security Trading Pause Quotation Only Period (T7)"
  end
  if value == "R4" then
    return "Reason: Qualifications Issues Reviewed (R4)"
  end
  if value == "R9" then
    return "Reason: Filing Requirements Satisfied (R9)"
  end
  if value == "C3" then
    return "Reason: Issuer News Not Forthcoming (C3)"
  end
  if value == "C4" then
    return "Reason: Qualifications Halt Ended (C4)"
  end
  if value == "C9" then
    return "Reason: Qualifications Halt Concluded (C9)"
  end
  if value == "C11" then
    return "Reason: Trade Halt Concluded (C11)"
  end
  if value == "MWCQ" then
    return "Reason: Market Wide Circuit Breaker Resumption (MWCQ)"
  end
  if value == "R1" then
    return "Reason: New Issue Available (R1)"
  end
  if value == "R2" then
    return "Reason: Issue Available (R2)"
  end
  if value == "IPOQ" then
    return "Reason: Ipo Security Released For Quotation (IPOQ)"
  end
  if value == "IPOE" then
    return "Reason: Ipo Security Positioning Window Extension (IPOE)"
  end
  if value == "    " then
    return "Reason: Reason Not Available (<whitespace>)"
  end

  return "Reason: Unknown("..value..")"
end

-- Dissect: Reason
nasdaq_nsmequities_totalview_itch_v4_1.reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v4_1.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.reason, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_action = {}

-- Size: Reg Sho Action
nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_action.size = 1

-- Display: Reg Sho Action
nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_action.display = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Reg Sho Short Sale Price Test Restriction (1)"
  end
  if value == "2" then
    return "Reg Sho Action: Reg Sho Short Sale Price Test (2)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_nsmequities_totalview_itch_v4_1.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_nsmequities_totalview_itch_v4_1.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_nsmequities_totalview_itch_v4_1.reject_reason_code.display = function(value)
  if value == "A" then
    return "Reject Reason Code: Not Authorized (A)"
  end
  if value == "S" then
    return "Reject Reason Code: Session Not Available (S)"
  end

  return "Reject Reason Code: Unknown("..value..")"
end

-- Dissect: Reject Reason Code
nasdaq_nsmequities_totalview_itch_v4_1.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_nsmequities_totalview_itch_v4_1.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_nsmequities_totalview_itch_v4_1.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_nsmequities_totalview_itch_v4_1.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_nsmequities_totalview_itch_v4_1.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nsmequities_totalview_itch_v4_1.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_nsmequities_totalview_itch_v4_1.requested_session = {}

-- Size: Requested Session
nasdaq_nsmequities_totalview_itch_v4_1.requested_session.size = 10

-- Display: Requested Session
nasdaq_nsmequities_totalview_itch_v4_1.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_nsmequities_totalview_itch_v4_1.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.requested_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v4_1.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved
nasdaq_nsmequities_totalview_itch_v4_1.reserved = {}

-- Size: Reserved
nasdaq_nsmequities_totalview_itch_v4_1.reserved.size = 1

-- Display: Reserved
nasdaq_nsmequities_totalview_itch_v4_1.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
nasdaq_nsmequities_totalview_itch_v4_1.reserved.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.reserved.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.reserved, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_nsmequities_totalview_itch_v4_1.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_nsmequities_totalview_itch_v4_1.round_lot_size.size = 4

-- Display: Round Lot Size
nasdaq_nsmequities_totalview_itch_v4_1.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_nsmequities_totalview_itch_v4_1.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Round Lots Only
nasdaq_nsmequities_totalview_itch_v4_1.round_lots_only = {}

-- Size: Round Lots Only
nasdaq_nsmequities_totalview_itch_v4_1.round_lots_only.size = 1

-- Display: Round Lots Only
nasdaq_nsmequities_totalview_itch_v4_1.round_lots_only.display = function(value)
  if value == "Y" then
    return "Round Lots Only: Yes (Y)"
  end
  if value == "N" then
    return "Round Lots Only: No (N)"
  end

  return "Round Lots Only: Unknown("..value..")"
end

-- Dissect: Round Lots Only
nasdaq_nsmequities_totalview_itch_v4_1.round_lots_only.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.round_lots_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.round_lots_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.round_lots_only, range, value, display)

  return offset + length, value
end

-- Second
nasdaq_nsmequities_totalview_itch_v4_1.second = {}

-- Size: Second
nasdaq_nsmequities_totalview_itch_v4_1.second.size = 4

-- Store: Second
nasdaq_nsmequities_totalview_itch_v4_1.second.current = nil

-- Generated: Second
nasdaq_nsmequities_totalview_itch_v4_1.second.generated = function(value, range, packet, parent)
  local display = nasdaq_nsmequities_totalview_itch_v4_1.second.display(value)
  local second = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.second, range, value, display)
  second:set_generated()
end

-- Display: Second
nasdaq_nsmequities_totalview_itch_v4_1.second.display = function(value)
  return "Second: "..value
end

-- Dissect: Second
nasdaq_nsmequities_totalview_itch_v4_1.second.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.second.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.second.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.second, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_nsmequities_totalview_itch_v4_1.sequence_number = {}

-- Size: Sequence Number
nasdaq_nsmequities_totalview_itch_v4_1.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_nsmequities_totalview_itch_v4_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_nsmequities_totalview_itch_v4_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
nasdaq_nsmequities_totalview_itch_v4_1.sequenced_message_type = {}

-- Size: Sequenced Message Type
nasdaq_nsmequities_totalview_itch_v4_1.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
nasdaq_nsmequities_totalview_itch_v4_1.sequenced_message_type.display = function(value)
  return "Sequenced Message Type: "..value
end

-- Dissect: Sequenced Message Type
nasdaq_nsmequities_totalview_itch_v4_1.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
nasdaq_nsmequities_totalview_itch_v4_1.server_packet_type = {}

-- Size: Server Packet Type
nasdaq_nsmequities_totalview_itch_v4_1.server_packet_type.size = 1

-- Display: Server Packet Type
nasdaq_nsmequities_totalview_itch_v4_1.server_packet_type.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v4_1.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_nsmequities_totalview_itch_v4_1.session = {}

-- Size: Session
nasdaq_nsmequities_totalview_itch_v4_1.session.size = 10

-- Display: Session
nasdaq_nsmequities_totalview_itch_v4_1.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_nsmequities_totalview_itch_v4_1.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.session.size
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

  local display = nasdaq_nsmequities_totalview_itch_v4_1.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.session, range, value, display)

  return offset + length, value
end

-- Shares
nasdaq_nsmequities_totalview_itch_v4_1.shares = {}

-- Size: Shares
nasdaq_nsmequities_totalview_itch_v4_1.shares.size = 4

-- Display: Shares
nasdaq_nsmequities_totalview_itch_v4_1.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
nasdaq_nsmequities_totalview_itch_v4_1.shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.shares, range, value, display)

  return offset + length, value
end

-- Side
nasdaq_nsmequities_totalview_itch_v4_1.side = {}

-- Size: Side
nasdaq_nsmequities_totalview_itch_v4_1.side.size = 1

-- Display: Side
nasdaq_nsmequities_totalview_itch_v4_1.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nasdaq_nsmequities_totalview_itch_v4_1.side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.side, range, value, display)

  return offset + length, value
end

-- Stock
nasdaq_nsmequities_totalview_itch_v4_1.stock = {}

-- Size: Stock
nasdaq_nsmequities_totalview_itch_v4_1.stock.size = 8

-- Display: Stock
nasdaq_nsmequities_totalview_itch_v4_1.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_nsmequities_totalview_itch_v4_1.stock.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v4_1.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.stock, range, value, display)

  return offset + length, value
end

-- Trading State
nasdaq_nsmequities_totalview_itch_v4_1.trading_state = {}

-- Size: Trading State
nasdaq_nsmequities_totalview_itch_v4_1.trading_state.size = 1

-- Display: Trading State
nasdaq_nsmequities_totalview_itch_v4_1.trading_state.display = function(value)
  if value == "H" then
    return "Trading State: Halted (H)"
  end
  if value == "P" then
    return "Trading State: Paused (P)"
  end
  if value == "Q" then
    return "Trading State: Quotation Only (Q)"
  end
  if value == "T" then
    return "Trading State: Trading (T)"
  end

  return "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
nasdaq_nsmequities_totalview_itch_v4_1.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
nasdaq_nsmequities_totalview_itch_v4_1.unsequenced_message = {}

-- Display: Unsequenced Message
nasdaq_nsmequities_totalview_itch_v4_1.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
nasdaq_nsmequities_totalview_itch_v4_1.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_nsmequities_totalview_itch_v4_1.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.unsequenced_message, range, value, display)

  return offset + size, value
end

-- Unsequenced Message Type
nasdaq_nsmequities_totalview_itch_v4_1.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nasdaq_nsmequities_totalview_itch_v4_1.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
nasdaq_nsmequities_totalview_itch_v4_1.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
nasdaq_nsmequities_totalview_itch_v4_1.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_nsmequities_totalview_itch_v4_1.username = {}

-- Size: Username
nasdaq_nsmequities_totalview_itch_v4_1.username.size = 6

-- Display: Username
nasdaq_nsmequities_totalview_itch_v4_1.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_nsmequities_totalview_itch_v4_1.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v4_1.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.username, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_nsmequities_totalview_itch_v4_1.timestamp = {}

-- Translate: Timestamp
nasdaq_nsmequities_totalview_itch_v4_1.timestamp.translate = function(nanoseconds, stored_second)
  return UInt64.new(stored_second * 1000000000 + nanoseconds)
end

-- Display: Timestamp
nasdaq_nsmequities_totalview_itch_v4_1.timestamp.display = function(nanoseconds, stored_second, packet)
  -- Raw display mode
  if nasdaq_nsmequities_totalview_itch_v4_1.timestamp_format == 0 then
    return "Timestamp: "..(stored_second * 1000000000 + nanoseconds)
  end

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_nsmequities_totalview_itch_v4_1.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_nsmequities_totalview_itch_v4_1.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400
    local full_seconds = local_midnight + stored_second

    return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", stored_second)..string.format("%09d", nanoseconds)
end

-- Composite: Timestamp
nasdaq_nsmequities_totalview_itch_v4_1.timestamp.composite = function(buffer, offset, stored_second, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.nanoseconds.size
  local range = buffer(offset, length)
  local nanoseconds = range:uint()
  local value = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.translate(nanoseconds, stored_second)
  local display = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.display(nanoseconds, stored_second, packet)
  parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.timestamp, range, value, display)

  nasdaq_nsmequities_totalview_itch_v4_1.second.generated(stored_second, range, packet, parent)

  display = nasdaq_nsmequities_totalview_itch_v4_1.nanoseconds.display(nanoseconds)
  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.nanoseconds, range, nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect = function(buffer, offset, packet, parent)
  if nasdaq_nsmequities_totalview_itch_v4_1.format_timestamp then
    local stored_second = nasdaq_nsmequities_totalview_itch_v4_1.second.current

    if stored_second ~= nil then
      return nasdaq_nsmequities_totalview_itch_v4_1.timestamp.composite(buffer, offset, stored_second, packet, parent)
    end
  end

  return nasdaq_nsmequities_totalview_itch_v4_1.nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NsmEquities TotalView Itch 4.1
-----------------------------------------------------------------------

-- Retail Price Improvement Indicator Message
nasdaq_nsmequities_totalview_itch_v4_1.retail_price_improvement_indicator_message = {}

-- Size: Retail Price Improvement Indicator Message
nasdaq_nsmequities_totalview_itch_v4_1.retail_price_improvement_indicator_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.nanoseconds.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.stock.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.interest_flag.size

-- Display: Retail Price Improvement Indicator Message
nasdaq_nsmequities_totalview_itch_v4_1.retail_price_improvement_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retail Price Improvement Indicator Message
nasdaq_nsmequities_totalview_itch_v4_1.retail_price_improvement_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_totalview_itch_v4_1.stock.dissect(buffer, index, packet, parent)

  -- Interest Flag: Alpha
  index, interest_flag = nasdaq_nsmequities_totalview_itch_v4_1.interest_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Price Improvement Indicator Message
nasdaq_nsmequities_totalview_itch_v4_1.retail_price_improvement_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.retail_price_improvement_indicator_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.retail_price_improvement_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.retail_price_improvement_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.retail_price_improvement_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Net Order Imbalance Indicator Message
nasdaq_nsmequities_totalview_itch_v4_1.net_order_imbalance_indicator_message = {}

-- Size: Net Order Imbalance Indicator Message
nasdaq_nsmequities_totalview_itch_v4_1.net_order_imbalance_indicator_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.nanoseconds.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.paired_shares.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.imbalance_shares.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.imbalance_direction.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.stock.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.far_price.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.near_price.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.current_reference_price.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.cross_type.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.price_variation_indicator.size

-- Display: Net Order Imbalance Indicator Message
nasdaq_nsmequities_totalview_itch_v4_1.net_order_imbalance_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Net Order Imbalance Indicator Message
nasdaq_nsmequities_totalview_itch_v4_1.net_order_imbalance_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Paired Shares: Integer
  index, paired_shares = nasdaq_nsmequities_totalview_itch_v4_1.paired_shares.dissect(buffer, index, packet, parent)

  -- Imbalance Shares: Integer
  index, imbalance_shares = nasdaq_nsmequities_totalview_itch_v4_1.imbalance_shares.dissect(buffer, index, packet, parent)

  -- Imbalance Direction: Alpha
  index, imbalance_direction = nasdaq_nsmequities_totalview_itch_v4_1.imbalance_direction.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_totalview_itch_v4_1.stock.dissect(buffer, index, packet, parent)

  -- Far Price: Price (4)
  index, far_price = nasdaq_nsmequities_totalview_itch_v4_1.far_price.dissect(buffer, index, packet, parent)

  -- Near Price: Price (4)
  index, near_price = nasdaq_nsmequities_totalview_itch_v4_1.near_price.dissect(buffer, index, packet, parent)

  -- Current Reference Price: Price (4)
  index, current_reference_price = nasdaq_nsmequities_totalview_itch_v4_1.current_reference_price.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nasdaq_nsmequities_totalview_itch_v4_1.cross_type.dissect(buffer, index, packet, parent)

  -- Price Variation Indicator: Alpha
  index, price_variation_indicator = nasdaq_nsmequities_totalview_itch_v4_1.price_variation_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Net Order Imbalance Indicator Message
nasdaq_nsmequities_totalview_itch_v4_1.net_order_imbalance_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.net_order_imbalance_indicator_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.net_order_imbalance_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.net_order_imbalance_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.net_order_imbalance_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Message
nasdaq_nsmequities_totalview_itch_v4_1.broken_trade_message = {}

-- Size: Broken Trade Message
nasdaq_nsmequities_totalview_itch_v4_1.broken_trade_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.nanoseconds.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.match_number.size

-- Display: Broken Trade Message
nasdaq_nsmequities_totalview_itch_v4_1.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
nasdaq_nsmequities_totalview_itch_v4_1.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_nsmequities_totalview_itch_v4_1.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
nasdaq_nsmequities_totalview_itch_v4_1.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.broken_trade_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Cross Trade Message
nasdaq_nsmequities_totalview_itch_v4_1.cross_trade_message = {}

-- Size: Cross Trade Message
nasdaq_nsmequities_totalview_itch_v4_1.cross_trade_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.nanoseconds.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.cross_shares.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.stock.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.cross_price.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.match_number.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.cross_type.size

-- Display: Cross Trade Message
nasdaq_nsmequities_totalview_itch_v4_1.cross_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Trade Message
nasdaq_nsmequities_totalview_itch_v4_1.cross_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Cross Shares: Integer
  index, cross_shares = nasdaq_nsmequities_totalview_itch_v4_1.cross_shares.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_totalview_itch_v4_1.stock.dissect(buffer, index, packet, parent)

  -- Cross Price: Price (4)
  index, cross_price = nasdaq_nsmequities_totalview_itch_v4_1.cross_price.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_nsmequities_totalview_itch_v4_1.match_number.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nasdaq_nsmequities_totalview_itch_v4_1.cross_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Trade Message
nasdaq_nsmequities_totalview_itch_v4_1.cross_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.cross_trade_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.cross_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.cross_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.cross_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
nasdaq_nsmequities_totalview_itch_v4_1.trade_message = {}

-- Size: Trade Message
nasdaq_nsmequities_totalview_itch_v4_1.trade_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.nanoseconds.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.side.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.shares.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.stock.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.price.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.match_number.size

-- Display: Trade Message
nasdaq_nsmequities_totalview_itch_v4_1.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
nasdaq_nsmequities_totalview_itch_v4_1.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_nsmequities_totalview_itch_v4_1.side.dissect(buffer, index, packet, parent)

  -- Shares: Integer
  index, shares = nasdaq_nsmequities_totalview_itch_v4_1.shares.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_totalview_itch_v4_1.stock.dissect(buffer, index, packet, parent)

  -- Price: Price (4)
  index, price = nasdaq_nsmequities_totalview_itch_v4_1.price.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_nsmequities_totalview_itch_v4_1.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
nasdaq_nsmequities_totalview_itch_v4_1.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.trade_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Replace Message
nasdaq_nsmequities_totalview_itch_v4_1.order_replace_message = {}

-- Size: Order Replace Message
nasdaq_nsmequities_totalview_itch_v4_1.order_replace_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.nanoseconds.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.original_order_reference_number.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.new_order_reference_number.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.shares.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.price.size

-- Display: Order Replace Message
nasdaq_nsmequities_totalview_itch_v4_1.order_replace_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Message
nasdaq_nsmequities_totalview_itch_v4_1.order_replace_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Original Order Reference Number: Integer
  index, original_order_reference_number = nasdaq_nsmequities_totalview_itch_v4_1.original_order_reference_number.dissect(buffer, index, packet, parent)

  -- New Order Reference Number: Integer
  index, new_order_reference_number = nasdaq_nsmequities_totalview_itch_v4_1.new_order_reference_number.dissect(buffer, index, packet, parent)

  -- Shares: Integer
  index, shares = nasdaq_nsmequities_totalview_itch_v4_1.shares.dissect(buffer, index, packet, parent)

  -- Price: Price (4)
  index, price = nasdaq_nsmequities_totalview_itch_v4_1.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Message
nasdaq_nsmequities_totalview_itch_v4_1.order_replace_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.order_replace_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.order_replace_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.order_replace_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.order_replace_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete Message
nasdaq_nsmequities_totalview_itch_v4_1.order_delete_message = {}

-- Size: Order Delete Message
nasdaq_nsmequities_totalview_itch_v4_1.order_delete_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.nanoseconds.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.size

-- Display: Order Delete Message
nasdaq_nsmequities_totalview_itch_v4_1.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
nasdaq_nsmequities_totalview_itch_v4_1.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
nasdaq_nsmequities_totalview_itch_v4_1.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.order_delete_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Message
nasdaq_nsmequities_totalview_itch_v4_1.order_cancel_message = {}

-- Size: Order Cancel Message
nasdaq_nsmequities_totalview_itch_v4_1.order_cancel_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.nanoseconds.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.canceled_shares.size

-- Display: Order Cancel Message
nasdaq_nsmequities_totalview_itch_v4_1.order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message
nasdaq_nsmequities_totalview_itch_v4_1.order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Canceled Shares: Integer
  index, canceled_shares = nasdaq_nsmequities_totalview_itch_v4_1.canceled_shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
nasdaq_nsmequities_totalview_itch_v4_1.order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.order_cancel_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed With Price Message
nasdaq_nsmequities_totalview_itch_v4_1.order_executed_with_price_message = {}

-- Size: Order Executed With Price Message
nasdaq_nsmequities_totalview_itch_v4_1.order_executed_with_price_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.nanoseconds.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.executed_shares.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.match_number.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.printable.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.execution_price.size

-- Display: Order Executed With Price Message
nasdaq_nsmequities_totalview_itch_v4_1.order_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed With Price Message
nasdaq_nsmequities_totalview_itch_v4_1.order_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Executed Shares: Integer
  index, executed_shares = nasdaq_nsmequities_totalview_itch_v4_1.executed_shares.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_nsmequities_totalview_itch_v4_1.match_number.dissect(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = nasdaq_nsmequities_totalview_itch_v4_1.printable.dissect(buffer, index, packet, parent)

  -- Execution Price: Price (4)
  index, execution_price = nasdaq_nsmequities_totalview_itch_v4_1.execution_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Message
nasdaq_nsmequities_totalview_itch_v4_1.order_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.order_executed_with_price_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.order_executed_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.order_executed_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.order_executed_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
nasdaq_nsmequities_totalview_itch_v4_1.order_executed_message = {}

-- Size: Order Executed Message
nasdaq_nsmequities_totalview_itch_v4_1.order_executed_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.nanoseconds.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.executed_shares.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.match_number.size

-- Display: Order Executed Message
nasdaq_nsmequities_totalview_itch_v4_1.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
nasdaq_nsmequities_totalview_itch_v4_1.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Executed Shares: Integer
  index, executed_shares = nasdaq_nsmequities_totalview_itch_v4_1.executed_shares.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_nsmequities_totalview_itch_v4_1.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
nasdaq_nsmequities_totalview_itch_v4_1.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.order_executed_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order With Mpid Message
nasdaq_nsmequities_totalview_itch_v4_1.add_order_with_mpid_message = {}

-- Size: Add Order With Mpid Message
nasdaq_nsmequities_totalview_itch_v4_1.add_order_with_mpid_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.nanoseconds.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.side.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.shares.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.stock.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.price.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.attribution.size

-- Display: Add Order With Mpid Message
nasdaq_nsmequities_totalview_itch_v4_1.add_order_with_mpid_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order With Mpid Message
nasdaq_nsmequities_totalview_itch_v4_1.add_order_with_mpid_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_nsmequities_totalview_itch_v4_1.side.dissect(buffer, index, packet, parent)

  -- Shares: Integer
  index, shares = nasdaq_nsmequities_totalview_itch_v4_1.shares.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_totalview_itch_v4_1.stock.dissect(buffer, index, packet, parent)

  -- Price: Price (4)
  index, price = nasdaq_nsmequities_totalview_itch_v4_1.price.dissect(buffer, index, packet, parent)

  -- Attribution: Alpha
  index, attribution = nasdaq_nsmequities_totalview_itch_v4_1.attribution.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order With Mpid Message
nasdaq_nsmequities_totalview_itch_v4_1.add_order_with_mpid_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.add_order_with_mpid_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.add_order_with_mpid_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.add_order_with_mpid_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.add_order_with_mpid_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
nasdaq_nsmequities_totalview_itch_v4_1.add_order_message = {}

-- Size: Add Order Message
nasdaq_nsmequities_totalview_itch_v4_1.add_order_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.nanoseconds.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.side.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.shares.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.stock.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.price.size

-- Display: Add Order Message
nasdaq_nsmequities_totalview_itch_v4_1.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
nasdaq_nsmequities_totalview_itch_v4_1.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_nsmequities_totalview_itch_v4_1.side.dissect(buffer, index, packet, parent)

  -- Shares: Integer
  index, shares = nasdaq_nsmequities_totalview_itch_v4_1.shares.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_totalview_itch_v4_1.stock.dissect(buffer, index, packet, parent)

  -- Price: Price (4)
  index, price = nasdaq_nsmequities_totalview_itch_v4_1.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
nasdaq_nsmequities_totalview_itch_v4_1.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.add_order_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Participant Position Message
nasdaq_nsmequities_totalview_itch_v4_1.market_participant_position_message = {}

-- Size: Market Participant Position Message
nasdaq_nsmequities_totalview_itch_v4_1.market_participant_position_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.nanoseconds.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.mpid.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.stock.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.primary_market_maker.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.market_maker_mode.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.market_participant_state.size

-- Display: Market Participant Position Message
nasdaq_nsmequities_totalview_itch_v4_1.market_participant_position_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Participant Position Message
nasdaq_nsmequities_totalview_itch_v4_1.market_participant_position_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Mpid: Alphabetic
  index, mpid = nasdaq_nsmequities_totalview_itch_v4_1.mpid.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_totalview_itch_v4_1.stock.dissect(buffer, index, packet, parent)

  -- Primary Market Maker: Alphanumeric
  index, primary_market_maker = nasdaq_nsmequities_totalview_itch_v4_1.primary_market_maker.dissect(buffer, index, packet, parent)

  -- Market Maker Mode: Alphanumeric
  index, market_maker_mode = nasdaq_nsmequities_totalview_itch_v4_1.market_maker_mode.dissect(buffer, index, packet, parent)

  -- Market Participant State: Alphanumeric
  index, market_participant_state = nasdaq_nsmequities_totalview_itch_v4_1.market_participant_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Participant Position Message
nasdaq_nsmequities_totalview_itch_v4_1.market_participant_position_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.market_participant_position_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.market_participant_position_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.market_participant_position_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.market_participant_position_message.fields(buffer, offset, packet, parent)
  end
end

-- Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_short_sale_price_test_restricted_indicator_message = {}

-- Size: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_short_sale_price_test_restricted_indicator_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.nanoseconds.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.stock.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_action.size

-- Display: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_short_sale_price_test_restricted_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_short_sale_price_test_restricted_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_totalview_itch_v4_1.stock.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: Alpha
  index, reg_sho_action = nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_short_sale_price_test_restricted_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.reg_sho_short_sale_price_test_restricted_indicator_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_short_sale_price_test_restricted_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Trading Action Message
nasdaq_nsmequities_totalview_itch_v4_1.stock_trading_action_message = {}

-- Size: Stock Trading Action Message
nasdaq_nsmequities_totalview_itch_v4_1.stock_trading_action_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.nanoseconds.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.stock.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.trading_state.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.reserved.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.reason.size

-- Display: Stock Trading Action Message
nasdaq_nsmequities_totalview_itch_v4_1.stock_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Trading Action Message
nasdaq_nsmequities_totalview_itch_v4_1.stock_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_totalview_itch_v4_1.stock.dissect(buffer, index, packet, parent)

  -- Trading State: Alpha
  index, trading_state = nasdaq_nsmequities_totalview_itch_v4_1.trading_state.dissect(buffer, index, packet, parent)

  -- Reserved: Alpha
  index, reserved = nasdaq_nsmequities_totalview_itch_v4_1.reserved.dissect(buffer, index, packet, parent)

  -- Reason: Alpha
  index, reason = nasdaq_nsmequities_totalview_itch_v4_1.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Trading Action Message
nasdaq_nsmequities_totalview_itch_v4_1.stock_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.stock_trading_action_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.stock_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.stock_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.stock_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Directory Message
nasdaq_nsmequities_totalview_itch_v4_1.stock_directory_message = {}

-- Size: Stock Directory Message
nasdaq_nsmequities_totalview_itch_v4_1.stock_directory_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.nanoseconds.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.stock.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.market_category.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.financial_status_indicator.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.round_lot_size.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.round_lots_only.size

-- Display: Stock Directory Message
nasdaq_nsmequities_totalview_itch_v4_1.stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
nasdaq_nsmequities_totalview_itch_v4_1.stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_totalview_itch_v4_1.stock.dissect(buffer, index, packet, parent)

  -- Market Category: Alpha
  index, market_category = nasdaq_nsmequities_totalview_itch_v4_1.market_category.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Alpha
  index, financial_status_indicator = nasdaq_nsmequities_totalview_itch_v4_1.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Integer
  index, round_lot_size = nasdaq_nsmequities_totalview_itch_v4_1.round_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lots Only: Alpha
  index, round_lots_only = nasdaq_nsmequities_totalview_itch_v4_1.round_lots_only.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
nasdaq_nsmequities_totalview_itch_v4_1.stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.stock_directory_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_nsmequities_totalview_itch_v4_1.system_event_message = {}

-- Size: System Event Message
nasdaq_nsmequities_totalview_itch_v4_1.system_event_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.nanoseconds.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.event_code.size

-- Display: System Event Message
nasdaq_nsmequities_totalview_itch_v4_1.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nsmequities_totalview_itch_v4_1.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_nsmequities_totalview_itch_v4_1.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nsmequities_totalview_itch_v4_1.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Timestamp Message
nasdaq_nsmequities_totalview_itch_v4_1.timestamp_message = {}

-- Size: Timestamp Message
nasdaq_nsmequities_totalview_itch_v4_1.timestamp_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.second.size

-- Display: Timestamp Message
nasdaq_nsmequities_totalview_itch_v4_1.timestamp_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Timestamp Message
nasdaq_nsmequities_totalview_itch_v4_1.timestamp_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: Integer
  index, second = nasdaq_nsmequities_totalview_itch_v4_1.second.dissect(buffer, index, packet, parent)

  -- Store Second Value
  nasdaq_nsmequities_totalview_itch_v4_1.second.current = second

  if not packet.visited then
    nasdaq_nsmequities_totalview_itch_v4_1.conversation.current.second.last = second
  end

  return index
end

-- Dissect: Timestamp Message
nasdaq_nsmequities_totalview_itch_v4_1.timestamp_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.timestamp_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.timestamp_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.timestamp_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.timestamp_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_nsmequities_totalview_itch_v4_1.payload = {}

-- Dissect: Payload
nasdaq_nsmequities_totalview_itch_v4_1.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Timestamp Message
  if message_type == "T" then
    return nasdaq_nsmequities_totalview_itch_v4_1.timestamp_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_nsmequities_totalview_itch_v4_1.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if message_type == "R" then
    return nasdaq_nsmequities_totalview_itch_v4_1.stock_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Trading Action Message
  if message_type == "H" then
    return nasdaq_nsmequities_totalview_itch_v4_1.stock_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Short Sale Price Test Restricted Indicator Message
  if message_type == "Y" then
    return nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_short_sale_price_test_restricted_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Participant Position Message
  if message_type == "L" then
    return nasdaq_nsmequities_totalview_itch_v4_1.market_participant_position_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == "A" then
    return nasdaq_nsmequities_totalview_itch_v4_1.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order With Mpid Message
  if message_type == "F" then
    return nasdaq_nsmequities_totalview_itch_v4_1.add_order_with_mpid_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "E" then
    return nasdaq_nsmequities_totalview_itch_v4_1.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed With Price Message
  if message_type == "C" then
    return nasdaq_nsmequities_totalview_itch_v4_1.order_executed_with_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Message
  if message_type == "X" then
    return nasdaq_nsmequities_totalview_itch_v4_1.order_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if message_type == "D" then
    return nasdaq_nsmequities_totalview_itch_v4_1.order_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replace Message
  if message_type == "U" then
    return nasdaq_nsmequities_totalview_itch_v4_1.order_replace_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == "P" then
    return nasdaq_nsmequities_totalview_itch_v4_1.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Trade Message
  if message_type == "Q" then
    return nasdaq_nsmequities_totalview_itch_v4_1.cross_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Message
  if message_type == "B" then
    return nasdaq_nsmequities_totalview_itch_v4_1.broken_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Net Order Imbalance Indicator Message
  if message_type == "I" then
    return nasdaq_nsmequities_totalview_itch_v4_1.net_order_imbalance_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retail Price Improvement Indicator Message
  if message_type == "N" then
    return nasdaq_nsmequities_totalview_itch_v4_1.retail_price_improvement_indicator_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_nsmequities_totalview_itch_v4_1.message_header = {}

-- Size: Message Header
nasdaq_nsmequities_totalview_itch_v4_1.message_header.size =
  nasdaq_nsmequities_totalview_itch_v4_1.message_length.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.message_type.size

-- Display: Message Header
nasdaq_nsmequities_totalview_itch_v4_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_nsmequities_totalview_itch_v4_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_nsmequities_totalview_itch_v4_1.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 18 values
  index, message_type = nasdaq_nsmequities_totalview_itch_v4_1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_nsmequities_totalview_itch_v4_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.message_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_nsmequities_totalview_itch_v4_1.message = {}

-- Read runtime size of: Message
nasdaq_nsmequities_totalview_itch_v4_1.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_nsmequities_totalview_itch_v4_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_nsmequities_totalview_itch_v4_1.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and nasdaq_nsmequities_totalview_itch_v4_1.sequence ~= nil then
    local sequence = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.message_sequence_number, UInt64.new(nasdaq_nsmequities_totalview_itch_v4_1.sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_nsmequities_totalview_itch_v4_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 18 branches
  index = nasdaq_nsmequities_totalview_itch_v4_1.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_nsmequities_totalview_itch_v4_1.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_nsmequities_totalview_itch_v4_1.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.message, buffer(offset, 0))
    local current = nasdaq_nsmequities_totalview_itch_v4_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_totalview_itch_v4_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
nasdaq_nsmequities_totalview_itch_v4_1.end_of_session = {}

-- Display: End Of Session
nasdaq_nsmequities_totalview_itch_v4_1.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_nsmequities_totalview_itch_v4_1.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nsmequities_totalview_itch_v4_1.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_nsmequities_totalview_itch_v4_1.heartbeat = {}

-- Display: Heartbeat
nasdaq_nsmequities_totalview_itch_v4_1.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_nsmequities_totalview_itch_v4_1.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nsmequities_totalview_itch_v4_1.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_nsmequities_totalview_itch_v4_1.messages = {}

-- Dissect: Messages
nasdaq_nsmequities_totalview_itch_v4_1.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return nasdaq_nsmequities_totalview_itch_v4_1.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if message_count == 65535 then
    return nasdaq_nsmequities_totalview_itch_v4_1.end_of_session.dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_nsmequities_totalview_itch_v4_1.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
nasdaq_nsmequities_totalview_itch_v4_1.packet_header = {}

-- Size: Packet Header
nasdaq_nsmequities_totalview_itch_v4_1.packet_header.size =
  nasdaq_nsmequities_totalview_itch_v4_1.session.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.sequence_number.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.message_count.size

-- Display: Packet Header
nasdaq_nsmequities_totalview_itch_v4_1.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_nsmequities_totalview_itch_v4_1.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nsmequities_totalview_itch_v4_1.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_nsmequities_totalview_itch_v4_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_nsmequities_totalview_itch_v4_1.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  nasdaq_nsmequities_totalview_itch_v4_1.sequence = sequence_number

  return index
end

-- Dissect: Packet Header
nasdaq_nsmequities_totalview_itch_v4_1.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_nsmequities_totalview_itch_v4_1.packet = {}

-- Verify required size of Udp packet
nasdaq_nsmequities_totalview_itch_v4_1.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nsmequities_totalview_itch_v4_1.packet_header.size
end

-- Dissect Packet
nasdaq_nsmequities_totalview_itch_v4_1.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nasdaq_nsmequities_totalview_itch_v4_1.conversation.data(packet)
  if not packet.visited then
    data.second.frames[packet.number] = data.second.last
  end
  nasdaq_nsmequities_totalview_itch_v4_1.second.current = data.second.frames[packet.number]
  nasdaq_nsmequities_totalview_itch_v4_1.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_nsmequities_totalview_itch_v4_1.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_nsmequities_totalview_itch_v4_1.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end

-- Server Heartbeat
nasdaq_nsmequities_totalview_itch_v4_1.server_heartbeat = {}

-- Display: Server Heartbeat
nasdaq_nsmequities_totalview_itch_v4_1.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
nasdaq_nsmequities_totalview_itch_v4_1.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nsmequities_totalview_itch_v4_1.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Sequenced Message
nasdaq_nsmequities_totalview_itch_v4_1.sequenced_message = {}

-- Dissect: Sequenced Message
nasdaq_nsmequities_totalview_itch_v4_1.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect Timestamp Message
  if sequenced_message_type == "T" then
    return nasdaq_nsmequities_totalview_itch_v4_1.timestamp_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if sequenced_message_type == "S" then
    return nasdaq_nsmequities_totalview_itch_v4_1.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if sequenced_message_type == "R" then
    return nasdaq_nsmequities_totalview_itch_v4_1.stock_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Trading Action Message
  if sequenced_message_type == "H" then
    return nasdaq_nsmequities_totalview_itch_v4_1.stock_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Short Sale Price Test Restricted Indicator Message
  if sequenced_message_type == "Y" then
    return nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_short_sale_price_test_restricted_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Participant Position Message
  if sequenced_message_type == "L" then
    return nasdaq_nsmequities_totalview_itch_v4_1.market_participant_position_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if sequenced_message_type == "A" then
    return nasdaq_nsmequities_totalview_itch_v4_1.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order With Mpid Message
  if sequenced_message_type == "F" then
    return nasdaq_nsmequities_totalview_itch_v4_1.add_order_with_mpid_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if sequenced_message_type == "E" then
    return nasdaq_nsmequities_totalview_itch_v4_1.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed With Price Message
  if sequenced_message_type == "C" then
    return nasdaq_nsmequities_totalview_itch_v4_1.order_executed_with_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Message
  if sequenced_message_type == "X" then
    return nasdaq_nsmequities_totalview_itch_v4_1.order_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if sequenced_message_type == "D" then
    return nasdaq_nsmequities_totalview_itch_v4_1.order_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replace Message
  if sequenced_message_type == "U" then
    return nasdaq_nsmequities_totalview_itch_v4_1.order_replace_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if sequenced_message_type == "P" then
    return nasdaq_nsmequities_totalview_itch_v4_1.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Trade Message
  if sequenced_message_type == "Q" then
    return nasdaq_nsmequities_totalview_itch_v4_1.cross_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Message
  if sequenced_message_type == "B" then
    return nasdaq_nsmequities_totalview_itch_v4_1.broken_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Net Order Imbalance Indicator Message
  if sequenced_message_type == "I" then
    return nasdaq_nsmequities_totalview_itch_v4_1.net_order_imbalance_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retail Price Improvement Indicator Message
  if sequenced_message_type == "N" then
    return nasdaq_nsmequities_totalview_itch_v4_1.retail_price_improvement_indicator_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
nasdaq_nsmequities_totalview_itch_v4_1.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
nasdaq_nsmequities_totalview_itch_v4_1.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
nasdaq_nsmequities_totalview_itch_v4_1.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_nsmequities_totalview_itch_v4_1.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = nasdaq_nsmequities_totalview_itch_v4_1.conversation.current
  if flow ~= nil then
    local memo = flow.sequence.frames[packet.number]
    if not packet.visited then
      if flow.sequence.next == nil then
        flow.sequence.next = tonumber(nasdaq_nsmequities_totalview_itch_v4_1.accepted_sequence_number.current)
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
          local sequence = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if nasdaq_nsmequities_totalview_itch_v4_1.stream_frame ~= packet.number or nasdaq_nsmequities_totalview_itch_v4_1.stream_occurrence >= #memo then
          nasdaq_nsmequities_totalview_itch_v4_1.stream_frame = packet.number
          nasdaq_nsmequities_totalview_itch_v4_1.stream_occurrence = 0
        end
        nasdaq_nsmequities_totalview_itch_v4_1.stream_occurrence = nasdaq_nsmequities_totalview_itch_v4_1.stream_occurrence + 1
        local value = memo[nasdaq_nsmequities_totalview_itch_v4_1.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Type: 1 Byte Ascii String
  index, sequenced_message_type = nasdaq_nsmequities_totalview_itch_v4_1.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 18 branches
  index = nasdaq_nsmequities_totalview_itch_v4_1.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_nsmequities_totalview_itch_v4_1.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = nasdaq_nsmequities_totalview_itch_v4_1.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.sequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_nsmequities_totalview_itch_v4_1.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_totalview_itch_v4_1.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
nasdaq_nsmequities_totalview_itch_v4_1.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_nsmequities_totalview_itch_v4_1.login_rejected_packet.size =
  nasdaq_nsmequities_totalview_itch_v4_1.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_nsmequities_totalview_itch_v4_1.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_nsmequities_totalview_itch_v4_1.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String Enum with 2 values
  index, reject_reason_code = nasdaq_nsmequities_totalview_itch_v4_1.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_nsmequities_totalview_itch_v4_1.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_nsmequities_totalview_itch_v4_1.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_nsmequities_totalview_itch_v4_1.login_accepted_packet.size =
  nasdaq_nsmequities_totalview_itch_v4_1.accepted_session.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.accepted_sequence_number.size

-- Display: Login Accepted Packet
nasdaq_nsmequities_totalview_itch_v4_1.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_nsmequities_totalview_itch_v4_1.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = nasdaq_nsmequities_totalview_itch_v4_1.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = nasdaq_nsmequities_totalview_itch_v4_1.accepted_sequence_number.dissect(buffer, index, packet, parent)

  -- Store Accepted Sequence Number Value
  nasdaq_nsmequities_totalview_itch_v4_1.accepted_sequence_number.current = accepted_sequence_number

  if not packet.visited then
    nasdaq_nsmequities_totalview_itch_v4_1.conversation.current.accepted_sequence_number.last = accepted_sequence_number
  end

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_nsmequities_totalview_itch_v4_1.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_nsmequities_totalview_itch_v4_1.debug_packet = {}

-- Size: Debug Packet
nasdaq_nsmequities_totalview_itch_v4_1.debug_packet.size =
  nasdaq_nsmequities_totalview_itch_v4_1.debug_text.size

-- Display: Debug Packet
nasdaq_nsmequities_totalview_itch_v4_1.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_nsmequities_totalview_itch_v4_1.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Debug Text: 1 Byte Ascii String
  index, debug_text = nasdaq_nsmequities_totalview_itch_v4_1.debug_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
nasdaq_nsmequities_totalview_itch_v4_1.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
nasdaq_nsmequities_totalview_itch_v4_1.server_payload = {}

-- Dissect: Server Payload
nasdaq_nsmequities_totalview_itch_v4_1.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  -- Dissect Debug Packet
  if server_packet_type == "+" then
    return nasdaq_nsmequities_totalview_itch_v4_1.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if server_packet_type == "A" then
    return nasdaq_nsmequities_totalview_itch_v4_1.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if server_packet_type == "J" then
    return nasdaq_nsmequities_totalview_itch_v4_1.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if server_packet_type == "S" then
    return nasdaq_nsmequities_totalview_itch_v4_1.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat
  if server_packet_type == "H" then
    return nasdaq_nsmequities_totalview_itch_v4_1.server_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if server_packet_type == "Z" then
    return nasdaq_nsmequities_totalview_itch_v4_1.end_of_session.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
nasdaq_nsmequities_totalview_itch_v4_1.server_packet_header = {}

-- Size: Server Packet Header
nasdaq_nsmequities_totalview_itch_v4_1.server_packet_header.size =
  nasdaq_nsmequities_totalview_itch_v4_1.packet_length.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.server_packet_type.size

-- Display: Server Packet Header
nasdaq_nsmequities_totalview_itch_v4_1.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
nasdaq_nsmequities_totalview_itch_v4_1.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_nsmequities_totalview_itch_v4_1.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = nasdaq_nsmequities_totalview_itch_v4_1.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
nasdaq_nsmequities_totalview_itch_v4_1.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.server_packet_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
nasdaq_nsmequities_totalview_itch_v4_1.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
nasdaq_nsmequities_totalview_itch_v4_1.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
nasdaq_nsmequities_totalview_itch_v4_1.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = nasdaq_nsmequities_totalview_itch_v4_1.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = nasdaq_nsmequities_totalview_itch_v4_1.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
nasdaq_nsmequities_totalview_itch_v4_1.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_nsmequities_totalview_itch_v4_1.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_totalview_itch_v4_1.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_nsmequities_totalview_itch_v4_1.server_packet_header.size then
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
nasdaq_nsmequities_totalview_itch_v4_1.server_packet = {}

-- Verify required size of Tcp packet
nasdaq_nsmequities_totalview_itch_v4_1.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nsmequities_totalview_itch_v4_1.server_packet_header.size
end

-- Dissect Server Packet
nasdaq_nsmequities_totalview_itch_v4_1.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nasdaq_nsmequities_totalview_itch_v4_1.conversation.data(packet)
  if not packet.visited then
    data.accepted_sequence_number.frames[packet.number] = data.accepted_sequence_number.last
    data.second.frames[packet.number] = data.second.last
  end
  nasdaq_nsmequities_totalview_itch_v4_1.accepted_sequence_number.current = data.accepted_sequence_number.frames[packet.number]
  nasdaq_nsmequities_totalview_itch_v4_1.second.current = data.second.frames[packet.number]
  nasdaq_nsmequities_totalview_itch_v4_1.conversation.current = data

  local index = 0

  -- Dependency for Server Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Server Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_soup_bin_tcp_packet = server_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_nsmequities_totalview_itch_v4_1.server_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_server_soup_bin_tcp_packet)
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
nasdaq_nsmequities_totalview_itch_v4_1.logout_request = {}

-- Display: Logout Request
nasdaq_nsmequities_totalview_itch_v4_1.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
nasdaq_nsmequities_totalview_itch_v4_1.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nsmequities_totalview_itch_v4_1.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
nasdaq_nsmequities_totalview_itch_v4_1.client_heartbeat = {}

-- Display: Client Heartbeat
nasdaq_nsmequities_totalview_itch_v4_1.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
nasdaq_nsmequities_totalview_itch_v4_1.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nsmequities_totalview_itch_v4_1.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Unsequenced Data Packet
nasdaq_nsmequities_totalview_itch_v4_1.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
nasdaq_nsmequities_totalview_itch_v4_1.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
nasdaq_nsmequities_totalview_itch_v4_1.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_nsmequities_totalview_itch_v4_1.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = nasdaq_nsmequities_totalview_itch_v4_1.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = packet_length - 2

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = nasdaq_nsmequities_totalview_itch_v4_1.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_nsmequities_totalview_itch_v4_1.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = nasdaq_nsmequities_totalview_itch_v4_1.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_nsmequities_totalview_itch_v4_1.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_totalview_itch_v4_1.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
nasdaq_nsmequities_totalview_itch_v4_1.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_nsmequities_totalview_itch_v4_1.login_request_packet.size =
  nasdaq_nsmequities_totalview_itch_v4_1.username.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.password.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.requested_session.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_nsmequities_totalview_itch_v4_1.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_nsmequities_totalview_itch_v4_1.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_nsmequities_totalview_itch_v4_1.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_nsmequities_totalview_itch_v4_1.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_nsmequities_totalview_itch_v4_1.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_nsmequities_totalview_itch_v4_1.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_nsmequities_totalview_itch_v4_1.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
nasdaq_nsmequities_totalview_itch_v4_1.client_payload = {}

-- Dissect: Client Payload
nasdaq_nsmequities_totalview_itch_v4_1.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  -- Dissect Debug Packet
  if client_packet_type == "+" then
    return nasdaq_nsmequities_totalview_itch_v4_1.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if client_packet_type == "L" then
    return nasdaq_nsmequities_totalview_itch_v4_1.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if client_packet_type == "U" then
    return nasdaq_nsmequities_totalview_itch_v4_1.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat
  if client_packet_type == "R" then
    return nasdaq_nsmequities_totalview_itch_v4_1.client_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if client_packet_type == "O" then
    return nasdaq_nsmequities_totalview_itch_v4_1.logout_request.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
nasdaq_nsmequities_totalview_itch_v4_1.client_packet_header = {}

-- Size: Client Packet Header
nasdaq_nsmequities_totalview_itch_v4_1.client_packet_header.size =
  nasdaq_nsmequities_totalview_itch_v4_1.packet_length.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.client_packet_type.size

-- Display: Client Packet Header
nasdaq_nsmequities_totalview_itch_v4_1.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
nasdaq_nsmequities_totalview_itch_v4_1.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_nsmequities_totalview_itch_v4_1.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = nasdaq_nsmequities_totalview_itch_v4_1.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
nasdaq_nsmequities_totalview_itch_v4_1.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.client_packet_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
nasdaq_nsmequities_totalview_itch_v4_1.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
nasdaq_nsmequities_totalview_itch_v4_1.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
nasdaq_nsmequities_totalview_itch_v4_1.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = nasdaq_nsmequities_totalview_itch_v4_1.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = nasdaq_nsmequities_totalview_itch_v4_1.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
nasdaq_nsmequities_totalview_itch_v4_1.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_nsmequities_totalview_itch_v4_1.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_totalview_itch_v4_1.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_nsmequities_totalview_itch_v4_1.client_packet_header.size then
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
nasdaq_nsmequities_totalview_itch_v4_1.client_packet = {}

-- Verify required size of Tcp packet
nasdaq_nsmequities_totalview_itch_v4_1.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nsmequities_totalview_itch_v4_1.client_packet_header.size
end

-- Dissect Client Packet
nasdaq_nsmequities_totalview_itch_v4_1.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Client Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_soup_bin_tcp_packet = client_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_nsmequities_totalview_itch_v4_1.client_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_client_soup_bin_tcp_packet)
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
function omi_nasdaq_nsmequities_totalview_itch_v4_1.init()
  nasdaq_nsmequities_totalview_itch_v4_1.accepted_sequence_number.current = nil
  nasdaq_nsmequities_totalview_itch_v4_1.second.current = nil
  nasdaq_nsmequities_totalview_itch_v4_1.conversation.current = nil
  nasdaq_nsmequities_totalview_itch_v4_1.conversation.flows = {}
end

-- Connection roles for Nasdaq NsmEquities TotalView Itch 4.1: Client is the initiator, Server is the acceptor
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
nasdaq_nsmequities_totalview_itch_v4_1.role = function(packet)
  if omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.acceptor_port

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

  if omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.swap_sides then
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
nasdaq_nsmequities_totalview_itch_v4_1.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nasdaq NsmEquities TotalView Itch 4.1
function omi_nasdaq_nsmequities_totalview_itch_v4_1.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nsmequities_totalview_itch_v4_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1, buffer(), omi_nasdaq_nsmequities_totalview_itch_v4_1.description, "("..buffer:len().." Bytes)")

  if packet.port_type == 2 then
    local role = nasdaq_nsmequities_totalview_itch_v4_1.role(packet)

    if role == "initiator" then
      return nasdaq_nsmequities_totalview_itch_v4_1.client_packet.dissect(buffer, packet, protocol)
    end

    return nasdaq_nsmequities_totalview_itch_v4_1.server_packet.dissect(buffer, packet, protocol)
  end

  if packet.port_type == 3 then
    return nasdaq_nsmequities_totalview_itch_v4_1.packet.dissect(buffer, packet, protocol)
  end
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nasdaq_nsmequities_totalview_itch_v4_1.client_packet.fingerprint = function(buffer)
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
nasdaq_nsmequities_totalview_itch_v4_1.server_packet.fingerprint = function(buffer)
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

    -- Timestamp Message
    if sequenced_message_type == "T" then
      return true
    end

    -- System Event Message
    if sequenced_message_type == "S" then
      return true
    end

    -- Stock Directory Message
    if sequenced_message_type == "R" then
      return true
    end

    -- Stock Trading Action Message
    if sequenced_message_type == "H" then
      return true
    end

    -- Reg Sho Short Sale Price Test Restricted Indicator Message
    if sequenced_message_type == "Y" then
      return true
    end

    -- Market Participant Position Message
    if sequenced_message_type == "L" then
      return true
    end

    -- Add Order Message
    if sequenced_message_type == "A" then
      return true
    end

    -- Add Order With Mpid Message
    if sequenced_message_type == "F" then
      return true
    end

    -- Order Executed Message
    if sequenced_message_type == "E" then
      return true
    end

    -- Order Executed With Price Message
    if sequenced_message_type == "C" then
      return true
    end

    -- Order Cancel Message
    if sequenced_message_type == "X" then
      return true
    end

    -- Order Delete Message
    if sequenced_message_type == "D" then
      return true
    end

    -- Order Replace Message
    if sequenced_message_type == "U" then
      return true
    end

    -- Trade Message
    if sequenced_message_type == "P" then
      return true
    end

    -- Cross Trade Message
    if sequenced_message_type == "Q" then
      return true
    end

    -- Broken Trade Message
    if sequenced_message_type == "B" then
      return true
    end

    -- Net Order Imbalance Indicator Message
    if sequenced_message_type == "I" then
      return true
    end

    -- Retail Price Improvement Indicator Message
    if sequenced_message_type == "N" then
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

-- Dissector Heuristic for Nasdaq NsmEquities TotalView Itch 4.1 (Tcp)
local function omi_nasdaq_nsmequities_totalview_itch_v4_1_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nsmequities_totalview_itch_v4_1.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_nsmequities_totalview_itch_v4_1.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nsmequities_totalview_itch_v4_1
  omi_nasdaq_nsmequities_totalview_itch_v4_1.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NsmEquities TotalView Itch 4.1 (Tcp)
local function omi_nasdaq_nsmequities_totalview_itch_v4_1_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nsmequities_totalview_itch_v4_1.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_nsmequities_totalview_itch_v4_1.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nsmequities_totalview_itch_v4_1
  omi_nasdaq_nsmequities_totalview_itch_v4_1.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NsmEquities TotalView Itch 4.1 (Udp)
local function omi_nasdaq_nsmequities_totalview_itch_v4_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nsmequities_totalview_itch_v4_1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nsmequities_totalview_itch_v4_1
  omi_nasdaq_nsmequities_totalview_itch_v4_1.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NsmEquities TotalView Itch 4.1 (Tcp): apply the heuristic of the sender's connection role
local function omi_nasdaq_nsmequities_totalview_itch_v4_1_tcp_heuristic(buffer, packet, parent)
  local role = nasdaq_nsmequities_totalview_itch_v4_1.role(packet)
  local initiator = omi_nasdaq_nsmequities_totalview_itch_v4_1_tcp_initiator_heuristic
  local acceptor = omi_nasdaq_nsmequities_totalview_itch_v4_1_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nasdaq_nsmequities_totalview_itch_v4_1.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nasdaq_nsmequities_totalview_itch_v4_1.swap(packet)

  return false
end

-- Register Heuristics for Nasdaq NsmEquities TotalView Itch 4.1
omi_nasdaq_nsmequities_totalview_itch_v4_1:register_heuristic("tcp", omi_nasdaq_nsmequities_totalview_itch_v4_1_tcp_heuristic)
omi_nasdaq_nsmequities_totalview_itch_v4_1:register_heuristic("udp", omi_nasdaq_nsmequities_totalview_itch_v4_1_udp_heuristic)

-- Register Nasdaq NsmEquities TotalView Itch 4.1 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nasdaq_nsmequities_totalview_itch_v4_1)

-- Register Nasdaq NsmEquities TotalView Itch 4.1 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_nsmequities_totalview_itch_v4_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 4.1
--   Date: Thursday, June 12, 2014
--   Specification: NQTV-ITCH-V4_1.pdf
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
