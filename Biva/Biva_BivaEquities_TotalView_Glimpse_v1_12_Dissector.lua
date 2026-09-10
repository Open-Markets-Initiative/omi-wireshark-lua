-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Biva BivaEquities TotalView Glimpse 1.12 Protocol
local omi_biva_bivaequities_totalview_glimpse_v1_12 = Proto("Omi.Biva.BivaEquities.TotalView.Glimpse.v1.12", "Biva BivaEquities TotalView Glimpse 1.12")

-- Protocol table
local biva_bivaequities_totalview_glimpse_v1_12 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Biva BivaEquities TotalView Glimpse 1.12 Fields
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.best_bid = ProtoField.new("Best Bid", "biva.bivaequities.totalview.glimpse.v1.12.bestbid", ftypes.UINT32)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.best_offer = ProtoField.new("Best Offer", "biva.bivaequities.totalview.glimpse.v1.12.bestoffer", ftypes.UINT32)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.client_packet_type = ProtoField.new("Packet Type", "biva.bivaequities.totalview.glimpse.v1.12.clientpackettype", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.cross_type = ProtoField.new("Cross Type", "biva.bivaequities.totalview.glimpse.v1.12.crosstype", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.currency = ProtoField.new("Currency", "biva.bivaequities.totalview.glimpse.v1.12.currency", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.delisting_or_maturity_date = ProtoField.new("Delisting Or Maturity Date", "biva.bivaequities.totalview.glimpse.v1.12.delistingormaturitydate", ftypes.UINT32)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.delisting_time = ProtoField.new("Delisting Time", "biva.bivaequities.totalview.glimpse.v1.12.delistingtime", ftypes.UINT32)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.event_code = ProtoField.new("Event Code", "biva.bivaequities.totalview.glimpse.v1.12.eventcode", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.group = ProtoField.new("Group", "biva.bivaequities.totalview.glimpse.v1.12.group", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.instrument = ProtoField.new("Instrument", "biva.bivaequities.totalview.glimpse.v1.12.instrument", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.isin = ProtoField.new("Isin", "biva.bivaequities.totalview.glimpse.v1.12.isin", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.listing_exchange = ProtoField.new("Listing Exchange", "biva.bivaequities.totalview.glimpse.v1.12.listingexchange", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.listing_type = ProtoField.new("Listing Type", "biva.bivaequities.totalview.glimpse.v1.12.listingtype", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.minimum_quantity = ProtoField.new("Minimum Quantity", "biva.bivaequities.totalview.glimpse.v1.12.minimumquantity", ftypes.UINT64)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.nanoseconds = ProtoField.new("Nanoseconds", "biva.bivaequities.totalview.glimpse.v1.12.nanoseconds", ftypes.UINT32)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.order_number = ProtoField.new("Order Number", "biva.bivaequities.totalview.glimpse.v1.12.ordernumber", ftypes.UINT64)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.order_verb = ProtoField.new("Order Verb", "biva.bivaequities.totalview.glimpse.v1.12.orderverb", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.orderbook = ProtoField.new("Orderbook", "biva.bivaequities.totalview.glimpse.v1.12.orderbook", ftypes.UINT32)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.packet_length = ProtoField.new("Packet Length", "biva.bivaequities.totalview.glimpse.v1.12.packetlength", ftypes.UINT16)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.participant_code = ProtoField.new("Participant Code", "biva.bivaequities.totalview.glimpse.v1.12.participantcode", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.participant_id = ProtoField.new("Participant Id", "biva.bivaequities.totalview.glimpse.v1.12.participantid", ftypes.UINT32)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.password = ProtoField.new("Password", "biva.bivaequities.totalview.glimpse.v1.12.password", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.price = ProtoField.new("Price", "biva.bivaequities.totalview.glimpse.v1.12.price", ftypes.UINT32)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.price_decimals = ProtoField.new("Price Decimals", "biva.bivaequities.totalview.glimpse.v1.12.pricedecimals", ftypes.UINT32)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.price_start = ProtoField.new("Price Start", "biva.bivaequities.totalview.glimpse.v1.12.pricestart", ftypes.UINT32)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.price_tick_size = ProtoField.new("Price Tick Size", "biva.bivaequities.totalview.glimpse.v1.12.priceticksize", ftypes.UINT32)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.price_tick_size_table_id = ProtoField.new("Price Tick Size Table Id", "biva.bivaequities.totalview.glimpse.v1.12.priceticksizetableid", ftypes.UINT32)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.price_type = ProtoField.new("Price Type", "biva.bivaequities.totalview.glimpse.v1.12.pricetype", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.quantity = ProtoField.new("Quantity", "biva.bivaequities.totalview.glimpse.v1.12.quantity", ftypes.UINT64)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.quantity_decimals = ProtoField.new("Quantity Decimals", "biva.bivaequities.totalview.glimpse.v1.12.quantitydecimals", ftypes.UINT32)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.quantity_start = ProtoField.new("Quantity Start", "biva.bivaequities.totalview.glimpse.v1.12.quantitystart", ftypes.UINT64)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.quantity_tick_size = ProtoField.new("Quantity Tick Size", "biva.bivaequities.totalview.glimpse.v1.12.quantityticksize", ftypes.UINT64)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.quantity_tick_size_table_id = ProtoField.new("Quantity Tick Size Table Id", "biva.bivaequities.totalview.glimpse.v1.12.quantityticksizetableid", ftypes.UINT32)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.quotation_basis = ProtoField.new("Quotation Basis", "biva.bivaequities.totalview.glimpse.v1.12.quotationbasis", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.reference_price = ProtoField.new("Reference Price", "biva.bivaequities.totalview.glimpse.v1.12.referenceprice", ftypes.UINT32)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.reference_price_reason = ProtoField.new("Reference Price Reason", "biva.bivaequities.totalview.glimpse.v1.12.referencepricereason", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "biva.bivaequities.totalview.glimpse.v1.12.rejectreasoncode", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "biva.bivaequities.totalview.glimpse.v1.12.requestedsequencenumber", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.requested_session = ProtoField.new("Requested Session", "biva.bivaequities.totalview.glimpse.v1.12.requestedsession", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.sec_code = ProtoField.new("Sec Code", "biva.bivaequities.totalview.glimpse.v1.12.seccode", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.second = ProtoField.new("Second", "biva.bivaequities.totalview.glimpse.v1.12.second", ftypes.UINT32)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.sequence_number = ProtoField.new("Sequence Number", "biva.bivaequities.totalview.glimpse.v1.12.sequencenumber", ftypes.UINT64)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "biva.bivaequities.totalview.glimpse.v1.12.sequencedmessagetype", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.server_packet_type = ProtoField.new("Packet Type", "biva.bivaequities.totalview.glimpse.v1.12.serverpackettype", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.session = ProtoField.new("Session", "biva.bivaequities.totalview.glimpse.v1.12.session", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.text = ProtoField.new("Text", "biva.bivaequities.totalview.glimpse.v1.12.text", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.theoretical_opening_price = ProtoField.new("Theoretical Opening Price", "biva.bivaequities.totalview.glimpse.v1.12.theoreticalopeningprice", ftypes.UINT32)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.theoretical_opening_quantity = ProtoField.new("Theoretical Opening Quantity", "biva.bivaequities.totalview.glimpse.v1.12.theoreticalopeningquantity", ftypes.UINT64)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.tick_size_table_id = ProtoField.new("Tick Size Table Id", "biva.bivaequities.totalview.glimpse.v1.12.ticksizetableid", ftypes.UINT32)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.trading_action_reason = ProtoField.new("Trading Action Reason", "biva.bivaequities.totalview.glimpse.v1.12.tradingactionreason", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.trading_state = ProtoField.new("Trading State", "biva.bivaequities.totalview.glimpse.v1.12.tradingstate", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.turnover_ratio = ProtoField.new("Turnover Ratio", "biva.bivaequities.totalview.glimpse.v1.12.turnoverratio", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "biva.bivaequities.totalview.glimpse.v1.12.unsequencedmessage", ftypes.BYTES)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "biva.bivaequities.totalview.glimpse.v1.12.unsequencedmessagetype", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.username = ProtoField.new("Username", "biva.bivaequities.totalview.glimpse.v1.12.username", ftypes.STRING)

-- Biva BivaEquities TotalView Glimpse 1.12 Headers
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.client_packet = ProtoField.new("Packet", "biva.bivaequities.totalview.glimpse.v1.12.clientpacket", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.client_packet_header = ProtoField.new("Packet Header", "biva.bivaequities.totalview.glimpse.v1.12.clientpacketheader", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "biva.bivaequities.totalview.glimpse.v1.12.clientsoupbintcppacket", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.server_packet = ProtoField.new("Packet", "biva.bivaequities.totalview.glimpse.v1.12.serverpacket", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.server_packet_header = ProtoField.new("Packet Header", "biva.bivaequities.totalview.glimpse.v1.12.serverpacketheader", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "biva.bivaequities.totalview.glimpse.v1.12.serversoupbintcppacket", ftypes.STRING)

-- Biva BivaEquities TotalView 1.12 Application Messages
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.add_order_message = ProtoField.new("Add Order Message", "biva.bivaequities.totalview.glimpse.v1.12.addordermessage", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.glimpse_snapshot_message = ProtoField.new("Glimpse Snapshot Message", "biva.bivaequities.totalview.glimpse.v1.12.glimpsesnapshotmessage", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.indicative_price_quantity_message = ProtoField.new("Indicative Price Quantity Message", "biva.bivaequities.totalview.glimpse.v1.12.indicativepricequantitymessage", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.orderbook_directory_message = ProtoField.new("Orderbook Directory Message", "biva.bivaequities.totalview.glimpse.v1.12.orderbookdirectorymessage", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.orderbook_reference_price_message = ProtoField.new("Orderbook Reference Price Message", "biva.bivaequities.totalview.glimpse.v1.12.orderbookreferencepricemessage", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.orderbook_trading_action_message = ProtoField.new("Orderbook Trading Action Message", "biva.bivaequities.totalview.glimpse.v1.12.orderbooktradingactionmessage", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.participant_directory_message = ProtoField.new("Participant Directory Message", "biva.bivaequities.totalview.glimpse.v1.12.participantdirectorymessage", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.price_tick_size_message = ProtoField.new("Price Tick Size Message", "biva.bivaequities.totalview.glimpse.v1.12.priceticksizemessage", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.quantity_tick_size_message = ProtoField.new("Quantity Tick Size Message", "biva.bivaequities.totalview.glimpse.v1.12.quantityticksizemessage", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.system_event_message = ProtoField.new("System Event Message", "biva.bivaequities.totalview.glimpse.v1.12.systemeventmessage", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.time_stamp_seconds_message = ProtoField.new("Time Stamp Seconds Message", "biva.bivaequities.totalview.glimpse.v1.12.timestampsecondsmessage", ftypes.STRING)

-- Biva BivaEquities TotalView 1.12 Session Messages
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.debug_packet = ProtoField.new("Debug Packet", "biva.bivaequities.totalview.glimpse.v1.12.debugpacket", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "biva.bivaequities.totalview.glimpse.v1.12.loginacceptedpacket", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "biva.bivaequities.totalview.glimpse.v1.12.loginrejectedpacket", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.login_request_packet = ProtoField.new("Login Request Packet", "biva.bivaequities.totalview.glimpse.v1.12.loginrequestpacket", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "biva.bivaequities.totalview.glimpse.v1.12.sequenceddatapacket", ftypes.STRING)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "biva.bivaequities.totalview.glimpse.v1.12.unsequenceddatapacket", ftypes.STRING)

-- Biva BivaEquities TotalView Glimpse 1.12 generated fields
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "biva.bivaequities.totalview.glimpse.v1.12.sequenceddatapacketsequencenumber", ftypes.UINT64)
omi_biva_bivaequities_totalview_glimpse_v1_12.fields.timestamp = ProtoField.new("Timestamp", "biva.bivaequities.totalview.glimpse.v1.12.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Biva BivaEquities TotalView Glimpse 1.12 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
biva_bivaequities_totalview_glimpse_v1_12.timestamp_format = 2

-- Hours behind UTC (CST) for midnight calculation
biva_bivaequities_totalview_glimpse_v1_12.utc_offset_hours = 6

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
biva_bivaequities_totalview_glimpse_v1_12.format_timestamp = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Biva BivaEquities TotalView Glimpse 1.12 Element Dissection Options
show.application_messages = true
show.structs = true
show.session_messages = true
show.sequences = true

-- Register Biva BivaEquities TotalView Glimpse 1.12 Show Options
local role_enum = {
  { 1, "Resolve from the conversation", 0 },
  { 2, "Initiator", 1 },
  { 3, "Acceptor", 2 }
}
omi_biva_bivaequities_totalview_glimpse_v1_12.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_biva_bivaequities_totalview_glimpse_v1_12.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_biva_bivaequities_totalview_glimpse_v1_12.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_biva_bivaequities_totalview_glimpse_v1_12.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_biva_bivaequities_totalview_glimpse_v1_12.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_biva_bivaequities_totalview_glimpse_v1_12.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_biva_bivaequities_totalview_glimpse_v1_12.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")
omi_biva_bivaequities_totalview_glimpse_v1_12.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

omi_biva_bivaequities_totalview_glimpse_v1_12.prefs.timestamp_format = Pref.enum("Nanoseconds Format", 2, "Nanoseconds display format", timestamp_format_enum, false)
omi_biva_bivaequities_totalview_glimpse_v1_12.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 6, "Hours behind UTC (CST) for midnight calculation")

-- Handle changed preferences
function omi_biva_bivaequities_totalview_glimpse_v1_12.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_biva_bivaequities_totalview_glimpse_v1_12.prefs.show_application_messages then
    show.application_messages = omi_biva_bivaequities_totalview_glimpse_v1_12.prefs.show_application_messages
  end
  if show.session_messages ~= omi_biva_bivaequities_totalview_glimpse_v1_12.prefs.show_session_messages then
    show.session_messages = omi_biva_bivaequities_totalview_glimpse_v1_12.prefs.show_session_messages
  end
  if show.structs ~= omi_biva_bivaequities_totalview_glimpse_v1_12.prefs.show_structs then
    show.structs = omi_biva_bivaequities_totalview_glimpse_v1_12.prefs.show_structs
  end
  if show.sequences ~= omi_biva_bivaequities_totalview_glimpse_v1_12.prefs.show_sequences then
    show.sequences = omi_biva_bivaequities_totalview_glimpse_v1_12.prefs.show_sequences
  end
  if biva_bivaequities_totalview_glimpse_v1_12.format_timestamp ~= omi_biva_bivaequities_totalview_glimpse_v1_12.prefs.format_timestamp then
    biva_bivaequities_totalview_glimpse_v1_12.format_timestamp = omi_biva_bivaequities_totalview_glimpse_v1_12.prefs.format_timestamp
  end
  if biva_bivaequities_totalview_glimpse_v1_12.timestamp_format ~= omi_biva_bivaequities_totalview_glimpse_v1_12.prefs.timestamp_format then
    biva_bivaequities_totalview_glimpse_v1_12.timestamp_format = omi_biva_bivaequities_totalview_glimpse_v1_12.prefs.timestamp_format
  end
  if biva_bivaequities_totalview_glimpse_v1_12.utc_offset_hours ~= omi_biva_bivaequities_totalview_glimpse_v1_12.prefs.utc_offset_hours then
    biva_bivaequities_totalview_glimpse_v1_12.utc_offset_hours = omi_biva_bivaequities_totalview_glimpse_v1_12.prefs.utc_offset_hours
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
biva_bivaequities_totalview_glimpse_v1_12.conversation = {}
biva_bivaequities_totalview_glimpse_v1_12.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
biva_bivaequities_totalview_glimpse_v1_12.stream_frame = nil
biva_bivaequities_totalview_glimpse_v1_12.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
biva_bivaequities_totalview_glimpse_v1_12.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
biva_bivaequities_totalview_glimpse_v1_12.conversation.data = function(packet)
  local key = biva_bivaequities_totalview_glimpse_v1_12.conversation.key(packet)
  local data = biva_bivaequities_totalview_glimpse_v1_12.conversation.flows[key]
  if data == nil then
    data = { sequence_number = { last = nil, frames = {} }, second = { last = nil, frames = {} }, sequence = { next = nil, frames = {} } }
    biva_bivaequities_totalview_glimpse_v1_12.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
biva_bivaequities_totalview_glimpse_v1_12.conversation.current = nil


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------

-- trim trailing spaces
trim_right_spaces = function(str)
  local finish = str:len()

  for i = 1, finish do
    if str:byte(i) == 0x20 then
      return str:sub(1, i - 1)
    end
  end

  return str
end


-----------------------------------------------------------------------
-- Biva BivaEquities TotalView Glimpse 1.12 Fields
-----------------------------------------------------------------------

-- Best Bid
biva_bivaequities_totalview_glimpse_v1_12.best_bid = {}

-- Size: Best Bid
biva_bivaequities_totalview_glimpse_v1_12.best_bid.size = 4

-- Display: Best Bid
biva_bivaequities_totalview_glimpse_v1_12.best_bid.display = function(value)
  return "Best Bid: "..value
end

-- Dissect: Best Bid
biva_bivaequities_totalview_glimpse_v1_12.best_bid.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.best_bid.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_totalview_glimpse_v1_12.best_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.best_bid, range, value, display)

  return offset + length, value
end

-- Best Offer
biva_bivaequities_totalview_glimpse_v1_12.best_offer = {}

-- Size: Best Offer
biva_bivaequities_totalview_glimpse_v1_12.best_offer.size = 4

-- Display: Best Offer
biva_bivaequities_totalview_glimpse_v1_12.best_offer.display = function(value)
  return "Best Offer: "..value
end

-- Dissect: Best Offer
biva_bivaequities_totalview_glimpse_v1_12.best_offer.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.best_offer.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_totalview_glimpse_v1_12.best_offer.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.best_offer, range, value, display)

  return offset + length, value
end

-- Client Packet Type
biva_bivaequities_totalview_glimpse_v1_12.client_packet_type = {}

-- Size: Client Packet Type
biva_bivaequities_totalview_glimpse_v1_12.client_packet_type.size = 1

-- Display: Client Packet Type
biva_bivaequities_totalview_glimpse_v1_12.client_packet_type.display = function(value)
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
biva_bivaequities_totalview_glimpse_v1_12.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_totalview_glimpse_v1_12.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Cross Type
biva_bivaequities_totalview_glimpse_v1_12.cross_type = {}

-- Size: Cross Type
biva_bivaequities_totalview_glimpse_v1_12.cross_type.size = 1

-- Display: Cross Type
biva_bivaequities_totalview_glimpse_v1_12.cross_type.display = function(value)
  if value == "O" then
    return "Cross Type: Preopening Session (O)"
  end
  if value == "I" then
    return "Cross Type: Intraday Auction (I)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
biva_bivaequities_totalview_glimpse_v1_12.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_totalview_glimpse_v1_12.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Currency
biva_bivaequities_totalview_glimpse_v1_12.currency = {}

-- Size: Currency
biva_bivaequities_totalview_glimpse_v1_12.currency.size = 3

-- Display: Currency
biva_bivaequities_totalview_glimpse_v1_12.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
biva_bivaequities_totalview_glimpse_v1_12.currency.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = biva_bivaequities_totalview_glimpse_v1_12.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.currency, range, value, display)

  return offset + length, value
end

-- Delisting Or Maturity Date
biva_bivaequities_totalview_glimpse_v1_12.delisting_or_maturity_date = {}

-- Size: Delisting Or Maturity Date
biva_bivaequities_totalview_glimpse_v1_12.delisting_or_maturity_date.size = 4

-- Display: Delisting Or Maturity Date
biva_bivaequities_totalview_glimpse_v1_12.delisting_or_maturity_date.display = function(value)
  return "Delisting Or Maturity Date: "..value
end

-- Dissect: Delisting Or Maturity Date
biva_bivaequities_totalview_glimpse_v1_12.delisting_or_maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.delisting_or_maturity_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_totalview_glimpse_v1_12.delisting_or_maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.delisting_or_maturity_date, range, value, display)

  return offset + length, value
end

-- Delisting Time
biva_bivaequities_totalview_glimpse_v1_12.delisting_time = {}

-- Size: Delisting Time
biva_bivaequities_totalview_glimpse_v1_12.delisting_time.size = 4

-- Display: Delisting Time
biva_bivaequities_totalview_glimpse_v1_12.delisting_time.display = function(value)
  return "Delisting Time: "..value
end

-- Dissect: Delisting Time
biva_bivaequities_totalview_glimpse_v1_12.delisting_time.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.delisting_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_totalview_glimpse_v1_12.delisting_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.delisting_time, range, value, display)

  return offset + length, value
end

-- Event Code
biva_bivaequities_totalview_glimpse_v1_12.event_code = {}

-- Size: Event Code
biva_bivaequities_totalview_glimpse_v1_12.event_code.size = 1

-- Display: Event Code
biva_bivaequities_totalview_glimpse_v1_12.event_code.display = function(value)
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
  if value == "V" then
    return "Event Code: Scheduled Auction Starts (V)"
  end
  if value == "U" then
    return "Event Code: Scheduled Auction Closes (U)"
  end
  if value == "P" then
    return "Event Code: Start Of Post Close Session (P)"
  end
  if value == "T" then
    return "Event Code: End Of Post Close Session (T)"
  end
  if value == "E" then
    return "Event Code: End Of System Hours (E)"
  end
  if value == "C" then
    return "Event Code: End Of Messages (C)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
biva_bivaequities_totalview_glimpse_v1_12.event_code.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_totalview_glimpse_v1_12.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.event_code, range, value, display)

  return offset + length, value
end

-- Group
biva_bivaequities_totalview_glimpse_v1_12.group = {}

-- Size: Group
biva_bivaequities_totalview_glimpse_v1_12.group.size = 8

-- Display: Group
biva_bivaequities_totalview_glimpse_v1_12.group.display = function(value)
  return "Group: "..value
end

-- Dissect: Group
biva_bivaequities_totalview_glimpse_v1_12.group.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.group.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = biva_bivaequities_totalview_glimpse_v1_12.group.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.group, range, value, display)

  return offset + length, value
end

-- Instrument
biva_bivaequities_totalview_glimpse_v1_12.instrument = {}

-- Size: Instrument
biva_bivaequities_totalview_glimpse_v1_12.instrument.size = 12

-- Display: Instrument
biva_bivaequities_totalview_glimpse_v1_12.instrument.display = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
biva_bivaequities_totalview_glimpse_v1_12.instrument.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.instrument.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = biva_bivaequities_totalview_glimpse_v1_12.instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.instrument, range, value, display)

  return offset + length, value
end

-- Isin
biva_bivaequities_totalview_glimpse_v1_12.isin = {}

-- Size: Isin
biva_bivaequities_totalview_glimpse_v1_12.isin.size = 12

-- Display: Isin
biva_bivaequities_totalview_glimpse_v1_12.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
biva_bivaequities_totalview_glimpse_v1_12.isin.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = biva_bivaequities_totalview_glimpse_v1_12.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.isin, range, value, display)

  return offset + length, value
end

-- Listing Exchange
biva_bivaequities_totalview_glimpse_v1_12.listing_exchange = {}

-- Size: Listing Exchange
biva_bivaequities_totalview_glimpse_v1_12.listing_exchange.size = 4

-- Display: Listing Exchange
biva_bivaequities_totalview_glimpse_v1_12.listing_exchange.display = function(value)
  return "Listing Exchange: "..value
end

-- Dissect: Listing Exchange
biva_bivaequities_totalview_glimpse_v1_12.listing_exchange.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.listing_exchange.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = biva_bivaequities_totalview_glimpse_v1_12.listing_exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.listing_exchange, range, value, display)

  return offset + length, value
end

-- Listing Type
biva_bivaequities_totalview_glimpse_v1_12.listing_type = {}

-- Size: Listing Type
biva_bivaequities_totalview_glimpse_v1_12.listing_type.size = 1

-- Display: Listing Type
biva_bivaequities_totalview_glimpse_v1_12.listing_type.display = function(value)
  if value == "R" then
    return "Listing Type: Regular Securities (R)"
  end
  if value == "S" then
    return "Listing Type: Sub Rm Securities (S)"
  end

  return "Listing Type: Unknown("..value..")"
end

-- Dissect: Listing Type
biva_bivaequities_totalview_glimpse_v1_12.listing_type.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.listing_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_totalview_glimpse_v1_12.listing_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.listing_type, range, value, display)

  return offset + length, value
end

-- Minimum Quantity
biva_bivaequities_totalview_glimpse_v1_12.minimum_quantity = {}

-- Size: Minimum Quantity
biva_bivaequities_totalview_glimpse_v1_12.minimum_quantity.size = 8

-- Display: Minimum Quantity
biva_bivaequities_totalview_glimpse_v1_12.minimum_quantity.display = function(value)
  return "Minimum Quantity: "..value
end

-- Dissect: Minimum Quantity
biva_bivaequities_totalview_glimpse_v1_12.minimum_quantity.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.minimum_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = biva_bivaequities_totalview_glimpse_v1_12.minimum_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.minimum_quantity, range, value, display)

  return offset + length, value
end

-- Nanoseconds
biva_bivaequities_totalview_glimpse_v1_12.nanoseconds = {}

-- Size: Nanoseconds
biva_bivaequities_totalview_glimpse_v1_12.nanoseconds.size = 4

-- Display: Nanoseconds
biva_bivaequities_totalview_glimpse_v1_12.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
biva_bivaequities_totalview_glimpse_v1_12.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_totalview_glimpse_v1_12.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Order Number
biva_bivaequities_totalview_glimpse_v1_12.order_number = {}

-- Size: Order Number
biva_bivaequities_totalview_glimpse_v1_12.order_number.size = 8

-- Display: Order Number
biva_bivaequities_totalview_glimpse_v1_12.order_number.display = function(value)
  return "Order Number: "..value
end

-- Dissect: Order Number
biva_bivaequities_totalview_glimpse_v1_12.order_number.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = biva_bivaequities_totalview_glimpse_v1_12.order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.order_number, range, value, display)

  return offset + length, value
end

-- Order Verb
biva_bivaequities_totalview_glimpse_v1_12.order_verb = {}

-- Size: Order Verb
biva_bivaequities_totalview_glimpse_v1_12.order_verb.size = 1

-- Display: Order Verb
biva_bivaequities_totalview_glimpse_v1_12.order_verb.display = function(value)
  if value == "B" then
    return "Order Verb: Buy (B)"
  end
  if value == "S" then
    return "Order Verb: Sell (S)"
  end

  return "Order Verb: Unknown("..value..")"
end

-- Dissect: Order Verb
biva_bivaequities_totalview_glimpse_v1_12.order_verb.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.order_verb.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_totalview_glimpse_v1_12.order_verb.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.order_verb, range, value, display)

  return offset + length, value
end

-- Orderbook
biva_bivaequities_totalview_glimpse_v1_12.orderbook = {}

-- Size: Orderbook
biva_bivaequities_totalview_glimpse_v1_12.orderbook.size = 4

-- Display: Orderbook
biva_bivaequities_totalview_glimpse_v1_12.orderbook.display = function(value)
  return "Orderbook: "..value
end

-- Dissect: Orderbook
biva_bivaequities_totalview_glimpse_v1_12.orderbook.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.orderbook.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_totalview_glimpse_v1_12.orderbook.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.orderbook, range, value, display)

  return offset + length, value
end

-- Packet Length
biva_bivaequities_totalview_glimpse_v1_12.packet_length = {}

-- Size: Packet Length
biva_bivaequities_totalview_glimpse_v1_12.packet_length.size = 2

-- Display: Packet Length
biva_bivaequities_totalview_glimpse_v1_12.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
biva_bivaequities_totalview_glimpse_v1_12.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_totalview_glimpse_v1_12.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Participant Code
biva_bivaequities_totalview_glimpse_v1_12.participant_code = {}

-- Size: Participant Code
biva_bivaequities_totalview_glimpse_v1_12.participant_code.size = 12

-- Display: Participant Code
biva_bivaequities_totalview_glimpse_v1_12.participant_code.display = function(value)
  return "Participant Code: "..value
end

-- Dissect: Participant Code
biva_bivaequities_totalview_glimpse_v1_12.participant_code.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.participant_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = biva_bivaequities_totalview_glimpse_v1_12.participant_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.participant_code, range, value, display)

  return offset + length, value
end

-- Participant Id
biva_bivaequities_totalview_glimpse_v1_12.participant_id = {}

-- Size: Participant Id
biva_bivaequities_totalview_glimpse_v1_12.participant_id.size = 4

-- Display: Participant Id
biva_bivaequities_totalview_glimpse_v1_12.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
biva_bivaequities_totalview_glimpse_v1_12.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.participant_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_totalview_glimpse_v1_12.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Password
biva_bivaequities_totalview_glimpse_v1_12.password = {}

-- Size: Password
biva_bivaequities_totalview_glimpse_v1_12.password.size = 10

-- Display: Password
biva_bivaequities_totalview_glimpse_v1_12.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
biva_bivaequities_totalview_glimpse_v1_12.password.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = biva_bivaequities_totalview_glimpse_v1_12.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.password, range, value, display)

  return offset + length, value
end

-- Price
biva_bivaequities_totalview_glimpse_v1_12.price = {}

-- Size: Price
biva_bivaequities_totalview_glimpse_v1_12.price.size = 4

-- Display: Price
biva_bivaequities_totalview_glimpse_v1_12.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
biva_bivaequities_totalview_glimpse_v1_12.price.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_totalview_glimpse_v1_12.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.price, range, value, display)

  return offset + length, value
end

-- Price Decimals
biva_bivaequities_totalview_glimpse_v1_12.price_decimals = {}

-- Size: Price Decimals
biva_bivaequities_totalview_glimpse_v1_12.price_decimals.size = 4

-- Display: Price Decimals
biva_bivaequities_totalview_glimpse_v1_12.price_decimals.display = function(value)
  return "Price Decimals: "..value
end

-- Dissect: Price Decimals
biva_bivaequities_totalview_glimpse_v1_12.price_decimals.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.price_decimals.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_totalview_glimpse_v1_12.price_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.price_decimals, range, value, display)

  return offset + length, value
end

-- Price Start
biva_bivaequities_totalview_glimpse_v1_12.price_start = {}

-- Size: Price Start
biva_bivaequities_totalview_glimpse_v1_12.price_start.size = 4

-- Display: Price Start
biva_bivaequities_totalview_glimpse_v1_12.price_start.display = function(value)
  return "Price Start: "..value
end

-- Dissect: Price Start
biva_bivaequities_totalview_glimpse_v1_12.price_start.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.price_start.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_totalview_glimpse_v1_12.price_start.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.price_start, range, value, display)

  return offset + length, value
end

-- Price Tick Size
biva_bivaequities_totalview_glimpse_v1_12.price_tick_size = {}

-- Size: Price Tick Size
biva_bivaequities_totalview_glimpse_v1_12.price_tick_size.size = 4

-- Display: Price Tick Size
biva_bivaequities_totalview_glimpse_v1_12.price_tick_size.display = function(value)
  return "Price Tick Size: "..value
end

-- Dissect: Price Tick Size
biva_bivaequities_totalview_glimpse_v1_12.price_tick_size.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.price_tick_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_totalview_glimpse_v1_12.price_tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.price_tick_size, range, value, display)

  return offset + length, value
end

-- Price Tick Size Table Id
biva_bivaequities_totalview_glimpse_v1_12.price_tick_size_table_id = {}

-- Size: Price Tick Size Table Id
biva_bivaequities_totalview_glimpse_v1_12.price_tick_size_table_id.size = 4

-- Display: Price Tick Size Table Id
biva_bivaequities_totalview_glimpse_v1_12.price_tick_size_table_id.display = function(value)
  return "Price Tick Size Table Id: "..value
end

-- Dissect: Price Tick Size Table Id
biva_bivaequities_totalview_glimpse_v1_12.price_tick_size_table_id.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.price_tick_size_table_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_totalview_glimpse_v1_12.price_tick_size_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.price_tick_size_table_id, range, value, display)

  return offset + length, value
end

-- Price Type
biva_bivaequities_totalview_glimpse_v1_12.price_type = {}

-- Size: Price Type
biva_bivaequities_totalview_glimpse_v1_12.price_type.size = 1

-- Display: Price Type
biva_bivaequities_totalview_glimpse_v1_12.price_type.display = function(value)
  if value == "C" then
    return "Price Type: Close Price (C)"
  end
  if value == "R" then
    return "Price Type: Reference Price (R)"
  end
  if value == "I" then
    return "Price Type: Inav (I)"
  end
  if value == "V" then
    return "Price Type: Vwap Or Ppp (V)"
  end

  return "Price Type: Unknown("..value..")"
end

-- Dissect: Price Type
biva_bivaequities_totalview_glimpse_v1_12.price_type.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.price_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_totalview_glimpse_v1_12.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.price_type, range, value, display)

  return offset + length, value
end

-- Quantity
biva_bivaequities_totalview_glimpse_v1_12.quantity = {}

-- Size: Quantity
biva_bivaequities_totalview_glimpse_v1_12.quantity.size = 8

-- Display: Quantity
biva_bivaequities_totalview_glimpse_v1_12.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
biva_bivaequities_totalview_glimpse_v1_12.quantity.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = biva_bivaequities_totalview_glimpse_v1_12.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.quantity, range, value, display)

  return offset + length, value
end

-- Quantity Decimals
biva_bivaequities_totalview_glimpse_v1_12.quantity_decimals = {}

-- Size: Quantity Decimals
biva_bivaequities_totalview_glimpse_v1_12.quantity_decimals.size = 4

-- Display: Quantity Decimals
biva_bivaequities_totalview_glimpse_v1_12.quantity_decimals.display = function(value)
  return "Quantity Decimals: "..value
end

-- Dissect: Quantity Decimals
biva_bivaequities_totalview_glimpse_v1_12.quantity_decimals.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.quantity_decimals.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_totalview_glimpse_v1_12.quantity_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.quantity_decimals, range, value, display)

  return offset + length, value
end

-- Quantity Start
biva_bivaequities_totalview_glimpse_v1_12.quantity_start = {}

-- Size: Quantity Start
biva_bivaequities_totalview_glimpse_v1_12.quantity_start.size = 8

-- Display: Quantity Start
biva_bivaequities_totalview_glimpse_v1_12.quantity_start.display = function(value)
  return "Quantity Start: "..value
end

-- Dissect: Quantity Start
biva_bivaequities_totalview_glimpse_v1_12.quantity_start.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.quantity_start.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = biva_bivaequities_totalview_glimpse_v1_12.quantity_start.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.quantity_start, range, value, display)

  return offset + length, value
end

-- Quantity Tick Size
biva_bivaequities_totalview_glimpse_v1_12.quantity_tick_size = {}

-- Size: Quantity Tick Size
biva_bivaequities_totalview_glimpse_v1_12.quantity_tick_size.size = 8

-- Display: Quantity Tick Size
biva_bivaequities_totalview_glimpse_v1_12.quantity_tick_size.display = function(value)
  return "Quantity Tick Size: "..value
end

-- Dissect: Quantity Tick Size
biva_bivaequities_totalview_glimpse_v1_12.quantity_tick_size.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.quantity_tick_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = biva_bivaequities_totalview_glimpse_v1_12.quantity_tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.quantity_tick_size, range, value, display)

  return offset + length, value
end

-- Quantity Tick Size Table Id
biva_bivaequities_totalview_glimpse_v1_12.quantity_tick_size_table_id = {}

-- Size: Quantity Tick Size Table Id
biva_bivaequities_totalview_glimpse_v1_12.quantity_tick_size_table_id.size = 4

-- Display: Quantity Tick Size Table Id
biva_bivaequities_totalview_glimpse_v1_12.quantity_tick_size_table_id.display = function(value)
  return "Quantity Tick Size Table Id: "..value
end

-- Dissect: Quantity Tick Size Table Id
biva_bivaequities_totalview_glimpse_v1_12.quantity_tick_size_table_id.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.quantity_tick_size_table_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_totalview_glimpse_v1_12.quantity_tick_size_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.quantity_tick_size_table_id, range, value, display)

  return offset + length, value
end

-- Quotation Basis
biva_bivaequities_totalview_glimpse_v1_12.quotation_basis = {}

-- Size: Quotation Basis
biva_bivaequities_totalview_glimpse_v1_12.quotation_basis.size = 3

-- Display: Quotation Basis
biva_bivaequities_totalview_glimpse_v1_12.quotation_basis.display = function(value)
  return "Quotation Basis: "..value
end

-- Dissect: Quotation Basis
biva_bivaequities_totalview_glimpse_v1_12.quotation_basis.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.quotation_basis.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = biva_bivaequities_totalview_glimpse_v1_12.quotation_basis.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.quotation_basis, range, value, display)

  return offset + length, value
end

-- Reference Price
biva_bivaequities_totalview_glimpse_v1_12.reference_price = {}

-- Size: Reference Price
biva_bivaequities_totalview_glimpse_v1_12.reference_price.size = 4

-- Display: Reference Price
biva_bivaequities_totalview_glimpse_v1_12.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Dissect: Reference Price
biva_bivaequities_totalview_glimpse_v1_12.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.reference_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_totalview_glimpse_v1_12.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Reference Price Reason
biva_bivaequities_totalview_glimpse_v1_12.reference_price_reason = {}

-- Size: Reference Price Reason
biva_bivaequities_totalview_glimpse_v1_12.reference_price_reason.size = 1

-- Display: Reference Price Reason
biva_bivaequities_totalview_glimpse_v1_12.reference_price_reason.display = function(value)
  if value == " " then
    return "Reference Price Reason: None (<whitespace>)"
  end

  return "Reference Price Reason: Unknown("..value..")"
end

-- Dissect: Reference Price Reason
biva_bivaequities_totalview_glimpse_v1_12.reference_price_reason.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.reference_price_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_totalview_glimpse_v1_12.reference_price_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.reference_price_reason, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
biva_bivaequities_totalview_glimpse_v1_12.reject_reason_code = {}

-- Size: Reject Reason Code
biva_bivaequities_totalview_glimpse_v1_12.reject_reason_code.size = 1

-- Display: Reject Reason Code
biva_bivaequities_totalview_glimpse_v1_12.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
biva_bivaequities_totalview_glimpse_v1_12.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_totalview_glimpse_v1_12.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
biva_bivaequities_totalview_glimpse_v1_12.requested_sequence_number = {}

-- Size: Requested Sequence Number
biva_bivaequities_totalview_glimpse_v1_12.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
biva_bivaequities_totalview_glimpse_v1_12.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
biva_bivaequities_totalview_glimpse_v1_12.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = biva_bivaequities_totalview_glimpse_v1_12.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
biva_bivaequities_totalview_glimpse_v1_12.requested_session = {}

-- Size: Requested Session
biva_bivaequities_totalview_glimpse_v1_12.requested_session.size = 10

-- Display: Requested Session
biva_bivaequities_totalview_glimpse_v1_12.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
biva_bivaequities_totalview_glimpse_v1_12.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.requested_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = biva_bivaequities_totalview_glimpse_v1_12.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Sec Code
biva_bivaequities_totalview_glimpse_v1_12.sec_code = {}

-- Size: Sec Code
biva_bivaequities_totalview_glimpse_v1_12.sec_code.size = 15

-- Display: Sec Code
biva_bivaequities_totalview_glimpse_v1_12.sec_code.display = function(value)
  return "Sec Code: "..value
end

-- Dissect: Sec Code
biva_bivaequities_totalview_glimpse_v1_12.sec_code.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.sec_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = biva_bivaequities_totalview_glimpse_v1_12.sec_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.sec_code, range, value, display)

  return offset + length, value
end

-- Second
biva_bivaequities_totalview_glimpse_v1_12.second = {}

-- Size: Second
biva_bivaequities_totalview_glimpse_v1_12.second.size = 4

-- Store: Second
biva_bivaequities_totalview_glimpse_v1_12.second.current = nil

-- Generated: Second
biva_bivaequities_totalview_glimpse_v1_12.second.generated = function(value, range, packet, parent)
  local display = biva_bivaequities_totalview_glimpse_v1_12.second.display(value)
  local second = parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.second, range, value, display)
  second:set_generated()
end

-- Display: Second
biva_bivaequities_totalview_glimpse_v1_12.second.display = function(value)
  return "Second: "..value
end

-- Dissect: Second
biva_bivaequities_totalview_glimpse_v1_12.second.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.second.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_totalview_glimpse_v1_12.second.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.second, range, value, display)

  return offset + length, value
end

-- Sequence Number
biva_bivaequities_totalview_glimpse_v1_12.sequence_number = {}

-- Size: Sequence Number
biva_bivaequities_totalview_glimpse_v1_12.sequence_number.size = 8

-- Store: Sequence Number
biva_bivaequities_totalview_glimpse_v1_12.sequence_number.current = nil

-- Generated: Sequence Number
biva_bivaequities_totalview_glimpse_v1_12.sequence_number.generated = function(value, range, packet, parent)
  local display = biva_bivaequities_totalview_glimpse_v1_12.sequence_number.display(value)
  local sequence_number = parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.sequence_number, range, value, display)
  sequence_number:set_generated()
end

-- Display: Sequence Number
biva_bivaequities_totalview_glimpse_v1_12.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
biva_bivaequities_totalview_glimpse_v1_12.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = biva_bivaequities_totalview_glimpse_v1_12.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
biva_bivaequities_totalview_glimpse_v1_12.sequenced_message_type = {}

-- Size: Sequenced Message Type
biva_bivaequities_totalview_glimpse_v1_12.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
biva_bivaequities_totalview_glimpse_v1_12.sequenced_message_type.display = function(value)
  if value == "T" then
    return "Sequenced Message Type: Time Stamp Seconds Message (T)"
  end
  if value == "S" then
    return "Sequenced Message Type: System Event Message (S)"
  end
  if value == "L" then
    return "Sequenced Message Type: Price Tick Size Message (L)"
  end
  if value == "M" then
    return "Sequenced Message Type: Quantity Tick Size Message (M)"
  end
  if value == "R" then
    return "Sequenced Message Type: Orderbook Directory Message (R)"
  end
  if value == "F" then
    return "Sequenced Message Type: Participant Directory Message (F)"
  end
  if value == "H" then
    return "Sequenced Message Type: Orderbook Trading Action Message (H)"
  end
  if value == "X" then
    return "Sequenced Message Type: Orderbook Reference Price Message (X)"
  end
  if value == "A" then
    return "Sequenced Message Type: Add Order Message (A)"
  end
  if value == "I" then
    return "Sequenced Message Type: Indicative Price Quantity Message (I)"
  end
  if value == "G" then
    return "Sequenced Message Type: Glimpse Snapshot Message (G)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
biva_bivaequities_totalview_glimpse_v1_12.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_totalview_glimpse_v1_12.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
biva_bivaequities_totalview_glimpse_v1_12.server_packet_type = {}

-- Size: Server Packet Type
biva_bivaequities_totalview_glimpse_v1_12.server_packet_type.size = 1

-- Display: Server Packet Type
biva_bivaequities_totalview_glimpse_v1_12.server_packet_type.display = function(value)
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
biva_bivaequities_totalview_glimpse_v1_12.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_totalview_glimpse_v1_12.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Session
biva_bivaequities_totalview_glimpse_v1_12.session = {}

-- Size: Session
biva_bivaequities_totalview_glimpse_v1_12.session.size = 10

-- Display: Session
biva_bivaequities_totalview_glimpse_v1_12.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
biva_bivaequities_totalview_glimpse_v1_12.session.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = biva_bivaequities_totalview_glimpse_v1_12.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.session, range, value, display)

  return offset + length, value
