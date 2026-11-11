-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NsmEquities TotalView Glimpse 3.1.f Protocol
local omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f = Proto("Omi.Nasdaq.NsmEquities.TotalView.Glimpse.v3.1.f", "Nasdaq NsmEquities TotalView Glimpse 3.1.f")

-- Protocol table
local nasdaq_nsmequities_totalview_glimpse_v3_1_f = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NsmEquities TotalView Glimpse 3.1.f Fields
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.acceptedsequencenumber", ftypes.UINT64, nil, nil, nil, "The sequence number in ASCII of the next Sequenced Message to be sent. Left padded with spaces.")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.accepted_session = ProtoField.new("Accepted Session", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.acceptedsession", ftypes.STRING, nil, nil, nil, "The session ID of the session that is now logged into. Left padded with spaces.")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.attribution = ProtoField.new("Attribution", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.attribution", ftypes.STRING, nil, nil, nil, "NASDAQ market participant identifier associated with the entered order.")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.buysellindicator", ftypes.STRING, nil, nil, nil, "The type of order being added.")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.client_packet_type = ProtoField.new("Client Packet Type", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.clientpackettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.display = ProtoField.new("Display", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.display", ftypes.STRING, nil, nil, nil, "Denotes which feeds the order is displayable on.")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.event_code = ProtoField.new("Event Code", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.eventcode", ftypes.STRING, nil, nil, nil, "See System Event Codes below.")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.itch_sequence_number = ProtoField.new("Itch Sequence Number", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.itchsequencenumber", ftypes.UINT64, nil, nil, nil, "TotalView-ITCH 3.1f sequence number when the GLIMPSE 3.1f snapshot was taken.")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.message_type = ProtoField.new("Message Type", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.messagetype", ftypes.STRING, nil, nil, nil, "Code identifying this message type")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.millisecond = ProtoField.new("Millisecond", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.millisecond", ftypes.UINT16, nil, nil, nil, "Number of milliseconds since last second.")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.orderreferencenumber", ftypes.UINT64, nil, nil, nil, "The unique reference number assigned to the new order.")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.password = ProtoField.new("Password", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.password", ftypes.STRING, nil, nil, nil, "Login password")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.price = ProtoField.new("Price", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.price", ftypes.UINT64, nil, nil, nil, "Refer to Data Types for field processing notes.")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.rejectreasoncode", ftypes.STRING, nil, nil, nil, "Login Reject Codes")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.requestedsequencenumber", ftypes.UINT64, nil, nil, nil, "Specifies the next sequence number in ASCII the client wants to receive upon connection, or 0 to start receiving the most recently generated message.")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.requestedsession", ftypes.STRING, nil, nil, nil, "Specifies the session the client would like to log into, or all blanks to log into the currently active session.")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.second = ProtoField.new("Second", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.second", ftypes.UINT24, nil, nil, nil, "Number of second since midnight.")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.sequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Sequenced Data Packets act as an envelope to carry the actual sequenced data messages that are transferred from the server to the client. Each Sequenced Data Packet carries one message from the higher-lever protocol.")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.server_packet_type = ProtoField.new("Server Packet Type", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.serverpackettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.shares = ProtoField.new("Shares", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.shares", ftypes.UINT24, nil, nil, nil, "The total number of shares associated with the order being added to the book.")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.soup_lf = ProtoField.new("Soup Lf", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.souplf", ftypes.INT8, nil, nil, nil, "Terminating line feed character")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.stock = ProtoField.new("Stock", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.stock", ftypes.STRING, nil, nil, nil, "The security symbol for which the order is being added.")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.text = ProtoField.new("Text", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.text", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.unsequencedmessage", ftypes.BYTES, nil, nil, nil, "Raw unsequenced message bytes")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.username = ProtoField.new("Username", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.username", ftypes.STRING, nil, nil, nil, "Session username")

-- Nasdaq NsmEquities TotalView Glimpse 3.1.f Framing
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.client_frame = ProtoField.new("Client Frame", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.clientframe", ftypes.STRING, nil, nil, nil, "One SoupTcp packet sent by the client, closed by a line feed")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.client_packet = ProtoField.new("Client Packet", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.clientpacket", ftypes.STRING, nil, nil, nil, "SoupTcp Packet")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.client_packet_header = ProtoField.new("Client Packet Header", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.clientpacketheader", ftypes.STRING, nil, nil, nil, "SoupTcp Packet Header sent by the client")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.sequenced_message_header = ProtoField.new("Sequenced Message Header", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.sequencedmessageheader", ftypes.STRING, nil, nil, nil, "Time and type carried ahead of every sequenced Itch message")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.server_frame = ProtoField.new("Server Frame", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.serverframe", ftypes.STRING, nil, nil, nil, "One SoupTcp packet sent by the server, closed by a line feed")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.server_packet = ProtoField.new("Server Packet", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.serverpacket", ftypes.STRING, nil, nil, nil, "SoupTcp Packet")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.server_packet_header = ProtoField.new("Server Packet Header", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.serverpacketheader", ftypes.STRING, nil, nil, nil, "SoupTcp Packet Header sent by the server")

-- Nasdaq NsmEquities TotalView 3.1.f Application Messages
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.add_order_message = ProtoField.new("Add Order Message", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.addordermessage", ftypes.STRING, nil, nil, nil, "Add Order - No MPID Attribution Message. This message will be generated for unattributed orders accepted by the NASDAQ system.")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.add_order_mpid_attribution_message = ProtoField.new("Add Order Mpid Attribution Message", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.addordermpidattributionmessage", ftypes.STRING, nil, nil, nil, "Add Order - MPID Attribution Message. This message will be generated for attributed orders and quotations accepted by the NASDAQ system.")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.end_of_snapshot_message = ProtoField.new("End Of Snapshot Message", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.endofsnapshotmessage", ftypes.STRING, nil, nil, nil, "The Snapshot message reflects the NASDAQ TotalView-ITCH 3.1f sequence number at the time that the GLIMPSE 3.1f spin was requested.")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.milliseconds_message = ProtoField.new("Milliseconds Message", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.millisecondsmessage", ftypes.STRING, nil, nil, nil, "This message is sent every millisecond for which at least one NASDAQ GLIMPSE 3.1f / NASDAQ TotalView-ITCH 3.1f message is being generated.")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.seconds_message = ProtoField.new("Seconds Message", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.secondsmessage", ftypes.STRING, nil, nil, nil, "This message is sent every second for which at least one NASDAQ GLIMPSE 3.1f / NASDAQ TotalView-ITCH 3.1f message is being generated.")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.systemeventmessage", ftypes.STRING, nil, nil, nil, "NASDAQ GLIMPSE product is designed to support the same system event messages as the NASDAQ TotalView-ITCH feed. On GLIMPSE, NASDAQ will send out system event messages for those events that occurred up to the time of the GLIMPSE snapshot request.")

-- Nasdaq NsmEquities TotalView 3.1.f Session Messages
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.debugpacket", ftypes.STRING, nil, nil, nil, "Debug packets are intended to provide human readable text that may aid in debugging problems.")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.loginacceptedpacket", ftypes.STRING, nil, nil, nil, "The SoupTcp server sends a Login Accepted Packet in response to receiving a valid Login Request from the client.")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.loginrejectedpacket", ftypes.STRING, nil, nil, nil, "The SoupTcp server sends this packet in response to an invalid Login Request Packet from the client.")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.loginrequestpacket", ftypes.STRING, nil, nil, nil, "The SoupTcp client must send a Login Request Packet immediately upon establishing a new TCP/IP socket connection to the server.")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.nsmequities.totalview.glimpse.v3.1.f.unsequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Unsequenced Data Packets act as an envelope to carry the actual data messages that are transferred from the client to the server. These messages are not sequenced and may be lost in the event of a socket failure.")

