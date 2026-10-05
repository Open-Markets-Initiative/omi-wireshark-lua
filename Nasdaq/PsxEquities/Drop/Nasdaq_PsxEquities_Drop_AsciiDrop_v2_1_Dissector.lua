-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq PsxEquities Drop AsciiDrop 2.1 Protocol
local omi_nasdaq_psxequities_drop_asciidrop_v2_1 = Proto("Omi.Nasdaq.PsxEquities.Drop.AsciiDrop.v2.1", "Nasdaq PsxEquities Drop AsciiDrop 2.1")

-- Protocol table
local nasdaq_psxequities_drop_asciidrop_v2_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq PsxEquities Drop AsciiDrop 2.1 Fields
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.buy_sell = ProtoField.new("Buy Sell", "nasdaq.psxequities.drop.asciidrop.v2.1.buysell", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.capacity = ProtoField.new("Capacity", "nasdaq.psxequities.drop.asciidrop.v2.1.capacity", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.clearing_code = ProtoField.new("Clearing Code", "nasdaq.psxequities.drop.asciidrop.v2.1.clearingcode", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.client_packet_type = ProtoField.new("Client Packet Type", "nasdaq.psxequities.drop.asciidrop.v2.1.clientpackettype", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.comma = ProtoField.new("Comma", "nasdaq.psxequities.drop.asciidrop.v2.1.comma", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.psxequities.drop.asciidrop.v2.1.debugpacket", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.firm = ProtoField.new("Firm", "nasdaq.psxequities.drop.asciidrop.v2.1.firm", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.liquidity_flag = ProtoField.new("Liquidity Flag", "nasdaq.psxequities.drop.asciidrop.v2.1.liquidityflag", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.psxequities.drop.asciidrop.v2.1.loginacceptedpacket", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.psxequities.drop.asciidrop.v2.1.loginrejectedpacket", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.psxequities.drop.asciidrop.v2.1.loginrequestpacket", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.match_number = ProtoField.new("Match Number", "nasdaq.psxequities.drop.asciidrop.v2.1.matchnumber", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.message_type = ProtoField.new("Message Type", "nasdaq.psxequities.drop.asciidrop.v2.1.messagetype", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.password = ProtoField.new("Password", "nasdaq.psxequities.drop.asciidrop.v2.1.password", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.price = ProtoField.new("Price", "nasdaq.psxequities.drop.asciidrop.v2.1.price", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.reference = ProtoField.new("Reference", "nasdaq.psxequities.drop.asciidrop.v2.1.reference", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.psxequities.drop.asciidrop.v2.1.rejectreasoncode", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.replaced_token = ProtoField.new("Replaced Token", "nasdaq.psxequities.drop.asciidrop.v2.1.replacedtoken", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.psxequities.drop.asciidrop.v2.1.requestedsequencenumber", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.psxequities.drop.asciidrop.v2.1.requestedsession", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.psxequities.drop.asciidrop.v2.1.sequencenumber", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.psxequities.drop.asciidrop.v2.1.sequenceddatapacket", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.server_packet_type = ProtoField.new("Server Packet Type", "nasdaq.psxequities.drop.asciidrop.v2.1.serverpackettype", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.session = ProtoField.new("Session", "nasdaq.psxequities.drop.asciidrop.v2.1.session", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.shares = ProtoField.new("Shares", "nasdaq.psxequities.drop.asciidrop.v2.1.shares", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.soup_lf = ProtoField.new("Soup Lf", "nasdaq.psxequities.drop.asciidrop.v2.1.souplf", ftypes.INT8)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.source = ProtoField.new("Source", "nasdaq.psxequities.drop.asciidrop.v2.1.source", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.stock = ProtoField.new("Stock", "nasdaq.psxequities.drop.asciidrop.v2.1.stock", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.text = ProtoField.new("Text", "nasdaq.psxequities.drop.asciidrop.v2.1.text", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.time_in_force = ProtoField.new("Time In Force", "nasdaq.psxequities.drop.asciidrop.v2.1.timeinforce", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.time_stamp = ProtoField.new("Time Stamp", "nasdaq.psxequities.drop.asciidrop.v2.1.timestamp", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.token = ProtoField.new("Token", "nasdaq.psxequities.drop.asciidrop.v2.1.token", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.psxequities.drop.asciidrop.v2.1.unsequenceddatapacket", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "nasdaq.psxequities.drop.asciidrop.v2.1.unsequencedmessage", ftypes.BYTES)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.user = ProtoField.new("User", "nasdaq.psxequities.drop.asciidrop.v2.1.user", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.username = ProtoField.new("Username", "nasdaq.psxequities.drop.asciidrop.v2.1.username", ftypes.STRING)

-- Nasdaq PsxEquities Drop AsciiDrop 2.1 Framing
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.client_packet = ProtoField.new("Client Packet", "nasdaq.psxequities.drop.asciidrop.v2.1.clientpacket", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.client_packet_header = ProtoField.new("Client Packet Header", "nasdaq.psxequities.drop.asciidrop.v2.1.clientpacketheader", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.sequenced_message_header = ProtoField.new("Sequenced Message Header", "nasdaq.psxequities.drop.asciidrop.v2.1.sequencedmessageheader", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.server_packet = ProtoField.new("Server Packet", "nasdaq.psxequities.drop.asciidrop.v2.1.serverpacket", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.server_packet_header = ProtoField.new("Server Packet Header", "nasdaq.psxequities.drop.asciidrop.v2.1.serverpacketheader", ftypes.STRING)

-- Nasdaq PsxEquities Drop 2.1 Application Messages
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.existing_order_canceled_message = ProtoField.new("Existing Order Canceled Message", "nasdaq.psxequities.drop.asciidrop.v2.1.existingordercanceledmessage", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.existing_order_executed_message = ProtoField.new("Existing Order Executed Message", "nasdaq.psxequities.drop.asciidrop.v2.1.existingorderexecutedmessage", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.existing_order_replaced_message = ProtoField.new("Existing Order Replaced Message", "nasdaq.psxequities.drop.asciidrop.v2.1.existingorderreplacedmessage", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.new_order_accepted_message = ProtoField.new("New Order Accepted Message", "nasdaq.psxequities.drop.asciidrop.v2.1.neworderacceptedmessage", ftypes.STRING)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.previous_execution_broken_message = ProtoField.new("Previous Execution Broken Message", "nasdaq.psxequities.drop.asciidrop.v2.1.previousexecutionbrokenmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Nasdaq PsxEquities Drop AsciiDrop 2.1 Formatting
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

-- Nasdaq PsxEquities Drop AsciiDrop 2.1 Element Dissection Options
show.structs = true
show.headers = true
show.application_messages = true

-- Register Nasdaq PsxEquities Drop AsciiDrop 2.1 Show Options
omi_nasdaq_psxequities_drop_asciidrop_v2_1.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nasdaq_psxequities_drop_asciidrop_v2_1.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nasdaq_psxequities_drop_asciidrop_v2_1.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nasdaq_psxequities_drop_asciidrop_v2_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_psxequities_drop_asciidrop_v2_1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_psxequities_drop_asciidrop_v2_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")

-- Handle changed preferences
function omi_nasdaq_psxequities_drop_asciidrop_v2_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_psxequities_drop_asciidrop_v2_1.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_psxequities_drop_asciidrop_v2_1.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_psxequities_drop_asciidrop_v2_1.prefs.show_headers then
    show.headers = omi_nasdaq_psxequities_drop_asciidrop_v2_1.prefs.show_headers
  end
  if show.structs ~= omi_nasdaq_psxequities_drop_asciidrop_v2_1.prefs.show_structs then
    show.structs = omi_nasdaq_psxequities_drop_asciidrop_v2_1.prefs.show_structs
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


-----------------------------------------------------------------------
-- Nasdaq PsxEquities Drop AsciiDrop 2.1 Fields
-----------------------------------------------------------------------

-- Buy Sell
nasdaq_psxequities_drop_asciidrop_v2_1.buy_sell = {}

-- Size: Buy Sell
nasdaq_psxequities_drop_asciidrop_v2_1.buy_sell.size = 1

-- Display: Buy Sell
nasdaq_psxequities_drop_asciidrop_v2_1.buy_sell.display = function(value)
  if value == "B" then
    return "Buy Sell: Bought (B)"
  end
  if value == "S" then
    return "Buy Sell: Sold (S)"
  end
  if value == "T" then
    return "Buy Sell: Sold Short (T)"
  end
  if value == "E" then
    return "Buy Sell: Sold Short Exempt (E)"
  end

  return "Buy Sell: Unknown("..value..")"
end

-- Dissect: Buy Sell
nasdaq_psxequities_drop_asciidrop_v2_1.buy_sell.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_drop_asciidrop_v2_1.buy_sell.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_drop_asciidrop_v2_1.buy_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.buy_sell, range, value, display)

  return offset + length, value
end

-- Capacity
nasdaq_psxequities_drop_asciidrop_v2_1.capacity = {}

-- Size: Capacity
nasdaq_psxequities_drop_asciidrop_v2_1.capacity.size = 1

-- Display: Capacity
nasdaq_psxequities_drop_asciidrop_v2_1.capacity.display = function(value)
  if value == "A" then
    return "Capacity: Agency (A)"
  end
  if value == "P" then
    return "Capacity: Principal (P)"
  end
  if value == "R" then
    return "Capacity: Riskless (R)"
  end

  return "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
nasdaq_psxequities_drop_asciidrop_v2_1.capacity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_drop_asciidrop_v2_1.capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_drop_asciidrop_v2_1.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.capacity, range, value, display)

  return offset + length, value
end

-- Clearing Code
nasdaq_psxequities_drop_asciidrop_v2_1.clearing_code = {}

-- Size: Clearing Code
nasdaq_psxequities_drop_asciidrop_v2_1.clearing_code.size = 1

-- Display: Clearing Code
nasdaq_psxequities_drop_asciidrop_v2_1.clearing_code.display = function(value)
  if value == "Q" then
    return "Clearing Code: Qsr (Q)"
  end

  return "Clearing Code: Unknown("..value..")"
end

-- Dissect: Clearing Code
nasdaq_psxequities_drop_asciidrop_v2_1.clearing_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_drop_asciidrop_v2_1.clearing_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_drop_asciidrop_v2_1.clearing_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.clearing_code, range, value, display)

  return offset + length, value
end

-- Client Packet Type
nasdaq_psxequities_drop_asciidrop_v2_1.client_packet_type = {}

-- Size: Client Packet Type
nasdaq_psxequities_drop_asciidrop_v2_1.client_packet_type.size = 1

-- Display: Client Packet Type
nasdaq_psxequities_drop_asciidrop_v2_1.client_packet_type.display = function(value)
  if value == "+" then
    return "Client Packet Type: Debug Packet (+)"
  end
  if value == "L" then
    return "Client Packet Type: Login Request Packet (L)"
  end
  if value == "U" then
    return "Client Packet Type: Unsequenced Data Packet (U)"
  end
  if value == "R" then
    return "Client Packet Type: Client Heartbeat Packet (R)"
  end
  if value == "O" then
    return "Client Packet Type: Logout Request Packet (O)"
  end

  return "Client Packet Type: Unknown("..value..")"
end

-- Dissect: Client Packet Type
nasdaq_psxequities_drop_asciidrop_v2_1.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_drop_asciidrop_v2_1.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_drop_asciidrop_v2_1.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Comma
nasdaq_psxequities_drop_asciidrop_v2_1.comma = {}

-- Size: Comma
nasdaq_psxequities_drop_asciidrop_v2_1.comma.size = 1

-- Display: Comma
nasdaq_psxequities_drop_asciidrop_v2_1.comma.display = function(value)
  return "Comma: "..value
end

-- Dissect: Comma
nasdaq_psxequities_drop_asciidrop_v2_1.comma.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_drop_asciidrop_v2_1.comma.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_drop_asciidrop_v2_1.comma.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.comma, range, value, display)

  return offset + length, value
end

-- Firm
nasdaq_psxequities_drop_asciidrop_v2_1.firm = {}

-- Size: Firm
nasdaq_psxequities_drop_asciidrop_v2_1.firm.size = 4

-- Display: Firm
nasdaq_psxequities_drop_asciidrop_v2_1.firm.display = function(value)
  return "Firm: "..value
end

-- Dissect: Firm
nasdaq_psxequities_drop_asciidrop_v2_1.firm.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_drop_asciidrop_v2_1.firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_drop_asciidrop_v2_1.firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.firm, range, value, display)

  return offset + length, value
end

-- Liquidity Flag
nasdaq_psxequities_drop_asciidrop_v2_1.liquidity_flag = {}

-- Size: Liquidity Flag
nasdaq_psxequities_drop_asciidrop_v2_1.liquidity_flag.size = 1

-- Display: Liquidity Flag
nasdaq_psxequities_drop_asciidrop_v2_1.liquidity_flag.display = function(value)
  if value == "A" then
    return "Liquidity Flag: Added (A)"
  end
  if value == "R" then
    return "Liquidity Flag: Removed (R)"
  end
  if value == "V" then
    return "Liquidity Flag: Displayed Added Liquidity With Original Order Size Of Greater Than Or Equal To 2000 Shares (V)"
  end
  if value == "X" then
    return "Liquidity Flag: Routed (X)"
  end
  if value == "D" then
    return "Liquidity Flag: Dot (D)"
  end
  if value == "F" then
    return "Liquidity Flag: Added Or Opening Trade On Nyse (F)"
  end
  if value == "G" then
    return "Liquidity Flag: Odd Lot Or On Close Order On Nyse (G)"
  end
  if value == "O" then
    return "Liquidity Flag: Opening Cross (O)"
  end
  if value == "M" then
    return "Liquidity Flag: Opening Cross Imbalanceonly (M)"
  end
  if value == "C" then
    return "Liquidity Flag: Closing Cross (C)"
  end
  if value == "L" then
    return "Liquidity Flag: Closing Cross Imbalanceonly (L)"
  end
  if value == "H" then
    return "Liquidity Flag: Halt Ipo Cross (H)"
  end
  if value == "K" then
    return "Liquidity Flag: Halt Cross (K)"
  end
  if value == "J" then
    return "Liquidity Flag: Nondisplayed And Added Liquidity (J)"
  end
  if value == "Y" then
    return "Liquidity Flag: Re Routed By Nyse (Y)"
  end
  if value == "S" then
    return "Liquidity Flag: Odd Lot Execution On Nyse (S)"
  end
  if value == "U" then
    return "Liquidity Flag: Added Liquidity On Nyse (U)"
  end
  if value == "B" then
    return "Liquidity Flag: Routed To Bx (B)"
  end
  if value == "E" then
    return "Liquidity Flag: Nyse Other (E)"
  end
  if value == "P" then
    return "Liquidity Flag: Routed To Psx (P)"
  end
  if value == "T" then
    return "Liquidity Flag: Opening Trade On Arca (T)"
  end
  if value == "Z" then
    return "Liquidity Flag: On Close Order On Arca (Z)"
  end
  if value == "m" then
    return "Liquidity Flag: Removed Liquidity At A Midpoint (m)"
  end
  if value == "k" then
    return "Liquidity Flag: Added Liquidity Via A Midpoint Order (k)"
  end

  return "Liquidity Flag: Unknown("..value..")"
end

-- Dissect: Liquidity Flag
nasdaq_psxequities_drop_asciidrop_v2_1.liquidity_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_drop_asciidrop_v2_1.liquidity_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_drop_asciidrop_v2_1.liquidity_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.liquidity_flag, range, value, display)

  return offset + length, value
end

-- Match Number
nasdaq_psxequities_drop_asciidrop_v2_1.match_number = {}

-- Size: Match Number
nasdaq_psxequities_drop_asciidrop_v2_1.match_number.size = 12

-- Display: Match Number
nasdaq_psxequities_drop_asciidrop_v2_1.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_psxequities_drop_asciidrop_v2_1.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_drop_asciidrop_v2_1.match_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_psxequities_drop_asciidrop_v2_1.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.match_number, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_psxequities_drop_asciidrop_v2_1.message_type = {}

-- Size: Message Type
nasdaq_psxequities_drop_asciidrop_v2_1.message_type.size = 1

-- Display: Message Type
nasdaq_psxequities_drop_asciidrop_v2_1.message_type.display = function(value)
  if value == "A" then
    return "Message Type: New Order Accepted Message (A)"
  end
  if value == "E" then
    return "Message Type: Existing Order Executed Message (E)"
  end
  if value == "X" then
    return "Message Type: Existing Order Canceled Message (X)"
  end
  if value == "B" then
    return "Message Type: Previous Execution Broken Message (B)"
  end
  if value == "U" then
    return "Message Type: Existing Order Replaced Message (U)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_psxequities_drop_asciidrop_v2_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_drop_asciidrop_v2_1.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_drop_asciidrop_v2_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_psxequities_drop_asciidrop_v2_1.password = {}

-- Size: Password
nasdaq_psxequities_drop_asciidrop_v2_1.password.size = 10

-- Display: Password
nasdaq_psxequities_drop_asciidrop_v2_1.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_psxequities_drop_asciidrop_v2_1.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_drop_asciidrop_v2_1.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_drop_asciidrop_v2_1.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.password, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_psxequities_drop_asciidrop_v2_1.price = {}

-- Size: Price
nasdaq_psxequities_drop_asciidrop_v2_1.price.size = 11

-- Display: Price
nasdaq_psxequities_drop_asciidrop_v2_1.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
nasdaq_psxequities_drop_asciidrop_v2_1.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_drop_asciidrop_v2_1.price.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_drop_asciidrop_v2_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.price, range, value, display)

  return offset + length, value
end

-- Reference
nasdaq_psxequities_drop_asciidrop_v2_1.reference = {}

-- Size: Reference
nasdaq_psxequities_drop_asciidrop_v2_1.reference.size = 12

-- Display: Reference
nasdaq_psxequities_drop_asciidrop_v2_1.reference.display = function(value)
  return "Reference: "..value
end

-- Dissect: Reference
nasdaq_psxequities_drop_asciidrop_v2_1.reference.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_drop_asciidrop_v2_1.reference.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_psxequities_drop_asciidrop_v2_1.reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.reference, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_psxequities_drop_asciidrop_v2_1.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_psxequities_drop_asciidrop_v2_1.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_psxequities_drop_asciidrop_v2_1.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
nasdaq_psxequities_drop_asciidrop_v2_1.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_drop_asciidrop_v2_1.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_drop_asciidrop_v2_1.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Replaced Token
nasdaq_psxequities_drop_asciidrop_v2_1.replaced_token = {}

-- Size: Replaced Token
nasdaq_psxequities_drop_asciidrop_v2_1.replaced_token.size = 10

-- Display: Replaced Token
nasdaq_psxequities_drop_asciidrop_v2_1.replaced_token.display = function(value)
  return "Replaced Token: "..value
end

-- Dissect: Replaced Token
nasdaq_psxequities_drop_asciidrop_v2_1.replaced_token.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_drop_asciidrop_v2_1.replaced_token.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_drop_asciidrop_v2_1.replaced_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.replaced_token, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_psxequities_drop_asciidrop_v2_1.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_psxequities_drop_asciidrop_v2_1.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_psxequities_drop_asciidrop_v2_1.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_psxequities_drop_asciidrop_v2_1.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_drop_asciidrop_v2_1.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_psxequities_drop_asciidrop_v2_1.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_psxequities_drop_asciidrop_v2_1.requested_session = {}

-- Size: Requested Session
nasdaq_psxequities_drop_asciidrop_v2_1.requested_session.size = 10

-- Display: Requested Session
nasdaq_psxequities_drop_asciidrop_v2_1.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_psxequities_drop_asciidrop_v2_1.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_drop_asciidrop_v2_1.requested_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_drop_asciidrop_v2_1.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_psxequities_drop_asciidrop_v2_1.sequence_number = {}

-- Size: Sequence Number
nasdaq_psxequities_drop_asciidrop_v2_1.sequence_number.size = 20

-- Display: Sequence Number
nasdaq_psxequities_drop_asciidrop_v2_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_psxequities_drop_asciidrop_v2_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_drop_asciidrop_v2_1.sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_psxequities_drop_asciidrop_v2_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Server Packet Type
nasdaq_psxequities_drop_asciidrop_v2_1.server_packet_type = {}

-- Size: Server Packet Type
nasdaq_psxequities_drop_asciidrop_v2_1.server_packet_type.size = 1

-- Display: Server Packet Type
nasdaq_psxequities_drop_asciidrop_v2_1.server_packet_type.display = function(value)
  if value == "+" then
    return "Server Packet Type: Debug Packet (+)"
  end
  if value == "A" then
    return "Server Packet Type: Login Accepted Packet (A)"
  end
  if value == "J" then
    return "Server Packet Type: Login Rejected Packet (J)"
  end
  if value == "S" then
    return "Server Packet Type: Sequenced Data Packet (S)"
  end
  if value == "H" then
    return "Server Packet Type: Server Heartbeat Packet (H)"
  end

  return "Server Packet Type: Unknown("..value..")"
end

-- Dissect: Server Packet Type
nasdaq_psxequities_drop_asciidrop_v2_1.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_drop_asciidrop_v2_1.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_drop_asciidrop_v2_1.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_psxequities_drop_asciidrop_v2_1.session = {}

-- Size: Session
nasdaq_psxequities_drop_asciidrop_v2_1.session.size = 10

-- Display: Session
nasdaq_psxequities_drop_asciidrop_v2_1.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
nasdaq_psxequities_drop_asciidrop_v2_1.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_drop_asciidrop_v2_1.session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_drop_asciidrop_v2_1.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.session, range, value, display)

  return offset + length, value
end

-- Shares
nasdaq_psxequities_drop_asciidrop_v2_1.shares = {}

-- Size: Shares
nasdaq_psxequities_drop_asciidrop_v2_1.shares.size = 6

-- Display: Shares
nasdaq_psxequities_drop_asciidrop_v2_1.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
nasdaq_psxequities_drop_asciidrop_v2_1.shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_drop_asciidrop_v2_1.shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_psxequities_drop_asciidrop_v2_1.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.shares, range, value, display)

  return offset + length, value
end

-- Soup Lf
nasdaq_psxequities_drop_asciidrop_v2_1.soup_lf = {}

-- Size: Soup Lf
nasdaq_psxequities_drop_asciidrop_v2_1.soup_lf.size = 1

-- Display: Soup Lf
nasdaq_psxequities_drop_asciidrop_v2_1.soup_lf.display = function(value)
  if value == 10 then
    return "Soup Lf: Line Feed"
  end

  return "Soup Lf: Unknown("..value..")"
end

-- Dissect: Soup Lf
nasdaq_psxequities_drop_asciidrop_v2_1.soup_lf.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_drop_asciidrop_v2_1.soup_lf.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_psxequities_drop_asciidrop_v2_1.soup_lf.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.soup_lf, range, value, display)

  return offset + length, value
end

-- Source
nasdaq_psxequities_drop_asciidrop_v2_1.source = {}

-- Size: Source
nasdaq_psxequities_drop_asciidrop_v2_1.source.size = 6

-- Display: Source
nasdaq_psxequities_drop_asciidrop_v2_1.source.display = function(value)
  return "Source: "..value
end

-- Dissect: Source
nasdaq_psxequities_drop_asciidrop_v2_1.source.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_drop_asciidrop_v2_1.source.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_drop_asciidrop_v2_1.source.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.source, range, value, display)

  return offset + length, value
end

-- Stock
nasdaq_psxequities_drop_asciidrop_v2_1.stock = {}

-- Size: Stock
nasdaq_psxequities_drop_asciidrop_v2_1.stock.size = 6

-- Display: Stock
nasdaq_psxequities_drop_asciidrop_v2_1.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_psxequities_drop_asciidrop_v2_1.stock.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_drop_asciidrop_v2_1.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_drop_asciidrop_v2_1.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.stock, range, value, display)

  return offset + length, value
end

-- Text
nasdaq_psxequities_drop_asciidrop_v2_1.text = {}

-- Size: Text
nasdaq_psxequities_drop_asciidrop_v2_1.text.size = 1

-- Display: Text
nasdaq_psxequities_drop_asciidrop_v2_1.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
nasdaq_psxequities_drop_asciidrop_v2_1.text.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_drop_asciidrop_v2_1.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_drop_asciidrop_v2_1.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.text, range, value, display)

  return offset + length, value
end

-- Time In Force
nasdaq_psxequities_drop_asciidrop_v2_1.time_in_force = {}

-- Size: Time In Force
nasdaq_psxequities_drop_asciidrop_v2_1.time_in_force.size = 12

-- Display: Time In Force
nasdaq_psxequities_drop_asciidrop_v2_1.time_in_force.display = function(value)
  return "Time In Force: "..value
end

-- Dissect: Time In Force
nasdaq_psxequities_drop_asciidrop_v2_1.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_drop_asciidrop_v2_1.time_in_force.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_psxequities_drop_asciidrop_v2_1.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Time Stamp
nasdaq_psxequities_drop_asciidrop_v2_1.time_stamp = {}

-- Size: Time Stamp
nasdaq_psxequities_drop_asciidrop_v2_1.time_stamp.size = 9

-- Display: Time Stamp
nasdaq_psxequities_drop_asciidrop_v2_1.time_stamp.display = function(value)
  return "Time Stamp: "..value
end

-- Dissect: Time Stamp
nasdaq_psxequities_drop_asciidrop_v2_1.time_stamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_drop_asciidrop_v2_1.time_stamp.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_drop_asciidrop_v2_1.time_stamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.time_stamp, range, value, display)

  return offset + length, value
end

-- Token
nasdaq_psxequities_drop_asciidrop_v2_1.token = {}

-- Size: Token
nasdaq_psxequities_drop_asciidrop_v2_1.token.size = 10

-- Display: Token
nasdaq_psxequities_drop_asciidrop_v2_1.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
nasdaq_psxequities_drop_asciidrop_v2_1.token.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_drop_asciidrop_v2_1.token.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_drop_asciidrop_v2_1.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.token, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
nasdaq_psxequities_drop_asciidrop_v2_1.unsequenced_message = {}

-- Size: Unsequenced Message
nasdaq_psxequities_drop_asciidrop_v2_1.unsequenced_message.size = 0

-- Display: Unsequenced Message
nasdaq_psxequities_drop_asciidrop_v2_1.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect: Unsequenced Message
nasdaq_psxequities_drop_asciidrop_v2_1.unsequenced_message.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_drop_asciidrop_v2_1.unsequenced_message.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_psxequities_drop_asciidrop_v2_1.unsequenced_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.unsequenced_message, range, value, display)

  return offset + length, value
end

-- User
nasdaq_psxequities_drop_asciidrop_v2_1.user = {}

-- Size: User
nasdaq_psxequities_drop_asciidrop_v2_1.user.size = 4

-- Display: User
nasdaq_psxequities_drop_asciidrop_v2_1.user.display = function(value)
  return "User: "..value
end

-- Dissect: User
nasdaq_psxequities_drop_asciidrop_v2_1.user.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_drop_asciidrop_v2_1.user.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_drop_asciidrop_v2_1.user.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.user, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_psxequities_drop_asciidrop_v2_1.username = {}

-- Size: Username
nasdaq_psxequities_drop_asciidrop_v2_1.username.size = 6

-- Display: Username
nasdaq_psxequities_drop_asciidrop_v2_1.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_psxequities_drop_asciidrop_v2_1.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_drop_asciidrop_v2_1.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_drop_asciidrop_v2_1.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq PsxEquities Drop AsciiDrop 2.1
-----------------------------------------------------------------------

-- Existing Order Replaced Message
nasdaq_psxequities_drop_asciidrop_v2_1.existing_order_replaced_message = {}

-- Size: Existing Order Replaced Message
nasdaq_psxequities_drop_asciidrop_v2_1.existing_order_replaced_message.size =
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.source.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.user.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.token.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.replaced_token.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.buy_sell.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.shares.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.stock.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.price.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.firm.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.reference.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.time_in_force.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.capacity.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.liquidity_flag.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.clearing_code.size

-- Display: Existing Order Replaced Message
nasdaq_psxequities_drop_asciidrop_v2_1.existing_order_replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Existing Order Replaced Message
nasdaq_psxequities_drop_asciidrop_v2_1.existing_order_replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Separator 1: 1 byte separator, stepped over
  index = index + 1

  -- Source: Alphanumeric
  index, source = nasdaq_psxequities_drop_asciidrop_v2_1.source.dissect(buffer, index, packet, parent)

  -- Separator 2: 1 byte separator, stepped over
  index = index + 1

  -- User: Alphanumeric
  index, user = nasdaq_psxequities_drop_asciidrop_v2_1.user.dissect(buffer, index, packet, parent)

  -- Separator 3: 1 byte separator, stepped over
  index = index + 1

  -- Token: Alphanumeric
  index, token = nasdaq_psxequities_drop_asciidrop_v2_1.token.dissect(buffer, index, packet, parent)

  -- Separator 4: 1 byte separator, stepped over
  index = index + 1

  -- Replaced Token: Alphanumeric
  index, replaced_token = nasdaq_psxequities_drop_asciidrop_v2_1.replaced_token.dissect(buffer, index, packet, parent)

  -- Separator 5: 1 byte separator, stepped over
  index = index + 1

  -- Buy Sell: Alpha
  index, buy_sell = nasdaq_psxequities_drop_asciidrop_v2_1.buy_sell.dissect(buffer, index, packet, parent)

  -- Separator 6: 1 byte separator, stepped over
  index = index + 1

  -- Shares: Numeric
  index, shares = nasdaq_psxequities_drop_asciidrop_v2_1.shares.dissect(buffer, index, packet, parent)

  -- Separator 7: 1 byte separator, stepped over
  index = index + 1

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_drop_asciidrop_v2_1.stock.dissect(buffer, index, packet, parent)

  -- Separator 8: 1 byte separator, stepped over
  index = index + 1

  -- Price: Numeric
  index, price = nasdaq_psxequities_drop_asciidrop_v2_1.price.dissect(buffer, index, packet, parent)

  -- Separator 9: 1 byte separator, stepped over
  index = index + 1

  -- Firm: Alpha
  index, firm = nasdaq_psxequities_drop_asciidrop_v2_1.firm.dissect(buffer, index, packet, parent)

  -- Separator 10: 1 byte separator, stepped over
  index = index + 1

  -- Reference: Numeric
  index, reference = nasdaq_psxequities_drop_asciidrop_v2_1.reference.dissect(buffer, index, packet, parent)

  -- Separator 11: 1 byte separator, stepped over
  index = index + 1

  -- Time In Force: Numeric
  index, time_in_force = nasdaq_psxequities_drop_asciidrop_v2_1.time_in_force.dissect(buffer, index, packet, parent)

  -- Separator 12: 1 byte separator, stepped over
  index = index + 1

  -- Capacity: Alpha
  index, capacity = nasdaq_psxequities_drop_asciidrop_v2_1.capacity.dissect(buffer, index, packet, parent)

  -- Separator 13: 1 byte separator, stepped over
  index = index + 1

  -- Liquidity Flag: Alpha
  index, liquidity_flag = nasdaq_psxequities_drop_asciidrop_v2_1.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Separator 14: 1 byte separator, stepped over
  index = index + 1

  -- Clearing Code: Alpha
  index, clearing_code = nasdaq_psxequities_drop_asciidrop_v2_1.clearing_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Existing Order Replaced Message
nasdaq_psxequities_drop_asciidrop_v2_1.existing_order_replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.existing_order_replaced_message, buffer(offset, 0))
    local index = nasdaq_psxequities_drop_asciidrop_v2_1.existing_order_replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_drop_asciidrop_v2_1.existing_order_replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_drop_asciidrop_v2_1.existing_order_replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Previous Execution Broken Message
nasdaq_psxequities_drop_asciidrop_v2_1.previous_execution_broken_message = {}

-- Size: Previous Execution Broken Message
nasdaq_psxequities_drop_asciidrop_v2_1.previous_execution_broken_message.size =
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.source.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.user.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.token.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.replaced_token.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.buy_sell.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.shares.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.stock.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.price.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.firm.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.reference.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.match_number.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.capacity.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.liquidity_flag.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.clearing_code.size

-- Display: Previous Execution Broken Message
nasdaq_psxequities_drop_asciidrop_v2_1.previous_execution_broken_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Previous Execution Broken Message
nasdaq_psxequities_drop_asciidrop_v2_1.previous_execution_broken_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Separator 1: 1 byte separator, stepped over
  index = index + 1

  -- Source: Alphanumeric
  index, source = nasdaq_psxequities_drop_asciidrop_v2_1.source.dissect(buffer, index, packet, parent)

  -- Separator 2: 1 byte separator, stepped over
  index = index + 1

  -- User: Alphanumeric
  index, user = nasdaq_psxequities_drop_asciidrop_v2_1.user.dissect(buffer, index, packet, parent)

  -- Separator 3: 1 byte separator, stepped over
  index = index + 1

  -- Token: Alphanumeric
  index, token = nasdaq_psxequities_drop_asciidrop_v2_1.token.dissect(buffer, index, packet, parent)

  -- Separator 4: 1 byte separator, stepped over
  index = index + 1

  -- Replaced Token: Alphanumeric
  index, replaced_token = nasdaq_psxequities_drop_asciidrop_v2_1.replaced_token.dissect(buffer, index, packet, parent)

  -- Separator 5: 1 byte separator, stepped over
  index = index + 1

  -- Buy Sell: Alpha
  index, buy_sell = nasdaq_psxequities_drop_asciidrop_v2_1.buy_sell.dissect(buffer, index, packet, parent)

  -- Separator 6: 1 byte separator, stepped over
  index = index + 1

  -- Shares: Numeric
  index, shares = nasdaq_psxequities_drop_asciidrop_v2_1.shares.dissect(buffer, index, packet, parent)

  -- Separator 7: 1 byte separator, stepped over
  index = index + 1

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_drop_asciidrop_v2_1.stock.dissect(buffer, index, packet, parent)

  -- Separator 8: 1 byte separator, stepped over
  index = index + 1

  -- Price: Numeric
  index, price = nasdaq_psxequities_drop_asciidrop_v2_1.price.dissect(buffer, index, packet, parent)

  -- Separator 9: 1 byte separator, stepped over
  index = index + 1

  -- Firm: Alpha
  index, firm = nasdaq_psxequities_drop_asciidrop_v2_1.firm.dissect(buffer, index, packet, parent)

  -- Separator 10: 1 byte separator, stepped over
  index = index + 1

  -- Reference: Numeric
  index, reference = nasdaq_psxequities_drop_asciidrop_v2_1.reference.dissect(buffer, index, packet, parent)

  -- Separator 11: 1 byte separator, stepped over
  index = index + 1

  -- Match Number: Numeric
  index, match_number = nasdaq_psxequities_drop_asciidrop_v2_1.match_number.dissect(buffer, index, packet, parent)

  -- Separator 12: 1 byte separator, stepped over
  index = index + 1

  -- Capacity: Alpha
  index, capacity = nasdaq_psxequities_drop_asciidrop_v2_1.capacity.dissect(buffer, index, packet, parent)

  -- Separator 13: 1 byte separator, stepped over
  index = index + 1

  -- Liquidity Flag: Alpha
  index, liquidity_flag = nasdaq_psxequities_drop_asciidrop_v2_1.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Separator 14: 1 byte separator, stepped over
  index = index + 1

  -- Clearing Code: Alpha
  index, clearing_code = nasdaq_psxequities_drop_asciidrop_v2_1.clearing_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Previous Execution Broken Message
nasdaq_psxequities_drop_asciidrop_v2_1.previous_execution_broken_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.previous_execution_broken_message, buffer(offset, 0))
    local index = nasdaq_psxequities_drop_asciidrop_v2_1.previous_execution_broken_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_drop_asciidrop_v2_1.previous_execution_broken_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_drop_asciidrop_v2_1.previous_execution_broken_message.fields(buffer, offset, packet, parent)
  end
end

-- Existing Order Canceled Message
nasdaq_psxequities_drop_asciidrop_v2_1.existing_order_canceled_message = {}

-- Size: Existing Order Canceled Message
nasdaq_psxequities_drop_asciidrop_v2_1.existing_order_canceled_message.size =
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.source.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.user.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.token.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.replaced_token.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.buy_sell.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.shares.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.stock.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.price.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.firm.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.reference.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.time_in_force.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.capacity.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.liquidity_flag.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.clearing_code.size

-- Display: Existing Order Canceled Message
nasdaq_psxequities_drop_asciidrop_v2_1.existing_order_canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Existing Order Canceled Message
nasdaq_psxequities_drop_asciidrop_v2_1.existing_order_canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Separator 1: 1 byte separator, stepped over
  index = index + 1

  -- Source: Alphanumeric
  index, source = nasdaq_psxequities_drop_asciidrop_v2_1.source.dissect(buffer, index, packet, parent)

  -- Separator 2: 1 byte separator, stepped over
  index = index + 1

  -- User: Alphanumeric
  index, user = nasdaq_psxequities_drop_asciidrop_v2_1.user.dissect(buffer, index, packet, parent)

  -- Separator 3: 1 byte separator, stepped over
  index = index + 1

  -- Token: Alphanumeric
  index, token = nasdaq_psxequities_drop_asciidrop_v2_1.token.dissect(buffer, index, packet, parent)

  -- Separator 4: 1 byte separator, stepped over
  index = index + 1

  -- Replaced Token: Alphanumeric
  index, replaced_token = nasdaq_psxequities_drop_asciidrop_v2_1.replaced_token.dissect(buffer, index, packet, parent)

  -- Separator 5: 1 byte separator, stepped over
  index = index + 1

  -- Buy Sell: Alpha
  index, buy_sell = nasdaq_psxequities_drop_asciidrop_v2_1.buy_sell.dissect(buffer, index, packet, parent)

  -- Separator 6: 1 byte separator, stepped over
  index = index + 1

  -- Shares: Numeric
  index, shares = nasdaq_psxequities_drop_asciidrop_v2_1.shares.dissect(buffer, index, packet, parent)

  -- Separator 7: 1 byte separator, stepped over
  index = index + 1

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_drop_asciidrop_v2_1.stock.dissect(buffer, index, packet, parent)

  -- Separator 8: 1 byte separator, stepped over
  index = index + 1

  -- Price: Numeric
  index, price = nasdaq_psxequities_drop_asciidrop_v2_1.price.dissect(buffer, index, packet, parent)

  -- Separator 9: 1 byte separator, stepped over
  index = index + 1

  -- Firm: Alpha
  index, firm = nasdaq_psxequities_drop_asciidrop_v2_1.firm.dissect(buffer, index, packet, parent)

  -- Separator 10: 1 byte separator, stepped over
  index = index + 1

  -- Reference: Numeric
  index, reference = nasdaq_psxequities_drop_asciidrop_v2_1.reference.dissect(buffer, index, packet, parent)

  -- Separator 11: 1 byte separator, stepped over
  index = index + 1

  -- Time In Force: Numeric
  index, time_in_force = nasdaq_psxequities_drop_asciidrop_v2_1.time_in_force.dissect(buffer, index, packet, parent)

  -- Separator 12: 1 byte separator, stepped over
  index = index + 1

  -- Capacity: Alpha
  index, capacity = nasdaq_psxequities_drop_asciidrop_v2_1.capacity.dissect(buffer, index, packet, parent)

  -- Separator 13: 1 byte separator, stepped over
  index = index + 1

  -- Liquidity Flag: Alpha
  index, liquidity_flag = nasdaq_psxequities_drop_asciidrop_v2_1.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Separator 14: 1 byte separator, stepped over
  index = index + 1

  -- Clearing Code: Alpha
  index, clearing_code = nasdaq_psxequities_drop_asciidrop_v2_1.clearing_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Existing Order Canceled Message
nasdaq_psxequities_drop_asciidrop_v2_1.existing_order_canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.existing_order_canceled_message, buffer(offset, 0))
    local index = nasdaq_psxequities_drop_asciidrop_v2_1.existing_order_canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_drop_asciidrop_v2_1.existing_order_canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_drop_asciidrop_v2_1.existing_order_canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Existing Order Executed Message
