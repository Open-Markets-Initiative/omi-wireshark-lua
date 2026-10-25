-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Txse TxseEquities Framing Tcp 1.0 Protocol
local omi_txse_txseequities_framing_tcp_v1_0 = Proto("Omi.Txse.TxseEquities.Framing.Tcp.v1.0", "Txse TxseEquities Framing Tcp 1.0")

-- Protocol table
local txse_txseequities_framing_tcp_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Txse TxseEquities Framing Tcp 1.0 Fields
omi_txse_txseequities_framing_tcp_v1_0.fields.debug_message = ProtoField.new("Debug Message", "txse.txseequities.framing.tcp.v1.0.debugmessage", ftypes.STRING, nil, nil, nil, "human readable debug message")
omi_txse_txseequities_framing_tcp_v1_0.fields.highest_known_sequence_number = ProtoField.new("Highest Known Sequence Number", "txse.txseequities.framing.tcp.v1.0.highestknownsequencenumber", ftypes.UINT64, nil, nil, nil, "The highest sequence number the server knows at the time of logon")
omi_txse_txseequities_framing_tcp_v1_0.fields.instance = ProtoField.new("Instance", "txse.txseequities.framing.tcp.v1.0.instance", ftypes.UINT32, nil, nil, nil, "Informational only. A unique ID for this RAKE server instance. Differs between primary and backup; a change on successive intra-day connections indicates the server has been restarted.")
omi_txse_txseequities_framing_tcp_v1_0.fields.logon_request_packet = ProtoField.new("Logon Request Packet", "txse.txseequities.framing.tcp.v1.0.logonrequestpacket", ftypes.STRING, nil, nil, nil, "Must be the first message a Member sends to the Exchange after establishing a TCP/IP connection")
omi_txse_txseequities_framing_tcp_v1_0.fields.logon_response_code = ProtoField.new("Logon Response Code", "txse.txseequities.framing.tcp.v1.0.logonresponsecode", ftypes.UINT8, nil, nil, nil, "Success or failure code from a Logon Request")
omi_txse_txseequities_framing_tcp_v1_0.fields.logon_response_message = ProtoField.new("Logon Response Message", "txse.txseequities.framing.tcp.v1.0.logonresponsemessage", ftypes.STRING, nil, nil, nil, "Response to a logon request")
omi_txse_txseequities_framing_tcp_v1_0.fields.message_length = ProtoField.new("Message Length", "txse.txseequities.framing.tcp.v1.0.messagelength", ftypes.UINT16, nil, nil, nil, "Length of rake message not including this field")
omi_txse_txseequities_framing_tcp_v1_0.fields.message_type = ProtoField.new("Message Type", "txse.txseequities.framing.tcp.v1.0.messagetype", ftypes.UINT8, nil, nil, nil, "Higher-level protocol message type code identifying the payload that follows. Interpretation is protocol-specific.")
omi_txse_txseequities_framing_tcp_v1_0.fields.next_sequence_number = ProtoField.new("Next Sequence Number", "txse.txseequities.framing.tcp.v1.0.nextsequencenumber", ftypes.UINT64, nil, nil, nil, "1-based numbering. Use 0 to skip currently stored messages; use 1 to replay all messages; otherwise send the next sequence number expected to receive from the Exchange to recover from a disconnection")
omi_txse_txseequities_framing_tcp_v1_0.fields.number_stream_ids = ProtoField.new("Number Stream Ids", "txse.txseequities.framing.tcp.v1.0.numberstreamids", ftypes.UINT8, nil, nil, nil, "The total number of stream ids that will be used in this trading session")
omi_txse_txseequities_framing_tcp_v1_0.fields.packet_type = ProtoField.new("Packet Type", "txse.txseequities.framing.tcp.v1.0.packettype", ftypes.UINT8, nil, nil, nil, "Code identifying this packet type")
omi_txse_txseequities_framing_tcp_v1_0.fields.sender_comp = ProtoField.new("Sender Comp", "txse.txseequities.framing.tcp.v1.0.sendercomp", ftypes.STRING, nil, nil, nil, "Unique id of the sender, assigned by exchange")
omi_txse_txseequities_framing_tcp_v1_0.fields.sequenced_message = ProtoField.new("Sequenced Message", "txse.txseequities.framing.tcp.v1.0.sequencedmessage", ftypes.BYTES, nil, nil, nil, "Raw sequenced message bytes")
omi_txse_txseequities_framing_tcp_v1_0.fields.session = ProtoField.new("Session", "txse.txseequities.framing.tcp.v1.0.session", ftypes.UINT64, nil, nil, nil, "The currently active trading session")
omi_txse_txseequities_framing_tcp_v1_0.fields.stream_id = ProtoField.new("Stream Id", "txse.txseequities.framing.tcp.v1.0.streamid", ftypes.UINT8, nil, nil, nil, "The internal exchange stream id that created this message")
omi_txse_txseequities_framing_tcp_v1_0.fields.tcp_sequenced_message = ProtoField.new("Tcp Sequenced Message", "txse.txseequities.framing.tcp.v1.0.tcpsequencedmessage", ftypes.STRING, nil, nil, nil, "A sequenced message from the exchange")
omi_txse_txseequities_framing_tcp_v1_0.fields.tcp_unsequenced_message = ProtoField.new("Tcp Unsequenced Message", "txse.txseequities.framing.tcp.v1.0.tcpunsequencedmessage", ftypes.STRING, nil, nil, nil, "Send message from member to higher level protocol at exchange")
omi_txse_txseequities_framing_tcp_v1_0.fields.text = ProtoField.new("Text", "txse.txseequities.framing.tcp.v1.0.text", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_txse_txseequities_framing_tcp_v1_0.fields.token = ProtoField.new("Token", "txse.txseequities.framing.tcp.v1.0.token", ftypes.STRING, nil, nil, nil, "Assigned by exchange")
omi_txse_txseequities_framing_tcp_v1_0.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "txse.txseequities.framing.tcp.v1.0.unsequencedmessage", ftypes.BYTES, nil, nil, nil, "Raw unsequenced message bytes")