-- Nasdaq NsmEquities TotalView Glimpse 3.1.f Expert Info
nasdaq_nsmequities_totalview_glimpse_v3_1_f.experts = {}
nasdaq_nsmequities_totalview_glimpse_v3_1_f.experts.not_a_number = ProtoExpert.new("nasdaq.nsmequities.totalview.glimpse.v3.1.f.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.experts = { nasdaq_nsmequities_totalview_glimpse_v3_1_f.experts.not_a_number }

-----------------------------------------------------------------------
-- Nasdaq NsmEquities TotalView Glimpse 3.1.f Formatting
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

-- Nasdaq NsmEquities TotalView Glimpse 3.1.f Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.session_messages = true

-- Register Nasdaq NsmEquities TotalView Glimpse 3.1.f Show Options
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")

-- Handle changed preferences
function omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.prefs.show_headers then
    show.headers = omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.prefs.show_headers
  end
  if show.session_messages ~= omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.prefs.show_session_messages
  end
  if show.structs ~= omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.prefs.show_structs then
    show.structs = omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.prefs.show_structs
  end
end


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
  -- UInt64.new reads a leading zero as octal, so "0045296" would read as 298
  local significant = str:match("^%s*0*(%d+)%s*$")

  if significant == nil then
    return nil
  end

  local value = UInt64.new(significant)

  -- UInt64.new stops at its maximum rather than failing, so a wider run is read back
  if #significant > 19 and tostring(value) ~= significant then
    return nil
  end

  return value
end


-----------------------------------------------------------------------
-- Nasdaq NsmEquities TotalView Glimpse 3.1.f Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
nasdaq_nsmequities_totalview_glimpse_v3_1_f.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
nasdaq_nsmequities_totalview_glimpse_v3_1_f.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
nasdaq_nsmequities_totalview_glimpse_v3_1_f.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
nasdaq_nsmequities_totalview_glimpse_v3_1_f.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_glimpse_v3_1_f.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.accepted_sequence_number, range, value, "Accepted Sequence Number: Not Applicable")
    item:add_proto_expert_info(nasdaq_nsmequities_totalview_glimpse_v3_1_f.experts.not_a_number, "Accepted Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
nasdaq_nsmequities_totalview_glimpse_v3_1_f.accepted_session = {}

-- Size: Accepted Session
nasdaq_nsmequities_totalview_glimpse_v3_1_f.accepted_session.size = 10

-- Display: Accepted Session
nasdaq_nsmequities_totalview_glimpse_v3_1_f.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
nasdaq_nsmequities_totalview_glimpse_v3_1_f.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_glimpse_v3_1_f.accepted_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Attribution
nasdaq_nsmequities_totalview_glimpse_v3_1_f.attribution = {}

-- Size: Attribution
nasdaq_nsmequities_totalview_glimpse_v3_1_f.attribution.size = 4

-- Display: Attribution
nasdaq_nsmequities_totalview_glimpse_v3_1_f.attribution.display = function(value)
  return "Attribution: "..value
end

-- Dissect: Attribution
nasdaq_nsmequities_totalview_glimpse_v3_1_f.attribution.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_glimpse_v3_1_f.attribution.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.attribution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.attribution, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
nasdaq_nsmequities_totalview_glimpse_v3_1_f.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
nasdaq_nsmequities_totalview_glimpse_v3_1_f.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
nasdaq_nsmequities_totalview_glimpse_v3_1_f.buy_sell_indicator.labels = {
  ["B"] = "Buy Sell Indicator: Buy Order (B)",
  ["S"] = "Buy Sell Indicator: Sell Order (S)",
}

nasdaq_nsmequities_totalview_glimpse_v3_1_f.buy_sell_indicator.display = function(value)
  return nasdaq_nsmequities_totalview_glimpse_v3_1_f.buy_sell_indicator.labels[value] or "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
nasdaq_nsmequities_totalview_glimpse_v3_1_f.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_glimpse_v3_1_f.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Client Packet Type
nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_packet_type = {}

-- Size: Client Packet Type
nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_packet_type.size = 1

-- Display: Client Packet Type
nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_packet_type.labels = {
  ["+"] = "Client Packet Type: Debug Packet (+)",
  ["L"] = "Client Packet Type: Login Request Packet (L)",
  ["U"] = "Client Packet Type: Unsequenced Data Packet (U)",
  ["R"] = "Client Packet Type: Client Heartbeat Packet (R)",
  ["O"] = "Client Packet Type: Logout Request Packet (O)",
}

nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_packet_type.display = function(value)
  return nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_packet_type.labels[value] or "Client Packet Type: Unknown("..value..")"
end

-- Dissect: Client Packet Type
nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Display
nasdaq_nsmequities_totalview_glimpse_v3_1_f.display = {}

-- Size: Display
nasdaq_nsmequities_totalview_glimpse_v3_1_f.display.size = 1

-- Display: Display
nasdaq_nsmequities_totalview_glimpse_v3_1_f.display.labels = {
  ["Y"] = "Display: Displayable (Y)",
  ["S"] = "Display: Flash Order (S)",
}

nasdaq_nsmequities_totalview_glimpse_v3_1_f.display.display = function(value)
  return nasdaq_nsmequities_totalview_glimpse_v3_1_f.display.labels[value] or "Display: Unknown("..value..")"
end

-- Dissect: Display
nasdaq_nsmequities_totalview_glimpse_v3_1_f.display.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_glimpse_v3_1_f.display.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.display.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.display, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_nsmequities_totalview_glimpse_v3_1_f.event_code = {}

-- Size: Event Code
nasdaq_nsmequities_totalview_glimpse_v3_1_f.event_code.size = 1

-- Display: Event Code
nasdaq_nsmequities_totalview_glimpse_v3_1_f.event_code.labels = {
  ["O"] = "Event Code: Start Of Messages (O)",
  ["S"] = "Event Code: Start Of System Hours (S)",
  ["Q"] = "Event Code: Start Of Market Hours (Q)",
  ["M"] = "Event Code: End Of Market Hours (M)",
  ["E"] = "Event Code: End Of System Hours (E)",
  ["C"] = "Event Code: End Of Messages (C)",
  ["A"] = "Event Code: Emergency Market Condition Halt (A)",
  ["R"] = "Event Code: Emergency Market Condition Quote Only Period (R)",
  ["B"] = "Event Code: Emergency Market Condition Resumption (B)",
}

nasdaq_nsmequities_totalview_glimpse_v3_1_f.event_code.display = function(value)
  return nasdaq_nsmequities_totalview_glimpse_v3_1_f.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_nsmequities_totalview_glimpse_v3_1_f.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_glimpse_v3_1_f.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.event_code, range, value, display)

  return offset + length, value
