-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq PsxEquities TotalView Glimpse 5.0 Protocol
local omi_nasdaq_psxequities_totalview_glimpse_v5_0 = Proto("Omi.Nasdaq.PsxEquities.TotalView.Glimpse.v5.0", "Nasdaq PsxEquities TotalView Glimpse 5.0")

-- Protocol table
local nasdaq_psxequities_totalview_glimpse_v5_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq PsxEquities TotalView Glimpse 5.0 Fields
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "nasdaq.psxequities.totalview.glimpse.v5.0.acceptedsequencenumber", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.accepted_session = ProtoField.new("Accepted Session", "nasdaq.psxequities.totalview.glimpse.v5.0.acceptedsession", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.attribution = ProtoField.new("Attribution", "nasdaq.psxequities.totalview.glimpse.v5.0.attribution", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.psxequities.totalview.glimpse.v5.0.authenticity", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nasdaq.psxequities.totalview.glimpse.v5.0.buysellindicator", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.client_packet_type = ProtoField.new("Packet Type", "nasdaq.psxequities.totalview.glimpse.v5.0.clientpackettype", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.debug_text = ProtoField.new("Debug Text", "nasdaq.psxequities.totalview.glimpse.v5.0.debugtext", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.etp_flag = ProtoField.new("Etp Flag", "nasdaq.psxequities.totalview.glimpse.v5.0.etpflag", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.etp_leverage_factor = ProtoField.new("Etp Leverage Factor", "nasdaq.psxequities.totalview.glimpse.v5.0.etpleveragefactor", ftypes.UINT32)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.event_code = ProtoField.new("Event Code", "nasdaq.psxequities.totalview.glimpse.v5.0.eventcode", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.psxequities.totalview.glimpse.v5.0.financialstatusindicator", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.inverse_indicator = ProtoField.new("Inverse Indicator", "nasdaq.psxequities.totalview.glimpse.v5.0.inverseindicator", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.ipo_flag = ProtoField.new("Ipo Flag", "nasdaq.psxequities.totalview.glimpse.v5.0.ipoflag", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.issue_classification = ProtoField.new("Issue Classification", "nasdaq.psxequities.totalview.glimpse.v5.0.issueclassification", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.issue_sub_type = ProtoField.new("Issue Sub Type", "nasdaq.psxequities.totalview.glimpse.v5.0.issuesubtype", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.itch_sequence_number = ProtoField.new("Itch Sequence Number", "nasdaq.psxequities.totalview.glimpse.v5.0.itchsequencenumber", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.luld_reference_price_tier = ProtoField.new("Luld Reference Price Tier", "nasdaq.psxequities.totalview.glimpse.v5.0.luldreferencepricetier", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.market_category = ProtoField.new("Market Category", "nasdaq.psxequities.totalview.glimpse.v5.0.marketcategory", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.psxequities.totalview.glimpse.v5.0.orderreferencenumber", ftypes.UINT64)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.psxequities.totalview.glimpse.v5.0.packetlength", ftypes.UINT16)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.password = ProtoField.new("Password", "nasdaq.psxequities.totalview.glimpse.v5.0.password", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.price = ProtoField.new("Price", "nasdaq.psxequities.totalview.glimpse.v5.0.price", ftypes.DOUBLE)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.reason = ProtoField.new("Reason", "nasdaq.psxequities.totalview.glimpse.v5.0.reason", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.psxequities.totalview.glimpse.v5.0.regshoaction", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.psxequities.totalview.glimpse.v5.0.rejectreasoncode", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.psxequities.totalview.glimpse.v5.0.requestedsequencenumber", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.psxequities.totalview.glimpse.v5.0.requestedsession", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.reserved_1 = ProtoField.new("Reserved 1", "nasdaq.psxequities.totalview.glimpse.v5.0.reserved1", ftypes.BYTES)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.psxequities.totalview.glimpse.v5.0.roundlotsize", ftypes.UINT32)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.round_lots_only = ProtoField.new("Round Lots Only", "nasdaq.psxequities.totalview.glimpse.v5.0.roundlotsonly", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.psxequities.totalview.glimpse.v5.0.sequencedmessagetype", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.server_packet_type = ProtoField.new("Packet Type", "nasdaq.psxequities.totalview.glimpse.v5.0.serverpackettype", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.shares = ProtoField.new("Shares", "nasdaq.psxequities.totalview.glimpse.v5.0.shares", ftypes.UINT32)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.psxequities.totalview.glimpse.v5.0.shortsalethresholdindicator", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.stock = ProtoField.new("Stock", "nasdaq.psxequities.totalview.glimpse.v5.0.stock", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.stock_locate = ProtoField.new("Stock Locate", "nasdaq.psxequities.totalview.glimpse.v5.0.stocklocate", ftypes.UINT16)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.psxequities.totalview.glimpse.v5.0.timestamp", ftypes.UINT64)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.psxequities.totalview.glimpse.v5.0.trackingnumber", ftypes.UINT16)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.trading_state = ProtoField.new("Trading State", "nasdaq.psxequities.totalview.glimpse.v5.0.tradingstate", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "nasdaq.psxequities.totalview.glimpse.v5.0.unsequencedmessage", ftypes.BYTES)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.psxequities.totalview.glimpse.v5.0.unsequencedmessagetype", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.username = ProtoField.new("Username", "nasdaq.psxequities.totalview.glimpse.v5.0.username", ftypes.STRING)

-- Nasdaq PsxEquities TotalView Glimpse 5.0 Framing
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.client_packet = ProtoField.new("Packet", "nasdaq.psxequities.totalview.glimpse.v5.0.clientpacket", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.client_packet_header = ProtoField.new("Packet Header", "nasdaq.psxequities.totalview.glimpse.v5.0.clientpacketheader", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.psxequities.totalview.glimpse.v5.0.clientsoupbintcppacket", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.server_packet = ProtoField.new("Packet", "nasdaq.psxequities.totalview.glimpse.v5.0.serverpacket", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.server_packet_header = ProtoField.new("Packet Header", "nasdaq.psxequities.totalview.glimpse.v5.0.serverpacketheader", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.psxequities.totalview.glimpse.v5.0.serversoupbintcppacket", ftypes.STRING)

-- Nasdaq PsxEquities TotalView 5.0 Application Messages
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.add_order_message = ProtoField.new("Add Order Message", "nasdaq.psxequities.totalview.glimpse.v5.0.addordermessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.add_order_mpid_attribution_message = ProtoField.new("Add Order Mpid Attribution Message", "nasdaq.psxequities.totalview.glimpse.v5.0.addordermpidattributionmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.end_of_snapshot_message = ProtoField.new("End Of Snapshot Message", "nasdaq.psxequities.totalview.glimpse.v5.0.endofsnapshotmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.reg_sho_restriction_message = ProtoField.new("Reg Sho Restriction Message", "nasdaq.psxequities.totalview.glimpse.v5.0.regshorestrictionmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.psxequities.totalview.glimpse.v5.0.stockdirectorymessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.stock_trading_action_message = ProtoField.new("Stock Trading Action Message", "nasdaq.psxequities.totalview.glimpse.v5.0.stocktradingactionmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.psxequities.totalview.glimpse.v5.0.systemeventmessage", ftypes.STRING)

-- Nasdaq PsxEquities TotalView 5.0 Session Messages
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "nasdaq.psxequities.totalview.glimpse.v5.0.clientheartbeat", ftypes.BYTES)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.psxequities.totalview.glimpse.v5.0.debugpacket", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.psxequities.totalview.glimpse.v5.0.endofsession", ftypes.BYTES)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.psxequities.totalview.glimpse.v5.0.loginacceptedpacket", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.psxequities.totalview.glimpse.v5.0.loginrejectedpacket", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.psxequities.totalview.glimpse.v5.0.loginrequestpacket", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.logout_request = ProtoField.new("Logout Request", "nasdaq.psxequities.totalview.glimpse.v5.0.logoutrequest", ftypes.BYTES)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.psxequities.totalview.glimpse.v5.0.sequenceddatapacket", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "nasdaq.psxequities.totalview.glimpse.v5.0.serverheartbeat", ftypes.BYTES)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.psxequities.totalview.glimpse.v5.0.unsequenceddatapacket", ftypes.STRING)

-- Nasdaq PsxEquities TotalView Glimpse 5.0 Generated Fields
omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "nasdaq.psxequities.totalview.glimpse.v5.0.sequenceddatapacketsequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nasdaq PsxEquities TotalView Glimpse 5.0 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_psxequities_totalview_glimpse_v5_0.timestamp_format = 2

-- Hours behind UTC (EST) for midnight calculation
nasdaq_psxequities_totalview_glimpse_v5_0.utc_offset_hours = 5

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

-- Nasdaq PsxEquities TotalView Glimpse 5.0 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.session_messages = true
show.sequences = true

-- Register Nasdaq PsxEquities TotalView Glimpse 5.0 Show Options
omi_nasdaq_psxequities_totalview_glimpse_v5_0.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nasdaq_psxequities_totalview_glimpse_v5_0.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nasdaq_psxequities_totalview_glimpse_v5_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_psxequities_totalview_glimpse_v5_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_psxequities_totalview_glimpse_v5_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_psxequities_totalview_glimpse_v5_0.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_psxequities_totalview_glimpse_v5_0.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nasdaq_psxequities_totalview_glimpse_v5_0.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_psxequities_totalview_glimpse_v5_0.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_nasdaq_psxequities_totalview_glimpse_v5_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_psxequities_totalview_glimpse_v5_0.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_psxequities_totalview_glimpse_v5_0.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_psxequities_totalview_glimpse_v5_0.prefs.show_headers then
    show.headers = omi_nasdaq_psxequities_totalview_glimpse_v5_0.prefs.show_headers
  end
  if show.session_messages ~= omi_nasdaq_psxequities_totalview_glimpse_v5_0.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_psxequities_totalview_glimpse_v5_0.prefs.show_session_messages
  end
  if show.structs ~= omi_nasdaq_psxequities_totalview_glimpse_v5_0.prefs.show_structs then
    show.structs = omi_nasdaq_psxequities_totalview_glimpse_v5_0.prefs.show_structs
  end
  if show.sequences ~= omi_nasdaq_psxequities_totalview_glimpse_v5_0.prefs.show_sequences then
    show.sequences = omi_nasdaq_psxequities_totalview_glimpse_v5_0.prefs.show_sequences
  end
  if nasdaq_psxequities_totalview_glimpse_v5_0.timestamp_format ~= omi_nasdaq_psxequities_totalview_glimpse_v5_0.prefs.timestamp_format then
    nasdaq_psxequities_totalview_glimpse_v5_0.timestamp_format = omi_nasdaq_psxequities_totalview_glimpse_v5_0.prefs.timestamp_format
  end
  if nasdaq_psxequities_totalview_glimpse_v5_0.utc_offset_hours ~= omi_nasdaq_psxequities_totalview_glimpse_v5_0.prefs.utc_offset_hours then
    nasdaq_psxequities_totalview_glimpse_v5_0.utc_offset_hours = omi_nasdaq_psxequities_totalview_glimpse_v5_0.prefs.utc_offset_hours
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nasdaq_psxequities_totalview_glimpse_v5_0.conversation = {}
nasdaq_psxequities_totalview_glimpse_v5_0.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
nasdaq_psxequities_totalview_glimpse_v5_0.stream_frame = nil
nasdaq_psxequities_totalview_glimpse_v5_0.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
nasdaq_psxequities_totalview_glimpse_v5_0.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nasdaq_psxequities_totalview_glimpse_v5_0.conversation.data = function(packet)
  local key = nasdaq_psxequities_totalview_glimpse_v5_0.conversation.key(packet)
  local data = nasdaq_psxequities_totalview_glimpse_v5_0.conversation.flows[key]
  if data == nil then
    data = { accepted_sequence_number = { last = nil, frames = {} }, sequence = { next = nil, frames = {} } }
    nasdaq_psxequities_totalview_glimpse_v5_0.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nasdaq_psxequities_totalview_glimpse_v5_0.conversation.current = nil


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
-- Nasdaq PsxEquities TotalView Glimpse 5.0 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
nasdaq_psxequities_totalview_glimpse_v5_0.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
nasdaq_psxequities_totalview_glimpse_v5_0.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
nasdaq_psxequities_totalview_glimpse_v5_0.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
nasdaq_psxequities_totalview_glimpse_v5_0.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_psxequities_totalview_glimpse_v5_0.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
nasdaq_psxequities_totalview_glimpse_v5_0.accepted_session = {}

-- Size: Accepted Session
nasdaq_psxequities_totalview_glimpse_v5_0.accepted_session.size = 10

-- Display: Accepted Session
nasdaq_psxequities_totalview_glimpse_v5_0.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
nasdaq_psxequities_totalview_glimpse_v5_0.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.accepted_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Attribution
nasdaq_psxequities_totalview_glimpse_v5_0.attribution = {}

-- Size: Attribution
nasdaq_psxequities_totalview_glimpse_v5_0.attribution.size = 4

-- Display: Attribution
nasdaq_psxequities_totalview_glimpse_v5_0.attribution.display = function(value)
  return "Attribution: "..value
end

-- Dissect: Attribution
nasdaq_psxequities_totalview_glimpse_v5_0.attribution.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.attribution.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.attribution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.attribution, range, value, display)

  return offset + length, value
end

-- Authenticity
nasdaq_psxequities_totalview_glimpse_v5_0.authenticity = {}

-- Size: Authenticity
nasdaq_psxequities_totalview_glimpse_v5_0.authenticity.size = 1

-- Display: Authenticity
nasdaq_psxequities_totalview_glimpse_v5_0.authenticity.display = function(value)
  if value == "P" then
    return "Authenticity: Live Production (P)"
  end
  if value == "T" then
    return "Authenticity: Test (T)"
  end

  return "Authenticity: Unknown("..value..")"
end

-- Dissect: Authenticity
nasdaq_psxequities_totalview_glimpse_v5_0.authenticity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.authenticity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.authenticity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
nasdaq_psxequities_totalview_glimpse_v5_0.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
nasdaq_psxequities_totalview_glimpse_v5_0.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
nasdaq_psxequities_totalview_glimpse_v5_0.buy_sell_indicator.display = function(value)
  if value == "B" then
    return "Buy Sell Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Buy Sell Indicator: Sell Order (S)"
  end

  return "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
nasdaq_psxequities_totalview_glimpse_v5_0.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Client Packet Type
nasdaq_psxequities_totalview_glimpse_v5_0.client_packet_type = {}

-- Size: Client Packet Type
nasdaq_psxequities_totalview_glimpse_v5_0.client_packet_type.size = 1

-- Display: Client Packet Type
nasdaq_psxequities_totalview_glimpse_v5_0.client_packet_type.display = function(value)
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
nasdaq_psxequities_totalview_glimpse_v5_0.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Debug Text
nasdaq_psxequities_totalview_glimpse_v5_0.debug_text = {}

-- Size: Debug Text
nasdaq_psxequities_totalview_glimpse_v5_0.debug_text.size = 1

-- Display: Debug Text
nasdaq_psxequities_totalview_glimpse_v5_0.debug_text.display = function(value)
  return "Debug Text: "..value
end

-- Dissect: Debug Text
nasdaq_psxequities_totalview_glimpse_v5_0.debug_text.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.debug_text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.debug_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.debug_text, range, value, display)

  return offset + length, value
end

-- Etp Flag
nasdaq_psxequities_totalview_glimpse_v5_0.etp_flag = {}

-- Size: Etp Flag
nasdaq_psxequities_totalview_glimpse_v5_0.etp_flag.size = 1

-- Display: Etp Flag
nasdaq_psxequities_totalview_glimpse_v5_0.etp_flag.display = function(value)
  if value == "Y" then
    return "Etp Flag: Instrument Is An Etp (Y)"
  end
  if value == "N" then
    return "Etp Flag: Instrument Is Not An Etp (N)"
  end
  if value == " " then
    return "Etp Flag: Not Available (<whitespace>)"
  end

  return "Etp Flag: Unknown("..value..")"
end

-- Dissect: Etp Flag
nasdaq_psxequities_totalview_glimpse_v5_0.etp_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.etp_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.etp_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.etp_flag, range, value, display)

  return offset + length, value
end

-- Etp Leverage Factor
nasdaq_psxequities_totalview_glimpse_v5_0.etp_leverage_factor = {}

-- Size: Etp Leverage Factor
nasdaq_psxequities_totalview_glimpse_v5_0.etp_leverage_factor.size = 4

-- Display: Etp Leverage Factor
nasdaq_psxequities_totalview_glimpse_v5_0.etp_leverage_factor.display = function(value)
  return "Etp Leverage Factor: "..value
end

-- Dissect: Etp Leverage Factor
nasdaq_psxequities_totalview_glimpse_v5_0.etp_leverage_factor.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.etp_leverage_factor.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.etp_leverage_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.etp_leverage_factor, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_psxequities_totalview_glimpse_v5_0.event_code = {}

-- Size: Event Code
nasdaq_psxequities_totalview_glimpse_v5_0.event_code.size = 1

-- Display: Event Code
nasdaq_psxequities_totalview_glimpse_v5_0.event_code.display = function(value)
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

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_psxequities_totalview_glimpse_v5_0.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.event_code, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
nasdaq_psxequities_totalview_glimpse_v5_0.financial_status_indicator = {}

-- Size: Financial Status Indicator
nasdaq_psxequities_totalview_glimpse_v5_0.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
nasdaq_psxequities_totalview_glimpse_v5_0.financial_status_indicator.display = function(value)
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
  if value == "C" then
    return "Financial Status Indicator: Creations Andor Redemptions Suspended For Exchange Traded Product (C)"
  end
  if value == "N" then
    return "Financial Status Indicator: Normal (N)"
  end
  if value == " " then
    return "Financial Status Indicator: Not Available (<whitespace>)"
  end

  return "Financial Status Indicator: Unknown("..value..")"
end

-- Dissect: Financial Status Indicator
nasdaq_psxequities_totalview_glimpse_v5_0.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Inverse Indicator
nasdaq_psxequities_totalview_glimpse_v5_0.inverse_indicator = {}

-- Size: Inverse Indicator
nasdaq_psxequities_totalview_glimpse_v5_0.inverse_indicator.size = 1

-- Display: Inverse Indicator
nasdaq_psxequities_totalview_glimpse_v5_0.inverse_indicator.display = function(value)
  if value == "Y" then
    return "Inverse Indicator: Etp Is An Inverse Etp (Y)"
  end
  if value == "N" then
    return "Inverse Indicator: Etp Is Not An Inverse Etp (N)"
  end

  return "Inverse Indicator: Unknown("..value..")"
end

-- Dissect: Inverse Indicator
nasdaq_psxequities_totalview_glimpse_v5_0.inverse_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.inverse_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.inverse_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.inverse_indicator, range, value, display)

  return offset + length, value
end

-- Ipo Flag
nasdaq_psxequities_totalview_glimpse_v5_0.ipo_flag = {}

-- Size: Ipo Flag
nasdaq_psxequities_totalview_glimpse_v5_0.ipo_flag.size = 1

-- Display: Ipo Flag
nasdaq_psxequities_totalview_glimpse_v5_0.ipo_flag.display = function(value)
  if value == "Y" then
    return "Ipo Flag: New Ipo Security (Y)"
  end
  if value == "N" then
    return "Ipo Flag: Not A New Ipo Security (N)"
  end
  if value == " " then
    return "Ipo Flag: Not Available (<whitespace>)"
  end

  return "Ipo Flag: Unknown("..value..")"
end

-- Dissect: Ipo Flag
nasdaq_psxequities_totalview_glimpse_v5_0.ipo_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.ipo_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.ipo_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.ipo_flag, range, value, display)

  return offset + length, value