nasdaq_psxequities_drop_asciidrop_v2_1.existing_order_executed_message = {}

-- Size: Existing Order Executed Message
nasdaq_psxequities_drop_asciidrop_v2_1.existing_order_executed_message.size =
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.source.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.user.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.token.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.replaced_token.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.buy_sell.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.shares.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.stock.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.price.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.firm.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.reference.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.match_number.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.capacity.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.liquidity_flag.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.clearing_code.size

-- Display: Existing Order Executed Message
nasdaq_psxequities_drop_asciidrop_v2_1.existing_order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Existing Order Executed Message
nasdaq_psxequities_drop_asciidrop_v2_1.existing_order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Separator 1: 1 byte separator, stepped over
  index = index + 1

  -- Source: Alphanumeric
  index, source = nasdaq_psxequities_drop_asciidrop_v2_1.source.dissect(buffer, index, packet, parent)

  -- Separator 2: 1 byte separator, stepped over
  index = index + 1

  -- User: Alphanumeric
  index, user = nasdaq_psxequities_drop_asciidrop_v2_1.user.dissect(buffer, index, packet, parent)

  -- Separator 3: 1 byte separator, stepped over
  index = index + 1

  -- Token: Alphanumeric
  index, token = nasdaq_psxequities_drop_asciidrop_v2_1.token.dissect(buffer, index, packet, parent)

  -- Separator 4: 1 byte separator, stepped over
  index = index + 1

  -- Replaced Token: Alphanumeric
  index, replaced_token = nasdaq_psxequities_drop_asciidrop_v2_1.replaced_token.dissect(buffer, index, packet, parent)

  -- Separator 5: 1 byte separator, stepped over
  index = index + 1

  -- Buy Sell: Alpha
  index, buy_sell = nasdaq_psxequities_drop_asciidrop_v2_1.buy_sell.dissect(buffer, index, packet, parent)

  -- Separator 6: 1 byte separator, stepped over
  index = index + 1

  -- Shares: Numeric
  index, shares = nasdaq_psxequities_drop_asciidrop_v2_1.shares.dissect(buffer, index, packet, parent)

  -- Separator 7: 1 byte separator, stepped over
  index = index + 1

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_drop_asciidrop_v2_1.stock.dissect(buffer, index, packet, parent)

  -- Separator 8: 1 byte separator, stepped over
  index = index + 1

  -- Price: Numeric
  index, price = nasdaq_psxequities_drop_asciidrop_v2_1.price.dissect(buffer, index, packet, parent)

  -- Separator 9: 1 byte separator, stepped over
  index = index + 1

  -- Firm: Alpha
  index, firm = nasdaq_psxequities_drop_asciidrop_v2_1.firm.dissect(buffer, index, packet, parent)

  -- Separator 10: 1 byte separator, stepped over
  index = index + 1

  -- Reference: Numeric
  index, reference = nasdaq_psxequities_drop_asciidrop_v2_1.reference.dissect(buffer, index, packet, parent)

  -- Separator 11: 1 byte separator, stepped over
  index = index + 1

  -- Match Number: Numeric
  index, match_number = nasdaq_psxequities_drop_asciidrop_v2_1.match_number.dissect(buffer, index, packet, parent)

  -- Separator 12: 1 byte separator, stepped over
  index = index + 1

  -- Capacity: Alpha
  index, capacity = nasdaq_psxequities_drop_asciidrop_v2_1.capacity.dissect(buffer, index, packet, parent)

  -- Separator 13: 1 byte separator, stepped over
  index = index + 1

  -- Liquidity Flag: Alpha
  index, liquidity_flag = nasdaq_psxequities_drop_asciidrop_v2_1.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Separator 14: 1 byte separator, stepped over
  index = index + 1

  -- Clearing Code: Alpha
  index, clearing_code = nasdaq_psxequities_drop_asciidrop_v2_1.clearing_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Existing Order Executed Message