-- Txse TxseEquities Framing Tcp 1.0 Framing
omi_txse_txseequities_framing_tcp_v1_0.fields.client_packet = ProtoField.new("Client Packet", "txse.txseequities.framing.tcp.v1.0.clientpacket", ftypes.STRING, nil, nil, nil, "Rake Packet sent by the Member")
omi_txse_txseequities_framing_tcp_v1_0.fields.client_rake_tcp_message = ProtoField.new("Client Rake Tcp Message", "txse.txseequities.framing.tcp.v1.0.clientraketcpmessage", ftypes.STRING, nil, nil, nil, "Rake Tcp Message sent by the Member to the Exchange")
omi_txse_txseequities_framing_tcp_v1_0.fields.rake_message_header = ProtoField.new("Rake Message Header", "txse.txseequities.framing.tcp.v1.0.rakemessageheader", ftypes.STRING, nil, nil, nil, "Rake Tcp per-message header carrying the frame length and packet-level dispatch byte")
omi_txse_txseequities_framing_tcp_v1_0.fields.server_packet = ProtoField.new("Server Packet", "txse.txseequities.framing.tcp.v1.0.serverpacket", ftypes.STRING, nil, nil, nil, "Rake Packet sent by the Exchange")
omi_txse_txseequities_framing_tcp_v1_0.fields.server_rake_tcp_message = ProtoField.new("Server Rake Tcp Message", "txse.txseequities.framing.tcp.v1.0.serverraketcpmessage", ftypes.STRING, nil, nil, nil, "Rake Tcp Message sent by the Exchange to the Member")

-----------------------------------------------------------------------
-- Txse TxseEquities Framing Tcp 1.0 Formatting
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

-- Txse TxseEquities Framing Tcp 1.0 Element Dissection Options
show.structs = true
show.headers = true

-- Register Txse TxseEquities Framing Tcp 1.0 Show Options
omi_txse_txseequities_framing_tcp_v1_0.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_txse_txseequities_framing_tcp_v1_0.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_txse_txseequities_framing_tcp_v1_0.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_txse_txseequities_framing_tcp_v1_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_txse_txseequities_framing_tcp_v1_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

-- Handle changed preferences
function omi_txse_txseequities_framing_tcp_v1_0.prefs_changed()

  -- Check if preferences have changed
  if show.headers ~= omi_txse_txseequities_framing_tcp_v1_0.prefs.show_headers then
    show.headers = omi_txse_txseequities_framing_tcp_v1_0.prefs.show_headers
  end
  if show.structs ~= omi_txse_txseequities_framing_tcp_v1_0.prefs.show_structs then
    show.structs = omi_txse_txseequities_framing_tcp_v1_0.prefs.show_structs
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
-- Txse TxseEquities Framing Tcp 1.0 Fields
-----------------------------------------------------------------------

-- Highest Known Sequence Number
txse_txseequities_framing_tcp_v1_0.highest_known_sequence_number = {}

-- Size: Highest Known Sequence Number
txse_txseequities_framing_tcp_v1_0.highest_known_sequence_number.size = 8

-- Display: Highest Known Sequence Number
txse_txseequities_framing_tcp_v1_0.highest_known_sequence_number.display = function(value)
  return "Highest Known Sequence Number: "..value
end

-- Dissect: Highest Known Sequence Number
txse_txseequities_framing_tcp_v1_0.highest_known_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_framing_tcp_v1_0.highest_known_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = txse_txseequities_framing_tcp_v1_0.highest_known_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_framing_tcp_v1_0.fields.highest_known_sequence_number, range, value, display)

  return offset + length, value
end

-- Instance
txse_txseequities_framing_tcp_v1_0.instance = {}