end

-- Itch Sequence Number
nasdaq_nsmequities_totalview_glimpse_v3_1_f.itch_sequence_number = {}

-- Size: Itch Sequence Number
nasdaq_nsmequities_totalview_glimpse_v3_1_f.itch_sequence_number.size = 20

-- Display: Itch Sequence Number
nasdaq_nsmequities_totalview_glimpse_v3_1_f.itch_sequence_number.display = function(value)
  return "Itch Sequence Number: "..value
end

-- Dissect: Itch Sequence Number
nasdaq_nsmequities_totalview_glimpse_v3_1_f.itch_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_glimpse_v3_1_f.itch_sequence_number.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.itch_sequence_number, range, value, "Itch Sequence Number: Not Applicable")
    item:add_proto_expert_info(nasdaq_nsmequities_totalview_glimpse_v3_1_f.experts.not_a_number, "Itch Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.itch_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.itch_sequence_number, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_nsmequities_totalview_glimpse_v3_1_f.message_type = {}

-- Size: Message Type
nasdaq_nsmequities_totalview_glimpse_v3_1_f.message_type.size = 1

-- Display: Message Type
nasdaq_nsmequities_totalview_glimpse_v3_1_f.message_type.labels = {
  ["T"] = "Message Type: Seconds Message (T)",
  ["M"] = "Message Type: Milliseconds Message (M)",
  ["S"] = "Message Type: System Event Message (S)",
  ["A"] = "Message Type: Add Order Message (A)",
  ["F"] = "Message Type: Add Order Mpid Attribution Message (F)",
  ["G"] = "Message Type: End Of Snapshot Message (G)",
}

nasdaq_nsmequities_totalview_glimpse_v3_1_f.message_type.display = function(value)
  return nasdaq_nsmequities_totalview_glimpse_v3_1_f.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_nsmequities_totalview_glimpse_v3_1_f.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_glimpse_v3_1_f.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.message_type, range, value, display)

  return offset + length, value