nasdaq_psxequities_drop_asciidrop_v2_1.existing_order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.existing_order_executed_message, buffer(offset, 0))
    local index = nasdaq_psxequities_drop_asciidrop_v2_1.existing_order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_drop_asciidrop_v2_1.existing_order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_drop_asciidrop_v2_1.existing_order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Accepted Message
nasdaq_psxequities_drop_asciidrop_v2_1.new_order_accepted_message = {}

-- Size: New Order Accepted Message
nasdaq_psxequities_drop_asciidrop_v2_1.new_order_accepted_message.size =
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.source.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.user.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.token.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.replaced_token.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.buy_sell.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.shares.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.stock.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.price.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.firm.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.reference.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.time_in_force.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.capacity.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.liquidity_flag.size + 
  1 + 
  nasdaq_psxequities_drop_asciidrop_v2_1.clearing_code.size

-- Display: New Order Accepted Message
nasdaq_psxequities_drop_asciidrop_v2_1.new_order_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Accepted Message
nasdaq_psxequities_drop_asciidrop_v2_1.new_order_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Separator 1: 1 byte separator, stepped over
  index = index + 1

  -- Source: Alphanumeric
  index, source = nasdaq_psxequities_drop_asciidrop_v2_1.source.dissect(buffer, index, packet, parent)

  -- Separator 2: 1 byte separator, stepped over
  index = index + 1

  -- User: Alphanumeric
  index, user = nasdaq_psxequities_drop_asciidrop_v2_1.user.dissect(buffer, index, packet, parent)

  -- Separator 3: 1 byte separator, stepped over
  index = index + 1

  -- Token: Alphanumeric
  index, token = nasdaq_psxequities_drop_asciidrop_v2_1.token.dissect(buffer, index, packet, parent)

  -- Separator 4: 1 byte separator, stepped over
  index = index + 1

  -- Replaced Token: Alphanumeric
  index, replaced_token = nasdaq_psxequities_drop_asciidrop_v2_1.replaced_token.dissect(buffer, index, packet, parent)

  -- Separator 5: 1 byte separator, stepped over
  index = index + 1

  -- Buy Sell: Alpha
  index, buy_sell = nasdaq_psxequities_drop_asciidrop_v2_1.buy_sell.dissect(buffer, index, packet, parent)

  -- Separator 6: 1 byte separator, stepped over
  index = index + 1

  -- Shares: Numeric
  index, shares = nasdaq_psxequities_drop_asciidrop_v2_1.shares.dissect(buffer, index, packet, parent)

  -- Separator 7: 1 byte separator, stepped over
  index = index + 1

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_drop_asciidrop_v2_1.stock.dissect(buffer, index, packet, parent)

  -- Separator 8: 1 byte separator, stepped over
  index = index + 1

  -- Price: Numeric
  index, price = nasdaq_psxequities_drop_asciidrop_v2_1.price.dissect(buffer, index, packet, parent)

  -- Separator 9: 1 byte separator, stepped over
  index = index + 1

  -- Firm: Alpha
  index, firm = nasdaq_psxequities_drop_asciidrop_v2_1.firm.dissect(buffer, index, packet, parent)

  -- Separator 10: 1 byte separator, stepped over
  index = index + 1

  -- Reference: Numeric
  index, reference = nasdaq_psxequities_drop_asciidrop_v2_1.reference.dissect(buffer, index, packet, parent)

  -- Separator 11: 1 byte separator, stepped over
  index = index + 1

  -- Time In Force: Numeric
  index, time_in_force = nasdaq_psxequities_drop_asciidrop_v2_1.time_in_force.dissect(buffer, index, packet, parent)

  -- Separator 12: 1 byte separator, stepped over
  index = index + 1

  -- Capacity: Alpha
  index, capacity = nasdaq_psxequities_drop_asciidrop_v2_1.capacity.dissect(buffer, index, packet, parent)

  -- Separator 13: 1 byte separator, stepped over
  index = index + 1

  -- Liquidity Flag: Alpha
  index, liquidity_flag = nasdaq_psxequities_drop_asciidrop_v2_1.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Separator 14: 1 byte separator, stepped over
  index = index + 1

  -- Clearing Code: Alpha
  index, clearing_code = nasdaq_psxequities_drop_asciidrop_v2_1.clearing_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Accepted Message