-- Size: Instance
txse_txseequities_framing_tcp_v1_0.instance.size = 4

-- Display: Instance
txse_txseequities_framing_tcp_v1_0.instance.display = function(value)
  return "Instance: "..value
end

-- Dissect: Instance
txse_txseequities_framing_tcp_v1_0.instance.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_framing_tcp_v1_0.instance.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = txse_txseequities_framing_tcp_v1_0.instance.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_framing_tcp_v1_0.fields.instance, range, value, display)

  return offset + length, value
end

-- Logon Response Code
txse_txseequities_framing_tcp_v1_0.logon_response_code = {}

-- Size: Logon Response Code
txse_txseequities_framing_tcp_v1_0.logon_response_code.size = 1

-- Display: Logon Response Code
txse_txseequities_framing_tcp_v1_0.logon_response_code.labels = {
  [0] = "Logon Response Code: Success (0)",
  [1] = "Logon Response Code: Incorrect Sender Comp (1)",
  [2] = "Logon Response Code: Incorrect Session (2)",
  [3] = "Logon Response Code: Invalid Next Sequence (3)",
  [4] = "Logon Response Code: Invalid Configuration (4)",
  [5] = "Logon Response Code: Incorrect Token (5)",
}

txse_txseequities_framing_tcp_v1_0.logon_response_code.display = function(value)
  return txse_txseequities_framing_tcp_v1_0.logon_response_code.labels[value] or "Logon Response Code: Unknown("..value..")"
end

-- Dissect: Logon Response Code
txse_txseequities_framing_tcp_v1_0.logon_response_code.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_framing_tcp_v1_0.logon_response_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = txse_txseequities_framing_tcp_v1_0.logon_response_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_framing_tcp_v1_0.fields.logon_response_code, range, value, display)

  return offset + length, value
end

-- Message Length
txse_txseequities_framing_tcp_v1_0.message_length = {}

-- Size: Message Length
txse_txseequities_framing_tcp_v1_0.message_length.size = 2

-- Display: Message Length
txse_txseequities_framing_tcp_v1_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
txse_txseequities_framing_tcp_v1_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_framing_tcp_v1_0.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = txse_txseequities_framing_tcp_v1_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_framing_tcp_v1_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
txse_txseequities_framing_tcp_v1_0.message_type = {}

-- Size: Message Type
txse_txseequities_framing_tcp_v1_0.message_type.size = 1

-- Display: Message Type
txse_txseequities_framing_tcp_v1_0.message_type.display = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
txse_txseequities_framing_tcp_v1_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_framing_tcp_v1_0.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = txse_txseequities_framing_tcp_v1_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_framing_tcp_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Next Sequence Number
txse_txseequities_framing_tcp_v1_0.next_sequence_number = {}

-- Size: Next Sequence Number
txse_txseequities_framing_tcp_v1_0.next_sequence_number.size = 8

-- Display: Next Sequence Number
txse_txseequities_framing_tcp_v1_0.next_sequence_number.display = function(value)
  return "Next Sequence Number: "..value
end

-- Dissect: Next Sequence Number
txse_txseequities_framing_tcp_v1_0.next_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_framing_tcp_v1_0.next_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = txse_txseequities_framing_tcp_v1_0.next_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_framing_tcp_v1_0.fields.next_sequence_number, range, value, display)

  return offset + length, value
end

-- Number Stream Ids
txse_txseequities_framing_tcp_v1_0.number_stream_ids = {}

-- Size: Number Stream Ids
txse_txseequities_framing_tcp_v1_0.number_stream_ids.size = 1

-- Display: Number Stream Ids
txse_txseequities_framing_tcp_v1_0.number_stream_ids.display = function(value)
  return "Number Stream Ids: "..value
end

-- Dissect: Number Stream Ids
txse_txseequities_framing_tcp_v1_0.number_stream_ids.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_framing_tcp_v1_0.number_stream_ids.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = txse_txseequities_framing_tcp_v1_0.number_stream_ids.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_framing_tcp_v1_0.fields.number_stream_ids, range, value, display)

  return offset + length, value
end

-- Packet Type
txse_txseequities_framing_tcp_v1_0.packet_type = {}

-- Size: Packet Type
txse_txseequities_framing_tcp_v1_0.packet_type.size = 1

-- Display: Packet Type
txse_txseequities_framing_tcp_v1_0.packet_type.labels = {
  [53] = "Packet Type: Logon Request Packet (53)",
  [55] = "Packet Type: Member Heartbeat Packet (55)",
  [54] = "Packet Type: Tcp Unsequenced Message (54)",
  [48] = "Packet Type: Debug Message (48)",
  [52] = "Packet Type: End Of Session Message (52)",
  [49] = "Packet Type: Logon Response Message (49)",
  [51] = "Packet Type: Server Heartbeat Message (51)",
  [50] = "Packet Type: Tcp Sequenced Message (50)",
}