end

-- Text
biva_bivaequities_totalview_glimpse_v1_12.text = {}

-- Size: Text
biva_bivaequities_totalview_glimpse_v1_12.text.size = 1

-- Display: Text
biva_bivaequities_totalview_glimpse_v1_12.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
biva_bivaequities_totalview_glimpse_v1_12.text.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_totalview_glimpse_v1_12.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.text, range, value, display)

  return offset + length, value
end

-- Theoretical Opening Price
biva_bivaequities_totalview_glimpse_v1_12.theoretical_opening_price = {}

-- Size: Theoretical Opening Price
biva_bivaequities_totalview_glimpse_v1_12.theoretical_opening_price.size = 4

-- Display: Theoretical Opening Price
biva_bivaequities_totalview_glimpse_v1_12.theoretical_opening_price.display = function(value)
  return "Theoretical Opening Price: "..value
end

-- Dissect: Theoretical Opening Price
biva_bivaequities_totalview_glimpse_v1_12.theoretical_opening_price.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.theoretical_opening_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_totalview_glimpse_v1_12.theoretical_opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.theoretical_opening_price, range, value, display)

  return offset + length, value
end

-- Theoretical Opening Quantity
biva_bivaequities_totalview_glimpse_v1_12.theoretical_opening_quantity = {}