end

-- Issue Classification
nasdaq_psxequities_totalview_glimpse_v5_0.issue_classification = {}

-- Size: Issue Classification
nasdaq_psxequities_totalview_glimpse_v5_0.issue_classification.size = 1

-- Display: Issue Classification
nasdaq_psxequities_totalview_glimpse_v5_0.issue_classification.display = function(value)
  return "Issue Classification: "..value
end

-- Dissect: Issue Classification
nasdaq_psxequities_totalview_glimpse_v5_0.issue_classification.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.issue_classification.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.issue_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.issue_classification, range, value, display)

  return offset + length, value
end

-- Issue Sub Type
nasdaq_psxequities_totalview_glimpse_v5_0.issue_sub_type = {}

-- Size: Issue Sub Type
nasdaq_psxequities_totalview_glimpse_v5_0.issue_sub_type.size = 2

-- Display: Issue Sub Type
nasdaq_psxequities_totalview_glimpse_v5_0.issue_sub_type.display = function(value)
  return "Issue Sub Type: "..value
end

-- Dissect: Issue Sub Type
nasdaq_psxequities_totalview_glimpse_v5_0.issue_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.issue_sub_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.issue_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.issue_sub_type, range, value, display)

  return offset + length, value
end

-- Itch Sequence Number
nasdaq_psxequities_totalview_glimpse_v5_0.itch_sequence_number = {}