nasdaq_psxequities_drop_asciidrop_v2_1.new_order_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.new_order_accepted_message, buffer(offset, 0))
    local index = nasdaq_psxequities_drop_asciidrop_v2_1.new_order_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_drop_asciidrop_v2_1.new_order_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_drop_asciidrop_v2_1.new_order_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nasdaq_psxequities_drop_asciidrop_v2_1.sequenced_message = {}

-- Dissect: Sequenced Message
nasdaq_psxequities_drop_asciidrop_v2_1.sequenced_message.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect New Order Accepted Message
  if message_type == "A" then
    return nasdaq_psxequities_drop_asciidrop_v2_1.new_order_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Existing Order Executed Message
  if message_type == "E" then
    return nasdaq_psxequities_drop_asciidrop_v2_1.existing_order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Existing Order Canceled Message
  if message_type == "X" then
    return nasdaq_psxequities_drop_asciidrop_v2_1.existing_order_canceled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Previous Execution Broken Message
  if message_type == "B" then
    return nasdaq_psxequities_drop_asciidrop_v2_1.previous_execution_broken_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Existing Order Replaced Message
  if message_type == "U" then
    return nasdaq_psxequities_drop_asciidrop_v2_1.existing_order_replaced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Message Header
nasdaq_psxequities_drop_asciidrop_v2_1.sequenced_message_header = {}