-- Size: Theoretical Opening Quantity
biva_bivaequities_totalview_glimpse_v1_12.theoretical_opening_quantity.size = 8

-- Display: Theoretical Opening Quantity
biva_bivaequities_totalview_glimpse_v1_12.theoretical_opening_quantity.display = function(value)
  return "Theoretical Opening Quantity: "..value
end

-- Dissect: Theoretical Opening Quantity
biva_bivaequities_totalview_glimpse_v1_12.theoretical_opening_quantity.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.theoretical_opening_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = biva_bivaequities_totalview_glimpse_v1_12.theoretical_opening_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.theoretical_opening_quantity, range, value, display)

  return offset + length, value
end

-- Tick Size Table Id
biva_bivaequities_totalview_glimpse_v1_12.tick_size_table_id = {}

-- Size: Tick Size Table Id
biva_bivaequities_totalview_glimpse_v1_12.tick_size_table_id.size = 4

-- Display: Tick Size Table Id
biva_bivaequities_totalview_glimpse_v1_12.tick_size_table_id.display = function(value)
  return "Tick Size Table Id: "..value
end

-- Dissect: Tick Size Table Id
biva_bivaequities_totalview_glimpse_v1_12.tick_size_table_id.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.tick_size_table_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_totalview_glimpse_v1_12.tick_size_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.tick_size_table_id, range, value, display)

  return offset + length, value