txse_txseequities_framing_tcp_v1_0.packet_type.display = function(value)
  return txse_txseequities_framing_tcp_v1_0.packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
txse_txseequities_framing_tcp_v1_0.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_framing_tcp_v1_0.packet_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = txse_txseequities_framing_tcp_v1_0.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_framing_tcp_v1_0.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Sender Comp
txse_txseequities_framing_tcp_v1_0.sender_comp = {}

-- Size: Sender Comp
txse_txseequities_framing_tcp_v1_0.sender_comp.size = 8

-- Display: Sender Comp
txse_txseequities_framing_tcp_v1_0.sender_comp.display = function(value)
  return "Sender Comp: "..value
end

-- Dissect: Sender Comp
txse_txseequities_framing_tcp_v1_0.sender_comp.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_framing_tcp_v1_0.sender_comp.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_framing_tcp_v1_0.sender_comp.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_framing_tcp_v1_0.fields.sender_comp, range, value, display)

  return offset + length, value
end

-- Sequenced Message
txse_txseequities_framing_tcp_v1_0.sequenced_message = {}

-- Display: Sequenced Message
txse_txseequities_framing_tcp_v1_0.sequenced_message.display = function(value)
  return "Sequenced Message: "..value
end

-- Dissect runtime sized field: Sequenced Message
txse_txseequities_framing_tcp_v1_0.sequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = txse_txseequities_framing_tcp_v1_0.sequenced_message.display(value, packet, parent, size)

  parent:add(omi_txse_txseequities_framing_tcp_v1_0.fields.sequenced_message, range, value, display)

  return offset + size, value
end

-- Session
txse_txseequities_framing_tcp_v1_0.session = {}

-- Size: Session
txse_txseequities_framing_tcp_v1_0.session.size = 8

-- Display: Session
txse_txseequities_framing_tcp_v1_0.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
txse_txseequities_framing_tcp_v1_0.session.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_framing_tcp_v1_0.session.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = txse_txseequities_framing_tcp_v1_0.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_framing_tcp_v1_0.fields.session, range, value, display)

  return offset + length, value
end

-- Stream Id
txse_txseequities_framing_tcp_v1_0.stream_id = {}

-- Size: Stream Id
txse_txseequities_framing_tcp_v1_0.stream_id.size = 1

-- Display: Stream Id
txse_txseequities_framing_tcp_v1_0.stream_id.display = function(value)
  return "Stream Id: "..value
end

-- Dissect: Stream Id
txse_txseequities_framing_tcp_v1_0.stream_id.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_framing_tcp_v1_0.stream_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = txse_txseequities_framing_tcp_v1_0.stream_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_framing_tcp_v1_0.fields.stream_id, range, value, display)

  return offset + length, value
end

-- Text
txse_txseequities_framing_tcp_v1_0.text = {}

-- Display: Text
txse_txseequities_framing_tcp_v1_0.text.display = function(value)
  return "Text: "..value
end

-- Dissect runtime sized field: Text
txse_txseequities_framing_tcp_v1_0.text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = txse_txseequities_framing_tcp_v1_0.text.display(value, packet, parent, size)

  parent:add(omi_txse_txseequities_framing_tcp_v1_0.fields.text, range, value, display)

  return offset + size, value
end

-- Token
txse_txseequities_framing_tcp_v1_0.token = {}

-- Size: Token
txse_txseequities_framing_tcp_v1_0.token.size = 8

-- Display: Token
txse_txseequities_framing_tcp_v1_0.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
txse_txseequities_framing_tcp_v1_0.token.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_framing_tcp_v1_0.token.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_framing_tcp_v1_0.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_framing_tcp_v1_0.fields.token, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
txse_txseequities_framing_tcp_v1_0.unsequenced_message = {}

-- Display: Unsequenced Message
txse_txseequities_framing_tcp_v1_0.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
txse_txseequities_framing_tcp_v1_0.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = txse_txseequities_framing_tcp_v1_0.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_txse_txseequities_framing_tcp_v1_0.fields.unsequenced_message, range, value, display)

  return offset + size, value
end


-----------------------------------------------------------------------
-- Dissect Txse TxseEquities Framing Tcp 1.0
-----------------------------------------------------------------------

-- Tcp Sequenced Message
txse_txseequities_framing_tcp_v1_0.tcp_sequenced_message = {}

-- Read runtime size of: Tcp Sequenced Message
txse_txseequities_framing_tcp_v1_0.tcp_sequenced_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):le_uint()

  return message_length - 1
end

