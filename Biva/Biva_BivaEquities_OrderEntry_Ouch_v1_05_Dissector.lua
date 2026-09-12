-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Biva BivaEquities OrderEntry Ouch 1.05 Protocol
local omi_biva_bivaequities_orderentry_ouch_v1_05 = Proto("Omi.Biva.BivaEquities.OrderEntry.Ouch.v1.05", "Biva BivaEquities OrderEntry Ouch 1.05")

-- Protocol table
local biva_bivaequities_orderentry_ouch_v1_05 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Biva BivaEquities OrderEntry Ouch 1.05 Fields
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.account_id = ProtoField.new("Account Id", "biva.bivaequities.orderentry.ouch.v1.05.accountid", ftypes.UINT32)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.account_type = ProtoField.new("Account Type", "biva.bivaequities.orderentry.ouch.v1.05.accounttype", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.broken_trade_reason = ProtoField.new("Broken Trade Reason", "biva.bivaequities.orderentry.ouch.v1.05.brokentradereason", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.canceled_reason = ProtoField.new("Canceled Reason", "biva.bivaequities.orderentry.ouch.v1.05.canceledreason", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.client_id = ProtoField.new("Client Id", "biva.bivaequities.orderentry.ouch.v1.05.clientid", ftypes.UINT32)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.client_packet_type = ProtoField.new("Packet Type", "biva.bivaequities.orderentry.ouch.v1.05.clientpackettype", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.counter_party_id = ProtoField.new("Counter Party Id", "biva.bivaequities.orderentry.ouch.v1.05.counterpartyid", ftypes.UINT32)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.event_code = ProtoField.new("Event Code", "biva.bivaequities.orderentry.ouch.v1.05.eventcode", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.executed_price = ProtoField.new("Executed Price", "biva.bivaequities.orderentry.ouch.v1.05.executedprice", ftypes.UINT32)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.executed_quantity = ProtoField.new("Executed Quantity", "biva.bivaequities.orderentry.ouch.v1.05.executedquantity", ftypes.UINT64)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.existing_order_token = ProtoField.new("Existing Order Token", "biva.bivaequities.orderentry.ouch.v1.05.existingordertoken", ftypes.UINT32)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.liquidity_flag = ProtoField.new("Liquidity Flag", "biva.bivaequities.orderentry.ouch.v1.05.liquidityflag", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.match_number = ProtoField.new("Match Number", "biva.bivaequities.orderentry.ouch.v1.05.matchnumber", ftypes.UINT64)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.minimum_quantity = ProtoField.new("Minimum Quantity", "biva.bivaequities.orderentry.ouch.v1.05.minimumquantity", ftypes.UINT64)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.order_reference_number = ProtoField.new("Order Reference Number", "biva.bivaequities.orderentry.ouch.v1.05.orderreferencenumber", ftypes.UINT64)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.order_state = ProtoField.new("Order State", "biva.bivaequities.orderentry.ouch.v1.05.orderstate", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.order_token = ProtoField.new("Order Token", "biva.bivaequities.orderentry.ouch.v1.05.ordertoken", ftypes.UINT32)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.order_verb = ProtoField.new("Order Verb", "biva.bivaequities.orderentry.ouch.v1.05.orderverb", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.orderbook = ProtoField.new("Orderbook", "biva.bivaequities.orderentry.ouch.v1.05.orderbook", ftypes.UINT32)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.packet_length = ProtoField.new("Packet Length", "biva.bivaequities.orderentry.ouch.v1.05.packetlength", ftypes.UINT16)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.password = ProtoField.new("Password", "biva.bivaequities.orderentry.ouch.v1.05.password", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.previous_order_token = ProtoField.new("Previous Order Token", "biva.bivaequities.orderentry.ouch.v1.05.previousordertoken", ftypes.UINT32)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.price = ProtoField.new("Price", "biva.bivaequities.orderentry.ouch.v1.05.price", ftypes.UINT32)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.quantity = ProtoField.new("Quantity", "biva.bivaequities.orderentry.ouch.v1.05.quantity", ftypes.UINT64)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "biva.bivaequities.orderentry.ouch.v1.05.rejectreasoncode", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.rejected_reason = ProtoField.new("Rejected Reason", "biva.bivaequities.orderentry.ouch.v1.05.rejectedreason", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.replacement_order_token = ProtoField.new("Replacement Order Token", "biva.bivaequities.orderentry.ouch.v1.05.replacementordertoken", ftypes.UINT32)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "biva.bivaequities.orderentry.ouch.v1.05.requestedsequencenumber", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.requested_session = ProtoField.new("Requested Session", "biva.bivaequities.orderentry.ouch.v1.05.requestedsession", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.sequence_number = ProtoField.new("Sequence Number", "biva.bivaequities.orderentry.ouch.v1.05.sequencenumber", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "biva.bivaequities.orderentry.ouch.v1.05.sequencedmessagetype", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.server_packet_type = ProtoField.new("Packet Type", "biva.bivaequities.orderentry.ouch.v1.05.serverpackettype", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.session = ProtoField.new("Session", "biva.bivaequities.orderentry.ouch.v1.05.session", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.text = ProtoField.new("Text", "biva.bivaequities.orderentry.ouch.v1.05.text", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.time_in_force = ProtoField.new("Time In Force", "biva.bivaequities.orderentry.ouch.v1.05.timeinforce", ftypes.UINT32)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.timestamp = ProtoField.new("Timestamp", "biva.bivaequities.orderentry.ouch.v1.05.timestamp", ftypes.UINT64)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "biva.bivaequities.orderentry.ouch.v1.05.unsequencedmessagetype", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.username = ProtoField.new("Username", "biva.bivaequities.orderentry.ouch.v1.05.username", ftypes.STRING)

-- Biva BivaEquities OrderEntry Ouch 1.05 Framing
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.client_packet = ProtoField.new("Packet", "biva.bivaequities.orderentry.ouch.v1.05.clientpacket", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.client_packet_header = ProtoField.new("Packet Header", "biva.bivaequities.orderentry.ouch.v1.05.clientpacketheader", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "biva.bivaequities.orderentry.ouch.v1.05.clientsoupbintcppacket", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.server_packet = ProtoField.new("Packet", "biva.bivaequities.orderentry.ouch.v1.05.serverpacket", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.server_packet_header = ProtoField.new("Packet Header", "biva.bivaequities.orderentry.ouch.v1.05.serverpacketheader", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "biva.bivaequities.orderentry.ouch.v1.05.serversoupbintcppacket", ftypes.STRING)

-- Biva BivaEquities OrderEntry 1.05 Application Messages
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.accepted_message = ProtoField.new("Accepted Message", "biva.bivaequities.orderentry.ouch.v1.05.acceptedmessage", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "biva.bivaequities.orderentry.ouch.v1.05.brokentrademessage", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.cancel_order_message = ProtoField.new("Cancel Order Message", "biva.bivaequities.orderentry.ouch.v1.05.cancelordermessage", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.canceled_message = ProtoField.new("Canceled Message", "biva.bivaequities.orderentry.ouch.v1.05.canceledmessage", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.enter_order_message = ProtoField.new("Enter Order Message", "biva.bivaequities.orderentry.ouch.v1.05.enterordermessage", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.executed_order_message = ProtoField.new("Executed Order Message", "biva.bivaequities.orderentry.ouch.v1.05.executedordermessage", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.rejected_order_message = ProtoField.new("Rejected Order Message", "biva.bivaequities.orderentry.ouch.v1.05.rejectedordermessage", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.replace_order_message = ProtoField.new("Replace Order Message", "biva.bivaequities.orderentry.ouch.v1.05.replaceordermessage", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.replaced_message = ProtoField.new("Replaced Message", "biva.bivaequities.orderentry.ouch.v1.05.replacedmessage", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.system_event_message = ProtoField.new("System Event Message", "biva.bivaequities.orderentry.ouch.v1.05.systemeventmessage", ftypes.STRING)

-- Biva BivaEquities OrderEntry 1.05 Session Messages
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.debug_packet = ProtoField.new("Debug Packet", "biva.bivaequities.orderentry.ouch.v1.05.debugpacket", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "biva.bivaequities.orderentry.ouch.v1.05.loginacceptedpacket", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "biva.bivaequities.orderentry.ouch.v1.05.loginrejectedpacket", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.login_request_packet = ProtoField.new("Login Request Packet", "biva.bivaequities.orderentry.ouch.v1.05.loginrequestpacket", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "biva.bivaequities.orderentry.ouch.v1.05.sequenceddatapacket", ftypes.STRING)
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "biva.bivaequities.orderentry.ouch.v1.05.unsequenceddatapacket", ftypes.STRING)

-- Biva BivaEquities OrderEntry Ouch 1.05 generated fields
omi_biva_bivaequities_orderentry_ouch_v1_05.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "biva.bivaequities.orderentry.ouch.v1.05.sequenceddatapacketsequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Biva BivaEquities OrderEntry Ouch 1.05 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
biva_bivaequities_orderentry_ouch_v1_05.timestamp_format = 2

-- Hours behind UTC (CST) for midnight calculation
biva_bivaequities_orderentry_ouch_v1_05.utc_offset_hours = 6


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Biva BivaEquities OrderEntry Ouch 1.05 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.session_messages = true
show.sequences = true

-- Register Biva BivaEquities OrderEntry Ouch 1.05 Show Options
local role_enum = {
  { 1, "Resolve from the conversation", 0 },
  { 2, "Initiator", 1 },
  { 3, "Acceptor", 2 }
}
omi_biva_bivaequities_orderentry_ouch_v1_05.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_biva_bivaequities_orderentry_ouch_v1_05.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_biva_bivaequities_orderentry_ouch_v1_05.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_biva_bivaequities_orderentry_ouch_v1_05.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_biva_bivaequities_orderentry_ouch_v1_05.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_biva_bivaequities_orderentry_ouch_v1_05.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_biva_bivaequities_orderentry_ouch_v1_05.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_biva_bivaequities_orderentry_ouch_v1_05.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_biva_bivaequities_orderentry_ouch_v1_05.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_biva_bivaequities_orderentry_ouch_v1_05.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 6, "Hours behind UTC (CST) for midnight calculation")

-- Handle changed preferences
function omi_biva_bivaequities_orderentry_ouch_v1_05.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_biva_bivaequities_orderentry_ouch_v1_05.prefs.show_application_messages then
    show.application_messages = omi_biva_bivaequities_orderentry_ouch_v1_05.prefs.show_application_messages
  end
  if show.headers ~= omi_biva_bivaequities_orderentry_ouch_v1_05.prefs.show_headers then
    show.headers = omi_biva_bivaequities_orderentry_ouch_v1_05.prefs.show_headers
  end
  if show.session_messages ~= omi_biva_bivaequities_orderentry_ouch_v1_05.prefs.show_session_messages then
    show.session_messages = omi_biva_bivaequities_orderentry_ouch_v1_05.prefs.show_session_messages
  end
  if show.structs ~= omi_biva_bivaequities_orderentry_ouch_v1_05.prefs.show_structs then
    show.structs = omi_biva_bivaequities_orderentry_ouch_v1_05.prefs.show_structs
  end
  if show.sequences ~= omi_biva_bivaequities_orderentry_ouch_v1_05.prefs.show_sequences then
    show.sequences = omi_biva_bivaequities_orderentry_ouch_v1_05.prefs.show_sequences
  end
  if biva_bivaequities_orderentry_ouch_v1_05.timestamp_format ~= omi_biva_bivaequities_orderentry_ouch_v1_05.prefs.timestamp_format then
    biva_bivaequities_orderentry_ouch_v1_05.timestamp_format = omi_biva_bivaequities_orderentry_ouch_v1_05.prefs.timestamp_format
  end
  if biva_bivaequities_orderentry_ouch_v1_05.utc_offset_hours ~= omi_biva_bivaequities_orderentry_ouch_v1_05.prefs.utc_offset_hours then
    biva_bivaequities_orderentry_ouch_v1_05.utc_offset_hours = omi_biva_bivaequities_orderentry_ouch_v1_05.prefs.utc_offset_hours
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
biva_bivaequities_orderentry_ouch_v1_05.conversation = {}
biva_bivaequities_orderentry_ouch_v1_05.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
biva_bivaequities_orderentry_ouch_v1_05.stream_frame = nil
biva_bivaequities_orderentry_ouch_v1_05.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
biva_bivaequities_orderentry_ouch_v1_05.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
biva_bivaequities_orderentry_ouch_v1_05.conversation.data = function(packet)
  local key = biva_bivaequities_orderentry_ouch_v1_05.conversation.key(packet)
  local data = biva_bivaequities_orderentry_ouch_v1_05.conversation.flows[key]
  if data == nil then
    data = { sequence_number = { last = nil, frames = {} }, sequence = { next = nil, frames = {} } }
    biva_bivaequities_orderentry_ouch_v1_05.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
biva_bivaequities_orderentry_ouch_v1_05.conversation.current = nil


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
-- Biva BivaEquities OrderEntry Ouch 1.05 Fields
-----------------------------------------------------------------------

-- Account Id
biva_bivaequities_orderentry_ouch_v1_05.account_id = {}

-- Size: Account Id
biva_bivaequities_orderentry_ouch_v1_05.account_id.size = 4

-- Display: Account Id
biva_bivaequities_orderentry_ouch_v1_05.account_id.display = function(value)
  return "Account Id: "..value
end

-- Dissect: Account Id
biva_bivaequities_orderentry_ouch_v1_05.account_id.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.account_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_orderentry_ouch_v1_05.account_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.account_id, range, value, display)

  return offset + length, value
end

-- Account Type
biva_bivaequities_orderentry_ouch_v1_05.account_type = {}

-- Size: Account Type
biva_bivaequities_orderentry_ouch_v1_05.account_type.size = 1

-- Display: Account Type
biva_bivaequities_orderentry_ouch_v1_05.account_type.display = function(value)
  if value == "C" then
    return "Account Type: Client (C)"
  end
  if value == "H" then
    return "Account Type: House (H)"
  end
  if value == "O" then
    return "Account Type: Other (O)"
  end
  if value == "Y" then
    return "Account Type: Strategy (Y)"
  end
  if value == "M" then
    return "Account Type: Market Maker (M)"
  end
  if value == "S" then
    return "Account Type: Stabilisation (S)"
  end

  return "Account Type: Unknown("..value..")"
end

-- Dissect: Account Type
biva_bivaequities_orderentry_ouch_v1_05.account_type.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.account_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_orderentry_ouch_v1_05.account_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.account_type, range, value, display)

  return offset + length, value
end

-- Broken Trade Reason
biva_bivaequities_orderentry_ouch_v1_05.broken_trade_reason = {}

-- Size: Broken Trade Reason
biva_bivaequities_orderentry_ouch_v1_05.broken_trade_reason.size = 1

-- Display: Broken Trade Reason
biva_bivaequities_orderentry_ouch_v1_05.broken_trade_reason.display = function(value)
  if value == "C" then
    return "Broken Trade Reason: Consent Both Parties Agreed To Break The Trade (C)"
  end
  if value == "S" then
    return "Broken Trade Reason: Supervisory Broken By Biva Market Control (S)"
  end

  return "Broken Trade Reason: Unknown("..value..")"
end

-- Dissect: Broken Trade Reason
biva_bivaequities_orderentry_ouch_v1_05.broken_trade_reason.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.broken_trade_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_orderentry_ouch_v1_05.broken_trade_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.broken_trade_reason, range, value, display)

  return offset + length, value
end

-- Canceled Reason
biva_bivaequities_orderentry_ouch_v1_05.canceled_reason = {}

-- Size: Canceled Reason
biva_bivaequities_orderentry_ouch_v1_05.canceled_reason.size = 1

-- Display: Canceled Reason
biva_bivaequities_orderentry_ouch_v1_05.canceled_reason.display = function(value)
  if value == "U" then
    return "Canceled Reason: User Requested Cancel (U)"
  end
  if value == "I" then
    return "Canceled Reason: Immediate Order Expired (I)"
  end
  if value == "T" then
    return "Canceled Reason: Timeout Session Or Day Order Expired (T)"
  end
  if value == "S" then
    return "Canceled Reason: Supervisory (S)"
  end
  if value == "L" then
    return "Canceled Reason: User Logged Off (L)"
  end
  if value == "Z" then
    return "Canceled Reason: Invalid Quantity Or Quantity Exceeds Maximum Limit (Z)"
  end
  if value == "R" then
    return "Canceled Reason: Order Not Allowed At This Time (R)"
  end
  if value == "X" then
    return "Canceled Reason: Invalid Price (X)"
  end
  if value == "N" then
    return "Canceled Reason: Invalid Minimum Quantity (N)"
  end
  if value == "Y" then
    return "Canceled Reason: Invalid Order Type (Y)"
  end
  if value == "F" then
    return "Canceled Reason: Flow Control In Place For User (F)"
  end
  if value == "W" then
    return "Canceled Reason: Unknown (W)"
  end

  return "Canceled Reason: Unknown("..value..")"
end

-- Dissect: Canceled Reason
biva_bivaequities_orderentry_ouch_v1_05.canceled_reason.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.canceled_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_orderentry_ouch_v1_05.canceled_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.canceled_reason, range, value, display)

  return offset + length, value
end

-- Client Id
biva_bivaequities_orderentry_ouch_v1_05.client_id = {}

-- Size: Client Id
biva_bivaequities_orderentry_ouch_v1_05.client_id.size = 4

-- Display: Client Id
biva_bivaequities_orderentry_ouch_v1_05.client_id.display = function(value)
  return "Client Id: "..value
end

-- Dissect: Client Id
biva_bivaequities_orderentry_ouch_v1_05.client_id.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.client_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_orderentry_ouch_v1_05.client_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.client_id, range, value, display)

  return offset + length, value
end

-- Client Packet Type
biva_bivaequities_orderentry_ouch_v1_05.client_packet_type = {}

-- Size: Client Packet Type
biva_bivaequities_orderentry_ouch_v1_05.client_packet_type.size = 1

-- Display: Client Packet Type
biva_bivaequities_orderentry_ouch_v1_05.client_packet_type.display = function(value)
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
biva_bivaequities_orderentry_ouch_v1_05.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_orderentry_ouch_v1_05.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Counter Party Id
biva_bivaequities_orderentry_ouch_v1_05.counter_party_id = {}

-- Size: Counter Party Id
biva_bivaequities_orderentry_ouch_v1_05.counter_party_id.size = 4

-- Display: Counter Party Id
biva_bivaequities_orderentry_ouch_v1_05.counter_party_id.display = function(value)
  return "Counter Party Id: "..value
end

-- Dissect: Counter Party Id
biva_bivaequities_orderentry_ouch_v1_05.counter_party_id.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.counter_party_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_orderentry_ouch_v1_05.counter_party_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.counter_party_id, range, value, display)

  return offset + length, value
end

-- Event Code
biva_bivaequities_orderentry_ouch_v1_05.event_code = {}

-- Size: Event Code
biva_bivaequities_orderentry_ouch_v1_05.event_code.size = 1

-- Display: Event Code
biva_bivaequities_orderentry_ouch_v1_05.event_code.display = function(value)
  if value == "S" then
    return "Event Code: Start Of Day (S)"
  end
  if value == "E" then
    return "Event Code: End Of Day (E)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
biva_bivaequities_orderentry_ouch_v1_05.event_code.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_orderentry_ouch_v1_05.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executed Price
biva_bivaequities_orderentry_ouch_v1_05.executed_price = {}

-- Size: Executed Price
biva_bivaequities_orderentry_ouch_v1_05.executed_price.size = 4

-- Display: Executed Price
biva_bivaequities_orderentry_ouch_v1_05.executed_price.display = function(value)
  return "Executed Price: "..value
end

-- Dissect: Executed Price
biva_bivaequities_orderentry_ouch_v1_05.executed_price.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.executed_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_orderentry_ouch_v1_05.executed_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.executed_price, range, value, display)

  return offset + length, value
end

-- Executed Quantity
biva_bivaequities_orderentry_ouch_v1_05.executed_quantity = {}

-- Size: Executed Quantity
biva_bivaequities_orderentry_ouch_v1_05.executed_quantity.size = 8

-- Display: Executed Quantity
biva_bivaequities_orderentry_ouch_v1_05.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
biva_bivaequities_orderentry_ouch_v1_05.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = biva_bivaequities_orderentry_ouch_v1_05.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Existing Order Token
biva_bivaequities_orderentry_ouch_v1_05.existing_order_token = {}

-- Size: Existing Order Token
biva_bivaequities_orderentry_ouch_v1_05.existing_order_token.size = 4

-- Display: Existing Order Token
biva_bivaequities_orderentry_ouch_v1_05.existing_order_token.display = function(value)
  return "Existing Order Token: "..value
end

-- Dissect: Existing Order Token
biva_bivaequities_orderentry_ouch_v1_05.existing_order_token.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.existing_order_token.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_orderentry_ouch_v1_05.existing_order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.existing_order_token, range, value, display)

  return offset + length, value
end

-- Liquidity Flag
biva_bivaequities_orderentry_ouch_v1_05.liquidity_flag = {}

-- Size: Liquidity Flag
biva_bivaequities_orderentry_ouch_v1_05.liquidity_flag.size = 1

-- Display: Liquidity Flag
biva_bivaequities_orderentry_ouch_v1_05.liquidity_flag.display = function(value)
  if value == "A" then
    return "Liquidity Flag: Added For The Passive Firm (A)"
  end
  if value == "R" then
    return "Liquidity Flag: Removed For The Aggressor (R)"
  end
  if value == "U" then
    return "Liquidity Flag: Uncross For Auction Executions (U)"
  end

  return "Liquidity Flag: Unknown("..value..")"
end

-- Dissect: Liquidity Flag
biva_bivaequities_orderentry_ouch_v1_05.liquidity_flag.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.liquidity_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_orderentry_ouch_v1_05.liquidity_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.liquidity_flag, range, value, display)

  return offset + length, value
end

-- Match Number
biva_bivaequities_orderentry_ouch_v1_05.match_number = {}

-- Size: Match Number
biva_bivaequities_orderentry_ouch_v1_05.match_number.size = 8

-- Display: Match Number
biva_bivaequities_orderentry_ouch_v1_05.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
biva_bivaequities_orderentry_ouch_v1_05.match_number.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.match_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = biva_bivaequities_orderentry_ouch_v1_05.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.match_number, range, value, display)

  return offset + length, value
end

-- Minimum Quantity
biva_bivaequities_orderentry_ouch_v1_05.minimum_quantity = {}

-- Size: Minimum Quantity
biva_bivaequities_orderentry_ouch_v1_05.minimum_quantity.size = 8

-- Display: Minimum Quantity
biva_bivaequities_orderentry_ouch_v1_05.minimum_quantity.display = function(value)
  return "Minimum Quantity: "..value
end

-- Dissect: Minimum Quantity
biva_bivaequities_orderentry_ouch_v1_05.minimum_quantity.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.minimum_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = biva_bivaequities_orderentry_ouch_v1_05.minimum_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.minimum_quantity, range, value, display)

  return offset + length, value
end

-- Order Reference Number
biva_bivaequities_orderentry_ouch_v1_05.order_reference_number = {}

-- Size: Order Reference Number
biva_bivaequities_orderentry_ouch_v1_05.order_reference_number.size = 8

-- Display: Order Reference Number
biva_bivaequities_orderentry_ouch_v1_05.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
biva_bivaequities_orderentry_ouch_v1_05.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = biva_bivaequities_orderentry_ouch_v1_05.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Order State
biva_bivaequities_orderentry_ouch_v1_05.order_state = {}

-- Size: Order State
biva_bivaequities_orderentry_ouch_v1_05.order_state.size = 1

-- Display: Order State
biva_bivaequities_orderentry_ouch_v1_05.order_state.display = function(value)
  if value == "L" then
    return "Order State: Live (L)"
  end
  if value == "D" then
    return "Order State: Dead (D)"
  end

  return "Order State: Unknown("..value..")"
end

-- Dissect: Order State
biva_bivaequities_orderentry_ouch_v1_05.order_state.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.order_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_orderentry_ouch_v1_05.order_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.order_state, range, value, display)

  return offset + length, value
end

-- Order Token
biva_bivaequities_orderentry_ouch_v1_05.order_token = {}

-- Size: Order Token
biva_bivaequities_orderentry_ouch_v1_05.order_token.size = 4

-- Display: Order Token
biva_bivaequities_orderentry_ouch_v1_05.order_token.display = function(value)
  return "Order Token: "..value
end

-- Dissect: Order Token
biva_bivaequities_orderentry_ouch_v1_05.order_token.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.order_token.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_orderentry_ouch_v1_05.order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.order_token, range, value, display)

  return offset + length, value
end

-- Order Verb
biva_bivaequities_orderentry_ouch_v1_05.order_verb = {}

-- Size: Order Verb
biva_bivaequities_orderentry_ouch_v1_05.order_verb.size = 1

-- Display: Order Verb
biva_bivaequities_orderentry_ouch_v1_05.order_verb.display = function(value)
  if value == "B" then
    return "Order Verb: Buy (B)"
  end
  if value == "S" then
    return "Order Verb: Sell (S)"
  end
  if value == "T" then
    return "Order Verb: Short Sell (T)"
  end

  return "Order Verb: Unknown("..value..")"
end

-- Dissect: Order Verb
biva_bivaequities_orderentry_ouch_v1_05.order_verb.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.order_verb.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_orderentry_ouch_v1_05.order_verb.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.order_verb, range, value, display)

  return offset + length, value
end

-- Orderbook
biva_bivaequities_orderentry_ouch_v1_05.orderbook = {}

-- Size: Orderbook
biva_bivaequities_orderentry_ouch_v1_05.orderbook.size = 4

-- Display: Orderbook
biva_bivaequities_orderentry_ouch_v1_05.orderbook.display = function(value)
  return "Orderbook: "..value
end

-- Dissect: Orderbook
biva_bivaequities_orderentry_ouch_v1_05.orderbook.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.orderbook.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_orderentry_ouch_v1_05.orderbook.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.orderbook, range, value, display)

  return offset + length, value
end

-- Packet Length
biva_bivaequities_orderentry_ouch_v1_05.packet_length = {}

-- Size: Packet Length
biva_bivaequities_orderentry_ouch_v1_05.packet_length.size = 2

-- Display: Packet Length
biva_bivaequities_orderentry_ouch_v1_05.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
biva_bivaequities_orderentry_ouch_v1_05.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_orderentry_ouch_v1_05.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Password
biva_bivaequities_orderentry_ouch_v1_05.password = {}

-- Size: Password
biva_bivaequities_orderentry_ouch_v1_05.password.size = 10

-- Display: Password
biva_bivaequities_orderentry_ouch_v1_05.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
biva_bivaequities_orderentry_ouch_v1_05.password.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = biva_bivaequities_orderentry_ouch_v1_05.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.password, range, value, display)

  return offset + length, value
end

-- Previous Order Token
biva_bivaequities_orderentry_ouch_v1_05.previous_order_token = {}

-- Size: Previous Order Token
biva_bivaequities_orderentry_ouch_v1_05.previous_order_token.size = 4

-- Display: Previous Order Token
biva_bivaequities_orderentry_ouch_v1_05.previous_order_token.display = function(value)
  return "Previous Order Token: "..value
end

-- Dissect: Previous Order Token
biva_bivaequities_orderentry_ouch_v1_05.previous_order_token.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.previous_order_token.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_orderentry_ouch_v1_05.previous_order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.previous_order_token, range, value, display)

  return offset + length, value
end

-- Price
biva_bivaequities_orderentry_ouch_v1_05.price = {}

-- Size: Price
biva_bivaequities_orderentry_ouch_v1_05.price.size = 4

-- Display: Price
biva_bivaequities_orderentry_ouch_v1_05.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
biva_bivaequities_orderentry_ouch_v1_05.price.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_orderentry_ouch_v1_05.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
biva_bivaequities_orderentry_ouch_v1_05.quantity = {}

-- Size: Quantity
biva_bivaequities_orderentry_ouch_v1_05.quantity.size = 8

-- Display: Quantity
biva_bivaequities_orderentry_ouch_v1_05.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
biva_bivaequities_orderentry_ouch_v1_05.quantity.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = biva_bivaequities_orderentry_ouch_v1_05.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
biva_bivaequities_orderentry_ouch_v1_05.reject_reason_code = {}

-- Size: Reject Reason Code
biva_bivaequities_orderentry_ouch_v1_05.reject_reason_code.size = 1

-- Display: Reject Reason Code
biva_bivaequities_orderentry_ouch_v1_05.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
biva_bivaequities_orderentry_ouch_v1_05.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_orderentry_ouch_v1_05.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Rejected Reason
biva_bivaequities_orderentry_ouch_v1_05.rejected_reason = {}

-- Size: Rejected Reason
biva_bivaequities_orderentry_ouch_v1_05.rejected_reason.size = 1

-- Display: Rejected Reason
biva_bivaequities_orderentry_ouch_v1_05.rejected_reason.display = function(value)
  if value == "H" then
    return "Rejected Reason: Secboard Instrument Board Or Market Not Tradeable (H)"
  end
  if value == "Z" then
    return "Rejected Reason: Invalid Quantity Or Quantity Exceeds Maximum Limit (Z)"
  end
  if value == "S" then
    return "Rejected Reason: Invalid Orderbook Identifier (S)"
  end
  if value == "R" then
    return "Rejected Reason: Order Not Allowed At This Time (R)"
  end
  if value == "X" then
    return "Rejected Reason: Invalid Price (X)"
  end
  if value == "N" then
    return "Rejected Reason: Invalid Minimum Quantity (N)"
  end
  if value == "Y" then
    return "Rejected Reason: Invalid Order Type (Y)"
  end
  if value == "F" then
    return "Rejected Reason: Flow Control In Place For User (F)"
  end
  if value == "W" then
    return "Rejected Reason: Unknown (W)"
  end

  return "Rejected Reason: Unknown("..value..")"
end

-- Dissect: Rejected Reason
biva_bivaequities_orderentry_ouch_v1_05.rejected_reason.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.rejected_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_orderentry_ouch_v1_05.rejected_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.rejected_reason, range, value, display)

  return offset + length, value
end

-- Replacement Order Token
biva_bivaequities_orderentry_ouch_v1_05.replacement_order_token = {}

-- Size: Replacement Order Token
biva_bivaequities_orderentry_ouch_v1_05.replacement_order_token.size = 4

-- Display: Replacement Order Token
biva_bivaequities_orderentry_ouch_v1_05.replacement_order_token.display = function(value)
  return "Replacement Order Token: "..value
end

-- Dissect: Replacement Order Token
biva_bivaequities_orderentry_ouch_v1_05.replacement_order_token.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.replacement_order_token.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_orderentry_ouch_v1_05.replacement_order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.replacement_order_token, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
biva_bivaequities_orderentry_ouch_v1_05.requested_sequence_number = {}

-- Size: Requested Sequence Number
biva_bivaequities_orderentry_ouch_v1_05.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
biva_bivaequities_orderentry_ouch_v1_05.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
biva_bivaequities_orderentry_ouch_v1_05.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = biva_bivaequities_orderentry_ouch_v1_05.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
biva_bivaequities_orderentry_ouch_v1_05.requested_session = {}

-- Size: Requested Session
biva_bivaequities_orderentry_ouch_v1_05.requested_session.size = 10

-- Display: Requested Session
biva_bivaequities_orderentry_ouch_v1_05.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
biva_bivaequities_orderentry_ouch_v1_05.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.requested_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = biva_bivaequities_orderentry_ouch_v1_05.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Sequence Number
biva_bivaequities_orderentry_ouch_v1_05.sequence_number = {}

-- Size: Sequence Number
biva_bivaequities_orderentry_ouch_v1_05.sequence_number.size = 20

-- Display: Sequence Number
biva_bivaequities_orderentry_ouch_v1_05.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
biva_bivaequities_orderentry_ouch_v1_05.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = biva_bivaequities_orderentry_ouch_v1_05.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
biva_bivaequities_orderentry_ouch_v1_05.sequenced_message_type = {}

-- Size: Sequenced Message Type
biva_bivaequities_orderentry_ouch_v1_05.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
biva_bivaequities_orderentry_ouch_v1_05.sequenced_message_type.display = function(value)
  if value == "S" then
    return "Sequenced Message Type: System Event Message (S)"
  end
  if value == "A" then
    return "Sequenced Message Type: Accepted Message (A)"
  end
  if value == "U" then
    return "Sequenced Message Type: Replaced Message (U)"
  end
  if value == "C" then
    return "Sequenced Message Type: Canceled Message (C)"
  end
  if value == "E" then
    return "Sequenced Message Type: Executed Order Message (E)"
  end
  if value == "B" then
    return "Sequenced Message Type: Broken Trade Message (B)"
  end
  if value == "J" then
    return "Sequenced Message Type: Rejected Order Message (J)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
biva_bivaequities_orderentry_ouch_v1_05.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_orderentry_ouch_v1_05.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
biva_bivaequities_orderentry_ouch_v1_05.server_packet_type = {}

-- Size: Server Packet Type
biva_bivaequities_orderentry_ouch_v1_05.server_packet_type.size = 1

-- Display: Server Packet Type
biva_bivaequities_orderentry_ouch_v1_05.server_packet_type.display = function(value)
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
biva_bivaequities_orderentry_ouch_v1_05.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_orderentry_ouch_v1_05.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Session
biva_bivaequities_orderentry_ouch_v1_05.session = {}

-- Size: Session
biva_bivaequities_orderentry_ouch_v1_05.session.size = 10

-- Display: Session
biva_bivaequities_orderentry_ouch_v1_05.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
biva_bivaequities_orderentry_ouch_v1_05.session.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = biva_bivaequities_orderentry_ouch_v1_05.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.session, range, value, display)

  return offset + length, value
end

-- Text
biva_bivaequities_orderentry_ouch_v1_05.text = {}

-- Size: Text
biva_bivaequities_orderentry_ouch_v1_05.text.size = 1

-- Display: Text
biva_bivaequities_orderentry_ouch_v1_05.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
biva_bivaequities_orderentry_ouch_v1_05.text.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_orderentry_ouch_v1_05.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.text, range, value, display)

  return offset + length, value
end

-- Time In Force
biva_bivaequities_orderentry_ouch_v1_05.time_in_force = {}

-- Size: Time In Force
biva_bivaequities_orderentry_ouch_v1_05.time_in_force.size = 4

-- Display: Time In Force
biva_bivaequities_orderentry_ouch_v1_05.time_in_force.display = function(value)
  if value == 0 then
    return "Time In Force: Immediate (0)"
  end
  if value == 99997 then
    return "Time In Force: Session (99997)"
  end
  if value == 99998 then
    return "Time In Force: Day (99998)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
biva_bivaequities_orderentry_ouch_v1_05.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.time_in_force.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_orderentry_ouch_v1_05.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Timestamp
biva_bivaequities_orderentry_ouch_v1_05.timestamp = {}

-- Size: Timestamp
biva_bivaequities_orderentry_ouch_v1_05.timestamp.size = 8

-- Display: Timestamp
biva_bivaequities_orderentry_ouch_v1_05.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if biva_bivaequities_orderentry_ouch_v1_05.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if biva_bivaequities_orderentry_ouch_v1_05.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = biva_bivaequities_orderentry_ouch_v1_05.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
biva_bivaequities_orderentry_ouch_v1_05.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = biva_bivaequities_orderentry_ouch_v1_05.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
biva_bivaequities_orderentry_ouch_v1_05.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
biva_bivaequities_orderentry_ouch_v1_05.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
biva_bivaequities_orderentry_ouch_v1_05.unsequenced_message_type.display = function(value)
  if value == "O" then
    return "Unsequenced Message Type: Enter Order Message (O)"
  end
  if value == "U" then
    return "Unsequenced Message Type: Replace Order Message (U)"
  end
  if value == "X" then
    return "Unsequenced Message Type: Cancel Order Message (X)"
  end

  return "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
biva_bivaequities_orderentry_ouch_v1_05.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_orderentry_ouch_v1_05.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
biva_bivaequities_orderentry_ouch_v1_05.username = {}

-- Size: Username
biva_bivaequities_orderentry_ouch_v1_05.username.size = 6

-- Display: Username
biva_bivaequities_orderentry_ouch_v1_05.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
biva_bivaequities_orderentry_ouch_v1_05.username.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_orderentry_ouch_v1_05.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = biva_bivaequities_orderentry_ouch_v1_05.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Biva BivaEquities OrderEntry Ouch 1.05
-----------------------------------------------------------------------

-- End Of Session
biva_bivaequities_orderentry_ouch_v1_05.end_of_session = {}

-- Display: End Of Session
biva_bivaequities_orderentry_ouch_v1_05.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
biva_bivaequities_orderentry_ouch_v1_05.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = biva_bivaequities_orderentry_ouch_v1_05.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
biva_bivaequities_orderentry_ouch_v1_05.server_heartbeat = {}

-- Display: Server Heartbeat
biva_bivaequities_orderentry_ouch_v1_05.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
biva_bivaequities_orderentry_ouch_v1_05.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = biva_bivaequities_orderentry_ouch_v1_05.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Rejected Order Message
biva_bivaequities_orderentry_ouch_v1_05.rejected_order_message = {}

-- Size: Rejected Order Message
biva_bivaequities_orderentry_ouch_v1_05.rejected_order_message.size =
  biva_bivaequities_orderentry_ouch_v1_05.timestamp.size + 
  biva_bivaequities_orderentry_ouch_v1_05.order_token.size + 
  biva_bivaequities_orderentry_ouch_v1_05.rejected_reason.size

-- Display: Rejected Order Message
biva_bivaequities_orderentry_ouch_v1_05.rejected_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rejected Order Message
biva_bivaequities_orderentry_ouch_v1_05.rejected_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = biva_bivaequities_orderentry_ouch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: Token
  index, order_token = biva_bivaequities_orderentry_ouch_v1_05.order_token.dissect(buffer, index, packet, parent)

  -- Rejected Reason: Alpha
  index, rejected_reason = biva_bivaequities_orderentry_ouch_v1_05.rejected_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rejected Order Message
biva_bivaequities_orderentry_ouch_v1_05.rejected_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.rejected_order_message, buffer(offset, 0))
    local index = biva_bivaequities_orderentry_ouch_v1_05.rejected_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_orderentry_ouch_v1_05.rejected_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_orderentry_ouch_v1_05.rejected_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Message
biva_bivaequities_orderentry_ouch_v1_05.broken_trade_message = {}

-- Size: Broken Trade Message
biva_bivaequities_orderentry_ouch_v1_05.broken_trade_message.size =
  biva_bivaequities_orderentry_ouch_v1_05.timestamp.size + 
  biva_bivaequities_orderentry_ouch_v1_05.order_token.size + 
  biva_bivaequities_orderentry_ouch_v1_05.match_number.size + 
  biva_bivaequities_orderentry_ouch_v1_05.broken_trade_reason.size

-- Display: Broken Trade Message
biva_bivaequities_orderentry_ouch_v1_05.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
biva_bivaequities_orderentry_ouch_v1_05.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = biva_bivaequities_orderentry_ouch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: Token
  index, order_token = biva_bivaequities_orderentry_ouch_v1_05.order_token.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = biva_bivaequities_orderentry_ouch_v1_05.match_number.dissect(buffer, index, packet, parent)

  -- Broken Trade Reason: Alpha
  index, broken_trade_reason = biva_bivaequities_orderentry_ouch_v1_05.broken_trade_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
biva_bivaequities_orderentry_ouch_v1_05.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.broken_trade_message, buffer(offset, 0))
    local index = biva_bivaequities_orderentry_ouch_v1_05.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_orderentry_ouch_v1_05.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_orderentry_ouch_v1_05.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Executed Order Message
biva_bivaequities_orderentry_ouch_v1_05.executed_order_message = {}

-- Size: Executed Order Message
biva_bivaequities_orderentry_ouch_v1_05.executed_order_message.size =
  biva_bivaequities_orderentry_ouch_v1_05.timestamp.size + 
  biva_bivaequities_orderentry_ouch_v1_05.order_token.size + 
  biva_bivaequities_orderentry_ouch_v1_05.executed_quantity.size + 
  biva_bivaequities_orderentry_ouch_v1_05.executed_price.size + 
  biva_bivaequities_orderentry_ouch_v1_05.liquidity_flag.size + 
  biva_bivaequities_orderentry_ouch_v1_05.match_number.size + 
  biva_bivaequities_orderentry_ouch_v1_05.counter_party_id.size

-- Display: Executed Order Message
biva_bivaequities_orderentry_ouch_v1_05.executed_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Executed Order Message
biva_bivaequities_orderentry_ouch_v1_05.executed_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = biva_bivaequities_orderentry_ouch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: Token
  index, order_token = biva_bivaequities_orderentry_ouch_v1_05.order_token.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Integer
  index, executed_quantity = biva_bivaequities_orderentry_ouch_v1_05.executed_quantity.dissect(buffer, index, packet, parent)

  -- Executed Price: Integer
  index, executed_price = biva_bivaequities_orderentry_ouch_v1_05.executed_price.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: Alpha
  index, liquidity_flag = biva_bivaequities_orderentry_ouch_v1_05.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = biva_bivaequities_orderentry_ouch_v1_05.match_number.dissect(buffer, index, packet, parent)

  -- Counter Party Id: Integer
  index, counter_party_id = biva_bivaequities_orderentry_ouch_v1_05.counter_party_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Executed Order Message
biva_bivaequities_orderentry_ouch_v1_05.executed_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.executed_order_message, buffer(offset, 0))
    local index = biva_bivaequities_orderentry_ouch_v1_05.executed_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_orderentry_ouch_v1_05.executed_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_orderentry_ouch_v1_05.executed_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Canceled Message
biva_bivaequities_orderentry_ouch_v1_05.canceled_message = {}

-- Size: Canceled Message
biva_bivaequities_orderentry_ouch_v1_05.canceled_message.size =
  biva_bivaequities_orderentry_ouch_v1_05.timestamp.size + 
  biva_bivaequities_orderentry_ouch_v1_05.order_token.size + 
  biva_bivaequities_orderentry_ouch_v1_05.quantity.size + 
  biva_bivaequities_orderentry_ouch_v1_05.canceled_reason.size

-- Display: Canceled Message
biva_bivaequities_orderentry_ouch_v1_05.canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Canceled Message
biva_bivaequities_orderentry_ouch_v1_05.canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = biva_bivaequities_orderentry_ouch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: Token
  index, order_token = biva_bivaequities_orderentry_ouch_v1_05.order_token.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = biva_bivaequities_orderentry_ouch_v1_05.quantity.dissect(buffer, index, packet, parent)

  -- Canceled Reason: Alpha
  index, canceled_reason = biva_bivaequities_orderentry_ouch_v1_05.canceled_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Canceled Message
biva_bivaequities_orderentry_ouch_v1_05.canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.canceled_message, buffer(offset, 0))
    local index = biva_bivaequities_orderentry_ouch_v1_05.canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_orderentry_ouch_v1_05.canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_orderentry_ouch_v1_05.canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Replaced Message
biva_bivaequities_orderentry_ouch_v1_05.replaced_message = {}

-- Size: Replaced Message
biva_bivaequities_orderentry_ouch_v1_05.replaced_message.size =
  biva_bivaequities_orderentry_ouch_v1_05.timestamp.size + 
  biva_bivaequities_orderentry_ouch_v1_05.replacement_order_token.size + 
  biva_bivaequities_orderentry_ouch_v1_05.order_verb.size + 
  biva_bivaequities_orderentry_ouch_v1_05.quantity.size + 
  biva_bivaequities_orderentry_ouch_v1_05.orderbook.size + 
  biva_bivaequities_orderentry_ouch_v1_05.price.size + 
  biva_bivaequities_orderentry_ouch_v1_05.order_reference_number.size + 
  biva_bivaequities_orderentry_ouch_v1_05.order_state.size + 
  biva_bivaequities_orderentry_ouch_v1_05.previous_order_token.size

-- Display: Replaced Message
biva_bivaequities_orderentry_ouch_v1_05.replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replaced Message
biva_bivaequities_orderentry_ouch_v1_05.replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = biva_bivaequities_orderentry_ouch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Replacement Order Token: Token
  index, replacement_order_token = biva_bivaequities_orderentry_ouch_v1_05.replacement_order_token.dissect(buffer, index, packet, parent)

  -- Order Verb: Alpha
  index, order_verb = biva_bivaequities_orderentry_ouch_v1_05.order_verb.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = biva_bivaequities_orderentry_ouch_v1_05.quantity.dissect(buffer, index, packet, parent)

  -- Orderbook: Integer
  index, orderbook = biva_bivaequities_orderentry_ouch_v1_05.orderbook.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = biva_bivaequities_orderentry_ouch_v1_05.price.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = biva_bivaequities_orderentry_ouch_v1_05.order_reference_number.dissect(buffer, index, packet, parent)

  -- Order State: Alpha
  index, order_state = biva_bivaequities_orderentry_ouch_v1_05.order_state.dissect(buffer, index, packet, parent)

  -- Previous Order Token: Token
  index, previous_order_token = biva_bivaequities_orderentry_ouch_v1_05.previous_order_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replaced Message
biva_bivaequities_orderentry_ouch_v1_05.replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.replaced_message, buffer(offset, 0))
    local index = biva_bivaequities_orderentry_ouch_v1_05.replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_orderentry_ouch_v1_05.replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_orderentry_ouch_v1_05.replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Accepted Message