end

-- Trading Action Reason
biva_bivaequities_totalview_glimpse_v1_12.trading_action_reason = {}

-- Size: Trading Action Reason
biva_bivaequities_totalview_glimpse_v1_12.trading_action_reason.size = 1

-- Display: Trading Action Reason
biva_bivaequities_totalview_glimpse_v1_12.trading_action_reason.display = function(value)
  if value == "N" then
    return "Trading Action Reason: Normal Trading (N)"
  end
  if value == "H" then
    return "Trading Action Reason: Volatility Auction (H)"
  end
  if value == "A" then
    return "Trading Action Reason: Continuous Auction Start (A)"
  end
  if value == "B" then
    return "Trading Action Reason: Continuous Auction End (B)"
  end
  if value == "Q" then
    return "Trading Action Reason: News Pending (Q)"
  end
  if value == "S" then
    return "Trading Action Reason: Static Price Band Breach (S)"
  end
  if value == "M" then
    return "Trading Action Reason: Market Surveillance Suspension (M)"
  end
  if value == "O" then
    return "Trading Action Reason: Suspension By Market Of Origin (O)"
  end
  if value == "C" then
    return "Trading Action Reason: Non Compliance (C)"
  end
  if value == "I" then
    return "Trading Action Reason: Start Of Indication Of Interest (I)"
  end
  if value == "E" then
    return "Trading Action Reason: Expired Security Is Unavailable For Trading (E)"
  end
  if value == "L" then
    return "Trading Action Reason: Not Yet Available For Trading (L)"
  end

  return "Trading Action Reason: Unknown("..value..")"