-- Size: Itch Sequence Number
nasdaq_psxequities_totalview_glimpse_v5_0.itch_sequence_number.size = 20

-- Display: Itch Sequence Number
nasdaq_psxequities_totalview_glimpse_v5_0.itch_sequence_number.display = function(value)
  return "Itch Sequence Number: "..value
end

-- Dissect: Itch Sequence Number
nasdaq_psxequities_totalview_glimpse_v5_0.itch_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.itch_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_psxequities_totalview_glimpse_v5_0.itch_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.itch_sequence_number, range, value, display)

  return offset + length, value
end

-- Luld Reference Price Tier
nasdaq_psxequities_totalview_glimpse_v5_0.luld_reference_price_tier = {}

-- Size: Luld Reference Price Tier
nasdaq_psxequities_totalview_glimpse_v5_0.luld_reference_price_tier.size = 1

-- Display: Luld Reference Price Tier
nasdaq_psxequities_totalview_glimpse_v5_0.luld_reference_price_tier.display = function(value)
  if value == "1" then
    return "Luld Reference Price Tier: Tier 1 Nms Stocks And Select Et Ps (1)"
  end
  if value == "2" then
    return "Luld Reference Price Tier: Tier 2 Nms Stocks (2)"
  end
  if value == " " then
    return "Luld Reference Price Tier: Not Applicable (<whitespace>)"
  end

  return "Luld Reference Price Tier: Unknown("..value..")"
end

-- Dissect: Luld Reference Price Tier
nasdaq_psxequities_totalview_glimpse_v5_0.luld_reference_price_tier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.luld_reference_price_tier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.luld_reference_price_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.luld_reference_price_tier, range, value, display)

  return offset + length, value
end

-- Market Category
nasdaq_psxequities_totalview_glimpse_v5_0.market_category = {}

-- Size: Market Category
nasdaq_psxequities_totalview_glimpse_v5_0.market_category.size = 1

-- Display: Market Category
nasdaq_psxequities_totalview_glimpse_v5_0.market_category.display = function(value)
  if value == "Q" then
    return "Market Category: Nasdaq Global Select Market (Q)"
  end
  if value == "G" then
    return "Market Category: Nasdaq Global Market (G)"
  end
  if value == "S" then
    return "Market Category: Nasdaq Capital Market (S)"
  end
  if value == "N" then
    return "Market Category: New York Stock Exchange (N)"
  end
  if value == "A" then
    return "Market Category: Nyse Mkt (A)"
  end
  if value == "P" then
    return "Market Category: Nyse Arca (P)"
  end
  if value == "Z" then
    return "Market Category: Bats Z Exchange (Z)"
  end
  if value == " " then
    return "Market Category: Not Available (<whitespace>)"
  end

  return "Market Category: Unknown("..value..")"