biva_bivaequities_orderentry_ouch_v1_05.accepted_message = {}

-- Size: Accepted Message
biva_bivaequities_orderentry_ouch_v1_05.accepted_message.size =
  biva_bivaequities_orderentry_ouch_v1_05.timestamp.size + 
  biva_bivaequities_orderentry_ouch_v1_05.order_token.size + 
  biva_bivaequities_orderentry_ouch_v1_05.account_type.size + 
  biva_bivaequities_orderentry_ouch_v1_05.account_id.size + 
  biva_bivaequities_orderentry_ouch_v1_05.order_verb.size + 
  biva_bivaequities_orderentry_ouch_v1_05.quantity.size + 
  biva_bivaequities_orderentry_ouch_v1_05.orderbook.size + 
  biva_bivaequities_orderentry_ouch_v1_05.price.size + 
  biva_bivaequities_orderentry_ouch_v1_05.time_in_force.size + 
  biva_bivaequities_orderentry_ouch_v1_05.client_id.size + 
  biva_bivaequities_orderentry_ouch_v1_05.order_reference_number.size + 
  biva_bivaequities_orderentry_ouch_v1_05.minimum_quantity.size + 
  biva_bivaequities_orderentry_ouch_v1_05.order_state.size

-- Display: Accepted Message
biva_bivaequities_orderentry_ouch_v1_05.accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Accepted Message
biva_bivaequities_orderentry_ouch_v1_05.accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = biva_bivaequities_orderentry_ouch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: Token
  index, order_token = biva_bivaequities_orderentry_ouch_v1_05.order_token.dissect(buffer, index, packet, parent)

  -- Account Type: Alpha
  index, account_type = biva_bivaequities_orderentry_ouch_v1_05.account_type.dissect(buffer, index, packet, parent)

  -- Account Id: Integer
  index, account_id = biva_bivaequities_orderentry_ouch_v1_05.account_id.dissect(buffer, index, packet, parent)

  -- Order Verb: Alpha
  index, order_verb = biva_bivaequities_orderentry_ouch_v1_05.order_verb.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = biva_bivaequities_orderentry_ouch_v1_05.quantity.dissect(buffer, index, packet, parent)

  -- Orderbook: Integer
  index, orderbook = biva_bivaequities_orderentry_ouch_v1_05.orderbook.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = biva_bivaequities_orderentry_ouch_v1_05.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Integer
  index, time_in_force = biva_bivaequities_orderentry_ouch_v1_05.time_in_force.dissect(buffer, index, packet, parent)

  -- Client Id: Integer
  index, client_id = biva_bivaequities_orderentry_ouch_v1_05.client_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = biva_bivaequities_orderentry_ouch_v1_05.order_reference_number.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: Integer
  index, minimum_quantity = biva_bivaequities_orderentry_ouch_v1_05.minimum_quantity.dissect(buffer, index, packet, parent)

  -- Order State: Alpha
  index, order_state = biva_bivaequities_orderentry_ouch_v1_05.order_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Accepted Message