-- Display: Tcp Sequenced Message
txse_txseequities_framing_tcp_v1_0.tcp_sequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tcp Sequenced Message
txse_txseequities_framing_tcp_v1_0.tcp_sequenced_message.fields = function(buffer, offset, packet, parent, size_of_tcp_sequenced_message)
  local index = offset

  -- Stream Id: 1 Byte Unsigned Fixed Width Integer
  index, stream_id = txse_txseequities_framing_tcp_v1_0.stream_id.dissect(buffer, index, packet, parent)

  -- Message Type: Byte
  index, message_type = txse_txseequities_framing_tcp_v1_0.message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Sequenced Message
  local size_of_sequenced_message = message_length - 3

  -- Sequenced Message: 0 Byte
  index, sequenced_message = txse_txseequities_framing_tcp_v1_0.sequenced_message.dissect(buffer, index, packet, parent, size_of_sequenced_message)

  return index
end

-- Dissect: Tcp Sequenced Message
txse_txseequities_framing_tcp_v1_0.tcp_sequenced_message.dissect = function(buffer, offset, packet, parent, size_of_tcp_sequenced_message)
  local size_of_tcp_sequenced_message = txse_txseequities_framing_tcp_v1_0.tcp_sequenced_message.size(buffer, offset)
  local index = offset + size_of_tcp_sequenced_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_txse_txseequities_framing_tcp_v1_0.fields.tcp_sequenced_message, buffer(offset, 0))
    local current = txse_txseequities_framing_tcp_v1_0.tcp_sequenced_message.fields(buffer, offset, packet, parent, size_of_tcp_sequenced_message)
    parent:set_len(size_of_tcp_sequenced_message)
    local display = txse_txseequities_framing_tcp_v1_0.tcp_sequenced_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    txse_txseequities_framing_tcp_v1_0.tcp_sequenced_message.fields(buffer, offset, packet, parent, size_of_tcp_sequenced_message)

    return index
  end
end

-- Logon Response Message
txse_txseequities_framing_tcp_v1_0.logon_response_message = {}

-- Size: Logon Response Message
txse_txseequities_framing_tcp_v1_0.logon_response_message.size =
  txse_txseequities_framing_tcp_v1_0.session.size + 
  txse_txseequities_framing_tcp_v1_0.next_sequence_number.size + 
  txse_txseequities_framing_tcp_v1_0.highest_known_sequence_number.size + 
  txse_txseequities_framing_tcp_v1_0.logon_response_code.size + 
  txse_txseequities_framing_tcp_v1_0.number_stream_ids.size + 
  txse_txseequities_framing_tcp_v1_0.instance.size

-- Display: Logon Response Message
txse_txseequities_framing_tcp_v1_0.logon_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Response Message
txse_txseequities_framing_tcp_v1_0.logon_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: Long
  index, session = txse_txseequities_framing_tcp_v1_0.session.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: Long
  index, next_sequence_number = txse_txseequities_framing_tcp_v1_0.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Highest Known Sequence Number: Long
  index, highest_known_sequence_number = txse_txseequities_framing_tcp_v1_0.highest_known_sequence_number.dissect(buffer, index, packet, parent)

  -- Logon Response Code: Enum
  index, logon_response_code = txse_txseequities_framing_tcp_v1_0.logon_response_code.dissect(buffer, index, packet, parent)

  -- Number Stream Ids: Byte
  index, number_stream_ids = txse_txseequities_framing_tcp_v1_0.number_stream_ids.dissect(buffer, index, packet, parent)

  -- Instance: Int
  index, instance = txse_txseequities_framing_tcp_v1_0.instance.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Response Message
txse_txseequities_framing_tcp_v1_0.logon_response_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_framing_tcp_v1_0.fields.logon_response_message, buffer(offset, 0))
    local index = txse_txseequities_framing_tcp_v1_0.logon_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_framing_tcp_v1_0.logon_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_framing_tcp_v1_0.logon_response_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Session Message
txse_txseequities_framing_tcp_v1_0.end_of_session_message = {}

-- Display: End Of Session Message
txse_txseequities_framing_tcp_v1_0.end_of_session_message.display = function(packet, parent, length)
  return "End Of Session Message"
end


-- Dissect: End Of Session Message
txse_txseequities_framing_tcp_v1_0.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  local display = txse_txseequities_framing_tcp_v1_0.end_of_session_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Debug Message
txse_txseequities_framing_tcp_v1_0.debug_message = {}

-- Calculate size of: Debug Message
txse_txseequities_framing_tcp_v1_0.debug_message.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Text
  index = index + buffer(offset + index - 3, 2):le_uint()

  return index
end

-- Display: Debug Message
txse_txseequities_framing_tcp_v1_0.debug_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Message
txse_txseequities_framing_tcp_v1_0.debug_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Text
  local size_of_text = message_length - 1

  -- Text: 1 Byte Ascii String
  index, text = txse_txseequities_framing_tcp_v1_0.text.dissect(buffer, index, packet, parent, size_of_text)

  return index
end

-- Dissect: Debug Message
txse_txseequities_framing_tcp_v1_0.debug_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_framing_tcp_v1_0.fields.debug_message, buffer(offset, 0))
    local index = txse_txseequities_framing_tcp_v1_0.debug_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_framing_tcp_v1_0.debug_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_framing_tcp_v1_0.debug_message.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