end

-- Millisecond
nasdaq_nsmequities_totalview_glimpse_v3_1_f.millisecond = {}

-- Size: Millisecond
nasdaq_nsmequities_totalview_glimpse_v3_1_f.millisecond.size = 3

-- Display: Millisecond
nasdaq_nsmequities_totalview_glimpse_v3_1_f.millisecond.display = function(value)
  return "Millisecond: "..value
end

-- Dissect: Millisecond
nasdaq_nsmequities_totalview_glimpse_v3_1_f.millisecond.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_glimpse_v3_1_f.millisecond.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.millisecond, range, value, "Millisecond: Not Applicable")
    item:add_proto_expert_info(nasdaq_nsmequities_totalview_glimpse_v3_1_f.experts.not_a_number, "Millisecond is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.millisecond.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.millisecond, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nasdaq_nsmequities_totalview_glimpse_v3_1_f.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_nsmequities_totalview_glimpse_v3_1_f.order_reference_number.size = 12

-- Display: Order Reference Number
nasdaq_nsmequities_totalview_glimpse_v3_1_f.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_nsmequities_totalview_glimpse_v3_1_f.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_glimpse_v3_1_f.order_reference_number.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.order_reference_number, range, value, "Order Reference Number: Not Applicable")
    item:add_proto_expert_info(nasdaq_nsmequities_totalview_glimpse_v3_1_f.experts.not_a_number, "Order Reference Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_nsmequities_totalview_glimpse_v3_1_f.password = {}

-- Size: Password
nasdaq_nsmequities_totalview_glimpse_v3_1_f.password.size = 10

-- Display: Password
nasdaq_nsmequities_totalview_glimpse_v3_1_f.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_nsmequities_totalview_glimpse_v3_1_f.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_glimpse_v3_1_f.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.password, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_nsmequities_totalview_glimpse_v3_1_f.price = {}

-- Size: Price
nasdaq_nsmequities_totalview_glimpse_v3_1_f.price.size = 10

-- Display: Price
nasdaq_nsmequities_totalview_glimpse_v3_1_f.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
nasdaq_nsmequities_totalview_glimpse_v3_1_f.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_glimpse_v3_1_f.price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.price, range, value, "Price: Not Applicable")
    item:add_proto_expert_info(nasdaq_nsmequities_totalview_glimpse_v3_1_f.experts.not_a_number, "Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.price, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_nsmequities_totalview_glimpse_v3_1_f.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_nsmequities_totalview_glimpse_v3_1_f.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_nsmequities_totalview_glimpse_v3_1_f.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
nasdaq_nsmequities_totalview_glimpse_v3_1_f.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_glimpse_v3_1_f.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_nsmequities_totalview_glimpse_v3_1_f.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_nsmequities_totalview_glimpse_v3_1_f.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_nsmequities_totalview_glimpse_v3_1_f.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_nsmequities_totalview_glimpse_v3_1_f.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_glimpse_v3_1_f.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.requested_sequence_number, range, value, "Requested Sequence Number: Not Applicable")
    item:add_proto_expert_info(nasdaq_nsmequities_totalview_glimpse_v3_1_f.experts.not_a_number, "Requested Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_nsmequities_totalview_glimpse_v3_1_f.requested_session = {}

-- Size: Requested Session
nasdaq_nsmequities_totalview_glimpse_v3_1_f.requested_session.size = 10

-- Display: Requested Session
nasdaq_nsmequities_totalview_glimpse_v3_1_f.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_nsmequities_totalview_glimpse_v3_1_f.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_glimpse_v3_1_f.requested_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Second
nasdaq_nsmequities_totalview_glimpse_v3_1_f.second = {}

-- Size: Second
nasdaq_nsmequities_totalview_glimpse_v3_1_f.second.size = 5

-- Display: Second
nasdaq_nsmequities_totalview_glimpse_v3_1_f.second.display = function(value)
  return "Second: "..value
end

-- Dissect: Second
nasdaq_nsmequities_totalview_glimpse_v3_1_f.second.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_glimpse_v3_1_f.second.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.second, range, value, "Second: Not Applicable")
    item:add_proto_expert_info(nasdaq_nsmequities_totalview_glimpse_v3_1_f.experts.not_a_number, "Second is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.second.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.second, range, value, display)

  return offset + length, value
end

-- Server Packet Type
nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_packet_type = {}

-- Size: Server Packet Type
nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_packet_type.size = 1

-- Display: Server Packet Type
nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_packet_type.labels = {
  ["+"] = "Server Packet Type: Debug Packet (+)",
  ["A"] = "Server Packet Type: Login Accepted Packet (A)",
  ["J"] = "Server Packet Type: Login Rejected Packet (J)",
  ["S"] = "Server Packet Type: Sequenced Data Packet (S)",
  ["H"] = "Server Packet Type: Server Heartbeat Packet (H)",
}

nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_packet_type.display = function(value)
  return nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_packet_type.labels[value] or "Server Packet Type: Unknown("..value..")"
end

-- Dissect: Server Packet Type
nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Shares
nasdaq_nsmequities_totalview_glimpse_v3_1_f.shares = {}

-- Size: Shares
nasdaq_nsmequities_totalview_glimpse_v3_1_f.shares.size = 6

-- Display: Shares
nasdaq_nsmequities_totalview_glimpse_v3_1_f.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
nasdaq_nsmequities_totalview_glimpse_v3_1_f.shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_glimpse_v3_1_f.shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.shares, range, value, "Shares: Not Applicable")
    item:add_proto_expert_info(nasdaq_nsmequities_totalview_glimpse_v3_1_f.experts.not_a_number, "Shares is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.shares, range, value, display)

  return offset + length, value
end

-- Soup Lf
nasdaq_nsmequities_totalview_glimpse_v3_1_f.soup_lf = {}

-- Size: Soup Lf
nasdaq_nsmequities_totalview_glimpse_v3_1_f.soup_lf.size = 1

-- Display: Soup Lf
nasdaq_nsmequities_totalview_glimpse_v3_1_f.soup_lf.display = function(value)
  if value == 10 then
    return "Soup Lf: Line Feed"
  end

  return "Soup Lf: Unknown("..value..")"
end

-- Dissect: Soup Lf
nasdaq_nsmequities_totalview_glimpse_v3_1_f.soup_lf.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_glimpse_v3_1_f.soup_lf.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.soup_lf.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.soup_lf, range, value, display)

  return offset + length, value