biva_bivaequities_orderentry_ouch_v1_05.accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.accepted_message, buffer(offset, 0))
    local index = biva_bivaequities_orderentry_ouch_v1_05.accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_orderentry_ouch_v1_05.accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_orderentry_ouch_v1_05.accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
biva_bivaequities_orderentry_ouch_v1_05.system_event_message = {}

-- Size: System Event Message
biva_bivaequities_orderentry_ouch_v1_05.system_event_message.size =
  biva_bivaequities_orderentry_ouch_v1_05.timestamp.size + 
  biva_bivaequities_orderentry_ouch_v1_05.event_code.size

-- Display: System Event Message
biva_bivaequities_orderentry_ouch_v1_05.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
biva_bivaequities_orderentry_ouch_v1_05.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = biva_bivaequities_orderentry_ouch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = biva_bivaequities_orderentry_ouch_v1_05.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
biva_bivaequities_orderentry_ouch_v1_05.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.system_event_message, buffer(offset, 0))
    local index = biva_bivaequities_orderentry_ouch_v1_05.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_orderentry_ouch_v1_05.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_orderentry_ouch_v1_05.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
biva_bivaequities_orderentry_ouch_v1_05.sequenced_message = {}

-- Dissect: Sequenced Message
biva_bivaequities_orderentry_ouch_v1_05.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect System Event Message
  if sequenced_message_type == "S" then
    return biva_bivaequities_orderentry_ouch_v1_05.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Accepted Message
  if sequenced_message_type == "A" then
    return biva_bivaequities_orderentry_ouch_v1_05.accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replaced Message
  if sequenced_message_type == "U" then
    return biva_bivaequities_orderentry_ouch_v1_05.replaced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Canceled Message
  if sequenced_message_type == "C" then
    return biva_bivaequities_orderentry_ouch_v1_05.canceled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Executed Order Message
  if sequenced_message_type == "E" then
    return biva_bivaequities_orderentry_ouch_v1_05.executed_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Message
  if sequenced_message_type == "B" then
    return biva_bivaequities_orderentry_ouch_v1_05.broken_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Rejected Order Message
  if sequenced_message_type == "J" then
    return biva_bivaequities_orderentry_ouch_v1_05.rejected_order_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