end

-- Dissect: Market Category
nasdaq_psxequities_totalview_glimpse_v5_0.market_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.market_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.market_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.market_category, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nasdaq_psxequities_totalview_glimpse_v5_0.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_psxequities_totalview_glimpse_v5_0.order_reference_number.size = 8

-- Display: Order Reference Number
nasdaq_psxequities_totalview_glimpse_v5_0.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_psxequities_totalview_glimpse_v5_0.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_psxequities_totalview_glimpse_v5_0.packet_length = {}

-- Size: Packet Length
nasdaq_psxequities_totalview_glimpse_v5_0.packet_length.size = 2

-- Display: Packet Length
nasdaq_psxequities_totalview_glimpse_v5_0.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_psxequities_totalview_glimpse_v5_0.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_psxequities_totalview_glimpse_v5_0.password = {}

-- Size: Password
nasdaq_psxequities_totalview_glimpse_v5_0.password.size = 10

-- Display: Password
nasdaq_psxequities_totalview_glimpse_v5_0.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_psxequities_totalview_glimpse_v5_0.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.password, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_psxequities_totalview_glimpse_v5_0.price = {}

-- Size: Price
nasdaq_psxequities_totalview_glimpse_v5_0.price.size = 4

-- Display: Price
nasdaq_psxequities_totalview_glimpse_v5_0.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nasdaq_psxequities_totalview_glimpse_v5_0.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
nasdaq_psxequities_totalview_glimpse_v5_0.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_psxequities_totalview_glimpse_v5_0.price.translate(raw)
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.price, range, value, display)

  return offset + length, value
end

-- Reason
nasdaq_psxequities_totalview_glimpse_v5_0.reason = {}

-- Size: Reason
nasdaq_psxequities_totalview_glimpse_v5_0.reason.size = 4

-- Display: Reason
nasdaq_psxequities_totalview_glimpse_v5_0.reason.display = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
nasdaq_psxequities_totalview_glimpse_v5_0.reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.reason, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
nasdaq_psxequities_totalview_glimpse_v5_0.reg_sho_action = {}

-- Size: Reg Sho Action
nasdaq_psxequities_totalview_glimpse_v5_0.reg_sho_action.size = 1

-- Display: Reg Sho Action
nasdaq_psxequities_totalview_glimpse_v5_0.reg_sho_action.display = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price Test In Place (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Restriction In Effect (1)"
  end
  if value == "2" then
    return "Reg Sho Action: Restriction Remains In Effect (2)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
nasdaq_psxequities_totalview_glimpse_v5_0.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_psxequities_totalview_glimpse_v5_0.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_psxequities_totalview_glimpse_v5_0.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_psxequities_totalview_glimpse_v5_0.reject_reason_code.display = function(value)
  if value == "A" then
    return "Reject Reason Code: Not Authorized (A)"
  end
  if value == "S" then
    return "Reject Reason Code: Session Not Available (S)"
  end

  return "Reject Reason Code: Unknown("..value..")"
end

-- Dissect: Reject Reason Code
nasdaq_psxequities_totalview_glimpse_v5_0.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_psxequities_totalview_glimpse_v5_0.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_psxequities_totalview_glimpse_v5_0.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_psxequities_totalview_glimpse_v5_0.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_psxequities_totalview_glimpse_v5_0.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_psxequities_totalview_glimpse_v5_0.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_psxequities_totalview_glimpse_v5_0.requested_session = {}

-- Size: Requested Session
nasdaq_psxequities_totalview_glimpse_v5_0.requested_session.size = 10

-- Display: Requested Session
nasdaq_psxequities_totalview_glimpse_v5_0.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_psxequities_totalview_glimpse_v5_0.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.requested_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved 1
nasdaq_psxequities_totalview_glimpse_v5_0.reserved_1 = {}

-- Size: Reserved 1
nasdaq_psxequities_totalview_glimpse_v5_0.reserved_1.size = 1

-- Display: Reserved 1
nasdaq_psxequities_totalview_glimpse_v5_0.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nasdaq_psxequities_totalview_glimpse_v5_0.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_psxequities_totalview_glimpse_v5_0.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_psxequities_totalview_glimpse_v5_0.round_lot_size.size = 4

-- Display: Round Lot Size
nasdaq_psxequities_totalview_glimpse_v5_0.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_psxequities_totalview_glimpse_v5_0.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Round Lots Only
nasdaq_psxequities_totalview_glimpse_v5_0.round_lots_only = {}

-- Size: Round Lots Only
nasdaq_psxequities_totalview_glimpse_v5_0.round_lots_only.size = 1

-- Display: Round Lots Only
nasdaq_psxequities_totalview_glimpse_v5_0.round_lots_only.display = function(value)
  if value == "Y" then
    return "Round Lots Only: Only Round Lots Accepted (Y)"
  end
  if value == "N" then
    return "Round Lots Only: Odd And Mixed Lots Allowed (N)"
  end

  return "Round Lots Only: Unknown("..value..")"
end

-- Dissect: Round Lots Only
nasdaq_psxequities_totalview_glimpse_v5_0.round_lots_only.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.round_lots_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.round_lots_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.round_lots_only, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
nasdaq_psxequities_totalview_glimpse_v5_0.sequenced_message_type = {}

-- Size: Sequenced Message Type
nasdaq_psxequities_totalview_glimpse_v5_0.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
nasdaq_psxequities_totalview_glimpse_v5_0.sequenced_message_type.display = function(value)
  if value == "S" then
    return "Sequenced Message Type: System Event Message (S)"
  end
  if value == "A" then
    return "Sequenced Message Type: Add Order Message (A)"
  end
  if value == "F" then
    return "Sequenced Message Type: Add Order Mpid Attribution Message (F)"
  end
  if value == "R" then
    return "Sequenced Message Type: Stock Directory Message (R)"
  end
  if value == "H" then
    return "Sequenced Message Type: Stock Trading Action Message (H)"
  end
  if value == "Y" then
    return "Sequenced Message Type: Reg Sho Restriction Message (Y)"
  end
  if value == "G" then
    return "Sequenced Message Type: End Of Snapshot Message (G)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
nasdaq_psxequities_totalview_glimpse_v5_0.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
nasdaq_psxequities_totalview_glimpse_v5_0.server_packet_type = {}

-- Size: Server Packet Type
nasdaq_psxequities_totalview_glimpse_v5_0.server_packet_type.size = 1

-- Display: Server Packet Type
nasdaq_psxequities_totalview_glimpse_v5_0.server_packet_type.display = function(value)
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
nasdaq_psxequities_totalview_glimpse_v5_0.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Shares
nasdaq_psxequities_totalview_glimpse_v5_0.shares = {}

-- Size: Shares
nasdaq_psxequities_totalview_glimpse_v5_0.shares.size = 4

-- Display: Shares
nasdaq_psxequities_totalview_glimpse_v5_0.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
nasdaq_psxequities_totalview_glimpse_v5_0.shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.shares, range, value, display)

  return offset + length, value
end

-- Short Sale Threshold Indicator
nasdaq_psxequities_totalview_glimpse_v5_0.short_sale_threshold_indicator = {}

-- Size: Short Sale Threshold Indicator
nasdaq_psxequities_totalview_glimpse_v5_0.short_sale_threshold_indicator.size = 1

-- Display: Short Sale Threshold Indicator
nasdaq_psxequities_totalview_glimpse_v5_0.short_sale_threshold_indicator.display = function(value)
  if value == "Y" then
    return "Short Sale Threshold Indicator: Restricted (Y)"
  end
  if value == "N" then
    return "Short Sale Threshold Indicator: Not Restricted (N)"
  end
  if value == " " then
    return "Short Sale Threshold Indicator: Not Available (<whitespace>)"
  end

  return "Short Sale Threshold Indicator: Unknown("..value..")"
end