end

-- Dissect: Trading Action Reason
biva_bivaequities_totalview_glimpse_v1_12.trading_action_reason.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.trading_action_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_totalview_glimpse_v1_12.trading_action_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.trading_action_reason, range, value, display)

  return offset + length, value
end

-- Trading State
biva_bivaequities_totalview_glimpse_v1_12.trading_state = {}

-- Size: Trading State
biva_bivaequities_totalview_glimpse_v1_12.trading_state.size = 1

-- Display: Trading State
biva_bivaequities_totalview_glimpse_v1_12.trading_state.display = function(value)
  if value == "T" then
    return "Trading State: Trading (T)"
  end
  if value == "V" then
    return "Trading State: Suspended (V)"
  end

  return "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
biva_bivaequities_totalview_glimpse_v1_12.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_totalview_glimpse_v1_12.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Turnover Ratio
biva_bivaequities_totalview_glimpse_v1_12.turnover_ratio = {}

-- Size: Turnover Ratio
biva_bivaequities_totalview_glimpse_v1_12.turnover_ratio.size = 1

-- Display: Turnover Ratio
biva_bivaequities_totalview_glimpse_v1_12.turnover_ratio.display = function(value)
  return "Turnover Ratio: "..value
end

-- Dissect: Turnover Ratio
biva_bivaequities_totalview_glimpse_v1_12.turnover_ratio.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.turnover_ratio.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_totalview_glimpse_v1_12.turnover_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.turnover_ratio, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
biva_bivaequities_totalview_glimpse_v1_12.unsequenced_message = {}

-- Display: Unsequenced Message
biva_bivaequities_totalview_glimpse_v1_12.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
biva_bivaequities_totalview_glimpse_v1_12.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = biva_bivaequities_totalview_glimpse_v1_12.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.unsequenced_message, range, value, display)

  return offset + size, value
end

-- Unsequenced Message Type
biva_bivaequities_totalview_glimpse_v1_12.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
biva_bivaequities_totalview_glimpse_v1_12.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
biva_bivaequities_totalview_glimpse_v1_12.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
biva_bivaequities_totalview_glimpse_v1_12.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_totalview_glimpse_v1_12.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
biva_bivaequities_totalview_glimpse_v1_12.username = {}

-- Size: Username
biva_bivaequities_totalview_glimpse_v1_12.username.size = 6

-- Display: Username
biva_bivaequities_totalview_glimpse_v1_12.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
biva_bivaequities_totalview_glimpse_v1_12.username.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = biva_bivaequities_totalview_glimpse_v1_12.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.username, range, value, display)

  return offset + length, value
end

-- Timestamp
biva_bivaequities_totalview_glimpse_v1_12.timestamp = {}

-- Translate: Timestamp
biva_bivaequities_totalview_glimpse_v1_12.timestamp.translate = function(nanoseconds, stored_second)
  return UInt64.new(stored_second * 1000000000 + nanoseconds)
end

-- Display: Timestamp
biva_bivaequities_totalview_glimpse_v1_12.timestamp.display = function(nanoseconds, stored_second, packet)
  -- Raw display mode
  if biva_bivaequities_totalview_glimpse_v1_12.timestamp_format == 0 then
    return "Timestamp: "..(stored_second * 1000000000 + nanoseconds)
  end

  -- Full datetime mode (calculate from capture date + UTC offset)
  if biva_bivaequities_totalview_glimpse_v1_12.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = biva_bivaequities_totalview_glimpse_v1_12.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400
    local full_seconds = local_midnight + stored_second

    return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", stored_second)..string.format("%09d", nanoseconds)
end

-- Composite: Timestamp
biva_bivaequities_totalview_glimpse_v1_12.timestamp.composite = function(buffer, offset, stored_second, packet, parent)
  local length = biva_bivaequities_totalview_glimpse_v1_12.nanoseconds.size
  local range = buffer(offset, length)
  local nanoseconds = range:uint()
  local value = biva_bivaequities_totalview_glimpse_v1_12.timestamp.translate(nanoseconds, stored_second)
  local display = biva_bivaequities_totalview_glimpse_v1_12.timestamp.display(nanoseconds, stored_second, packet)
  parent = parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.timestamp, range, value, display)

  biva_bivaequities_totalview_glimpse_v1_12.second.generated(stored_second, range, packet, parent)

  display = biva_bivaequities_totalview_glimpse_v1_12.nanoseconds.display(nanoseconds)
  parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.nanoseconds, range, nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
biva_bivaequities_totalview_glimpse_v1_12.timestamp.dissect = function(buffer, offset, packet, parent)
  if biva_bivaequities_totalview_glimpse_v1_12.format_timestamp then
    local stored_second = biva_bivaequities_totalview_glimpse_v1_12.second.current

    if stored_second ~= nil then
      return biva_bivaequities_totalview_glimpse_v1_12.timestamp.composite(buffer, offset, stored_second, packet, parent)
    end
  end

  return biva_bivaequities_totalview_glimpse_v1_12.nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Biva BivaEquities TotalView Glimpse 1.12
-----------------------------------------------------------------------

-- End Of Session
biva_bivaequities_totalview_glimpse_v1_12.end_of_session = {}

-- Display: End Of Session
biva_bivaequities_totalview_glimpse_v1_12.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
biva_bivaequities_totalview_glimpse_v1_12.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = biva_bivaequities_totalview_glimpse_v1_12.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
biva_bivaequities_totalview_glimpse_v1_12.server_heartbeat = {}

-- Display: Server Heartbeat
biva_bivaequities_totalview_glimpse_v1_12.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
biva_bivaequities_totalview_glimpse_v1_12.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = biva_bivaequities_totalview_glimpse_v1_12.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Glimpse Snapshot Message
biva_bivaequities_totalview_glimpse_v1_12.glimpse_snapshot_message = {}

-- Size: Glimpse Snapshot Message
biva_bivaequities_totalview_glimpse_v1_12.glimpse_snapshot_message.size =
  biva_bivaequities_totalview_glimpse_v1_12.sequence_number.size

-- Display: Glimpse Snapshot Message
biva_bivaequities_totalview_glimpse_v1_12.glimpse_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Glimpse Snapshot Message
biva_bivaequities_totalview_glimpse_v1_12.glimpse_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: Integer
  index, sequence_number = biva_bivaequities_totalview_glimpse_v1_12.sequence_number.dissect(buffer, index, packet, parent)

  -- Store Sequence Number Value
  biva_bivaequities_totalview_glimpse_v1_12.sequence_number.current = sequence_number

  if not packet.visited then
    biva_bivaequities_totalview_glimpse_v1_12.conversation.current.sequence_number.last = sequence_number
  end

  return index
end

-- Dissect: Glimpse Snapshot Message
biva_bivaequities_totalview_glimpse_v1_12.glimpse_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.glimpse_snapshot_message, buffer(offset, 0))
    local index = biva_bivaequities_totalview_glimpse_v1_12.glimpse_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_totalview_glimpse_v1_12.glimpse_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_totalview_glimpse_v1_12.glimpse_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Indicative Price Quantity Message
biva_bivaequities_totalview_glimpse_v1_12.indicative_price_quantity_message = {}

-- Size: Indicative Price Quantity Message
biva_bivaequities_totalview_glimpse_v1_12.indicative_price_quantity_message.size =
  biva_bivaequities_totalview_glimpse_v1_12.nanoseconds.size + 
  biva_bivaequities_totalview_glimpse_v1_12.theoretical_opening_quantity.size + 
  biva_bivaequities_totalview_glimpse_v1_12.orderbook.size + 
  biva_bivaequities_totalview_glimpse_v1_12.best_bid.size + 
  biva_bivaequities_totalview_glimpse_v1_12.best_offer.size + 
  biva_bivaequities_totalview_glimpse_v1_12.theoretical_opening_price.size + 
  biva_bivaequities_totalview_glimpse_v1_12.cross_type.size

-- Display: Indicative Price Quantity Message
biva_bivaequities_totalview_glimpse_v1_12.indicative_price_quantity_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indicative Price Quantity Message
biva_bivaequities_totalview_glimpse_v1_12.indicative_price_quantity_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = biva_bivaequities_totalview_glimpse_v1_12.timestamp.dissect(buffer, index, packet, parent)

  -- Theoretical Opening Quantity: Integer
  index, theoretical_opening_quantity = biva_bivaequities_totalview_glimpse_v1_12.theoretical_opening_quantity.dissect(buffer, index, packet, parent)

  -- Orderbook: Integer
  index, orderbook = biva_bivaequities_totalview_glimpse_v1_12.orderbook.dissect(buffer, index, packet, parent)

  -- Best Bid: Integer
  index, best_bid = biva_bivaequities_totalview_glimpse_v1_12.best_bid.dissect(buffer, index, packet, parent)

  -- Best Offer: Integer
  index, best_offer = biva_bivaequities_totalview_glimpse_v1_12.best_offer.dissect(buffer, index, packet, parent)

  -- Theoretical Opening Price: Integer
  index, theoretical_opening_price = biva_bivaequities_totalview_glimpse_v1_12.theoretical_opening_price.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = biva_bivaequities_totalview_glimpse_v1_12.cross_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Indicative Price Quantity Message
biva_bivaequities_totalview_glimpse_v1_12.indicative_price_quantity_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.indicative_price_quantity_message, buffer(offset, 0))
    local index = biva_bivaequities_totalview_glimpse_v1_12.indicative_price_quantity_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_totalview_glimpse_v1_12.indicative_price_quantity_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_totalview_glimpse_v1_12.indicative_price_quantity_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
biva_bivaequities_totalview_glimpse_v1_12.add_order_message = {}

-- Size: Add Order Message
biva_bivaequities_totalview_glimpse_v1_12.add_order_message.size =
  biva_bivaequities_totalview_glimpse_v1_12.nanoseconds.size + 
  biva_bivaequities_totalview_glimpse_v1_12.order_number.size + 
  biva_bivaequities_totalview_glimpse_v1_12.order_verb.size + 
  biva_bivaequities_totalview_glimpse_v1_12.quantity.size + 
  biva_bivaequities_totalview_glimpse_v1_12.orderbook.size + 
  biva_bivaequities_totalview_glimpse_v1_12.price.size + 
  biva_bivaequities_totalview_glimpse_v1_12.participant_id.size

-- Display: Add Order Message
biva_bivaequities_totalview_glimpse_v1_12.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
biva_bivaequities_totalview_glimpse_v1_12.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = biva_bivaequities_totalview_glimpse_v1_12.timestamp.dissect(buffer, index, packet, parent)

  -- Order Number: Integer
  index, order_number = biva_bivaequities_totalview_glimpse_v1_12.order_number.dissect(buffer, index, packet, parent)

  -- Order Verb: Alpha
  index, order_verb = biva_bivaequities_totalview_glimpse_v1_12.order_verb.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = biva_bivaequities_totalview_glimpse_v1_12.quantity.dissect(buffer, index, packet, parent)

  -- Orderbook: Integer
  index, orderbook = biva_bivaequities_totalview_glimpse_v1_12.orderbook.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = biva_bivaequities_totalview_glimpse_v1_12.price.dissect(buffer, index, packet, parent)

  -- Participant Id: Integer
  index, participant_id = biva_bivaequities_totalview_glimpse_v1_12.participant_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
biva_bivaequities_totalview_glimpse_v1_12.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.add_order_message, buffer(offset, 0))
    local index = biva_bivaequities_totalview_glimpse_v1_12.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_totalview_glimpse_v1_12.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_totalview_glimpse_v1_12.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Orderbook Reference Price Message
biva_bivaequities_totalview_glimpse_v1_12.orderbook_reference_price_message = {}