biva_bivaequities_orderentry_ouch_v1_05.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
biva_bivaequities_orderentry_ouch_v1_05.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
biva_bivaequities_orderentry_ouch_v1_05.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
biva_bivaequities_orderentry_ouch_v1_05.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = biva_bivaequities_orderentry_ouch_v1_05.conversation.current
  if flow ~= nil then
    local memo = flow.sequence.frames[packet.number]
    if not packet.visited then
      if flow.sequence.next == nil then
        flow.sequence.next = tonumber(biva_bivaequities_orderentry_ouch_v1_05.sequence_number.current)
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
          local sequence = parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if biva_bivaequities_orderentry_ouch_v1_05.stream_frame ~= packet.number or biva_bivaequities_orderentry_ouch_v1_05.stream_occurrence >= #memo then
          biva_bivaequities_orderentry_ouch_v1_05.stream_frame = packet.number
          biva_bivaequities_orderentry_ouch_v1_05.stream_occurrence = 0
        end
        biva_bivaequities_orderentry_ouch_v1_05.stream_occurrence = biva_bivaequities_orderentry_ouch_v1_05.stream_occurrence + 1
        local value = memo[biva_bivaequities_orderentry_ouch_v1_05.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 7 values
  index, sequenced_message_type = biva_bivaequities_orderentry_ouch_v1_05.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 7 branches
  index = biva_bivaequities_orderentry_ouch_v1_05.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
biva_bivaequities_orderentry_ouch_v1_05.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = biva_bivaequities_orderentry_ouch_v1_05.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.sequenced_data_packet, buffer(offset, 0))
    local current = biva_bivaequities_orderentry_ouch_v1_05.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = biva_bivaequities_orderentry_ouch_v1_05.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    biva_bivaequities_orderentry_ouch_v1_05.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