-- Dissect: Short Sale Threshold Indicator
nasdaq_psxequities_totalview_glimpse_v5_0.short_sale_threshold_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.short_sale_threshold_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.short_sale_threshold_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Stock
nasdaq_psxequities_totalview_glimpse_v5_0.stock = {}

-- Size: Stock
nasdaq_psxequities_totalview_glimpse_v5_0.stock.size = 8

-- Display: Stock
nasdaq_psxequities_totalview_glimpse_v5_0.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_psxequities_totalview_glimpse_v5_0.stock.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.stock, range, value, display)

  return offset + length, value
end

-- Stock Locate
nasdaq_psxequities_totalview_glimpse_v5_0.stock_locate = {}

-- Size: Stock Locate
nasdaq_psxequities_totalview_glimpse_v5_0.stock_locate.size = 2

-- Display: Stock Locate
nasdaq_psxequities_totalview_glimpse_v5_0.stock_locate.display = function(value)
  return "Stock Locate: "..value
end

-- Dissect: Stock Locate
nasdaq_psxequities_totalview_glimpse_v5_0.stock_locate.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.stock_locate.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.stock_locate.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.stock_locate, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_psxequities_totalview_glimpse_v5_0.timestamp = {}

-- Size: Timestamp
nasdaq_psxequities_totalview_glimpse_v5_0.timestamp.size = 6

-- Display: Timestamp
nasdaq_psxequities_totalview_glimpse_v5_0.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_psxequities_totalview_glimpse_v5_0.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_psxequities_totalview_glimpse_v5_0.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_psxequities_totalview_glimpse_v5_0.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
nasdaq_psxequities_totalview_glimpse_v5_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_psxequities_totalview_glimpse_v5_0.tracking_number = {}

-- Size: Tracking Number
nasdaq_psxequities_totalview_glimpse_v5_0.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_psxequities_totalview_glimpse_v5_0.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_psxequities_totalview_glimpse_v5_0.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Trading State
nasdaq_psxequities_totalview_glimpse_v5_0.trading_state = {}

-- Size: Trading State
nasdaq_psxequities_totalview_glimpse_v5_0.trading_state.size = 1

-- Display: Trading State
nasdaq_psxequities_totalview_glimpse_v5_0.trading_state.display = function(value)
  if value == "H" then
    return "Trading State: Halted Paused Across All Us Equity Markets (H)"
  end
  if value == "Q" then
    return "Trading State: Quotation Only Period For Crossmarket Halt Or Pause (Q)"
  end
  if value == "T" then
    return "Trading State: Trading On Psx (T)"
  end

  return "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
nasdaq_psxequities_totalview_glimpse_v5_0.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
nasdaq_psxequities_totalview_glimpse_v5_0.unsequenced_message = {}

-- Display: Unsequenced Message
nasdaq_psxequities_totalview_glimpse_v5_0.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
nasdaq_psxequities_totalview_glimpse_v5_0.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.unsequenced_message, range, value, display)

  return offset + size, value
end

-- Unsequenced Message Type
nasdaq_psxequities_totalview_glimpse_v5_0.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nasdaq_psxequities_totalview_glimpse_v5_0.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
nasdaq_psxequities_totalview_glimpse_v5_0.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
nasdaq_psxequities_totalview_glimpse_v5_0.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_psxequities_totalview_glimpse_v5_0.username = {}

-- Size: Username
nasdaq_psxequities_totalview_glimpse_v5_0.username.size = 6

-- Display: Username
nasdaq_psxequities_totalview_glimpse_v5_0.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_psxequities_totalview_glimpse_v5_0.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v5_0.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq PsxEquities TotalView Glimpse 5.0
-----------------------------------------------------------------------

-- End Of Session
nasdaq_psxequities_totalview_glimpse_v5_0.end_of_session = {}

-- Display: End Of Session
nasdaq_psxequities_totalview_glimpse_v5_0.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_psxequities_totalview_glimpse_v5_0.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
nasdaq_psxequities_totalview_glimpse_v5_0.server_heartbeat = {}

-- Display: Server Heartbeat
nasdaq_psxequities_totalview_glimpse_v5_0.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
nasdaq_psxequities_totalview_glimpse_v5_0.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- End Of Snapshot Message
nasdaq_psxequities_totalview_glimpse_v5_0.end_of_snapshot_message = {}

-- Size: End Of Snapshot Message
nasdaq_psxequities_totalview_glimpse_v5_0.end_of_snapshot_message.size =
  nasdaq_psxequities_totalview_glimpse_v5_0.itch_sequence_number.size

-- Display: End Of Snapshot Message
nasdaq_psxequities_totalview_glimpse_v5_0.end_of_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Snapshot Message
nasdaq_psxequities_totalview_glimpse_v5_0.end_of_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Itch Sequence Number: Numeric
  index, itch_sequence_number = nasdaq_psxequities_totalview_glimpse_v5_0.itch_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Snapshot Message
nasdaq_psxequities_totalview_glimpse_v5_0.end_of_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.end_of_snapshot_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v5_0.end_of_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v5_0.end_of_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v5_0.end_of_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Reg Sho Restriction Message
nasdaq_psxequities_totalview_glimpse_v5_0.reg_sho_restriction_message = {}

-- Size: Reg Sho Restriction Message
nasdaq_psxequities_totalview_glimpse_v5_0.reg_sho_restriction_message.size =
  nasdaq_psxequities_totalview_glimpse_v5_0.stock_locate.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.tracking_number.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.timestamp.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.stock.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.reg_sho_action.size

-- Display: Reg Sho Restriction Message
nasdaq_psxequities_totalview_glimpse_v5_0.reg_sho_restriction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Restriction Message
nasdaq_psxequities_totalview_glimpse_v5_0.reg_sho_restriction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = nasdaq_psxequities_totalview_glimpse_v5_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_totalview_glimpse_v5_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_totalview_glimpse_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_totalview_glimpse_v5_0.stock.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: Alpha
  index, reg_sho_action = nasdaq_psxequities_totalview_glimpse_v5_0.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Restriction Message
nasdaq_psxequities_totalview_glimpse_v5_0.reg_sho_restriction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.reg_sho_restriction_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v5_0.reg_sho_restriction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v5_0.reg_sho_restriction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v5_0.reg_sho_restriction_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Trading Action Message
nasdaq_psxequities_totalview_glimpse_v5_0.stock_trading_action_message = {}

-- Size: Stock Trading Action Message
nasdaq_psxequities_totalview_glimpse_v5_0.stock_trading_action_message.size =
  nasdaq_psxequities_totalview_glimpse_v5_0.stock_locate.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.tracking_number.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.timestamp.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.stock.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.trading_state.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.reserved_1.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.reason.size

-- Display: Stock Trading Action Message
nasdaq_psxequities_totalview_glimpse_v5_0.stock_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Trading Action Message
nasdaq_psxequities_totalview_glimpse_v5_0.stock_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = nasdaq_psxequities_totalview_glimpse_v5_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_totalview_glimpse_v5_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_totalview_glimpse_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_totalview_glimpse_v5_0.stock.dissect(buffer, index, packet, parent)

  -- Trading State: Alpha
  index, trading_state = nasdaq_psxequities_totalview_glimpse_v5_0.trading_state.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = nasdaq_psxequities_totalview_glimpse_v5_0.reserved_1.dissect(buffer, index, packet, parent)

  -- Reason: Alpha
  index, reason = nasdaq_psxequities_totalview_glimpse_v5_0.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Trading Action Message
nasdaq_psxequities_totalview_glimpse_v5_0.stock_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.stock_trading_action_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v5_0.stock_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v5_0.stock_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v5_0.stock_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Directory Message
nasdaq_psxequities_totalview_glimpse_v5_0.stock_directory_message = {}