-- Size: Orderbook Reference Price Message
biva_bivaequities_totalview_glimpse_v1_12.orderbook_reference_price_message.size =
  biva_bivaequities_totalview_glimpse_v1_12.nanoseconds.size + 
  biva_bivaequities_totalview_glimpse_v1_12.orderbook.size + 
  biva_bivaequities_totalview_glimpse_v1_12.reference_price.size + 
  biva_bivaequities_totalview_glimpse_v1_12.price_type.size + 
  biva_bivaequities_totalview_glimpse_v1_12.reference_price_reason.size

-- Display: Orderbook Reference Price Message
biva_bivaequities_totalview_glimpse_v1_12.orderbook_reference_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orderbook Reference Price Message
biva_bivaequities_totalview_glimpse_v1_12.orderbook_reference_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = biva_bivaequities_totalview_glimpse_v1_12.timestamp.dissect(buffer, index, packet, parent)

  -- Orderbook: Integer
  index, orderbook = biva_bivaequities_totalview_glimpse_v1_12.orderbook.dissect(buffer, index, packet, parent)

  -- Reference Price: Integer
  index, reference_price = biva_bivaequities_totalview_glimpse_v1_12.reference_price.dissect(buffer, index, packet, parent)

  -- Price Type: Alpha
  index, price_type = biva_bivaequities_totalview_glimpse_v1_12.price_type.dissect(buffer, index, packet, parent)

  -- Reference Price Reason: Alpha
  index, reference_price_reason = biva_bivaequities_totalview_glimpse_v1_12.reference_price_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Orderbook Reference Price Message
biva_bivaequities_totalview_glimpse_v1_12.orderbook_reference_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.orderbook_reference_price_message, buffer(offset, 0))
    local index = biva_bivaequities_totalview_glimpse_v1_12.orderbook_reference_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_totalview_glimpse_v1_12.orderbook_reference_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_totalview_glimpse_v1_12.orderbook_reference_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Orderbook Trading Action Message
biva_bivaequities_totalview_glimpse_v1_12.orderbook_trading_action_message = {}

-- Size: Orderbook Trading Action Message
biva_bivaequities_totalview_glimpse_v1_12.orderbook_trading_action_message.size =
  biva_bivaequities_totalview_glimpse_v1_12.nanoseconds.size + 
  biva_bivaequities_totalview_glimpse_v1_12.orderbook.size + 
  biva_bivaequities_totalview_glimpse_v1_12.trading_state.size + 
  biva_bivaequities_totalview_glimpse_v1_12.trading_action_reason.size

-- Display: Orderbook Trading Action Message
biva_bivaequities_totalview_glimpse_v1_12.orderbook_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orderbook Trading Action Message
biva_bivaequities_totalview_glimpse_v1_12.orderbook_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = biva_bivaequities_totalview_glimpse_v1_12.timestamp.dissect(buffer, index, packet, parent)

  -- Orderbook: Integer
  index, orderbook = biva_bivaequities_totalview_glimpse_v1_12.orderbook.dissect(buffer, index, packet, parent)

  -- Trading State: Alpha
  index, trading_state = biva_bivaequities_totalview_glimpse_v1_12.trading_state.dissect(buffer, index, packet, parent)

  -- Trading Action Reason: Alpha
  index, trading_action_reason = biva_bivaequities_totalview_glimpse_v1_12.trading_action_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Orderbook Trading Action Message
biva_bivaequities_totalview_glimpse_v1_12.orderbook_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.orderbook_trading_action_message, buffer(offset, 0))
    local index = biva_bivaequities_totalview_glimpse_v1_12.orderbook_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_totalview_glimpse_v1_12.orderbook_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_totalview_glimpse_v1_12.orderbook_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Participant Directory Message
biva_bivaequities_totalview_glimpse_v1_12.participant_directory_message = {}

-- Size: Participant Directory Message
biva_bivaequities_totalview_glimpse_v1_12.participant_directory_message.size =
  biva_bivaequities_totalview_glimpse_v1_12.nanoseconds.size + 
  biva_bivaequities_totalview_glimpse_v1_12.participant_id.size + 
  biva_bivaequities_totalview_glimpse_v1_12.participant_code.size

-- Display: Participant Directory Message
biva_bivaequities_totalview_glimpse_v1_12.participant_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Participant Directory Message
biva_bivaequities_totalview_glimpse_v1_12.participant_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = biva_bivaequities_totalview_glimpse_v1_12.timestamp.dissect(buffer, index, packet, parent)

  -- Participant Id: Integer
  index, participant_id = biva_bivaequities_totalview_glimpse_v1_12.participant_id.dissect(buffer, index, packet, parent)

  -- Participant Code: Alpha
  index, participant_code = biva_bivaequities_totalview_glimpse_v1_12.participant_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Participant Directory Message
biva_bivaequities_totalview_glimpse_v1_12.participant_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.participant_directory_message, buffer(offset, 0))
    local index = biva_bivaequities_totalview_glimpse_v1_12.participant_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_totalview_glimpse_v1_12.participant_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_totalview_glimpse_v1_12.participant_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Orderbook Directory Message
biva_bivaequities_totalview_glimpse_v1_12.orderbook_directory_message = {}

-- Size: Orderbook Directory Message
biva_bivaequities_totalview_glimpse_v1_12.orderbook_directory_message.size =
  biva_bivaequities_totalview_glimpse_v1_12.nanoseconds.size + 
  biva_bivaequities_totalview_glimpse_v1_12.orderbook.size + 
  biva_bivaequities_totalview_glimpse_v1_12.isin.size + 
  biva_bivaequities_totalview_glimpse_v1_12.sec_code.size + 
  biva_bivaequities_totalview_glimpse_v1_12.currency.size + 
  biva_bivaequities_totalview_glimpse_v1_12.group.size + 
  biva_bivaequities_totalview_glimpse_v1_12.minimum_quantity.size + 
  biva_bivaequities_totalview_glimpse_v1_12.quantity_tick_size_table_id.size + 
  biva_bivaequities_totalview_glimpse_v1_12.quantity_decimals.size + 
  biva_bivaequities_totalview_glimpse_v1_12.price_tick_size_table_id.size + 
  biva_bivaequities_totalview_glimpse_v1_12.price_decimals.size + 
  biva_bivaequities_totalview_glimpse_v1_12.delisting_or_maturity_date.size + 
  biva_bivaequities_totalview_glimpse_v1_12.delisting_time.size + 
  biva_bivaequities_totalview_glimpse_v1_12.turnover_ratio.size + 
  biva_bivaequities_totalview_glimpse_v1_12.quotation_basis.size + 
  biva_bivaequities_totalview_glimpse_v1_12.instrument.size + 
  biva_bivaequities_totalview_glimpse_v1_12.listing_type.size + 
  biva_bivaequities_totalview_glimpse_v1_12.listing_exchange.size

-- Display: Orderbook Directory Message
biva_bivaequities_totalview_glimpse_v1_12.orderbook_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orderbook Directory Message
biva_bivaequities_totalview_glimpse_v1_12.orderbook_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = biva_bivaequities_totalview_glimpse_v1_12.timestamp.dissect(buffer, index, packet, parent)

  -- Orderbook: Integer
  index, orderbook = biva_bivaequities_totalview_glimpse_v1_12.orderbook.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = biva_bivaequities_totalview_glimpse_v1_12.isin.dissect(buffer, index, packet, parent)

  -- Sec Code: Alpha
  index, sec_code = biva_bivaequities_totalview_glimpse_v1_12.sec_code.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = biva_bivaequities_totalview_glimpse_v1_12.currency.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = biva_bivaequities_totalview_glimpse_v1_12.group.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: Integer
  index, minimum_quantity = biva_bivaequities_totalview_glimpse_v1_12.minimum_quantity.dissect(buffer, index, packet, parent)

  -- Quantity Tick Size Table Id: Integer
  index, quantity_tick_size_table_id = biva_bivaequities_totalview_glimpse_v1_12.quantity_tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Quantity Decimals: Integer
  index, quantity_decimals = biva_bivaequities_totalview_glimpse_v1_12.quantity_decimals.dissect(buffer, index, packet, parent)

  -- Price Tick Size Table Id: Integer
  index, price_tick_size_table_id = biva_bivaequities_totalview_glimpse_v1_12.price_tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Price Decimals: Integer
  index, price_decimals = biva_bivaequities_totalview_glimpse_v1_12.price_decimals.dissect(buffer, index, packet, parent)

  -- Delisting Or Maturity Date: Integer
  index, delisting_or_maturity_date = biva_bivaequities_totalview_glimpse_v1_12.delisting_or_maturity_date.dissect(buffer, index, packet, parent)

  -- Delisting Time: Integer
  index, delisting_time = biva_bivaequities_totalview_glimpse_v1_12.delisting_time.dissect(buffer, index, packet, parent)

  -- Turnover Ratio: Alpha
  index, turnover_ratio = biva_bivaequities_totalview_glimpse_v1_12.turnover_ratio.dissect(buffer, index, packet, parent)

  -- Quotation Basis: Alpha
  index, quotation_basis = biva_bivaequities_totalview_glimpse_v1_12.quotation_basis.dissect(buffer, index, packet, parent)

  -- Instrument: Alpha
  index, instrument = biva_bivaequities_totalview_glimpse_v1_12.instrument.dissect(buffer, index, packet, parent)

  -- Listing Type: Alpha
  index, listing_type = biva_bivaequities_totalview_glimpse_v1_12.listing_type.dissect(buffer, index, packet, parent)

  -- Listing Exchange: Alpha
  index, listing_exchange = biva_bivaequities_totalview_glimpse_v1_12.listing_exchange.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Orderbook Directory Message
biva_bivaequities_totalview_glimpse_v1_12.orderbook_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.orderbook_directory_message, buffer(offset, 0))
    local index = biva_bivaequities_totalview_glimpse_v1_12.orderbook_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_totalview_glimpse_v1_12.orderbook_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_totalview_glimpse_v1_12.orderbook_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Quantity Tick Size Message
biva_bivaequities_totalview_glimpse_v1_12.quantity_tick_size_message = {}

-- Size: Quantity Tick Size Message
biva_bivaequities_totalview_glimpse_v1_12.quantity_tick_size_message.size =
  biva_bivaequities_totalview_glimpse_v1_12.nanoseconds.size + 
  biva_bivaequities_totalview_glimpse_v1_12.tick_size_table_id.size + 
  biva_bivaequities_totalview_glimpse_v1_12.quantity_tick_size.size + 
  biva_bivaequities_totalview_glimpse_v1_12.quantity_start.size

-- Display: Quantity Tick Size Message
biva_bivaequities_totalview_glimpse_v1_12.quantity_tick_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quantity Tick Size Message
biva_bivaequities_totalview_glimpse_v1_12.quantity_tick_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = biva_bivaequities_totalview_glimpse_v1_12.timestamp.dissect(buffer, index, packet, parent)

  -- Tick Size Table Id: Integer
  index, tick_size_table_id = biva_bivaequities_totalview_glimpse_v1_12.tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Quantity Tick Size: Integer
  index, quantity_tick_size = biva_bivaequities_totalview_glimpse_v1_12.quantity_tick_size.dissect(buffer, index, packet, parent)

  -- Quantity Start: Integer
  index, quantity_start = biva_bivaequities_totalview_glimpse_v1_12.quantity_start.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quantity Tick Size Message
biva_bivaequities_totalview_glimpse_v1_12.quantity_tick_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.quantity_tick_size_message, buffer(offset, 0))
    local index = biva_bivaequities_totalview_glimpse_v1_12.quantity_tick_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_totalview_glimpse_v1_12.quantity_tick_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_totalview_glimpse_v1_12.quantity_tick_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Tick Size Message
biva_bivaequities_totalview_glimpse_v1_12.price_tick_size_message = {}

-- Size: Price Tick Size Message
biva_bivaequities_totalview_glimpse_v1_12.price_tick_size_message.size =
  biva_bivaequities_totalview_glimpse_v1_12.nanoseconds.size + 
  biva_bivaequities_totalview_glimpse_v1_12.tick_size_table_id.size + 
  biva_bivaequities_totalview_glimpse_v1_12.price_tick_size.size + 
  biva_bivaequities_totalview_glimpse_v1_12.price_start.size