biva_bivaequities_orderentry_ouch_v1_05.login_rejected_packet = {}

-- Size: Login Rejected Packet
biva_bivaequities_orderentry_ouch_v1_05.login_rejected_packet.size =
  biva_bivaequities_orderentry_ouch_v1_05.reject_reason_code.size

-- Display: Login Rejected Packet
biva_bivaequities_orderentry_ouch_v1_05.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
biva_bivaequities_orderentry_ouch_v1_05.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = biva_bivaequities_orderentry_ouch_v1_05.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
biva_bivaequities_orderentry_ouch_v1_05.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.login_rejected_packet, buffer(offset, 0))
    local index = biva_bivaequities_orderentry_ouch_v1_05.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_orderentry_ouch_v1_05.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_orderentry_ouch_v1_05.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
biva_bivaequities_orderentry_ouch_v1_05.login_accepted_packet = {}

-- Size: Login Accepted Packet
biva_bivaequities_orderentry_ouch_v1_05.login_accepted_packet.size =
  biva_bivaequities_orderentry_ouch_v1_05.session.size + 
  biva_bivaequities_orderentry_ouch_v1_05.sequence_number.size

-- Display: Login Accepted Packet
biva_bivaequities_orderentry_ouch_v1_05.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
biva_bivaequities_orderentry_ouch_v1_05.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = biva_bivaequities_orderentry_ouch_v1_05.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 20 Byte Ascii String
  index, sequence_number = biva_bivaequities_orderentry_ouch_v1_05.sequence_number.dissect(buffer, index, packet, parent)

  -- Store Sequence Number Value
  biva_bivaequities_orderentry_ouch_v1_05.sequence_number.current = sequence_number

  if not packet.visited then
    biva_bivaequities_orderentry_ouch_v1_05.conversation.current.sequence_number.last = sequence_number
  end

  return index