txse_txseequities_framing_tcp_v1_0.server_payload = {}

-- Dissect: Server Payload
txse_txseequities_framing_tcp_v1_0.server_payload.dispatch = {
  [48] = txse_txseequities_framing_tcp_v1_0.debug_message.dissect,
  [52] = txse_txseequities_framing_tcp_v1_0.end_of_session_message.dissect,
  [49] = txse_txseequities_framing_tcp_v1_0.logon_response_message.dissect,
  [50] = txse_txseequities_framing_tcp_v1_0.tcp_sequenced_message.dissect,
}

txse_txseequities_framing_tcp_v1_0.server_payload.dissect = function(buffer, offset, packet, parent, packet_type)
  local dissect = txse_txseequities_framing_tcp_v1_0.server_payload.dispatch[packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Rake Message Header
txse_txseequities_framing_tcp_v1_0.rake_message_header = {}

-- Size: Rake Message Header
txse_txseequities_framing_tcp_v1_0.rake_message_header.size =
  txse_txseequities_framing_tcp_v1_0.message_length.size + 
  txse_txseequities_framing_tcp_v1_0.packet_type.size

-- Display: Rake Message Header
txse_txseequities_framing_tcp_v1_0.rake_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rake Message Header
txse_txseequities_framing_tcp_v1_0.rake_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = txse_txseequities_framing_tcp_v1_0.message_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, packet_type = txse_txseequities_framing_tcp_v1_0.packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rake Message Header
txse_txseequities_framing_tcp_v1_0.rake_message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_framing_tcp_v1_0.fields.rake_message_header, buffer(offset, 0))
    local index = txse_txseequities_framing_tcp_v1_0.rake_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_framing_tcp_v1_0.rake_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_framing_tcp_v1_0.rake_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Rake Tcp Message
txse_txseequities_framing_tcp_v1_0.server_rake_tcp_message = {}

-- Display: Server Rake Tcp Message
txse_txseequities_framing_tcp_v1_0.server_rake_tcp_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Rake Tcp Message
txse_txseequities_framing_tcp_v1_0.server_rake_tcp_message.fields = function(buffer, offset, packet, parent, size_of_server_rake_tcp_message)
  local index = offset

  -- Rake Message Header: Struct of 2 fields
  index, rake_message_header = txse_txseequities_framing_tcp_v1_0.rake_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 1, 1):le_uint()

  -- Server Payload: Runtime Type with 4 branches
  index = txse_txseequities_framing_tcp_v1_0.server_payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Server Rake Tcp Message
txse_txseequities_framing_tcp_v1_0.server_rake_tcp_message.dissect = function(buffer, offset, packet, parent, size_of_server_rake_tcp_message)
  local index = offset + size_of_server_rake_tcp_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_txse_txseequities_framing_tcp_v1_0.fields.server_rake_tcp_message, buffer(offset, 0))
    local current = txse_txseequities_framing_tcp_v1_0.server_rake_tcp_message.fields(buffer, offset, packet, parent, size_of_server_rake_tcp_message)
    parent:set_len(size_of_server_rake_tcp_message)
    local display = txse_txseequities_framing_tcp_v1_0.server_rake_tcp_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    txse_txseequities_framing_tcp_v1_0.server_rake_tcp_message.fields(buffer, offset, packet, parent, size_of_server_rake_tcp_message)

    return index
  end
end

-- Remaining Bytes For: Server Rake Tcp Message
local server_rake_tcp_message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < txse_txseequities_framing_tcp_v1_0.rake_message_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):le_uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Server Packet
txse_txseequities_framing_tcp_v1_0.server_packet = {}

-- Verify required size of Tcp packet
txse_txseequities_framing_tcp_v1_0.server_packet.requiredsize = function(buffer)
  return buffer:len() >= txse_txseequities_framing_tcp_v1_0.rake_message_header.size
end

-- Dissect Server Packet
txse_txseequities_framing_tcp_v1_0.server_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Server Rake Tcp Message
  local end_of_payload = buffer:len()

  -- Server Rake Tcp Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_rake_tcp_message = server_rake_tcp_message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_server_rake_tcp_message):tvb()
      index = txse_txseequities_framing_tcp_v1_0.server_rake_tcp_message.dissect(frame, index, packet, parent, size_of_server_rake_tcp_message)
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

-- Tcp Unsequenced Message
txse_txseequities_framing_tcp_v1_0.tcp_unsequenced_message = {}

-- Read runtime size of: Tcp Unsequenced Message
txse_txseequities_framing_tcp_v1_0.tcp_unsequenced_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):le_uint()

  return message_length - 1
end