-- Size: Sequenced Message Header
nasdaq_psxequities_drop_asciidrop_v2_1.sequenced_message_header.size =
  nasdaq_psxequities_drop_asciidrop_v2_1.time_stamp.size + 
  nasdaq_psxequities_drop_asciidrop_v2_1.comma.size + 
  nasdaq_psxequities_drop_asciidrop_v2_1.message_type.size

-- Display: Sequenced Message Header
nasdaq_psxequities_drop_asciidrop_v2_1.sequenced_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message Header
nasdaq_psxequities_drop_asciidrop_v2_1.sequenced_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Stamp: 9 Byte Ascii String
  index, time_stamp = nasdaq_psxequities_drop_asciidrop_v2_1.time_stamp.dissect(buffer, index, packet, parent)

  -- Comma: 1 Byte Ascii String
  index, comma = nasdaq_psxequities_drop_asciidrop_v2_1.comma.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 5 values
  index, message_type = nasdaq_psxequities_drop_asciidrop_v2_1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Message Header
nasdaq_psxequities_drop_asciidrop_v2_1.sequenced_message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.sequenced_message_header, buffer(offset, 0))
    local index = nasdaq_psxequities_drop_asciidrop_v2_1.sequenced_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_drop_asciidrop_v2_1.sequenced_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_drop_asciidrop_v2_1.sequenced_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Data Packet