end

-- Dissect: Login Accepted Packet
biva_bivaequities_orderentry_ouch_v1_05.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.login_accepted_packet, buffer(offset, 0))
    local index = biva_bivaequities_orderentry_ouch_v1_05.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_orderentry_ouch_v1_05.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_orderentry_ouch_v1_05.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
biva_bivaequities_orderentry_ouch_v1_05.debug_packet = {}

-- Size: Debug Packet
biva_bivaequities_orderentry_ouch_v1_05.debug_packet.size =
  biva_bivaequities_orderentry_ouch_v1_05.text.size

-- Display: Debug Packet
biva_bivaequities_orderentry_ouch_v1_05.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
biva_bivaequities_orderentry_ouch_v1_05.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = biva_bivaequities_orderentry_ouch_v1_05.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
biva_bivaequities_orderentry_ouch_v1_05.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.debug_packet, buffer(offset, 0))
    local index = biva_bivaequities_orderentry_ouch_v1_05.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_orderentry_ouch_v1_05.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_orderentry_ouch_v1_05.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
biva_bivaequities_orderentry_ouch_v1_05.server_payload = {}

-- Dissect: Server Payload
biva_bivaequities_orderentry_ouch_v1_05.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  -- Dissect Debug Packet
  if server_packet_type == "+" then
    return biva_bivaequities_orderentry_ouch_v1_05.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if server_packet_type == "A" then
    return biva_bivaequities_orderentry_ouch_v1_05.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if server_packet_type == "J" then
    return biva_bivaequities_orderentry_ouch_v1_05.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if server_packet_type == "S" then
    return biva_bivaequities_orderentry_ouch_v1_05.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat
  if server_packet_type == "H" then
    return biva_bivaequities_orderentry_ouch_v1_05.server_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if server_packet_type == "Z" then
    return biva_bivaequities_orderentry_ouch_v1_05.end_of_session.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