end

-- Stock
nasdaq_nsmequities_totalview_glimpse_v3_1_f.stock = {}

-- Size: Stock
nasdaq_nsmequities_totalview_glimpse_v3_1_f.stock.size = 6

-- Display: Stock
nasdaq_nsmequities_totalview_glimpse_v3_1_f.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_nsmequities_totalview_glimpse_v3_1_f.stock.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_glimpse_v3_1_f.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.stock, range, value, display)

  return offset + length, value
end

-- Text
nasdaq_nsmequities_totalview_glimpse_v3_1_f.text = {}

-- Display: Text
nasdaq_nsmequities_totalview_glimpse_v3_1_f.text.display = function(value)
  return "Text: "..value
end

-- Dissect runtime sized field: Text
nasdaq_nsmequities_totalview_glimpse_v3_1_f.text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.text.display(value, packet, parent, size)

  parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.text, range, value, display)

  return offset + size, value
end

-- Unsequenced Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.unsequenced_message = {}

-- Display: Unsequenced Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.unsequenced_message, range, value, display)

  return offset + size, value
end

-- Username
nasdaq_nsmequities_totalview_glimpse_v3_1_f.username = {}

-- Size: Username
nasdaq_nsmequities_totalview_glimpse_v3_1_f.username.size = 6

-- Display: Username
nasdaq_nsmequities_totalview_glimpse_v3_1_f.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_nsmequities_totalview_glimpse_v3_1_f.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_glimpse_v3_1_f.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NsmEquities TotalView Glimpse 3.1.f
-----------------------------------------------------------------------

-- End Of Snapshot Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.end_of_snapshot_message = {}

-- Size: End Of Snapshot Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.end_of_snapshot_message.size =
  nasdaq_nsmequities_totalview_glimpse_v3_1_f.itch_sequence_number.size

-- Display: End Of Snapshot Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.end_of_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Snapshot Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.end_of_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Itch Sequence Number: Numeric
  index, itch_sequence_number = nasdaq_nsmequities_totalview_glimpse_v3_1_f.itch_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Snapshot Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.end_of_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.end_of_snapshot_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_glimpse_v3_1_f.end_of_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.end_of_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_glimpse_v3_1_f.end_of_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Mpid Attribution Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.add_order_mpid_attribution_message = {}

-- Size: Add Order Mpid Attribution Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.add_order_mpid_attribution_message.size =
  nasdaq_nsmequities_totalview_glimpse_v3_1_f.order_reference_number.size + 
  nasdaq_nsmequities_totalview_glimpse_v3_1_f.buy_sell_indicator.size + 
  nasdaq_nsmequities_totalview_glimpse_v3_1_f.shares.size + 
  nasdaq_nsmequities_totalview_glimpse_v3_1_f.stock.size + 
  nasdaq_nsmequities_totalview_glimpse_v3_1_f.price.size + 
  nasdaq_nsmequities_totalview_glimpse_v3_1_f.attribution.size

-- Display: Add Order Mpid Attribution Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.add_order_mpid_attribution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Mpid Attribution Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.add_order_mpid_attribution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Reference Number: Numeric
  index, order_reference_number = nasdaq_nsmequities_totalview_glimpse_v3_1_f.order_reference_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = nasdaq_nsmequities_totalview_glimpse_v3_1_f.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: Numeric
  index, shares = nasdaq_nsmequities_totalview_glimpse_v3_1_f.shares.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_totalview_glimpse_v3_1_f.stock.dissect(buffer, index, packet, parent)

  -- Price: Numeric
  index, price = nasdaq_nsmequities_totalview_glimpse_v3_1_f.price.dissect(buffer, index, packet, parent)

  -- Attribution: Alpha
  index, attribution = nasdaq_nsmequities_totalview_glimpse_v3_1_f.attribution.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Mpid Attribution Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.add_order_mpid_attribution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.add_order_mpid_attribution_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_glimpse_v3_1_f.add_order_mpid_attribution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.add_order_mpid_attribution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_glimpse_v3_1_f.add_order_mpid_attribution_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.add_order_message = {}