nasdaq_psxequities_drop_asciidrop_v2_1.sequenced_data_packet = {}

-- Calculate size of: Sequenced Data Packet
nasdaq_psxequities_drop_asciidrop_v2_1.sequenced_data_packet.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_drop_asciidrop_v2_1.sequenced_message_header.size

  -- Calculate runtime size of Sequenced Message field
  local sequenced_message_offset = offset + index
  local sequenced_message_type = buffer(sequenced_message_offset - 1, 1):string()
  index = index + nasdaq_psxequities_drop_asciidrop_v2_1.sequenced_message.size(buffer, sequenced_message_offset, sequenced_message_type)

  return index
end

-- Display: Sequenced Data Packet
nasdaq_psxequities_drop_asciidrop_v2_1.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_psxequities_drop_asciidrop_v2_1.sequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequenced Message Header: Struct of 3 fields
  index, sequenced_message_header = nasdaq_psxequities_drop_asciidrop_v2_1.sequenced_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Sequenced Message: Runtime Type with 5 branches
  index = nasdaq_psxequities_drop_asciidrop_v2_1.sequenced_message.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_psxequities_drop_asciidrop_v2_1.sequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.sequenced_data_packet, buffer(offset, 0))
    local index = nasdaq_psxequities_drop_asciidrop_v2_1.sequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_drop_asciidrop_v2_1.sequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_drop_asciidrop_v2_1.sequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Rejected Packet