biva_bivaequities_orderentry_ouch_v1_05.server_packet_header = {}

-- Size: Server Packet Header
biva_bivaequities_orderentry_ouch_v1_05.server_packet_header.size =
  biva_bivaequities_orderentry_ouch_v1_05.packet_length.size + 
  biva_bivaequities_orderentry_ouch_v1_05.server_packet_type.size

-- Display: Server Packet Header
biva_bivaequities_orderentry_ouch_v1_05.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
biva_bivaequities_orderentry_ouch_v1_05.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = biva_bivaequities_orderentry_ouch_v1_05.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = biva_bivaequities_orderentry_ouch_v1_05.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
biva_bivaequities_orderentry_ouch_v1_05.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.server_packet_header, buffer(offset, 0))
    local index = biva_bivaequities_orderentry_ouch_v1_05.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_orderentry_ouch_v1_05.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_orderentry_ouch_v1_05.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
biva_bivaequities_orderentry_ouch_v1_05.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
biva_bivaequities_orderentry_ouch_v1_05.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
biva_bivaequities_orderentry_ouch_v1_05.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = biva_bivaequities_orderentry_ouch_v1_05.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = biva_bivaequities_orderentry_ouch_v1_05.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
biva_bivaequities_orderentry_ouch_v1_05.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = biva_bivaequities_orderentry_ouch_v1_05.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = biva_bivaequities_orderentry_ouch_v1_05.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    biva_bivaequities_orderentry_ouch_v1_05.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < biva_bivaequities_orderentry_ouch_v1_05.server_packet_header.size then
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
biva_bivaequities_orderentry_ouch_v1_05.server_packet = {}

-- Verify required size of Tcp packet
biva_bivaequities_orderentry_ouch_v1_05.server_packet.requiredsize = function(buffer)
  return buffer:len() >= biva_bivaequities_orderentry_ouch_v1_05.server_packet_header.size
end

-- Dissect Server Packet
biva_bivaequities_orderentry_ouch_v1_05.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = biva_bivaequities_orderentry_ouch_v1_05.conversation.data(packet)
  if not packet.visited then
    data.sequence_number.frames[packet.number] = data.sequence_number.last
  end
  biva_bivaequities_orderentry_ouch_v1_05.sequence_number.current = data.sequence_number.frames[packet.number]
  biva_bivaequities_orderentry_ouch_v1_05.conversation.current = data

  local index = 0

  -- Dependency for Server Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Server Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_soup_bin_tcp_packet = server_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = biva_bivaequities_orderentry_ouch_v1_05.server_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_server_soup_bin_tcp_packet)
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
biva_bivaequities_orderentry_ouch_v1_05.logout_request = {}

-- Display: Logout Request
biva_bivaequities_orderentry_ouch_v1_05.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
biva_bivaequities_orderentry_ouch_v1_05.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = biva_bivaequities_orderentry_ouch_v1_05.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
biva_bivaequities_orderentry_ouch_v1_05.client_heartbeat = {}

-- Display: Client Heartbeat
biva_bivaequities_orderentry_ouch_v1_05.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
biva_bivaequities_orderentry_ouch_v1_05.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = biva_bivaequities_orderentry_ouch_v1_05.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Cancel Order Message
biva_bivaequities_orderentry_ouch_v1_05.cancel_order_message = {}

-- Size: Cancel Order Message
biva_bivaequities_orderentry_ouch_v1_05.cancel_order_message.size =
  biva_bivaequities_orderentry_ouch_v1_05.order_token.size

-- Display: Cancel Order Message
biva_bivaequities_orderentry_ouch_v1_05.cancel_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Message
biva_bivaequities_orderentry_ouch_v1_05.cancel_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: Token
  index, order_token = biva_bivaequities_orderentry_ouch_v1_05.order_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Message
biva_bivaequities_orderentry_ouch_v1_05.cancel_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.cancel_order_message, buffer(offset, 0))
    local index = biva_bivaequities_orderentry_ouch_v1_05.cancel_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_orderentry_ouch_v1_05.cancel_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_orderentry_ouch_v1_05.cancel_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Replace Order Message
biva_bivaequities_orderentry_ouch_v1_05.replace_order_message = {}

-- Size: Replace Order Message
biva_bivaequities_orderentry_ouch_v1_05.replace_order_message.size =
  biva_bivaequities_orderentry_ouch_v1_05.existing_order_token.size + 
  biva_bivaequities_orderentry_ouch_v1_05.replacement_order_token.size + 
  biva_bivaequities_orderentry_ouch_v1_05.quantity.size + 
  biva_bivaequities_orderentry_ouch_v1_05.price.size

-- Display: Replace Order Message
biva_bivaequities_orderentry_ouch_v1_05.replace_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replace Order Message
biva_bivaequities_orderentry_ouch_v1_05.replace_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Existing Order Token: Token
  index, existing_order_token = biva_bivaequities_orderentry_ouch_v1_05.existing_order_token.dissect(buffer, index, packet, parent)

  -- Replacement Order Token: Token
  index, replacement_order_token = biva_bivaequities_orderentry_ouch_v1_05.replacement_order_token.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = biva_bivaequities_orderentry_ouch_v1_05.quantity.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = biva_bivaequities_orderentry_ouch_v1_05.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replace Order Message
biva_bivaequities_orderentry_ouch_v1_05.replace_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.replace_order_message, buffer(offset, 0))
    local index = biva_bivaequities_orderentry_ouch_v1_05.replace_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_orderentry_ouch_v1_05.replace_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_orderentry_ouch_v1_05.replace_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Enter Order Message
biva_bivaequities_orderentry_ouch_v1_05.enter_order_message = {}

-- Size: Enter Order Message
biva_bivaequities_orderentry_ouch_v1_05.enter_order_message.size =
  biva_bivaequities_orderentry_ouch_v1_05.order_token.size + 
  biva_bivaequities_orderentry_ouch_v1_05.account_type.size + 
  biva_bivaequities_orderentry_ouch_v1_05.account_id.size + 
  biva_bivaequities_orderentry_ouch_v1_05.order_verb.size + 
  biva_bivaequities_orderentry_ouch_v1_05.quantity.size + 
  biva_bivaequities_orderentry_ouch_v1_05.orderbook.size + 
  biva_bivaequities_orderentry_ouch_v1_05.price.size + 
  biva_bivaequities_orderentry_ouch_v1_05.time_in_force.size + 
  biva_bivaequities_orderentry_ouch_v1_05.client_id.size + 
  biva_bivaequities_orderentry_ouch_v1_05.minimum_quantity.size

-- Display: Enter Order Message
biva_bivaequities_orderentry_ouch_v1_05.enter_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enter Order Message
biva_bivaequities_orderentry_ouch_v1_05.enter_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: Token
  index, order_token = biva_bivaequities_orderentry_ouch_v1_05.order_token.dissect(buffer, index, packet, parent)

  -- Account Type: Alpha
  index, account_type = biva_bivaequities_orderentry_ouch_v1_05.account_type.dissect(buffer, index, packet, parent)

  -- Account Id: Integer
  index, account_id = biva_bivaequities_orderentry_ouch_v1_05.account_id.dissect(buffer, index, packet, parent)

  -- Order Verb: Alpha
  index, order_verb = biva_bivaequities_orderentry_ouch_v1_05.order_verb.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = biva_bivaequities_orderentry_ouch_v1_05.quantity.dissect(buffer, index, packet, parent)

  -- Orderbook: Integer
  index, orderbook = biva_bivaequities_orderentry_ouch_v1_05.orderbook.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = biva_bivaequities_orderentry_ouch_v1_05.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Integer
  index, time_in_force = biva_bivaequities_orderentry_ouch_v1_05.time_in_force.dissect(buffer, index, packet, parent)

  -- Client Id: Integer
  index, client_id = biva_bivaequities_orderentry_ouch_v1_05.client_id.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: Integer
  index, minimum_quantity = biva_bivaequities_orderentry_ouch_v1_05.minimum_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enter Order Message
biva_bivaequities_orderentry_ouch_v1_05.enter_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.enter_order_message, buffer(offset, 0))
    local index = biva_bivaequities_orderentry_ouch_v1_05.enter_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_orderentry_ouch_v1_05.enter_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_orderentry_ouch_v1_05.enter_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
biva_bivaequities_orderentry_ouch_v1_05.unsequenced_message = {}