-- Display: Tcp Unsequenced Message
txse_txseequities_framing_tcp_v1_0.tcp_unsequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tcp Unsequenced Message
txse_txseequities_framing_tcp_v1_0.tcp_unsequenced_message.fields = function(buffer, offset, packet, parent, size_of_tcp_unsequenced_message)
  local index = offset

  -- Message Type: Byte
  index, message_type = txse_txseequities_framing_tcp_v1_0.message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = message_length - 2

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = txse_txseequities_framing_tcp_v1_0.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Tcp Unsequenced Message
txse_txseequities_framing_tcp_v1_0.tcp_unsequenced_message.dissect = function(buffer, offset, packet, parent, size_of_tcp_unsequenced_message)
  local size_of_tcp_unsequenced_message = txse_txseequities_framing_tcp_v1_0.tcp_unsequenced_message.size(buffer, offset)
  local index = offset + size_of_tcp_unsequenced_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_txse_txseequities_framing_tcp_v1_0.fields.tcp_unsequenced_message, buffer(offset, 0))
    local current = txse_txseequities_framing_tcp_v1_0.tcp_unsequenced_message.fields(buffer, offset, packet, parent, size_of_tcp_unsequenced_message)
    parent:set_len(size_of_tcp_unsequenced_message)
    local display = txse_txseequities_framing_tcp_v1_0.tcp_unsequenced_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    txse_txseequities_framing_tcp_v1_0.tcp_unsequenced_message.fields(buffer, offset, packet, parent, size_of_tcp_unsequenced_message)

    return index
  end
end

-- Logon Request Packet
txse_txseequities_framing_tcp_v1_0.logon_request_packet = {}

-- Size: Logon Request Packet
txse_txseequities_framing_tcp_v1_0.logon_request_packet.size =
  txse_txseequities_framing_tcp_v1_0.session.size + 
  txse_txseequities_framing_tcp_v1_0.sender_comp.size + 
  txse_txseequities_framing_tcp_v1_0.token.size + 
  txse_txseequities_framing_tcp_v1_0.next_sequence_number.size

-- Display: Logon Request Packet
txse_txseequities_framing_tcp_v1_0.logon_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Request Packet
txse_txseequities_framing_tcp_v1_0.logon_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: Long
  index, session = txse_txseequities_framing_tcp_v1_0.session.dissect(buffer, index, packet, parent)

  -- Sender Comp: Str(8)
  index, sender_comp = txse_txseequities_framing_tcp_v1_0.sender_comp.dissect(buffer, index, packet, parent)

  -- Token: Str(8)
  index, token = txse_txseequities_framing_tcp_v1_0.token.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: Long
  index, next_sequence_number = txse_txseequities_framing_tcp_v1_0.next_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Request Packet
txse_txseequities_framing_tcp_v1_0.logon_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_framing_tcp_v1_0.fields.logon_request_packet, buffer(offset, 0))
    local index = txse_txseequities_framing_tcp_v1_0.logon_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_framing_tcp_v1_0.logon_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_framing_tcp_v1_0.logon_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
txse_txseequities_framing_tcp_v1_0.client_payload = {}

-- Dissect: Client Payload
txse_txseequities_framing_tcp_v1_0.client_payload.dispatch = {
  [53] = txse_txseequities_framing_tcp_v1_0.logon_request_packet.dissect,
  [54] = txse_txseequities_framing_tcp_v1_0.tcp_unsequenced_message.dissect,
}

txse_txseequities_framing_tcp_v1_0.client_payload.dissect = function(buffer, offset, packet, parent, packet_type)
  local dissect = txse_txseequities_framing_tcp_v1_0.client_payload.dispatch[packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Rake Tcp Message
txse_txseequities_framing_tcp_v1_0.client_rake_tcp_message = {}

-- Display: Client Rake Tcp Message
txse_txseequities_framing_tcp_v1_0.client_rake_tcp_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Rake Tcp Message
txse_txseequities_framing_tcp_v1_0.client_rake_tcp_message.fields = function(buffer, offset, packet, parent, size_of_client_rake_tcp_message)
  local index = offset

  -- Rake Message Header: Struct of 2 fields
  index, rake_message_header = txse_txseequities_framing_tcp_v1_0.rake_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 1, 1):le_uint()

  -- Client Payload: Runtime Type with 2 branches
  index = txse_txseequities_framing_tcp_v1_0.client_payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Client Rake Tcp Message
txse_txseequities_framing_tcp_v1_0.client_rake_tcp_message.dissect = function(buffer, offset, packet, parent, size_of_client_rake_tcp_message)
  local index = offset + size_of_client_rake_tcp_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_txse_txseequities_framing_tcp_v1_0.fields.client_rake_tcp_message, buffer(offset, 0))
    local current = txse_txseequities_framing_tcp_v1_0.client_rake_tcp_message.fields(buffer, offset, packet, parent, size_of_client_rake_tcp_message)
    parent:set_len(size_of_client_rake_tcp_message)
    local display = txse_txseequities_framing_tcp_v1_0.client_rake_tcp_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    txse_txseequities_framing_tcp_v1_0.client_rake_tcp_message.fields(buffer, offset, packet, parent, size_of_client_rake_tcp_message)

    return index
  end