nasdaq_psxequities_drop_asciidrop_v2_1.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_psxequities_drop_asciidrop_v2_1.login_rejected_packet.size =
  nasdaq_psxequities_drop_asciidrop_v2_1.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_psxequities_drop_asciidrop_v2_1.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_psxequities_drop_asciidrop_v2_1.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = nasdaq_psxequities_drop_asciidrop_v2_1.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_psxequities_drop_asciidrop_v2_1.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_psxequities_drop_asciidrop_v2_1.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_drop_asciidrop_v2_1.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_drop_asciidrop_v2_1.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_psxequities_drop_asciidrop_v2_1.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_psxequities_drop_asciidrop_v2_1.login_accepted_packet.size =
  nasdaq_psxequities_drop_asciidrop_v2_1.session.size + 
  nasdaq_psxequities_drop_asciidrop_v2_1.sequence_number.size

-- Display: Login Accepted Packet
nasdaq_psxequities_drop_asciidrop_v2_1.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_psxequities_drop_asciidrop_v2_1.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_psxequities_drop_asciidrop_v2_1.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 20 Byte Ascii String
  index, sequence_number = nasdaq_psxequities_drop_asciidrop_v2_1.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_psxequities_drop_asciidrop_v2_1.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_psxequities_drop_asciidrop_v2_1.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_drop_asciidrop_v2_1.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_drop_asciidrop_v2_1.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_psxequities_drop_asciidrop_v2_1.debug_packet = {}

-- Size: Debug Packet
nasdaq_psxequities_drop_asciidrop_v2_1.debug_packet.size =
  nasdaq_psxequities_drop_asciidrop_v2_1.text.size

-- Display: Debug Packet
nasdaq_psxequities_drop_asciidrop_v2_1.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_psxequities_drop_asciidrop_v2_1.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = nasdaq_psxequities_drop_asciidrop_v2_1.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
nasdaq_psxequities_drop_asciidrop_v2_1.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_psxequities_drop_asciidrop_v2_1.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_drop_asciidrop_v2_1.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_drop_asciidrop_v2_1.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
nasdaq_psxequities_drop_asciidrop_v2_1.server_payload = {}

-- Dissect: Server Payload
nasdaq_psxequities_drop_asciidrop_v2_1.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  -- Dissect Debug Packet
  if server_packet_type == "+" then
    return nasdaq_psxequities_drop_asciidrop_v2_1.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if server_packet_type == "A" then
    return nasdaq_psxequities_drop_asciidrop_v2_1.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if server_packet_type == "J" then
    return nasdaq_psxequities_drop_asciidrop_v2_1.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if server_packet_type == "S" then
    return nasdaq_psxequities_drop_asciidrop_v2_1.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
nasdaq_psxequities_drop_asciidrop_v2_1.server_packet_header = {}

-- Size: Server Packet Header
nasdaq_psxequities_drop_asciidrop_v2_1.server_packet_header.size =
  nasdaq_psxequities_drop_asciidrop_v2_1.server_packet_type.size

-- Display: Server Packet Header
nasdaq_psxequities_drop_asciidrop_v2_1.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
nasdaq_psxequities_drop_asciidrop_v2_1.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Server Packet Type: 1 Byte Ascii String Enum with 5 values
  index, server_packet_type = nasdaq_psxequities_drop_asciidrop_v2_1.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
nasdaq_psxequities_drop_asciidrop_v2_1.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.server_packet_header, buffer(offset, 0))
    local index = nasdaq_psxequities_drop_asciidrop_v2_1.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_drop_asciidrop_v2_1.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_drop_asciidrop_v2_1.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Packet
nasdaq_psxequities_drop_asciidrop_v2_1.server_packet = {}

-- Verify required size of Tcp packet
nasdaq_psxequities_drop_asciidrop_v2_1.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_psxequities_drop_asciidrop_v2_1.server_packet_header.size
end

-- Dissect Server Packet
nasdaq_psxequities_drop_asciidrop_v2_1.server_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Server Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Server Packet Header: Struct of 1 fields
    index, server_packet_header = nasdaq_psxequities_drop_asciidrop_v2_1.server_packet_header.dissect(buffer, index, packet, parent)

    -- Dependency element: Server Packet Type
    local server_packet_type = buffer(index - 1, 1):string()

    -- Server Payload: Runtime Type with 4 branches
    index = nasdaq_psxequities_drop_asciidrop_v2_1.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

    -- Soup Lf: 1 Byte Fixed Width Integer Static
    index, soup_lf = nasdaq_psxequities_drop_asciidrop_v2_1.soup_lf.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Unsequenced Data Packet