-- Dissect: Unsequenced Message
biva_bivaequities_orderentry_ouch_v1_05.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  -- Dissect Enter Order Message
  if unsequenced_message_type == "O" then
    return biva_bivaequities_orderentry_ouch_v1_05.enter_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replace Order Message
  if unsequenced_message_type == "U" then
    return biva_bivaequities_orderentry_ouch_v1_05.replace_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Message
  if unsequenced_message_type == "X" then
    return biva_bivaequities_orderentry_ouch_v1_05.cancel_order_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
biva_bivaequities_orderentry_ouch_v1_05.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
biva_bivaequities_orderentry_ouch_v1_05.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
biva_bivaequities_orderentry_ouch_v1_05.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
biva_bivaequities_orderentry_ouch_v1_05.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String Enum with 3 values
  index, unsequenced_message_type = biva_bivaequities_orderentry_ouch_v1_05.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 3 branches
  index = biva_bivaequities_orderentry_ouch_v1_05.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
biva_bivaequities_orderentry_ouch_v1_05.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = biva_bivaequities_orderentry_ouch_v1_05.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = biva_bivaequities_orderentry_ouch_v1_05.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = biva_bivaequities_orderentry_ouch_v1_05.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    biva_bivaequities_orderentry_ouch_v1_05.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
biva_bivaequities_orderentry_ouch_v1_05.login_request_packet = {}

-- Size: Login Request Packet
biva_bivaequities_orderentry_ouch_v1_05.login_request_packet.size =
  biva_bivaequities_orderentry_ouch_v1_05.username.size + 
  biva_bivaequities_orderentry_ouch_v1_05.password.size + 
  biva_bivaequities_orderentry_ouch_v1_05.requested_session.size + 
  biva_bivaequities_orderentry_ouch_v1_05.requested_sequence_number.size

-- Display: Login Request Packet
biva_bivaequities_orderentry_ouch_v1_05.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
biva_bivaequities_orderentry_ouch_v1_05.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = biva_bivaequities_orderentry_ouch_v1_05.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = biva_bivaequities_orderentry_ouch_v1_05.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = biva_bivaequities_orderentry_ouch_v1_05.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = biva_bivaequities_orderentry_ouch_v1_05.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
biva_bivaequities_orderentry_ouch_v1_05.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.login_request_packet, buffer(offset, 0))
    local index = biva_bivaequities_orderentry_ouch_v1_05.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_orderentry_ouch_v1_05.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_orderentry_ouch_v1_05.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
biva_bivaequities_orderentry_ouch_v1_05.client_payload = {}

-- Dissect: Client Payload
biva_bivaequities_orderentry_ouch_v1_05.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  -- Dissect Debug Packet
  if client_packet_type == "+" then
    return biva_bivaequities_orderentry_ouch_v1_05.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if client_packet_type == "L" then
    return biva_bivaequities_orderentry_ouch_v1_05.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if client_packet_type == "U" then
    return biva_bivaequities_orderentry_ouch_v1_05.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat
  if client_packet_type == "R" then
    return biva_bivaequities_orderentry_ouch_v1_05.client_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if client_packet_type == "O" then
    return biva_bivaequities_orderentry_ouch_v1_05.logout_request.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
biva_bivaequities_orderentry_ouch_v1_05.client_packet_header = {}

-- Size: Client Packet Header
biva_bivaequities_orderentry_ouch_v1_05.client_packet_header.size =
  biva_bivaequities_orderentry_ouch_v1_05.packet_length.size + 
  biva_bivaequities_orderentry_ouch_v1_05.client_packet_type.size

-- Display: Client Packet Header
biva_bivaequities_orderentry_ouch_v1_05.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
biva_bivaequities_orderentry_ouch_v1_05.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = biva_bivaequities_orderentry_ouch_v1_05.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = biva_bivaequities_orderentry_ouch_v1_05.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
biva_bivaequities_orderentry_ouch_v1_05.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.client_packet_header, buffer(offset, 0))
    local index = biva_bivaequities_orderentry_ouch_v1_05.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_orderentry_ouch_v1_05.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_orderentry_ouch_v1_05.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
biva_bivaequities_orderentry_ouch_v1_05.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
biva_bivaequities_orderentry_ouch_v1_05.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
biva_bivaequities_orderentry_ouch_v1_05.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = biva_bivaequities_orderentry_ouch_v1_05.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = biva_bivaequities_orderentry_ouch_v1_05.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
biva_bivaequities_orderentry_ouch_v1_05.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = biva_bivaequities_orderentry_ouch_v1_05.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = biva_bivaequities_orderentry_ouch_v1_05.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    biva_bivaequities_orderentry_ouch_v1_05.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < biva_bivaequities_orderentry_ouch_v1_05.client_packet_header.size then
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
biva_bivaequities_orderentry_ouch_v1_05.client_packet = {}

-- Verify required size of Tcp packet
biva_bivaequities_orderentry_ouch_v1_05.client_packet.requiredsize = function(buffer)
  return buffer:len() >= biva_bivaequities_orderentry_ouch_v1_05.client_packet_header.size
end

-- Dissect Client Packet
biva_bivaequities_orderentry_ouch_v1_05.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Client Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_soup_bin_tcp_packet = client_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = biva_bivaequities_orderentry_ouch_v1_05.client_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_client_soup_bin_tcp_packet)
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
function omi_biva_bivaequities_orderentry_ouch_v1_05.init()
  biva_bivaequities_orderentry_ouch_v1_05.sequence_number.current = nil
  biva_bivaequities_orderentry_ouch_v1_05.conversation.current = nil
  biva_bivaequities_orderentry_ouch_v1_05.conversation.flows = {}
end

-- Connection roles for Biva BivaEquities OrderEntry Ouch 1.05: Client is the initiator, Server is the acceptor
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
biva_bivaequities_orderentry_ouch_v1_05.role = function(packet)
  if omi_biva_bivaequities_orderentry_ouch_v1_05.prefs.assume_role == 1 then
    return "initiator"
  end
  if omi_biva_bivaequities_orderentry_ouch_v1_05.prefs.assume_role == 2 then
    return "acceptor"
  end
  local port = omi_biva_bivaequities_orderentry_ouch_v1_05.prefs.acceptor_port
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
  if omi_biva_bivaequities_orderentry_ouch_v1_05.prefs.swap_sides then
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
biva_bivaequities_orderentry_ouch_v1_05.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Biva BivaEquities OrderEntry Ouch 1.05
function omi_biva_bivaequities_orderentry_ouch_v1_05.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_biva_bivaequities_orderentry_ouch_v1_05.name

  -- Dissect protocol
  local protocol = parent:add(omi_biva_bivaequities_orderentry_ouch_v1_05, buffer(), omi_biva_bivaequities_orderentry_ouch_v1_05.description, "("..buffer:len().." Bytes)")
  local role = biva_bivaequities_orderentry_ouch_v1_05.role(packet)
  if role == "initiator" then
    return biva_bivaequities_orderentry_ouch_v1_05.client_packet.dissect(buffer, packet, protocol)
  end
  return biva_bivaequities_orderentry_ouch_v1_05.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
biva_bivaequities_orderentry_ouch_v1_05.client_packet.fingerprint = function(buffer)
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
biva_bivaequities_orderentry_ouch_v1_05.server_packet.fingerprint = function(buffer)
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

-- Dissector Heuristic for Biva BivaEquities OrderEntry Ouch 1.05 (Tcp)
local function omi_biva_bivaequities_orderentry_ouch_v1_05_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not biva_bivaequities_orderentry_ouch_v1_05.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not biva_bivaequities_orderentry_ouch_v1_05.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_biva_bivaequities_orderentry_ouch_v1_05
  omi_biva_bivaequities_orderentry_ouch_v1_05.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Biva BivaEquities OrderEntry Ouch 1.05 (Tcp)
local function omi_biva_bivaequities_orderentry_ouch_v1_05_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not biva_bivaequities_orderentry_ouch_v1_05.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not biva_bivaequities_orderentry_ouch_v1_05.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_biva_bivaequities_orderentry_ouch_v1_05
  omi_biva_bivaequities_orderentry_ouch_v1_05.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Biva BivaEquities OrderEntry Ouch 1.05 (Tcp): apply the heuristic of the sender's connection role
local function omi_biva_bivaequities_orderentry_ouch_v1_05_tcp_heuristic(buffer, packet, parent)
  local role = biva_bivaequities_orderentry_ouch_v1_05.role(packet)
  local first, second = omi_biva_bivaequities_orderentry_ouch_v1_05_tcp_initiator_heuristic, omi_biva_bivaequities_orderentry_ouch_v1_05_tcp_acceptor_heuristic
  if role == "acceptor" then
    first, second = second, first
  end
  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  biva_bivaequities_orderentry_ouch_v1_05.swap(packet)
  if second(buffer, packet, parent) then
    return true
  end
  biva_bivaequities_orderentry_ouch_v1_05.swap(packet)

  return false
end

-- Register Heuristics for Biva BivaEquities OrderEntry Ouch 1.05
omi_biva_bivaequities_orderentry_ouch_v1_05:register_heuristic("tcp", omi_biva_bivaequities_orderentry_ouch_v1_05_tcp_heuristic)
-- Register Biva BivaEquities OrderEntry Ouch 1.05 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_biva_bivaequities_orderentry_ouch_v1_05)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Bolsa Institucional de Valores
--   Version: 1.05
--   Date: Friday, January 1, 2016
--   Specification: BIVA_External_OUCH_Specification_v1.05.pdf
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