-- Display: Price Tick Size Message
biva_bivaequities_totalview_glimpse_v1_12.price_tick_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Tick Size Message
biva_bivaequities_totalview_glimpse_v1_12.price_tick_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = biva_bivaequities_totalview_glimpse_v1_12.timestamp.dissect(buffer, index, packet, parent)

  -- Tick Size Table Id: Integer
  index, tick_size_table_id = biva_bivaequities_totalview_glimpse_v1_12.tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Price Tick Size: Integer
  index, price_tick_size = biva_bivaequities_totalview_glimpse_v1_12.price_tick_size.dissect(buffer, index, packet, parent)

  -- Price Start: Integer
  index, price_start = biva_bivaequities_totalview_glimpse_v1_12.price_start.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Tick Size Message
biva_bivaequities_totalview_glimpse_v1_12.price_tick_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.price_tick_size_message, buffer(offset, 0))
    local index = biva_bivaequities_totalview_glimpse_v1_12.price_tick_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_totalview_glimpse_v1_12.price_tick_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_totalview_glimpse_v1_12.price_tick_size_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
biva_bivaequities_totalview_glimpse_v1_12.system_event_message = {}

-- Size: System Event Message
biva_bivaequities_totalview_glimpse_v1_12.system_event_message.size =
  biva_bivaequities_totalview_glimpse_v1_12.nanoseconds.size + 
  biva_bivaequities_totalview_glimpse_v1_12.group.size + 
  biva_bivaequities_totalview_glimpse_v1_12.event_code.size + 
  biva_bivaequities_totalview_glimpse_v1_12.orderbook.size

-- Display: System Event Message
biva_bivaequities_totalview_glimpse_v1_12.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
biva_bivaequities_totalview_glimpse_v1_12.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = biva_bivaequities_totalview_glimpse_v1_12.timestamp.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = biva_bivaequities_totalview_glimpse_v1_12.group.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = biva_bivaequities_totalview_glimpse_v1_12.event_code.dissect(buffer, index, packet, parent)

  -- Orderbook: Integer
  index, orderbook = biva_bivaequities_totalview_glimpse_v1_12.orderbook.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
biva_bivaequities_totalview_glimpse_v1_12.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.system_event_message, buffer(offset, 0))
    local index = biva_bivaequities_totalview_glimpse_v1_12.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_totalview_glimpse_v1_12.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_totalview_glimpse_v1_12.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Stamp Seconds Message
biva_bivaequities_totalview_glimpse_v1_12.time_stamp_seconds_message = {}

-- Size: Time Stamp Seconds Message
biva_bivaequities_totalview_glimpse_v1_12.time_stamp_seconds_message.size =
  biva_bivaequities_totalview_glimpse_v1_12.second.size

-- Display: Time Stamp Seconds Message
biva_bivaequities_totalview_glimpse_v1_12.time_stamp_seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Stamp Seconds Message
biva_bivaequities_totalview_glimpse_v1_12.time_stamp_seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: Integer
  index, second = biva_bivaequities_totalview_glimpse_v1_12.second.dissect(buffer, index, packet, parent)

  -- Store Second Value
  biva_bivaequities_totalview_glimpse_v1_12.second.current = second

  if not packet.visited then
    biva_bivaequities_totalview_glimpse_v1_12.conversation.current.second.last = second
  end

  return index
end

-- Dissect: Time Stamp Seconds Message
biva_bivaequities_totalview_glimpse_v1_12.time_stamp_seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.time_stamp_seconds_message, buffer(offset, 0))
    local index = biva_bivaequities_totalview_glimpse_v1_12.time_stamp_seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_totalview_glimpse_v1_12.time_stamp_seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_totalview_glimpse_v1_12.time_stamp_seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
biva_bivaequities_totalview_glimpse_v1_12.sequenced_message = {}

-- Dissect: Sequenced Message
biva_bivaequities_totalview_glimpse_v1_12.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect Time Stamp Seconds Message
  if sequenced_message_type == "T" then
    return biva_bivaequities_totalview_glimpse_v1_12.time_stamp_seconds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if sequenced_message_type == "S" then
    return biva_bivaequities_totalview_glimpse_v1_12.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Tick Size Message
  if sequenced_message_type == "L" then
    return biva_bivaequities_totalview_glimpse_v1_12.price_tick_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quantity Tick Size Message
  if sequenced_message_type == "M" then
    return biva_bivaequities_totalview_glimpse_v1_12.quantity_tick_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Orderbook Directory Message
  if sequenced_message_type == "R" then
    return biva_bivaequities_totalview_glimpse_v1_12.orderbook_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Participant Directory Message
  if sequenced_message_type == "F" then
    return biva_bivaequities_totalview_glimpse_v1_12.participant_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Orderbook Trading Action Message
  if sequenced_message_type == "H" then
    return biva_bivaequities_totalview_glimpse_v1_12.orderbook_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Orderbook Reference Price Message
  if sequenced_message_type == "X" then
    return biva_bivaequities_totalview_glimpse_v1_12.orderbook_reference_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if sequenced_message_type == "A" then
    return biva_bivaequities_totalview_glimpse_v1_12.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Indicative Price Quantity Message
  if sequenced_message_type == "I" then
    return biva_bivaequities_totalview_glimpse_v1_12.indicative_price_quantity_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Glimpse Snapshot Message
  if sequenced_message_type == "G" then
    return biva_bivaequities_totalview_glimpse_v1_12.glimpse_snapshot_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
biva_bivaequities_totalview_glimpse_v1_12.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
biva_bivaequities_totalview_glimpse_v1_12.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
biva_bivaequities_totalview_glimpse_v1_12.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
biva_bivaequities_totalview_glimpse_v1_12.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = biva_bivaequities_totalview_glimpse_v1_12.conversation.current
  if flow ~= nil then
    local memo = flow.sequence.frames[packet.number]
    if not packet.visited then
      if flow.sequence.next == nil then
        flow.sequence.next = tonumber(biva_bivaequities_totalview_glimpse_v1_12.sequence_number.current)
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
          local sequence = parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if biva_bivaequities_totalview_glimpse_v1_12.stream_frame ~= packet.number or biva_bivaequities_totalview_glimpse_v1_12.stream_occurrence >= #memo then
          biva_bivaequities_totalview_glimpse_v1_12.stream_frame = packet.number
          biva_bivaequities_totalview_glimpse_v1_12.stream_occurrence = 0
        end
        biva_bivaequities_totalview_glimpse_v1_12.stream_occurrence = biva_bivaequities_totalview_glimpse_v1_12.stream_occurrence + 1
        local value = memo[biva_bivaequities_totalview_glimpse_v1_12.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 11 values
  index, sequenced_message_type = biva_bivaequities_totalview_glimpse_v1_12.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 11 branches
  index = biva_bivaequities_totalview_glimpse_v1_12.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
biva_bivaequities_totalview_glimpse_v1_12.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = biva_bivaequities_totalview_glimpse_v1_12.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.sequenced_data_packet, buffer(offset, 0))
    local current = biva_bivaequities_totalview_glimpse_v1_12.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = biva_bivaequities_totalview_glimpse_v1_12.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    biva_bivaequities_totalview_glimpse_v1_12.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
biva_bivaequities_totalview_glimpse_v1_12.login_rejected_packet = {}

-- Size: Login Rejected Packet
biva_bivaequities_totalview_glimpse_v1_12.login_rejected_packet.size =
  biva_bivaequities_totalview_glimpse_v1_12.reject_reason_code.size

-- Display: Login Rejected Packet
biva_bivaequities_totalview_glimpse_v1_12.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
biva_bivaequities_totalview_glimpse_v1_12.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = biva_bivaequities_totalview_glimpse_v1_12.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
biva_bivaequities_totalview_glimpse_v1_12.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.login_rejected_packet, buffer(offset, 0))
    local index = biva_bivaequities_totalview_glimpse_v1_12.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_totalview_glimpse_v1_12.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_totalview_glimpse_v1_12.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
biva_bivaequities_totalview_glimpse_v1_12.login_accepted_packet = {}

-- Size: Login Accepted Packet
biva_bivaequities_totalview_glimpse_v1_12.login_accepted_packet.size =
  biva_bivaequities_totalview_glimpse_v1_12.session.size + 
  biva_bivaequities_totalview_glimpse_v1_12.sequence_number.size

-- Display: Login Accepted Packet
biva_bivaequities_totalview_glimpse_v1_12.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
biva_bivaequities_totalview_glimpse_v1_12.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = biva_bivaequities_totalview_glimpse_v1_12.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: Integer
  index, sequence_number = biva_bivaequities_totalview_glimpse_v1_12.sequence_number.dissect(buffer, index, packet, parent)

  -- Store Sequence Number Value
  biva_bivaequities_totalview_glimpse_v1_12.sequence_number.current = sequence_number

  if not packet.visited then
    biva_bivaequities_totalview_glimpse_v1_12.conversation.current.sequence_number.last = sequence_number
  end

  return index
end

-- Dissect: Login Accepted Packet
biva_bivaequities_totalview_glimpse_v1_12.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.login_accepted_packet, buffer(offset, 0))
    local index = biva_bivaequities_totalview_glimpse_v1_12.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_totalview_glimpse_v1_12.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_totalview_glimpse_v1_12.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
biva_bivaequities_totalview_glimpse_v1_12.debug_packet = {}

-- Size: Debug Packet
biva_bivaequities_totalview_glimpse_v1_12.debug_packet.size =
  biva_bivaequities_totalview_glimpse_v1_12.text.size

-- Display: Debug Packet
biva_bivaequities_totalview_glimpse_v1_12.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
biva_bivaequities_totalview_glimpse_v1_12.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = biva_bivaequities_totalview_glimpse_v1_12.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
biva_bivaequities_totalview_glimpse_v1_12.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.debug_packet, buffer(offset, 0))
    local index = biva_bivaequities_totalview_glimpse_v1_12.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_totalview_glimpse_v1_12.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_totalview_glimpse_v1_12.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
biva_bivaequities_totalview_glimpse_v1_12.server_payload = {}

-- Dissect: Server Payload
biva_bivaequities_totalview_glimpse_v1_12.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  -- Dissect Debug Packet
  if server_packet_type == "+" then
    return biva_bivaequities_totalview_glimpse_v1_12.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if server_packet_type == "A" then
    return biva_bivaequities_totalview_glimpse_v1_12.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if server_packet_type == "J" then
    return biva_bivaequities_totalview_glimpse_v1_12.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if server_packet_type == "S" then
    return biva_bivaequities_totalview_glimpse_v1_12.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat
  if server_packet_type == "H" then
    return biva_bivaequities_totalview_glimpse_v1_12.server_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if server_packet_type == "Z" then
    return biva_bivaequities_totalview_glimpse_v1_12.end_of_session.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
biva_bivaequities_totalview_glimpse_v1_12.server_packet_header = {}

-- Size: Server Packet Header
biva_bivaequities_totalview_glimpse_v1_12.server_packet_header.size =
  biva_bivaequities_totalview_glimpse_v1_12.packet_length.size + 
  biva_bivaequities_totalview_glimpse_v1_12.server_packet_type.size

-- Display: Server Packet Header
biva_bivaequities_totalview_glimpse_v1_12.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
biva_bivaequities_totalview_glimpse_v1_12.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = biva_bivaequities_totalview_glimpse_v1_12.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = biva_bivaequities_totalview_glimpse_v1_12.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
biva_bivaequities_totalview_glimpse_v1_12.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.server_packet_header, buffer(offset, 0))
    local index = biva_bivaequities_totalview_glimpse_v1_12.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_totalview_glimpse_v1_12.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_totalview_glimpse_v1_12.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