nasdaq_psxequities_drop_asciidrop_v2_1.unsequenced_data_packet = {}

-- Size: Unsequenced Data Packet
nasdaq_psxequities_drop_asciidrop_v2_1.unsequenced_data_packet.size =
  nasdaq_psxequities_drop_asciidrop_v2_1.unsequenced_message.size

-- Display: Unsequenced Data Packet
nasdaq_psxequities_drop_asciidrop_v2_1.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_psxequities_drop_asciidrop_v2_1.unsequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = nasdaq_psxequities_drop_asciidrop_v2_1.unsequenced_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_psxequities_drop_asciidrop_v2_1.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.unsequenced_data_packet, buffer(offset, 0))
    local index = nasdaq_psxequities_drop_asciidrop_v2_1.unsequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_drop_asciidrop_v2_1.unsequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_drop_asciidrop_v2_1.unsequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Packet
nasdaq_psxequities_drop_asciidrop_v2_1.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_psxequities_drop_asciidrop_v2_1.login_request_packet.size =
  nasdaq_psxequities_drop_asciidrop_v2_1.username.size + 
  nasdaq_psxequities_drop_asciidrop_v2_1.password.size + 
  nasdaq_psxequities_drop_asciidrop_v2_1.requested_session.size + 
  nasdaq_psxequities_drop_asciidrop_v2_1.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_psxequities_drop_asciidrop_v2_1.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_psxequities_drop_asciidrop_v2_1.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_psxequities_drop_asciidrop_v2_1.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_psxequities_drop_asciidrop_v2_1.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_psxequities_drop_asciidrop_v2_1.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_psxequities_drop_asciidrop_v2_1.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_psxequities_drop_asciidrop_v2_1.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_psxequities_drop_asciidrop_v2_1.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_drop_asciidrop_v2_1.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_drop_asciidrop_v2_1.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
nasdaq_psxequities_drop_asciidrop_v2_1.client_payload = {}

-- Dissect: Client Payload
nasdaq_psxequities_drop_asciidrop_v2_1.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  -- Dissect Debug Packet
  if client_packet_type == "+" then
    return nasdaq_psxequities_drop_asciidrop_v2_1.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if client_packet_type == "L" then
    return nasdaq_psxequities_drop_asciidrop_v2_1.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if client_packet_type == "U" then
    return nasdaq_psxequities_drop_asciidrop_v2_1.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
nasdaq_psxequities_drop_asciidrop_v2_1.client_packet_header = {}

-- Size: Client Packet Header
nasdaq_psxequities_drop_asciidrop_v2_1.client_packet_header.size =
  nasdaq_psxequities_drop_asciidrop_v2_1.client_packet_type.size

-- Display: Client Packet Header
nasdaq_psxequities_drop_asciidrop_v2_1.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
nasdaq_psxequities_drop_asciidrop_v2_1.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = nasdaq_psxequities_drop_asciidrop_v2_1.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
nasdaq_psxequities_drop_asciidrop_v2_1.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1.fields.client_packet_header, buffer(offset, 0))
    local index = nasdaq_psxequities_drop_asciidrop_v2_1.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_drop_asciidrop_v2_1.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_drop_asciidrop_v2_1.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Packet
nasdaq_psxequities_drop_asciidrop_v2_1.client_packet = {}

-- Verify required size of Tcp packet
nasdaq_psxequities_drop_asciidrop_v2_1.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_psxequities_drop_asciidrop_v2_1.client_packet_header.size
end

-- Dissect Client Packet
nasdaq_psxequities_drop_asciidrop_v2_1.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Client Packet Header: Struct of 1 fields
    index, client_packet_header = nasdaq_psxequities_drop_asciidrop_v2_1.client_packet_header.dissect(buffer, index, packet, parent)

    -- Dependency element: Client Packet Type
    local client_packet_type = buffer(index - 1, 1):string()

    -- Client Payload: Runtime Type with 3 branches
    index = nasdaq_psxequities_drop_asciidrop_v2_1.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

    -- Soup Lf: 1 Byte Fixed Width Integer Static
    index, soup_lf = nasdaq_psxequities_drop_asciidrop_v2_1.soup_lf.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_psxequities_drop_asciidrop_v2_1.init()
end

-- Connection roles for Nasdaq PsxEquities Drop AsciiDrop 2.1: Client is the initiator, Server is the acceptor
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
nasdaq_psxequities_drop_asciidrop_v2_1.role = function(packet)
  if omi_nasdaq_psxequities_drop_asciidrop_v2_1.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nasdaq_psxequities_drop_asciidrop_v2_1.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nasdaq_psxequities_drop_asciidrop_v2_1.prefs.acceptor_port

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

  if omi_nasdaq_psxequities_drop_asciidrop_v2_1.prefs.swap_sides then
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
nasdaq_psxequities_drop_asciidrop_v2_1.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nasdaq PsxEquities Drop AsciiDrop 2.1
function omi_nasdaq_psxequities_drop_asciidrop_v2_1.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_psxequities_drop_asciidrop_v2_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_psxequities_drop_asciidrop_v2_1, buffer(), omi_nasdaq_psxequities_drop_asciidrop_v2_1.description, "("..buffer:len().." Bytes)")

  local role = nasdaq_psxequities_drop_asciidrop_v2_1.role(packet)

  if role == "initiator" then
    return nasdaq_psxequities_drop_asciidrop_v2_1.client_packet.dissect(buffer, packet, protocol)
  end

  return nasdaq_psxequities_drop_asciidrop_v2_1.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nasdaq_psxequities_drop_asciidrop_v2_1.client_packet.fingerprint = function(buffer)
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
nasdaq_psxequities_drop_asciidrop_v2_1.server_packet.fingerprint = function(buffer)
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
    if buffer:len() < 12 then
      return false
    end

    local message_type = buffer(11, 1):string()

    -- New Order Accepted Message
    if message_type == "A" then
      return true
    end

    -- Existing Order Executed Message
    if message_type == "E" then
      return true
    end

    -- Existing Order Canceled Message
    if message_type == "X" then
      return true
    end

    -- Previous Execution Broken Message
    if message_type == "B" then
      return true
    end

    -- Existing Order Replaced Message
    if message_type == "U" then
      return true
    end

    return false
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq PsxEquities Drop AsciiDrop 2.1 (Tcp)
local function omi_nasdaq_psxequities_drop_asciidrop_v2_1_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_psxequities_drop_asciidrop_v2_1.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_psxequities_drop_asciidrop_v2_1.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_psxequities_drop_asciidrop_v2_1
  omi_nasdaq_psxequities_drop_asciidrop_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq PsxEquities Drop AsciiDrop 2.1 (Tcp)
local function omi_nasdaq_psxequities_drop_asciidrop_v2_1_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_psxequities_drop_asciidrop_v2_1.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_psxequities_drop_asciidrop_v2_1.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_psxequities_drop_asciidrop_v2_1
  omi_nasdaq_psxequities_drop_asciidrop_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq PsxEquities Drop AsciiDrop 2.1 (Tcp): apply the heuristic of the sender's connection role
local function omi_nasdaq_psxequities_drop_asciidrop_v2_1_tcp_heuristic(buffer, packet, parent)
  local role = nasdaq_psxequities_drop_asciidrop_v2_1.role(packet)
  local initiator = omi_nasdaq_psxequities_drop_asciidrop_v2_1_tcp_initiator_heuristic
  local acceptor = omi_nasdaq_psxequities_drop_asciidrop_v2_1_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nasdaq_psxequities_drop_asciidrop_v2_1.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nasdaq_psxequities_drop_asciidrop_v2_1.swap(packet)

  return false
end

-- Register Heuristics for Nasdaq PsxEquities Drop AsciiDrop 2.1
omi_nasdaq_psxequities_drop_asciidrop_v2_1:register_heuristic("tcp", omi_nasdaq_psxequities_drop_asciidrop_v2_1_tcp_heuristic)

-- Register Nasdaq PsxEquities Drop AsciiDrop 2.1 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nasdaq_psxequities_drop_asciidrop_v2_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 2.1
--   Date: Thursday, June 4, 2015
--   Specification: psxdrop21.pdf
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