-- Size: Stock Directory Message
nasdaq_psxequities_totalview_glimpse_v5_0.stock_directory_message.size =
  nasdaq_psxequities_totalview_glimpse_v5_0.stock_locate.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.tracking_number.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.timestamp.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.stock.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.market_category.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.financial_status_indicator.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.round_lot_size.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.round_lots_only.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.issue_classification.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.issue_sub_type.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.authenticity.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.short_sale_threshold_indicator.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.ipo_flag.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.luld_reference_price_tier.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.etp_flag.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.etp_leverage_factor.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.inverse_indicator.size

-- Display: Stock Directory Message
nasdaq_psxequities_totalview_glimpse_v5_0.stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
nasdaq_psxequities_totalview_glimpse_v5_0.stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = nasdaq_psxequities_totalview_glimpse_v5_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_totalview_glimpse_v5_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_totalview_glimpse_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_totalview_glimpse_v5_0.stock.dissect(buffer, index, packet, parent)

  -- Market Category: Alpha
  index, market_category = nasdaq_psxequities_totalview_glimpse_v5_0.market_category.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Alpha
  index, financial_status_indicator = nasdaq_psxequities_totalview_glimpse_v5_0.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Integer
  index, round_lot_size = nasdaq_psxequities_totalview_glimpse_v5_0.round_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lots Only: Alpha
  index, round_lots_only = nasdaq_psxequities_totalview_glimpse_v5_0.round_lots_only.dissect(buffer, index, packet, parent)

  -- Issue Classification: Alpha
  index, issue_classification = nasdaq_psxequities_totalview_glimpse_v5_0.issue_classification.dissect(buffer, index, packet, parent)

  -- Issue Sub Type: Alpha
  index, issue_sub_type = nasdaq_psxequities_totalview_glimpse_v5_0.issue_sub_type.dissect(buffer, index, packet, parent)

  -- Authenticity: Alpha
  index, authenticity = nasdaq_psxequities_totalview_glimpse_v5_0.authenticity.dissect(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: Alpha
  index, short_sale_threshold_indicator = nasdaq_psxequities_totalview_glimpse_v5_0.short_sale_threshold_indicator.dissect(buffer, index, packet, parent)

  -- Ipo Flag: Alpha
  index, ipo_flag = nasdaq_psxequities_totalview_glimpse_v5_0.ipo_flag.dissect(buffer, index, packet, parent)

  -- Luld Reference Price Tier: Alpha
  index, luld_reference_price_tier = nasdaq_psxequities_totalview_glimpse_v5_0.luld_reference_price_tier.dissect(buffer, index, packet, parent)

  -- Etp Flag: Alpha
  index, etp_flag = nasdaq_psxequities_totalview_glimpse_v5_0.etp_flag.dissect(buffer, index, packet, parent)

  -- Etp Leverage Factor: Integer
  index, etp_leverage_factor = nasdaq_psxequities_totalview_glimpse_v5_0.etp_leverage_factor.dissect(buffer, index, packet, parent)

  -- Inverse Indicator: Alpha
  index, inverse_indicator = nasdaq_psxequities_totalview_glimpse_v5_0.inverse_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
nasdaq_psxequities_totalview_glimpse_v5_0.stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.stock_directory_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v5_0.stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v5_0.stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v5_0.stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Mpid Attribution Message
nasdaq_psxequities_totalview_glimpse_v5_0.add_order_mpid_attribution_message = {}

-- Size: Add Order Mpid Attribution Message
nasdaq_psxequities_totalview_glimpse_v5_0.add_order_mpid_attribution_message.size =
  nasdaq_psxequities_totalview_glimpse_v5_0.stock_locate.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.tracking_number.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.timestamp.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.order_reference_number.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.buy_sell_indicator.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.shares.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.stock.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.price.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.attribution.size

-- Display: Add Order Mpid Attribution Message
nasdaq_psxequities_totalview_glimpse_v5_0.add_order_mpid_attribution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Mpid Attribution Message
nasdaq_psxequities_totalview_glimpse_v5_0.add_order_mpid_attribution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = nasdaq_psxequities_totalview_glimpse_v5_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_totalview_glimpse_v5_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_totalview_glimpse_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_psxequities_totalview_glimpse_v5_0.order_reference_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = nasdaq_psxequities_totalview_glimpse_v5_0.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: Integer
  index, shares = nasdaq_psxequities_totalview_glimpse_v5_0.shares.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_totalview_glimpse_v5_0.stock.dissect(buffer, index, packet, parent)

  -- Price: Price (4)
  index, price = nasdaq_psxequities_totalview_glimpse_v5_0.price.dissect(buffer, index, packet, parent)

  -- Attribution: Alpha
  index, attribution = nasdaq_psxequities_totalview_glimpse_v5_0.attribution.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Mpid Attribution Message
nasdaq_psxequities_totalview_glimpse_v5_0.add_order_mpid_attribution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.add_order_mpid_attribution_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v5_0.add_order_mpid_attribution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v5_0.add_order_mpid_attribution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v5_0.add_order_mpid_attribution_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
nasdaq_psxequities_totalview_glimpse_v5_0.add_order_message = {}

-- Size: Add Order Message
nasdaq_psxequities_totalview_glimpse_v5_0.add_order_message.size =
  nasdaq_psxequities_totalview_glimpse_v5_0.stock_locate.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.tracking_number.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.timestamp.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.order_reference_number.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.buy_sell_indicator.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.shares.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.stock.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.price.size

-- Display: Add Order Message
nasdaq_psxequities_totalview_glimpse_v5_0.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
nasdaq_psxequities_totalview_glimpse_v5_0.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = nasdaq_psxequities_totalview_glimpse_v5_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_totalview_glimpse_v5_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_totalview_glimpse_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_psxequities_totalview_glimpse_v5_0.order_reference_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = nasdaq_psxequities_totalview_glimpse_v5_0.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: Integer
  index, shares = nasdaq_psxequities_totalview_glimpse_v5_0.shares.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_totalview_glimpse_v5_0.stock.dissect(buffer, index, packet, parent)

  -- Price: Price (4)
  index, price = nasdaq_psxequities_totalview_glimpse_v5_0.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
nasdaq_psxequities_totalview_glimpse_v5_0.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.add_order_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v5_0.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v5_0.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v5_0.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_psxequities_totalview_glimpse_v5_0.system_event_message = {}

-- Size: System Event Message
nasdaq_psxequities_totalview_glimpse_v5_0.system_event_message.size =
  nasdaq_psxequities_totalview_glimpse_v5_0.stock_locate.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.tracking_number.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.timestamp.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.event_code.size

-- Display: System Event Message
nasdaq_psxequities_totalview_glimpse_v5_0.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_psxequities_totalview_glimpse_v5_0.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = nasdaq_psxequities_totalview_glimpse_v5_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_totalview_glimpse_v5_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_totalview_glimpse_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_psxequities_totalview_glimpse_v5_0.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_psxequities_totalview_glimpse_v5_0.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v5_0.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v5_0.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v5_0.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nasdaq_psxequities_totalview_glimpse_v5_0.sequenced_message = {}

-- Dissect: Sequenced Message
nasdaq_psxequities_totalview_glimpse_v5_0.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect System Event Message
  if sequenced_message_type == "S" then
    return nasdaq_psxequities_totalview_glimpse_v5_0.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if sequenced_message_type == "A" then
    return nasdaq_psxequities_totalview_glimpse_v5_0.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Mpid Attribution Message
  if sequenced_message_type == "F" then
    return nasdaq_psxequities_totalview_glimpse_v5_0.add_order_mpid_attribution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if sequenced_message_type == "R" then
    return nasdaq_psxequities_totalview_glimpse_v5_0.stock_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Trading Action Message
  if sequenced_message_type == "H" then
    return nasdaq_psxequities_totalview_glimpse_v5_0.stock_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Restriction Message
  if sequenced_message_type == "Y" then
    return nasdaq_psxequities_totalview_glimpse_v5_0.reg_sho_restriction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Snapshot Message
  if sequenced_message_type == "G" then
    return nasdaq_psxequities_totalview_glimpse_v5_0.end_of_snapshot_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
nasdaq_psxequities_totalview_glimpse_v5_0.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
nasdaq_psxequities_totalview_glimpse_v5_0.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
nasdaq_psxequities_totalview_glimpse_v5_0.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_psxequities_totalview_glimpse_v5_0.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = nasdaq_psxequities_totalview_glimpse_v5_0.conversation.current
  if flow ~= nil then
    local memo = flow.sequence.frames[packet.number]
    if not packet.visited then
      if flow.sequence.next == nil then
        flow.sequence.next = tonumber(nasdaq_psxequities_totalview_glimpse_v5_0.accepted_sequence_number.current)
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
          local sequence = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if nasdaq_psxequities_totalview_glimpse_v5_0.stream_frame ~= packet.number or nasdaq_psxequities_totalview_glimpse_v5_0.stream_occurrence >= #memo then
          nasdaq_psxequities_totalview_glimpse_v5_0.stream_frame = packet.number
          nasdaq_psxequities_totalview_glimpse_v5_0.stream_occurrence = 0
        end
        nasdaq_psxequities_totalview_glimpse_v5_0.stream_occurrence = nasdaq_psxequities_totalview_glimpse_v5_0.stream_occurrence + 1
        local value = memo[nasdaq_psxequities_totalview_glimpse_v5_0.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 7 values
  index, sequenced_message_type = nasdaq_psxequities_totalview_glimpse_v5_0.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 7 branches
  index = nasdaq_psxequities_totalview_glimpse_v5_0.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_psxequities_totalview_glimpse_v5_0.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = nasdaq_psxequities_totalview_glimpse_v5_0.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.sequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_psxequities_totalview_glimpse_v5_0.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = nasdaq_psxequities_totalview_glimpse_v5_0.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_psxequities_totalview_glimpse_v5_0.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
nasdaq_psxequities_totalview_glimpse_v5_0.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_psxequities_totalview_glimpse_v5_0.login_rejected_packet.size =
  nasdaq_psxequities_totalview_glimpse_v5_0.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_psxequities_totalview_glimpse_v5_0.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_psxequities_totalview_glimpse_v5_0.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String Enum with 2 values
  index, reject_reason_code = nasdaq_psxequities_totalview_glimpse_v5_0.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_psxequities_totalview_glimpse_v5_0.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v5_0.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v5_0.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v5_0.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_psxequities_totalview_glimpse_v5_0.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_psxequities_totalview_glimpse_v5_0.login_accepted_packet.size =
  nasdaq_psxequities_totalview_glimpse_v5_0.accepted_session.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.accepted_sequence_number.size

-- Display: Login Accepted Packet
nasdaq_psxequities_totalview_glimpse_v5_0.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_psxequities_totalview_glimpse_v5_0.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = nasdaq_psxequities_totalview_glimpse_v5_0.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = nasdaq_psxequities_totalview_glimpse_v5_0.accepted_sequence_number.dissect(buffer, index, packet, parent)

  -- Store Accepted Sequence Number Value
  nasdaq_psxequities_totalview_glimpse_v5_0.accepted_sequence_number.current = accepted_sequence_number

  if not packet.visited then
    nasdaq_psxequities_totalview_glimpse_v5_0.conversation.current.accepted_sequence_number.last = accepted_sequence_number
  end

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_psxequities_totalview_glimpse_v5_0.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v5_0.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v5_0.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v5_0.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_psxequities_totalview_glimpse_v5_0.debug_packet = {}

-- Size: Debug Packet
nasdaq_psxequities_totalview_glimpse_v5_0.debug_packet.size =
  nasdaq_psxequities_totalview_glimpse_v5_0.debug_text.size

-- Display: Debug Packet
nasdaq_psxequities_totalview_glimpse_v5_0.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_psxequities_totalview_glimpse_v5_0.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Debug Text: 1 Byte Ascii String
  index, debug_text = nasdaq_psxequities_totalview_glimpse_v5_0.debug_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
nasdaq_psxequities_totalview_glimpse_v5_0.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v5_0.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v5_0.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v5_0.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
nasdaq_psxequities_totalview_glimpse_v5_0.server_payload = {}

-- Dissect: Server Payload
nasdaq_psxequities_totalview_glimpse_v5_0.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  -- Dissect Debug Packet
  if server_packet_type == "+" then
    return nasdaq_psxequities_totalview_glimpse_v5_0.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if server_packet_type == "A" then
    return nasdaq_psxequities_totalview_glimpse_v5_0.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if server_packet_type == "J" then
    return nasdaq_psxequities_totalview_glimpse_v5_0.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if server_packet_type == "S" then
    return nasdaq_psxequities_totalview_glimpse_v5_0.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat
  if server_packet_type == "H" then
    return nasdaq_psxequities_totalview_glimpse_v5_0.server_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if server_packet_type == "Z" then
    return nasdaq_psxequities_totalview_glimpse_v5_0.end_of_session.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
nasdaq_psxequities_totalview_glimpse_v5_0.server_packet_header = {}

-- Size: Server Packet Header
nasdaq_psxequities_totalview_glimpse_v5_0.server_packet_header.size =
  nasdaq_psxequities_totalview_glimpse_v5_0.packet_length.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.server_packet_type.size

-- Display: Server Packet Header
nasdaq_psxequities_totalview_glimpse_v5_0.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
nasdaq_psxequities_totalview_glimpse_v5_0.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_psxequities_totalview_glimpse_v5_0.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = nasdaq_psxequities_totalview_glimpse_v5_0.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
nasdaq_psxequities_totalview_glimpse_v5_0.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.server_packet_header, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v5_0.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v5_0.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v5_0.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
nasdaq_psxequities_totalview_glimpse_v5_0.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
nasdaq_psxequities_totalview_glimpse_v5_0.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
nasdaq_psxequities_totalview_glimpse_v5_0.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = nasdaq_psxequities_totalview_glimpse_v5_0.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = nasdaq_psxequities_totalview_glimpse_v5_0.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
nasdaq_psxequities_totalview_glimpse_v5_0.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_psxequities_totalview_glimpse_v5_0.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = nasdaq_psxequities_totalview_glimpse_v5_0.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_psxequities_totalview_glimpse_v5_0.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_psxequities_totalview_glimpse_v5_0.server_packet_header.size then
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
nasdaq_psxequities_totalview_glimpse_v5_0.server_packet = {}

-- Verify required size of Tcp packet
nasdaq_psxequities_totalview_glimpse_v5_0.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_psxequities_totalview_glimpse_v5_0.server_packet_header.size
end

-- Dissect Server Packet
nasdaq_psxequities_totalview_glimpse_v5_0.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nasdaq_psxequities_totalview_glimpse_v5_0.conversation.data(packet)
  if not packet.visited then
    data.accepted_sequence_number.frames[packet.number] = data.accepted_sequence_number.last
  end
  nasdaq_psxequities_totalview_glimpse_v5_0.accepted_sequence_number.current = data.accepted_sequence_number.frames[packet.number]
  nasdaq_psxequities_totalview_glimpse_v5_0.conversation.current = data

  local index = 0

  -- Dependency for Server Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Server Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_soup_bin_tcp_packet = server_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_psxequities_totalview_glimpse_v5_0.server_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_server_soup_bin_tcp_packet)
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
nasdaq_psxequities_totalview_glimpse_v5_0.logout_request = {}

-- Display: Logout Request
nasdaq_psxequities_totalview_glimpse_v5_0.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
nasdaq_psxequities_totalview_glimpse_v5_0.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
nasdaq_psxequities_totalview_glimpse_v5_0.client_heartbeat = {}

-- Display: Client Heartbeat
nasdaq_psxequities_totalview_glimpse_v5_0.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
nasdaq_psxequities_totalview_glimpse_v5_0.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_psxequities_totalview_glimpse_v5_0.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Unsequenced Data Packet
nasdaq_psxequities_totalview_glimpse_v5_0.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
nasdaq_psxequities_totalview_glimpse_v5_0.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
nasdaq_psxequities_totalview_glimpse_v5_0.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_psxequities_totalview_glimpse_v5_0.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = nasdaq_psxequities_totalview_glimpse_v5_0.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = packet_length - 2

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = nasdaq_psxequities_totalview_glimpse_v5_0.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_psxequities_totalview_glimpse_v5_0.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = nasdaq_psxequities_totalview_glimpse_v5_0.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_psxequities_totalview_glimpse_v5_0.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = nasdaq_psxequities_totalview_glimpse_v5_0.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_psxequities_totalview_glimpse_v5_0.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
nasdaq_psxequities_totalview_glimpse_v5_0.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_psxequities_totalview_glimpse_v5_0.login_request_packet.size =
  nasdaq_psxequities_totalview_glimpse_v5_0.username.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.password.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.requested_session.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_psxequities_totalview_glimpse_v5_0.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_psxequities_totalview_glimpse_v5_0.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_psxequities_totalview_glimpse_v5_0.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_psxequities_totalview_glimpse_v5_0.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_psxequities_totalview_glimpse_v5_0.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_psxequities_totalview_glimpse_v5_0.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_psxequities_totalview_glimpse_v5_0.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v5_0.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v5_0.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v5_0.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
nasdaq_psxequities_totalview_glimpse_v5_0.client_payload = {}

-- Dissect: Client Payload
nasdaq_psxequities_totalview_glimpse_v5_0.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  -- Dissect Debug Packet
  if client_packet_type == "+" then
    return nasdaq_psxequities_totalview_glimpse_v5_0.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if client_packet_type == "L" then
    return nasdaq_psxequities_totalview_glimpse_v5_0.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if client_packet_type == "U" then
    return nasdaq_psxequities_totalview_glimpse_v5_0.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat
  if client_packet_type == "R" then
    return nasdaq_psxequities_totalview_glimpse_v5_0.client_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if client_packet_type == "O" then
    return nasdaq_psxequities_totalview_glimpse_v5_0.logout_request.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
nasdaq_psxequities_totalview_glimpse_v5_0.client_packet_header = {}

-- Size: Client Packet Header
nasdaq_psxequities_totalview_glimpse_v5_0.client_packet_header.size =
  nasdaq_psxequities_totalview_glimpse_v5_0.packet_length.size + 
  nasdaq_psxequities_totalview_glimpse_v5_0.client_packet_type.size

-- Display: Client Packet Header
nasdaq_psxequities_totalview_glimpse_v5_0.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
nasdaq_psxequities_totalview_glimpse_v5_0.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_psxequities_totalview_glimpse_v5_0.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = nasdaq_psxequities_totalview_glimpse_v5_0.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
nasdaq_psxequities_totalview_glimpse_v5_0.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.client_packet_header, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v5_0.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v5_0.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v5_0.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
nasdaq_psxequities_totalview_glimpse_v5_0.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
nasdaq_psxequities_totalview_glimpse_v5_0.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
nasdaq_psxequities_totalview_glimpse_v5_0.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = nasdaq_psxequities_totalview_glimpse_v5_0.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = nasdaq_psxequities_totalview_glimpse_v5_0.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
nasdaq_psxequities_totalview_glimpse_v5_0.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_psxequities_totalview_glimpse_v5_0.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = nasdaq_psxequities_totalview_glimpse_v5_0.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_psxequities_totalview_glimpse_v5_0.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_psxequities_totalview_glimpse_v5_0.client_packet_header.size then
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
nasdaq_psxequities_totalview_glimpse_v5_0.client_packet = {}

-- Verify required size of Tcp packet
nasdaq_psxequities_totalview_glimpse_v5_0.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_psxequities_totalview_glimpse_v5_0.client_packet_header.size
end

-- Dissect Client Packet
nasdaq_psxequities_totalview_glimpse_v5_0.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Client Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_soup_bin_tcp_packet = client_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_psxequities_totalview_glimpse_v5_0.client_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_client_soup_bin_tcp_packet)
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
function omi_nasdaq_psxequities_totalview_glimpse_v5_0.init()
  nasdaq_psxequities_totalview_glimpse_v5_0.accepted_sequence_number.current = nil
  nasdaq_psxequities_totalview_glimpse_v5_0.conversation.current = nil
  nasdaq_psxequities_totalview_glimpse_v5_0.conversation.flows = {}