-- Size: Add Order Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.add_order_message.size =
  nasdaq_nsmequities_totalview_glimpse_v3_1_f.order_reference_number.size + 
  nasdaq_nsmequities_totalview_glimpse_v3_1_f.buy_sell_indicator.size + 
  nasdaq_nsmequities_totalview_glimpse_v3_1_f.shares.size + 
  nasdaq_nsmequities_totalview_glimpse_v3_1_f.stock.size + 
  nasdaq_nsmequities_totalview_glimpse_v3_1_f.price.size + 
  nasdaq_nsmequities_totalview_glimpse_v3_1_f.display.size

-- Display: Add Order Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Reference Number: Numeric
  index, order_reference_number = nasdaq_nsmequities_totalview_glimpse_v3_1_f.order_reference_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = nasdaq_nsmequities_totalview_glimpse_v3_1_f.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: Numeric
  index, shares = nasdaq_nsmequities_totalview_glimpse_v3_1_f.shares.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_totalview_glimpse_v3_1_f.stock.dissect(buffer, index, packet, parent)

  -- Price: Numeric
  index, price = nasdaq_nsmequities_totalview_glimpse_v3_1_f.price.dissect(buffer, index, packet, parent)

  -- Display: Alpha
  index, display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.display.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.add_order_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_glimpse_v3_1_f.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_glimpse_v3_1_f.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.system_event_message = {}

-- Size: System Event Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.system_event_message.size =
  nasdaq_nsmequities_totalview_glimpse_v3_1_f.event_code.size

-- Display: System Event Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Code: Alpha
  index, event_code = nasdaq_nsmequities_totalview_glimpse_v3_1_f.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_glimpse_v3_1_f.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_glimpse_v3_1_f.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Milliseconds Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.milliseconds_message = {}

-- Size: Milliseconds Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.milliseconds_message.size =
  nasdaq_nsmequities_totalview_glimpse_v3_1_f.millisecond.size

-- Display: Milliseconds Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.milliseconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Milliseconds Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.milliseconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Millisecond: Numeric
  index, millisecond = nasdaq_nsmequities_totalview_glimpse_v3_1_f.millisecond.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Milliseconds Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.milliseconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.milliseconds_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_glimpse_v3_1_f.milliseconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.milliseconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_glimpse_v3_1_f.milliseconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Seconds Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.seconds_message = {}

-- Size: Seconds Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.seconds_message.size =
  nasdaq_nsmequities_totalview_glimpse_v3_1_f.second.size

-- Display: Seconds Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seconds Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: Numeric
  index, second = nasdaq_nsmequities_totalview_glimpse_v3_1_f.second.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Seconds Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.seconds_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_glimpse_v3_1_f.seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_glimpse_v3_1_f.seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.sequenced_message = {}

-- Dispatch: Sequenced Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.sequenced_message.dispatch = {
  ["T"] = nasdaq_nsmequities_totalview_glimpse_v3_1_f.seconds_message.dissect,
  ["M"] = nasdaq_nsmequities_totalview_glimpse_v3_1_f.milliseconds_message.dissect,
  ["S"] = nasdaq_nsmequities_totalview_glimpse_v3_1_f.system_event_message.dissect,
  ["A"] = nasdaq_nsmequities_totalview_glimpse_v3_1_f.add_order_message.dissect,
  ["F"] = nasdaq_nsmequities_totalview_glimpse_v3_1_f.add_order_mpid_attribution_message.dissect,
  ["G"] = nasdaq_nsmequities_totalview_glimpse_v3_1_f.end_of_snapshot_message.dissect,
}

-- Dissect: Sequenced Message
nasdaq_nsmequities_totalview_glimpse_v3_1_f.sequenced_message.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = nasdaq_nsmequities_totalview_glimpse_v3_1_f.sequenced_message.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Message Header
nasdaq_nsmequities_totalview_glimpse_v3_1_f.sequenced_message_header = {}

-- Size: Sequenced Message Header
nasdaq_nsmequities_totalview_glimpse_v3_1_f.sequenced_message_header.size =
  nasdaq_nsmequities_totalview_glimpse_v3_1_f.message_type.size

-- Display: Sequenced Message Header
nasdaq_nsmequities_totalview_glimpse_v3_1_f.sequenced_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message Header
nasdaq_nsmequities_totalview_glimpse_v3_1_f.sequenced_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 6 values
  index, message_type = nasdaq_nsmequities_totalview_glimpse_v3_1_f.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Message Header
nasdaq_nsmequities_totalview_glimpse_v3_1_f.sequenced_message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.sequenced_message_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_glimpse_v3_1_f.sequenced_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.sequenced_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_glimpse_v3_1_f.sequenced_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Data Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.sequenced_data_packet = {}

-- Calculate size of: Sequenced Data Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.sequenced_data_packet.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_glimpse_v3_1_f.sequenced_message_header.size

  -- Calculate runtime size of Sequenced Message field
  local sequenced_message_offset = offset + index
  local sequenced_message_type = buffer(sequenced_message_offset - 1, 1):string()
  index = index + nasdaq_nsmequities_totalview_glimpse_v3_1_f.sequenced_message.size(buffer, sequenced_message_offset, sequenced_message_type)

  return index
end