end

-- Remaining Bytes For: Client Rake Tcp Message
local client_rake_tcp_message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < txse_txseequities_framing_tcp_v1_0.rake_message_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):le_uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Client Packet
txse_txseequities_framing_tcp_v1_0.client_packet = {}

-- Verify required size of Tcp packet
txse_txseequities_framing_tcp_v1_0.client_packet.requiredsize = function(buffer)
  return buffer:len() >= txse_txseequities_framing_tcp_v1_0.rake_message_header.size
end

-- Dissect Client Packet
txse_txseequities_framing_tcp_v1_0.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Rake Tcp Message
  local end_of_payload = buffer:len()

  -- Client Rake Tcp Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_rake_tcp_message = client_rake_tcp_message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_client_rake_tcp_message):tvb()
      index = txse_txseequities_framing_tcp_v1_0.client_rake_tcp_message.dissect(frame, index, packet, parent, size_of_client_rake_tcp_message)
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
function omi_txse_txseequities_framing_tcp_v1_0.init()
end

-- Connection roles for Txse TxseEquities Framing Tcp 1.0: Client is the initiator, Server is the acceptor
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
txse_txseequities_framing_tcp_v1_0.role = function(packet)
  if omi_txse_txseequities_framing_tcp_v1_0.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_txse_txseequities_framing_tcp_v1_0.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_txse_txseequities_framing_tcp_v1_0.prefs.acceptor_port

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

  if omi_txse_txseequities_framing_tcp_v1_0.prefs.swap_sides then
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
txse_txseequities_framing_tcp_v1_0.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Txse TxseEquities Framing Tcp 1.0
function omi_txse_txseequities_framing_tcp_v1_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_txse_txseequities_framing_tcp_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_txse_txseequities_framing_tcp_v1_0, buffer(), omi_txse_txseequities_framing_tcp_v1_0.description, "("..buffer:len().." Bytes)")
  local role = txse_txseequities_framing_tcp_v1_0.role(packet)

  if role == "initiator" then
    return txse_txseequities_framing_tcp_v1_0.client_packet.dissect(buffer, packet, protocol)
  end

  return txse_txseequities_framing_tcp_v1_0.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
txse_txseequities_framing_tcp_v1_0.client_packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end

  local packet_type = buffer(2, 1):le_uint()

  -- Logon Request Packet
  if packet_type == 53 then
    return true
  end

  -- Tcp Unsequenced Message
  if packet_type == 54 then
    return true
  end

  return false
end

-- Fingerprint of Server Packet: would its message dispatch accept this frame?
txse_txseequities_framing_tcp_v1_0.server_packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end

  local packet_type = buffer(2, 1):le_uint()

  -- Debug Message
  if packet_type == 48 then
    return true
  end

  -- End Of Session Message
  if packet_type == 52 then
    return true
  end

  -- Logon Response Message
  if packet_type == 49 then
    return true
  end

  -- Tcp Sequenced Message
  if packet_type == 50 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Txse TxseEquities Framing Tcp 1.0 (Tcp)
local function omi_txse_txseequities_framing_tcp_v1_0_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not txse_txseequities_framing_tcp_v1_0.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp client packet message dispatch
  if not txse_txseequities_framing_tcp_v1_0.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_txse_txseequities_framing_tcp_v1_0
  omi_txse_txseequities_framing_tcp_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Txse TxseEquities Framing Tcp 1.0 (Tcp)
local function omi_txse_txseequities_framing_tcp_v1_0_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not txse_txseequities_framing_tcp_v1_0.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp server packet message dispatch
  if not txse_txseequities_framing_tcp_v1_0.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_txse_txseequities_framing_tcp_v1_0
  omi_txse_txseequities_framing_tcp_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Txse TxseEquities Framing Tcp 1.0 (Tcp): apply the heuristic of the sender's connection role
local function omi_txse_txseequities_framing_tcp_v1_0_tcp_heuristic(buffer, packet, parent)
  local role = txse_txseequities_framing_tcp_v1_0.role(packet)
  local initiator = omi_txse_txseequities_framing_tcp_v1_0_tcp_initiator_heuristic
  local acceptor = omi_txse_txseequities_framing_tcp_v1_0_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  txse_txseequities_framing_tcp_v1_0.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  txse_txseequities_framing_tcp_v1_0.swap(packet)

  return false
end

-- Register Heuristics for Txse TxseEquities Framing Tcp 1.0
omi_txse_txseequities_framing_tcp_v1_0:register_heuristic("tcp", omi_txse_txseequities_framing_tcp_v1_0_tcp_heuristic)

-- Register Txse TxseEquities Framing Tcp 1.0 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_txse_txseequities_framing_tcp_v1_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Texas Stock Exchange
--   Version: 1.0
--   Date: Friday, June 12, 2026
--   Specification: TXSE RAKE TCP and UDP (1.0).pdf
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