end

-- Connection roles for Nasdaq PsxEquities TotalView Glimpse 5.0: Client is the initiator, Server is the acceptor
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
nasdaq_psxequities_totalview_glimpse_v5_0.role = function(packet)
  if omi_nasdaq_psxequities_totalview_glimpse_v5_0.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nasdaq_psxequities_totalview_glimpse_v5_0.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nasdaq_psxequities_totalview_glimpse_v5_0.prefs.acceptor_port

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

  if omi_nasdaq_psxequities_totalview_glimpse_v5_0.prefs.swap_sides then
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
nasdaq_psxequities_totalview_glimpse_v5_0.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nasdaq PsxEquities TotalView Glimpse 5.0
function omi_nasdaq_psxequities_totalview_glimpse_v5_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_psxequities_totalview_glimpse_v5_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v5_0, buffer(), omi_nasdaq_psxequities_totalview_glimpse_v5_0.description, "("..buffer:len().." Bytes)")

  local role = nasdaq_psxequities_totalview_glimpse_v5_0.role(packet)

  if role == "initiator" then
    return nasdaq_psxequities_totalview_glimpse_v5_0.client_packet.dissect(buffer, packet, protocol)
  end

  return nasdaq_psxequities_totalview_glimpse_v5_0.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nasdaq_psxequities_totalview_glimpse_v5_0.client_packet.fingerprint = function(buffer)
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
nasdaq_psxequities_totalview_glimpse_v5_0.server_packet.fingerprint = function(buffer)
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

    -- System Event Message
    if sequenced_message_type == "S" then
      return true
    end

    -- Add Order Message
    if sequenced_message_type == "A" then
      return true
    end

    -- Add Order Mpid Attribution Message
    if sequenced_message_type == "F" then
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

    -- Reg Sho Restriction Message
    if sequenced_message_type == "Y" then
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