biva_bivaequities_totalview_glimpse_v1_12.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
biva_bivaequities_totalview_glimpse_v1_12.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
biva_bivaequities_totalview_glimpse_v1_12.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = biva_bivaequities_totalview_glimpse_v1_12.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = biva_bivaequities_totalview_glimpse_v1_12.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
biva_bivaequities_totalview_glimpse_v1_12.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = biva_bivaequities_totalview_glimpse_v1_12.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = biva_bivaequities_totalview_glimpse_v1_12.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    biva_bivaequities_totalview_glimpse_v1_12.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < biva_bivaequities_totalview_glimpse_v1_12.server_packet_header.size then
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
biva_bivaequities_totalview_glimpse_v1_12.server_packet = {}

-- Verify required size of Tcp packet
biva_bivaequities_totalview_glimpse_v1_12.server_packet.requiredsize = function(buffer)
  return buffer:len() >= biva_bivaequities_totalview_glimpse_v1_12.server_packet_header.size
end

-- Dissect Server Packet
biva_bivaequities_totalview_glimpse_v1_12.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = biva_bivaequities_totalview_glimpse_v1_12.conversation.data(packet)
  if not packet.visited then
    data.sequence_number.frames[packet.number] = data.sequence_number.last
    data.second.frames[packet.number] = data.second.last
    data.sequence_number.frames[packet.number] = data.sequence_number.last
  end
  biva_bivaequities_totalview_glimpse_v1_12.sequence_number.current = data.sequence_number.frames[packet.number]
  biva_bivaequities_totalview_glimpse_v1_12.second.current = data.second.frames[packet.number]
  biva_bivaequities_totalview_glimpse_v1_12.sequence_number.current = data.sequence_number.frames[packet.number]
  biva_bivaequities_totalview_glimpse_v1_12.conversation.current = data

  local index = 0

  -- Dependency for Server Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Server Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_soup_bin_tcp_packet = server_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = biva_bivaequities_totalview_glimpse_v1_12.server_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_server_soup_bin_tcp_packet)
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
biva_bivaequities_totalview_glimpse_v1_12.logout_request = {}

-- Display: Logout Request
biva_bivaequities_totalview_glimpse_v1_12.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
biva_bivaequities_totalview_glimpse_v1_12.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = biva_bivaequities_totalview_glimpse_v1_12.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
biva_bivaequities_totalview_glimpse_v1_12.client_heartbeat = {}

-- Display: Client Heartbeat
biva_bivaequities_totalview_glimpse_v1_12.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
biva_bivaequities_totalview_glimpse_v1_12.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = biva_bivaequities_totalview_glimpse_v1_12.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Unsequenced Data Packet
biva_bivaequities_totalview_glimpse_v1_12.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
biva_bivaequities_totalview_glimpse_v1_12.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
biva_bivaequities_totalview_glimpse_v1_12.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
biva_bivaequities_totalview_glimpse_v1_12.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = biva_bivaequities_totalview_glimpse_v1_12.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = packet_length - 2

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = biva_bivaequities_totalview_glimpse_v1_12.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
biva_bivaequities_totalview_glimpse_v1_12.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = biva_bivaequities_totalview_glimpse_v1_12.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = biva_bivaequities_totalview_glimpse_v1_12.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = biva_bivaequities_totalview_glimpse_v1_12.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    biva_bivaequities_totalview_glimpse_v1_12.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
biva_bivaequities_totalview_glimpse_v1_12.login_request_packet = {}

-- Size: Login Request Packet
biva_bivaequities_totalview_glimpse_v1_12.login_request_packet.size =
  biva_bivaequities_totalview_glimpse_v1_12.username.size + 
  biva_bivaequities_totalview_glimpse_v1_12.password.size + 
  biva_bivaequities_totalview_glimpse_v1_12.requested_session.size + 
  biva_bivaequities_totalview_glimpse_v1_12.requested_sequence_number.size

-- Display: Login Request Packet
biva_bivaequities_totalview_glimpse_v1_12.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
biva_bivaequities_totalview_glimpse_v1_12.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = biva_bivaequities_totalview_glimpse_v1_12.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = biva_bivaequities_totalview_glimpse_v1_12.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = biva_bivaequities_totalview_glimpse_v1_12.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = biva_bivaequities_totalview_glimpse_v1_12.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
biva_bivaequities_totalview_glimpse_v1_12.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.login_request_packet, buffer(offset, 0))
    local index = biva_bivaequities_totalview_glimpse_v1_12.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_totalview_glimpse_v1_12.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_totalview_glimpse_v1_12.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
biva_bivaequities_totalview_glimpse_v1_12.client_payload = {}

-- Dissect: Client Payload
biva_bivaequities_totalview_glimpse_v1_12.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  -- Dissect Debug Packet
  if client_packet_type == "+" then
    return biva_bivaequities_totalview_glimpse_v1_12.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if client_packet_type == "L" then
    return biva_bivaequities_totalview_glimpse_v1_12.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if client_packet_type == "U" then
    return biva_bivaequities_totalview_glimpse_v1_12.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat
  if client_packet_type == "R" then
    return biva_bivaequities_totalview_glimpse_v1_12.client_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if client_packet_type == "O" then
    return biva_bivaequities_totalview_glimpse_v1_12.logout_request.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
biva_bivaequities_totalview_glimpse_v1_12.client_packet_header = {}

-- Size: Client Packet Header
biva_bivaequities_totalview_glimpse_v1_12.client_packet_header.size =
  biva_bivaequities_totalview_glimpse_v1_12.packet_length.size + 
  biva_bivaequities_totalview_glimpse_v1_12.client_packet_type.size

-- Display: Client Packet Header
biva_bivaequities_totalview_glimpse_v1_12.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
biva_bivaequities_totalview_glimpse_v1_12.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = biva_bivaequities_totalview_glimpse_v1_12.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = biva_bivaequities_totalview_glimpse_v1_12.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
biva_bivaequities_totalview_glimpse_v1_12.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.client_packet_header, buffer(offset, 0))
    local index = biva_bivaequities_totalview_glimpse_v1_12.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_totalview_glimpse_v1_12.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_totalview_glimpse_v1_12.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
biva_bivaequities_totalview_glimpse_v1_12.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
biva_bivaequities_totalview_glimpse_v1_12.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
biva_bivaequities_totalview_glimpse_v1_12.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = biva_bivaequities_totalview_glimpse_v1_12.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = biva_bivaequities_totalview_glimpse_v1_12.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
biva_bivaequities_totalview_glimpse_v1_12.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = biva_bivaequities_totalview_glimpse_v1_12.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = biva_bivaequities_totalview_glimpse_v1_12.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    biva_bivaequities_totalview_glimpse_v1_12.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < biva_bivaequities_totalview_glimpse_v1_12.client_packet_header.size then
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
biva_bivaequities_totalview_glimpse_v1_12.client_packet = {}

-- Verify required size of Tcp packet
biva_bivaequities_totalview_glimpse_v1_12.client_packet.requiredsize = function(buffer)
  return buffer:len() >= biva_bivaequities_totalview_glimpse_v1_12.client_packet_header.size
end

-- Dissect Client Packet
biva_bivaequities_totalview_glimpse_v1_12.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Client Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_soup_bin_tcp_packet = client_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = biva_bivaequities_totalview_glimpse_v1_12.client_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_client_soup_bin_tcp_packet)
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
function omi_biva_bivaequities_totalview_glimpse_v1_12.init()
  biva_bivaequities_totalview_glimpse_v1_12.sequence_number.current = nil
  biva_bivaequities_totalview_glimpse_v1_12.second.current = nil
  biva_bivaequities_totalview_glimpse_v1_12.conversation.current = nil
  biva_bivaequities_totalview_glimpse_v1_12.conversation.flows = {}
end

-- Connection roles for Biva BivaEquities TotalView Glimpse 1.12: Client is the initiator, Server is the acceptor
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
  local a = endpoint(packet.src, packet.src_port)
  local b = endpoint(packet.dst, packet.dst_port)
  if a < b then
    return a.." "..b
  end
  return b.." "..a
end


-- Connection role of the frame's sender
biva_bivaequities_totalview_glimpse_v1_12.role = function(packet)
  if omi_biva_bivaequities_totalview_glimpse_v1_12.prefs.assume_role == 1 then
    return "initiator"
  end
  if omi_biva_bivaequities_totalview_glimpse_v1_12.prefs.assume_role == 2 then
    return "acceptor"
  end
  local port = omi_biva_bivaequities_totalview_glimpse_v1_12.prefs.acceptor_port
  if port ~= 0 and packet.dst_port == port then
    return "initiator"
  end
  if port ~= 0 and packet.src_port == port then
    return "acceptor"
  end
  local key = conversation(packet)
  local sender = endpoint(packet.src, packet.src_port)
  if initiators[key] == nil then
    initiators[key] = sender
  end
  local first = initiators[key] == sender
  if omi_biva_bivaequities_totalview_glimpse_v1_12.prefs.swap_sides then
    first = not first
  end
  if swapped[key] then
    first = not first
  end
  if first then
    return "initiator"
  end
  return "acceptor"
end


-- Swap the resolved sides of the frame's conversation
biva_bivaequities_totalview_glimpse_v1_12.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Biva BivaEquities TotalView Glimpse 1.12
function omi_biva_bivaequities_totalview_glimpse_v1_12.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_biva_bivaequities_totalview_glimpse_v1_12.name

  -- Dissect protocol
  local protocol = parent:add(omi_biva_bivaequities_totalview_glimpse_v1_12, buffer(), omi_biva_bivaequities_totalview_glimpse_v1_12.description, "("..buffer:len().." Bytes)")
  local role = biva_bivaequities_totalview_glimpse_v1_12.role(packet)
  if role == "initiator" then
    return biva_bivaequities_totalview_glimpse_v1_12.client_packet.dissect(buffer, packet, protocol)
  end
  return biva_bivaequities_totalview_glimpse_v1_12.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
biva_bivaequities_totalview_glimpse_v1_12.client_packet.fingerprint = function(buffer)
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
biva_bivaequities_totalview_glimpse_v1_12.server_packet.fingerprint = function(buffer)
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

-- Dissector Heuristic for Biva BivaEquities TotalView Glimpse 1.12 (Tcp)
local function omi_biva_bivaequities_totalview_glimpse_v1_12_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not biva_bivaequities_totalview_glimpse_v1_12.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not biva_bivaequities_totalview_glimpse_v1_12.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_biva_bivaequities_totalview_glimpse_v1_12
  omi_biva_bivaequities_totalview_glimpse_v1_12.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Biva BivaEquities TotalView Glimpse 1.12 (Tcp)
local function omi_biva_bivaequities_totalview_glimpse_v1_12_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not biva_bivaequities_totalview_glimpse_v1_12.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not biva_bivaequities_totalview_glimpse_v1_12.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_biva_bivaequities_totalview_glimpse_v1_12
  omi_biva_bivaequities_totalview_glimpse_v1_12.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Biva BivaEquities TotalView Glimpse 1.12 (Tcp): apply the heuristic of the sender's connection role
local function omi_biva_bivaequities_totalview_glimpse_v1_12_tcp_heuristic(buffer, packet, parent)
  local role = biva_bivaequities_totalview_glimpse_v1_12.role(packet)
  local first, second = omi_biva_bivaequities_totalview_glimpse_v1_12_tcp_initiator_heuristic, omi_biva_bivaequities_totalview_glimpse_v1_12_tcp_acceptor_heuristic
  if role == "acceptor" then
    first, second = second, first
  end
  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  biva_bivaequities_totalview_glimpse_v1_12.swap(packet)
  if second(buffer, packet, parent) then
    return true
  end
  biva_bivaequities_totalview_glimpse_v1_12.swap(packet)

  return false
end

-- Register Heuristics for Biva BivaEquities TotalView Glimpse 1.12
omi_biva_bivaequities_totalview_glimpse_v1_12:register_heuristic("tcp", omi_biva_bivaequities_totalview_glimpse_v1_12_tcp_heuristic)
-- Register Biva BivaEquities TotalView Glimpse 1.12 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_biva_bivaequities_totalview_glimpse_v1_12)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Bolsa Institucional de Valores
--   Version: 1.12
--   Date: Saturday, January 1, 2022
--   Specification: BIVA_X-Stream_External_ITCH_Specification_v1.12.0.pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
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