-- Display: Sequenced Data Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.sequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequenced Message Header: Struct of 1 fields
  index, sequenced_message_header = nasdaq_nsmequities_totalview_glimpse_v3_1_f.sequenced_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Sequenced Message: Runtime Type with 6 branches
  index = nasdaq_nsmequities_totalview_glimpse_v3_1_f.sequenced_message.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.sequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.sequenced_data_packet, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_glimpse_v3_1_f.sequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.sequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_glimpse_v3_1_f.sequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Rejected Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.login_rejected_packet.size =
  nasdaq_nsmequities_totalview_glimpse_v3_1_f.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = nasdaq_nsmequities_totalview_glimpse_v3_1_f.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_glimpse_v3_1_f.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_glimpse_v3_1_f.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.login_accepted_packet.size =
  nasdaq_nsmequities_totalview_glimpse_v3_1_f.accepted_session.size + 
  nasdaq_nsmequities_totalview_glimpse_v3_1_f.accepted_sequence_number.size

-- Display: Login Accepted Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = nasdaq_nsmequities_totalview_glimpse_v3_1_f.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = nasdaq_nsmequities_totalview_glimpse_v3_1_f.accepted_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_glimpse_v3_1_f.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_glimpse_v3_1_f.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.debug_packet = {}

-- Calculate size of: Debug Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.debug_packet.size = function(buffer, offset)
  local index = 0

  -- Remaining size of: Text
  index = index + ((buffer:len() - (offset + index)) - 1)

  return index
end

-- Display: Debug Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Runtime Size Of: Text
  local size_of_text = buffer:len() - index - 1

  -- Text: 0 Byte Ascii String
  index, text = nasdaq_nsmequities_totalview_glimpse_v3_1_f.text.dissect(buffer, index, packet, parent, size_of_text)

  return index
end

-- Dissect: Debug Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_glimpse_v3_1_f.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_glimpse_v3_1_f.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_payload = {}

-- Dispatch: Server Payload
nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_payload.dispatch = {
  ["+"] = nasdaq_nsmequities_totalview_glimpse_v3_1_f.debug_packet.dissect,
  ["A"] = nasdaq_nsmequities_totalview_glimpse_v3_1_f.login_accepted_packet.dissect,
  ["J"] = nasdaq_nsmequities_totalview_glimpse_v3_1_f.login_rejected_packet.dissect,
  ["S"] = nasdaq_nsmequities_totalview_glimpse_v3_1_f.sequenced_data_packet.dissect,
}

-- Dissect: Server Payload
nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  local dissect = nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_payload.dispatch[server_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_packet_header = {}

-- Size: Server Packet Header
nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_packet_header.size =
  nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_packet_type.size

-- Display: Server Packet Header
nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Server Packet Type: 1 Byte Ascii String Enum with 5 values
  index, server_packet_type = nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.server_packet_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Frame
nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_frame = {}

-- Display: Server Frame
nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_frame.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Frame
nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_frame.fields = function(buffer, offset, packet, parent, size_of_server_frame)
  local index = offset

  -- Server Packet Header: Struct of 1 fields
  index, server_packet_header = nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 4 branches
  index = nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  -- Soup Lf: 1 Byte Fixed Width Integer Static
  index, soup_lf = nasdaq_nsmequities_totalview_glimpse_v3_1_f.soup_lf.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Frame
nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_frame.dissect = function(buffer, offset, packet, parent, size_of_server_frame)
  local index = offset + size_of_server_frame

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.server_frame, buffer(offset, 0))
    local current = nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_frame.fields(buffer, offset, packet, parent, size_of_server_frame)
    parent:set_len(size_of_server_frame)
    local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_frame.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_frame.fields(buffer, offset, packet, parent, size_of_server_frame)

    return index
  end
end

-- Remaining Bytes For: Server Frame
local server_frame_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- A message runs to the first terminator byte: scan for it
  local terminator = 10
  local current = 0
  while current < remaining and buffer(index + current, 1):uint() ~= terminator do
    current = current + 1
  end

  -- The terminator is not in the bytes available yet: ask for one more segment
  if current >= remaining then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- The message includes the terminator byte it ends on
  current = current + 1

  return remaining, current
end

-- Server Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_packet = {}

-- Verify required size of Tcp packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_packet_header.size
end

-- Dissect Server Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Server Frame
  local end_of_payload = buffer:len()

  -- Server Frame: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_frame = server_frame_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_server_frame):tvb()
      index = nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_frame.dissect(frame, index, packet, parent, size_of_server_frame)
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

-- Unsequenced Data Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.unsequenced_data_packet = {}

-- Calculate size of: Unsequenced Data Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.unsequenced_data_packet.size = function(buffer, offset)
  local index = 0

  -- Remaining size of: Unsequenced Message
  index = index + ((buffer:len() - (offset + index)) - 1)

  return index
end

-- Display: Unsequenced Data Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.unsequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = buffer:len() - index - 1

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = nasdaq_nsmequities_totalview_glimpse_v3_1_f.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.unsequenced_data_packet, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_glimpse_v3_1_f.unsequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.unsequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_glimpse_v3_1_f.unsequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.login_request_packet.size =
  nasdaq_nsmequities_totalview_glimpse_v3_1_f.username.size + 
  nasdaq_nsmequities_totalview_glimpse_v3_1_f.password.size + 
  nasdaq_nsmequities_totalview_glimpse_v3_1_f.requested_session.size + 
  nasdaq_nsmequities_totalview_glimpse_v3_1_f.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_nsmequities_totalview_glimpse_v3_1_f.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_nsmequities_totalview_glimpse_v3_1_f.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_nsmequities_totalview_glimpse_v3_1_f.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_nsmequities_totalview_glimpse_v3_1_f.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_glimpse_v3_1_f.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_glimpse_v3_1_f.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_payload = {}