-- Dissector Heuristic for Nasdaq PsxEquities TotalView Glimpse 5.0 (Tcp)
local function omi_nasdaq_psxequities_totalview_glimpse_v5_0_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_psxequities_totalview_glimpse_v5_0.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_psxequities_totalview_glimpse_v5_0.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_psxequities_totalview_glimpse_v5_0
  omi_nasdaq_psxequities_totalview_glimpse_v5_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq PsxEquities TotalView Glimpse 5.0 (Tcp)
local function omi_nasdaq_psxequities_totalview_glimpse_v5_0_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_psxequities_totalview_glimpse_v5_0.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_psxequities_totalview_glimpse_v5_0.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_psxequities_totalview_glimpse_v5_0
  omi_nasdaq_psxequities_totalview_glimpse_v5_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq PsxEquities TotalView Glimpse 5.0 (Tcp): apply the heuristic of the sender's connection role
local function omi_nasdaq_psxequities_totalview_glimpse_v5_0_tcp_heuristic(buffer, packet, parent)
  local role = nasdaq_psxequities_totalview_glimpse_v5_0.role(packet)
  local initiator = omi_nasdaq_psxequities_totalview_glimpse_v5_0_tcp_initiator_heuristic
  local acceptor = omi_nasdaq_psxequities_totalview_glimpse_v5_0_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nasdaq_psxequities_totalview_glimpse_v5_0.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nasdaq_psxequities_totalview_glimpse_v5_0.swap(packet)

  return false
end

-- Register Heuristics for Nasdaq PsxEquities TotalView Glimpse 5.0
omi_nasdaq_psxequities_totalview_glimpse_v5_0:register_heuristic("tcp", omi_nasdaq_psxequities_totalview_glimpse_v5_0_tcp_heuristic)

-- Register Nasdaq PsxEquities TotalView Glimpse 5.0 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nasdaq_psxequities_totalview_glimpse_v5_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 5.0
--   Date: Tuesday, October 1, 2013
--   Specification: PSXGLIMPSESpecification_5.0.pdf
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