-- Dispatch: Client Payload
nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_payload.dispatch = {
  ["+"] = nasdaq_nsmequities_totalview_glimpse_v3_1_f.debug_packet.dissect,
  ["L"] = nasdaq_nsmequities_totalview_glimpse_v3_1_f.login_request_packet.dissect,
  ["U"] = nasdaq_nsmequities_totalview_glimpse_v3_1_f.unsequenced_data_packet.dissect,
}

-- Dissect: Client Payload
nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  local dissect = nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_payload.dispatch[client_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_packet_header = {}

-- Size: Client Packet Header
nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_packet_header.size =
  nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_packet_type.size

-- Display: Client Packet Header
nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.client_packet_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Frame
nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_frame = {}

-- Display: Client Frame
nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_frame.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Frame
nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_frame.fields = function(buffer, offset, packet, parent, size_of_client_frame)
  local index = offset

  -- Client Packet Header: Struct of 1 fields
  index, client_packet_header = nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 3 branches
  index = nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  -- Soup Lf: 1 Byte Fixed Width Integer Static
  index, soup_lf = nasdaq_nsmequities_totalview_glimpse_v3_1_f.soup_lf.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Frame
nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_frame.dissect = function(buffer, offset, packet, parent, size_of_client_frame)
  local index = offset + size_of_client_frame

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.fields.client_frame, buffer(offset, 0))
    local current = nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_frame.fields(buffer, offset, packet, parent, size_of_client_frame)
    parent:set_len(size_of_client_frame)
    local display = nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_frame.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_frame.fields(buffer, offset, packet, parent, size_of_client_frame)

    return index
  end
end

-- Remaining Bytes For: Client Frame
local client_frame_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- A message runs to the first terminator byte: scan for it
  local terminator = 10
  local current = 0
  while current < remaining and buffer(index + current, 1):uint() ~= terminator do
    current = current + 1
  end

  -- The terminator is not in the bytes available yet: ask for one more segment
  if current >= remaining then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- The message includes the terminator byte it ends on
  current = current + 1

  return remaining, current
end

-- Client Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_packet = {}

-- Verify required size of Tcp packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_packet_header.size
end

-- Dissect Client Packet
nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Frame
  local end_of_payload = buffer:len()

  -- Client Frame: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_frame = client_frame_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_client_frame):tvb()
      index = nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_frame.dissect(frame, index, packet, parent, size_of_client_frame)
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
function omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.init()
end

-- Connection roles for Nasdaq NsmEquities TotalView Glimpse 3.1.f: Client is the initiator, Server is the acceptor
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
nasdaq_nsmequities_totalview_glimpse_v3_1_f.role = function(packet)
  if omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.prefs.acceptor_port

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

  if omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.prefs.swap_sides then
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
nasdaq_nsmequities_totalview_glimpse_v3_1_f.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nasdaq NsmEquities TotalView Glimpse 3.1.f
function omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f, buffer(), omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.description, "("..buffer:len().." Bytes)")
  local role = nasdaq_nsmequities_totalview_glimpse_v3_1_f.role(packet)

  if role == "initiator" then
    return nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_packet.dissect(buffer, packet, protocol)
  end

  return nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_packet.fingerprint = function(buffer)
  if buffer:len() < 1 then
    return false
  end

  local client_packet_type = buffer(0, 1):string()

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

  return false
end

-- Fingerprint of Server Packet: would its message dispatch accept this frame?
nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_packet.fingerprint = function(buffer)
  if buffer:len() < 1 then
    return false
  end

  local server_packet_type = buffer(0, 1):string()

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
    if buffer:len() < 2 then
      return false
    end

    local message_type = buffer(1, 1):string()

    -- Seconds Message
    if message_type == "T" then
      return true
    end

    -- Milliseconds Message
    if message_type == "M" then
      return true
    end

    -- System Event Message
    if message_type == "S" then
      return true
    end

    -- Add Order Message
    if message_type == "A" then
      return true
    end

    -- Add Order Mpid Attribution Message
    if message_type == "F" then
      return true
    end

    -- End Of Snapshot Message
    if message_type == "G" then
      return true
    end

    return false
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq NsmEquities TotalView Glimpse 3.1.f (Tcp)
local function omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp client packet message dispatch
  if not nasdaq_nsmequities_totalview_glimpse_v3_1_f.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f
  omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NsmEquities TotalView Glimpse 3.1.f (Tcp)
local function omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp server packet message dispatch
  if not nasdaq_nsmequities_totalview_glimpse_v3_1_f.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f
  omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NsmEquities TotalView Glimpse 3.1.f (Tcp): apply the heuristic of the sender's connection role
local function omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f_tcp_heuristic(buffer, packet, parent)
  local role = nasdaq_nsmequities_totalview_glimpse_v3_1_f.role(packet)
  local initiator = omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f_tcp_initiator_heuristic
  local acceptor = omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nasdaq_nsmequities_totalview_glimpse_v3_1_f.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nasdaq_nsmequities_totalview_glimpse_v3_1_f.swap(packet)

  return false
end

-- Register Heuristics for Nasdaq NsmEquities TotalView Glimpse 3.1.f
omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f:register_heuristic("tcp", omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f_tcp_heuristic)

-- Register Nasdaq NsmEquities TotalView Glimpse 3.1.f for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nasdaq_nsmequities_totalview_glimpse_v3_1_f)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 3.1.f
--   Date: Monday, July 20, 2009
--   Specification: Nasdaq Glimpse.pdf
--
-- Script:
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
