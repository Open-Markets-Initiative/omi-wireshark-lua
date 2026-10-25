-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe BxeEquities AuctionFeed AsciiPitch 1.4 Protocol
local omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4 = Proto("Omi.Cboe.BxeEquities.AuctionFeed.AsciiPitch.v1.4", "Cboe BxeEquities AuctionFeed AsciiPitch 1.4")

-- Protocol table
local cboe_bxeequities_auctionfeed_asciipitch_v1_4 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe BxeEquities AuctionFeed AsciiPitch 1.4 Fields
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.auction_type = ProtoField.new("Auction Type", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.auctiontype", ftypes.STRING, nil, nil, nil, "O=Opening C=Closing H=Halt V=Volatility P=Periodic U=Cboe Closing Cross")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.debug_packet = ProtoField.new("Debug Packet", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.debugpacket", ftypes.STRING, nil, nil, nil, "Debug packets are intended to provide human readable text that may aid in debugging problems.")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.includes_primary = ProtoField.new("Includes Primary", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.includesprimary", ftypes.STRING, nil, nil, nil, "P=Includes Primary N=Excludes Primary -=Not specified")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.indicativeprice", ftypes.DOUBLE, nil, nil, nil, "Price at which the auction would match if executed now.")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.indicative_shares = ProtoField.new("Indicative Shares", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.indicativeshares", ftypes.UINT64, nil, nil, nil, "Number of shares at the Indicative Price.")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.loginacceptedpacket", ftypes.STRING, nil, nil, nil, "The Soup 2.0 server sends a Login Accepted Packet in response to receiving a valid Login Request from the client.")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.loginrejectedpacket", ftypes.STRING, nil, nil, nil, "The Soup 2.0 server sends this packet in response to an invalid Login Request Packet from the client.")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.login_request_packet = ProtoField.new("Login Request Packet", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.loginrequestpacket", ftypes.STRING, nil, nil, nil, "The Soup 2.0 client must send a Login Request Packet immediately upon establishing a new TCP/IP socket connection to the server.")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.outside_tolerance = ProtoField.new("Outside Tolerance", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.outsidetolerance", ftypes.STRING, nil, nil, nil, "O=Outside tolerance I=Inside tolerance -=Not specified")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.packet_type = ProtoField.new("Packet Type", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.packettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.password = ProtoField.new("Password", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.password", ftypes.STRING, nil, nil, nil, "Login password")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.price = ProtoField.new("Price", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.price", ftypes.DOUBLE, nil, nil, nil, "Auction price.")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.reference_price = ProtoField.new("Reference Price", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.referenceprice", ftypes.DOUBLE, nil, nil, nil, "Reference price used in tie-breaker situations.")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.rejectreasoncode", ftypes.STRING, nil, nil, nil, "Login Reject Codes")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.requestedsequencenumber", ftypes.STRING, nil, nil, nil, "Specifies the next sequence number in ASCII the client wants to receive upon connection, or 0 to start receiving the most recently generated message.")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.requested_session = ProtoField.new("Requested Session", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.requestedsession", ftypes.STRING, nil, nil, nil, "Specifies the session the client would like to log into, or all blanks to log into the currently active session.")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.sequence_number = ProtoField.new("Sequence Number", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.sequencenumber", ftypes.STRING, nil, nil, nil, "The sequence number in ASCII of the next Sequenced Message to be sent. Left padded with spaces.")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.sequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Sequenced Data Packets act as an envelope to carry the actual sequenced data messages that are transferred from the server to the client. Each Sequenced Data Packet carries one message from the higher-lever protocol.")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.sequencedmessagetype", ftypes.STRING, nil, nil, nil, "Single ASCII character identifying the sequenced message type")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.session = ProtoField.new("Session", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.session", ftypes.STRING, nil, nil, nil, "The session ID of the session that is now logged into. Left padded with spaces.")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.shares = ProtoField.new("Shares", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.shares", ftypes.UINT64, nil, nil, nil, "Cumulative number of shares executed during the auction.")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.soup_lf = ProtoField.new("Soup Lf", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.souplf", ftypes.INT8, nil, nil, nil, "Terminating line feed character")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.symbol = ProtoField.new("Symbol", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.symbol", ftypes.STRING, nil, nil, nil, "Symbol right padded with spaces.")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.text = ProtoField.new("Text", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.text", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.timestamp = ProtoField.new("Timestamp", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.timestamp", ftypes.STRING, nil, nil, nil, "Milliseconds past midnight London time, ASCII numeric, left-padded")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.unsequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Unsequenced Data Packets act as an envelope to carry the actual data messages that are transferred from the client to the server. These messages are not sequenced and may be lost in the event of a socket failure.")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.unsequencedmessage", ftypes.BYTES, nil, nil, nil, "Raw unsequenced message bytes")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.username = ProtoField.new("Username", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.username", ftypes.STRING, nil, nil, nil, "Session username")

-- Cboe BxeEquities AuctionFeed AsciiPitch 1.4 Framing
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.frame = ProtoField.new("Frame", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.frame", ftypes.STRING, nil, nil, nil, "Soup 2.0 Lf terminated record")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.packet = ProtoField.new("Packet", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.packet", ftypes.STRING, nil, nil, nil, "Soup 2.0 Packet")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.sequenced_message_header = ProtoField.new("Sequenced Message Header", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.sequencedmessageheader", ftypes.STRING, nil, nil, nil, "Cboe Europe ASCII Soup sequenced message header")

-- Cboe BxeEquities AuctionFeed 1.4 Application Messages
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.auctionsummarymessage", ftypes.STRING, nil, nil, nil, "Disseminates the results of an auction in a Cboe auction-eligible security.")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.auction_update_message = ProtoField.new("Auction Update Message", "cboe.bxeequities.auctionfeed.asciipitch.v1.4.auctionupdatemessage", ftypes.STRING, nil, nil, nil, "Disseminates indicative price and size information during auctions for Cboe auction-eligible securities.")

-- Cboe BxeEquities AuctionFeed AsciiPitch 1.4 Expert Info
cboe_bxeequities_auctionfeed_asciipitch_v1_4.experts = {}
cboe_bxeequities_auctionfeed_asciipitch_v1_4.experts.not_a_number = ProtoExpert.new("cboe.bxeequities.auctionfeed.asciipitch.v1.4.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.experts = { cboe_bxeequities_auctionfeed_asciipitch_v1_4.experts.not_a_number }

-----------------------------------------------------------------------
-- Cboe BxeEquities AuctionFeed AsciiPitch 1.4 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
cboe_bxeequities_auctionfeed_asciipitch_v1_4.timestamp_format = 2

-- Hours behind UTC (Europe/London) for midnight calculation
cboe_bxeequities_auctionfeed_asciipitch_v1_4.utc_offset_hours = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe BxeEquities AuctionFeed AsciiPitch 1.4 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true

-- Register Cboe BxeEquities AuctionFeed AsciiPitch 1.4 Show Options
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 0, "Hours behind UTC (Europe/London) for midnight calculation")

-- Handle changed preferences
function omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.prefs.show_application_messages then
    show.application_messages = omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.prefs.show_headers then
    show.headers = omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.prefs.show_headers
  end
  if show.structs ~= omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.prefs.show_structs then
    show.structs = omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.prefs.show_structs
  end
  if cboe_bxeequities_auctionfeed_asciipitch_v1_4.timestamp_format ~= omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.prefs.timestamp_format then
    cboe_bxeequities_auctionfeed_asciipitch_v1_4.timestamp_format = omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.prefs.timestamp_format
  end
  if cboe_bxeequities_auctionfeed_asciipitch_v1_4.utc_offset_hours ~= omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.prefs.utc_offset_hours then
    cboe_bxeequities_auctionfeed_asciipitch_v1_4.utc_offset_hours = omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.prefs.utc_offset_hours
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

-- trim leading zeros
trim_left_zeros = function(str)
  local start = 1

  while start < str:len() and str:byte(start) == 0x30 do
    start = start + 1
  end

  return str:sub(start)
end

-- is every character a digit
is_digits = function(str)
  if str:len() == 0 then
    return false
  end

  for index = 1, str:len() do
    local byte = str:byte(index)

    if byte < 0x30 or byte > 0x39 then
      return false
    end
  end

  return true
end

-- the number a digit run of implied decimal places spells
format_implied_decimal_text = function(str, places)
  local digits = trim_left_spaces(str)
  local sign = ""
  local first = digits:sub(1, 1)

  if first == "-" or first == "+" then
    sign = first
    digits = digits:sub(2)
  end

  if not is_digits(digits) then
    return nil
  end

  digits = trim_left_zeros(digits)

  while digits:len() <= places do
    digits = "0"..digits
  end

  return sign..digits:sub(1, digits:len() - places).."."..digits:sub(-places)
end

-- ascii digits as an unsigned 64 bit value, nil when the run is no number
ascii_to_uint64 = function(str)
  local digits = str:match("^%s*(%d+)%s*$")

  if digits == nil then
    return nil
  end

  local value = UInt64.new(digits)

  -- UInt64.new stops at its maximum rather than failing, so an overrun would
  -- read as that maximum. Nineteen digits always fit, so only a longer run is
  -- read back and compared against the digits it came from
  if #digits > 19 then
    local significant = digits:match("^0*(%d+)$")

    if tostring(value) ~= significant then
      return nil
    end
  end

  return value
end


-----------------------------------------------------------------------
-- Cboe BxeEquities AuctionFeed AsciiPitch 1.4 Fields
-----------------------------------------------------------------------

-- Auction Type
cboe_bxeequities_auctionfeed_asciipitch_v1_4.auction_type = {}

-- Size: Auction Type
cboe_bxeequities_auctionfeed_asciipitch_v1_4.auction_type.size = 1

-- Display: Auction Type
cboe_bxeequities_auctionfeed_asciipitch_v1_4.auction_type.display = function(value)
  return "Auction Type: "..value
end

-- Dissect: Auction Type
cboe_bxeequities_auctionfeed_asciipitch_v1_4.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_auctionfeed_asciipitch_v1_4.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Includes Primary
cboe_bxeequities_auctionfeed_asciipitch_v1_4.includes_primary = {}

-- Size: Includes Primary
cboe_bxeequities_auctionfeed_asciipitch_v1_4.includes_primary.size = 1

-- Display: Includes Primary
cboe_bxeequities_auctionfeed_asciipitch_v1_4.includes_primary.display = function(value)
  return "Includes Primary: "..value
end

-- Dissect: Includes Primary
cboe_bxeequities_auctionfeed_asciipitch_v1_4.includes_primary.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_auctionfeed_asciipitch_v1_4.includes_primary.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.includes_primary.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.includes_primary, range, value, display)

  return offset + length, value
end

-- Indicative Price
cboe_bxeequities_auctionfeed_asciipitch_v1_4.indicative_price = {}

-- Size: Indicative Price
cboe_bxeequities_auctionfeed_asciipitch_v1_4.indicative_price.size = 19

-- Display: Indicative Price
cboe_bxeequities_auctionfeed_asciipitch_v1_4.indicative_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_bxeequities_auctionfeed_asciipitch_v1_4.indicative_price.size):string(), 6)

  if text == nil then
    return "Indicative Price: "..tostring(value)
  end

  return "Indicative Price: "..text
end

-- Dissect: Indicative Price
cboe_bxeequities_auctionfeed_asciipitch_v1_4.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_auctionfeed_asciipitch_v1_4.indicative_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.indicative_price, range, value, "Indicative Price: Not Applicable")
    item:add_proto_expert_info(cboe_bxeequities_auctionfeed_asciipitch_v1_4.experts.not_a_number, "Indicative Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000000

  local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Indicative Shares
cboe_bxeequities_auctionfeed_asciipitch_v1_4.indicative_shares = {}

-- Size: Indicative Shares
cboe_bxeequities_auctionfeed_asciipitch_v1_4.indicative_shares.size = 10

-- Display: Indicative Shares
cboe_bxeequities_auctionfeed_asciipitch_v1_4.indicative_shares.display = function(value)
  return "Indicative Shares: "..value
end

-- Dissect: Indicative Shares
cboe_bxeequities_auctionfeed_asciipitch_v1_4.indicative_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_auctionfeed_asciipitch_v1_4.indicative_shares.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.indicative_shares, range, value, "Indicative Shares: Not Applicable")
    item:add_proto_expert_info(cboe_bxeequities_auctionfeed_asciipitch_v1_4.experts.not_a_number, "Indicative Shares is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.indicative_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.indicative_shares, range, value, display)

  return offset + length, value
end

-- Outside Tolerance
cboe_bxeequities_auctionfeed_asciipitch_v1_4.outside_tolerance = {}

-- Size: Outside Tolerance
cboe_bxeequities_auctionfeed_asciipitch_v1_4.outside_tolerance.size = 1

-- Display: Outside Tolerance
cboe_bxeequities_auctionfeed_asciipitch_v1_4.outside_tolerance.display = function(value)
  return "Outside Tolerance: "..value
end

-- Dissect: Outside Tolerance
cboe_bxeequities_auctionfeed_asciipitch_v1_4.outside_tolerance.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_auctionfeed_asciipitch_v1_4.outside_tolerance.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.outside_tolerance.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.outside_tolerance, range, value, display)

  return offset + length, value
end

-- Packet Type
cboe_bxeequities_auctionfeed_asciipitch_v1_4.packet_type = {}

-- Size: Packet Type
cboe_bxeequities_auctionfeed_asciipitch_v1_4.packet_type.size = 1

-- Display: Packet Type
cboe_bxeequities_auctionfeed_asciipitch_v1_4.packet_type.labels = {
  ["+"] = "Packet Type: Debug Packet (+)",
  ["A"] = "Packet Type: Login Accepted Packet (A)",
  ["J"] = "Packet Type: Login Rejected Packet (J)",
  ["S"] = "Packet Type: Sequenced Data Packet (S)",
  ["H"] = "Packet Type: Server Heartbeat Packet (H)",
  ["L"] = "Packet Type: Login Request Packet (L)",
  ["U"] = "Packet Type: Unsequenced Data Packet (U)",
  ["R"] = "Packet Type: Client Heartbeat Packet (R)",
  ["O"] = "Packet Type: Logout Request Packet (O)",
}

cboe_bxeequities_auctionfeed_asciipitch_v1_4.packet_type.display = function(value)
  return cboe_bxeequities_auctionfeed_asciipitch_v1_4.packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
cboe_bxeequities_auctionfeed_asciipitch_v1_4.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_auctionfeed_asciipitch_v1_4.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Password
cboe_bxeequities_auctionfeed_asciipitch_v1_4.password = {}

-- Size: Password
cboe_bxeequities_auctionfeed_asciipitch_v1_4.password.size = 10

-- Display: Password
cboe_bxeequities_auctionfeed_asciipitch_v1_4.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_bxeequities_auctionfeed_asciipitch_v1_4.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_auctionfeed_asciipitch_v1_4.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.password, range, value, display)

  return offset + length, value
end

-- Price
cboe_bxeequities_auctionfeed_asciipitch_v1_4.price = {}

-- Size: Price
cboe_bxeequities_auctionfeed_asciipitch_v1_4.price.size = 19

-- Display: Price
cboe_bxeequities_auctionfeed_asciipitch_v1_4.price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_bxeequities_auctionfeed_asciipitch_v1_4.price.size):string(), 6)

  if text == nil then
    return "Price: "..tostring(value)
  end

  return "Price: "..text
end

-- Dissect: Price
cboe_bxeequities_auctionfeed_asciipitch_v1_4.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_auctionfeed_asciipitch_v1_4.price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.price, range, value, "Price: Not Applicable")
    item:add_proto_expert_info(cboe_bxeequities_auctionfeed_asciipitch_v1_4.experts.not_a_number, "Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000000

  local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.price, range, value, display)

  return offset + length, value
end

-- Reference Price
cboe_bxeequities_auctionfeed_asciipitch_v1_4.reference_price = {}

-- Size: Reference Price
cboe_bxeequities_auctionfeed_asciipitch_v1_4.reference_price.size = 19

-- Display: Reference Price
cboe_bxeequities_auctionfeed_asciipitch_v1_4.reference_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_bxeequities_auctionfeed_asciipitch_v1_4.reference_price.size):string(), 6)

  if text == nil then
    return "Reference Price: "..tostring(value)
  end

  return "Reference Price: "..text
end

-- Dissect: Reference Price
cboe_bxeequities_auctionfeed_asciipitch_v1_4.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_auctionfeed_asciipitch_v1_4.reference_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.reference_price, range, value, "Reference Price: Not Applicable")
    item:add_proto_expert_info(cboe_bxeequities_auctionfeed_asciipitch_v1_4.experts.not_a_number, "Reference Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000000

  local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
cboe_bxeequities_auctionfeed_asciipitch_v1_4.reject_reason_code = {}

-- Size: Reject Reason Code
cboe_bxeequities_auctionfeed_asciipitch_v1_4.reject_reason_code.size = 1

-- Display: Reject Reason Code
cboe_bxeequities_auctionfeed_asciipitch_v1_4.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
cboe_bxeequities_auctionfeed_asciipitch_v1_4.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_auctionfeed_asciipitch_v1_4.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
cboe_bxeequities_auctionfeed_asciipitch_v1_4.requested_sequence_number = {}

-- Size: Requested Sequence Number
cboe_bxeequities_auctionfeed_asciipitch_v1_4.requested_sequence_number.size = 10

-- Display: Requested Sequence Number
cboe_bxeequities_auctionfeed_asciipitch_v1_4.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
cboe_bxeequities_auctionfeed_asciipitch_v1_4.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_auctionfeed_asciipitch_v1_4.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
cboe_bxeequities_auctionfeed_asciipitch_v1_4.requested_session = {}

-- Size: Requested Session
cboe_bxeequities_auctionfeed_asciipitch_v1_4.requested_session.size = 10

-- Display: Requested Session
cboe_bxeequities_auctionfeed_asciipitch_v1_4.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
cboe_bxeequities_auctionfeed_asciipitch_v1_4.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_auctionfeed_asciipitch_v1_4.requested_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Sequence Number
cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequence_number = {}

-- Size: Sequence Number
cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequence_number.size = 10

-- Display: Sequence Number
cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequence_number.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_type = {}

-- Size: Sequenced Message Type
cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_type.labels = {
  ["l"] = "Sequenced Message Type: Auction Update Message (l)",
  ["j"] = "Sequenced Message Type: Auction Summary Message (j)",
}

cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_type.display = function(value)
  return cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_type.labels[value] or "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Session
cboe_bxeequities_auctionfeed_asciipitch_v1_4.session = {}

-- Size: Session
cboe_bxeequities_auctionfeed_asciipitch_v1_4.session.size = 10

-- Display: Session
cboe_bxeequities_auctionfeed_asciipitch_v1_4.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
cboe_bxeequities_auctionfeed_asciipitch_v1_4.session.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_auctionfeed_asciipitch_v1_4.session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.session, range, value, display)

  return offset + length, value
end

-- Shares
cboe_bxeequities_auctionfeed_asciipitch_v1_4.shares = {}

-- Size: Shares
cboe_bxeequities_auctionfeed_asciipitch_v1_4.shares.size = 10

-- Display: Shares
cboe_bxeequities_auctionfeed_asciipitch_v1_4.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
cboe_bxeequities_auctionfeed_asciipitch_v1_4.shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_auctionfeed_asciipitch_v1_4.shares.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.shares, range, value, "Shares: Not Applicable")
    item:add_proto_expert_info(cboe_bxeequities_auctionfeed_asciipitch_v1_4.experts.not_a_number, "Shares is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.shares, range, value, display)

  return offset + length, value
end

-- Soup Lf
cboe_bxeequities_auctionfeed_asciipitch_v1_4.soup_lf = {}

-- Size: Soup Lf
cboe_bxeequities_auctionfeed_asciipitch_v1_4.soup_lf.size = 1

-- Display: Soup Lf
cboe_bxeequities_auctionfeed_asciipitch_v1_4.soup_lf.display = function(value)
  if value == 10 then
    return "Soup Lf: Line Feed"
  end

  return "Soup Lf: Unknown("..value..")"
end

-- Dissect: Soup Lf
cboe_bxeequities_auctionfeed_asciipitch_v1_4.soup_lf.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_auctionfeed_asciipitch_v1_4.soup_lf.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.soup_lf.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.soup_lf, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_bxeequities_auctionfeed_asciipitch_v1_4.symbol = {}

-- Size: Symbol
cboe_bxeequities_auctionfeed_asciipitch_v1_4.symbol.size = 8

-- Display: Symbol
cboe_bxeequities_auctionfeed_asciipitch_v1_4.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_bxeequities_auctionfeed_asciipitch_v1_4.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_auctionfeed_asciipitch_v1_4.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.symbol, range, value, display)

  return offset + length, value
end

-- Text
cboe_bxeequities_auctionfeed_asciipitch_v1_4.text = {}

-- Size: Text
cboe_bxeequities_auctionfeed_asciipitch_v1_4.text.size = 1

-- Display: Text
cboe_bxeequities_auctionfeed_asciipitch_v1_4.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
cboe_bxeequities_auctionfeed_asciipitch_v1_4.text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_auctionfeed_asciipitch_v1_4.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.text, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_bxeequities_auctionfeed_asciipitch_v1_4.timestamp = {}

-- Size: Timestamp
cboe_bxeequities_auctionfeed_asciipitch_v1_4.timestamp.size = 8

-- Display: Timestamp
cboe_bxeequities_auctionfeed_asciipitch_v1_4.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode (or unparsable ASCII fell back to a non-number)
  if type(value) ~= "number" then
    return "Timestamp: "..tostring(value)
  end

  if cboe_bxeequities_auctionfeed_asciipitch_v1_4.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if cboe_bxeequities_auctionfeed_asciipitch_v1_4.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = cboe_bxeequities_auctionfeed_asciipitch_v1_4.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", full_seconds + utc_offset_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Timestamp
cboe_bxeequities_auctionfeed_asciipitch_v1_4.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_auctionfeed_asciipitch_v1_4.timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.timestamp, range, value, "Timestamp: Not Applicable")
    item:add_proto_expert_info(cboe_bxeequities_auctionfeed_asciipitch_v1_4.experts.not_a_number, "Timestamp is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
cboe_bxeequities_auctionfeed_asciipitch_v1_4.unsequenced_message = {}

-- Display: Unsequenced Message
cboe_bxeequities_auctionfeed_asciipitch_v1_4.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
cboe_bxeequities_auctionfeed_asciipitch_v1_4.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.unsequenced_message, range, value, display)

  return offset + size, value
end

-- Username
cboe_bxeequities_auctionfeed_asciipitch_v1_4.username = {}

-- Size: Username
cboe_bxeequities_auctionfeed_asciipitch_v1_4.username.size = 6

-- Display: Username
cboe_bxeequities_auctionfeed_asciipitch_v1_4.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_bxeequities_auctionfeed_asciipitch_v1_4.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_auctionfeed_asciipitch_v1_4.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe BxeEquities AuctionFeed AsciiPitch 1.4
-----------------------------------------------------------------------

-- Unsequenced Data Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.unsequenced_data_packet = {}

-- Calculate size of: Unsequenced Data Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.unsequenced_data_packet.size = function(buffer, offset)
  local index = 0

  -- Remaining size of: Unsequenced Message
  index = index + (buffer:len() - (offset + index))

  return index
end

-- Display: Unsequenced Data Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.unsequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = buffer:len() - index

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = cboe_bxeequities_auctionfeed_asciipitch_v1_4.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.unsequenced_data_packet, buffer(offset, 0))
    local index = cboe_bxeequities_auctionfeed_asciipitch_v1_4.unsequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.unsequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_auctionfeed_asciipitch_v1_4.unsequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.login_request_packet = {}

-- Size: Login Request Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.login_request_packet.size =
  cboe_bxeequities_auctionfeed_asciipitch_v1_4.username.size + 
  cboe_bxeequities_auctionfeed_asciipitch_v1_4.password.size + 
  cboe_bxeequities_auctionfeed_asciipitch_v1_4.requested_session.size + 
  cboe_bxeequities_auctionfeed_asciipitch_v1_4.requested_sequence_number.size

-- Display: Login Request Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = cboe_bxeequities_auctionfeed_asciipitch_v1_4.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = cboe_bxeequities_auctionfeed_asciipitch_v1_4.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = cboe_bxeequities_auctionfeed_asciipitch_v1_4.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 10 Byte Ascii String
  index, requested_sequence_number = cboe_bxeequities_auctionfeed_asciipitch_v1_4.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.login_request_packet, buffer(offset, 0))
    local index = cboe_bxeequities_auctionfeed_asciipitch_v1_4.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_auctionfeed_asciipitch_v1_4.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Auction Summary Message
cboe_bxeequities_auctionfeed_asciipitch_v1_4.auction_summary_message = {}

-- Size: Auction Summary Message
cboe_bxeequities_auctionfeed_asciipitch_v1_4.auction_summary_message.size =
  cboe_bxeequities_auctionfeed_asciipitch_v1_4.symbol.size + 
  cboe_bxeequities_auctionfeed_asciipitch_v1_4.auction_type.size + 
  cboe_bxeequities_auctionfeed_asciipitch_v1_4.price.size + 
  cboe_bxeequities_auctionfeed_asciipitch_v1_4.shares.size

-- Display: Auction Summary Message
cboe_bxeequities_auctionfeed_asciipitch_v1_4.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_bxeequities_auctionfeed_asciipitch_v1_4.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alphanumeric
  index, symbol = cboe_bxeequities_auctionfeed_asciipitch_v1_4.symbol.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = cboe_bxeequities_auctionfeed_asciipitch_v1_4.auction_type.dissect(buffer, index, packet, parent)

  -- Price: Long Price
  index, price = cboe_bxeequities_auctionfeed_asciipitch_v1_4.price.dissect(buffer, index, packet, parent)

  -- Shares: Numeric
  index, shares = cboe_bxeequities_auctionfeed_asciipitch_v1_4.shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_bxeequities_auctionfeed_asciipitch_v1_4.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_bxeequities_auctionfeed_asciipitch_v1_4.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_auctionfeed_asciipitch_v1_4.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Update Message
cboe_bxeequities_auctionfeed_asciipitch_v1_4.auction_update_message = {}

-- Size: Auction Update Message
cboe_bxeequities_auctionfeed_asciipitch_v1_4.auction_update_message.size =
  cboe_bxeequities_auctionfeed_asciipitch_v1_4.symbol.size + 
  cboe_bxeequities_auctionfeed_asciipitch_v1_4.auction_type.size + 
  cboe_bxeequities_auctionfeed_asciipitch_v1_4.reference_price.size + 
  cboe_bxeequities_auctionfeed_asciipitch_v1_4.indicative_price.size + 
  cboe_bxeequities_auctionfeed_asciipitch_v1_4.indicative_shares.size + 
  cboe_bxeequities_auctionfeed_asciipitch_v1_4.outside_tolerance.size + 
  cboe_bxeequities_auctionfeed_asciipitch_v1_4.includes_primary.size

-- Display: Auction Update Message
cboe_bxeequities_auctionfeed_asciipitch_v1_4.auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Update Message
cboe_bxeequities_auctionfeed_asciipitch_v1_4.auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alphanumeric
  index, symbol = cboe_bxeequities_auctionfeed_asciipitch_v1_4.symbol.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = cboe_bxeequities_auctionfeed_asciipitch_v1_4.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price: Long Price
  index, reference_price = cboe_bxeequities_auctionfeed_asciipitch_v1_4.reference_price.dissect(buffer, index, packet, parent)

  -- Indicative Price: Long Price
  index, indicative_price = cboe_bxeequities_auctionfeed_asciipitch_v1_4.indicative_price.dissect(buffer, index, packet, parent)

  -- Indicative Shares: Numeric
  index, indicative_shares = cboe_bxeequities_auctionfeed_asciipitch_v1_4.indicative_shares.dissect(buffer, index, packet, parent)

  -- Outside Tolerance: Alphanumeric
  index, outside_tolerance = cboe_bxeequities_auctionfeed_asciipitch_v1_4.outside_tolerance.dissect(buffer, index, packet, parent)

  -- Includes Primary: Alphanumeric
  index, includes_primary = cboe_bxeequities_auctionfeed_asciipitch_v1_4.includes_primary.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Update Message
cboe_bxeequities_auctionfeed_asciipitch_v1_4.auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.auction_update_message, buffer(offset, 0))
    local index = cboe_bxeequities_auctionfeed_asciipitch_v1_4.auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_auctionfeed_asciipitch_v1_4.auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_message = {}

-- Dissect: Sequenced Message
cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_message.dispatch = {
  ["l"] = cboe_bxeequities_auctionfeed_asciipitch_v1_4.auction_update_message.dissect,
  ["j"] = cboe_bxeequities_auctionfeed_asciipitch_v1_4.auction_summary_message.dissect,
}

cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  local dissect = cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_message.dispatch[sequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Message Header
cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_header = {}

-- Size: Sequenced Message Header
cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_header.size =
  cboe_bxeequities_auctionfeed_asciipitch_v1_4.timestamp.size + 
  cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_type.size

-- Display: Sequenced Message Header
cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message Header
cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Ascii String
  index, timestamp = cboe_bxeequities_auctionfeed_asciipitch_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 2 values
  index, sequenced_message_type = cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Message Header
cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.sequenced_message_header, buffer(offset, 0))
    local index = cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Data Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_data_packet = {}

-- Calculate size of: Sequenced Data Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_data_packet.size = function(buffer, offset)
  local index = 0

  index = index + cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_header.size

  -- Calculate runtime size of Sequenced Message field
  local sequenced_message_offset = offset + index
  local sequenced_message_type = buffer(sequenced_message_offset - 1, 1):string()
  index = index + cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_message.size(buffer, sequenced_message_offset, sequenced_message_type)

  return index
end

-- Display: Sequenced Data Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequenced Message Header: Struct of 2 fields
  index, sequenced_message_header = cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Sequenced Message Type
  local sequenced_message_type = buffer(index - 1, 1):string()

  -- Sequenced Message: Runtime Type with 2 branches
  index = cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.sequenced_data_packet, buffer(offset, 0))
    local index = cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Rejected Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.login_rejected_packet = {}

-- Size: Login Rejected Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.login_rejected_packet.size =
  cboe_bxeequities_auctionfeed_asciipitch_v1_4.reject_reason_code.size

-- Display: Login Rejected Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = cboe_bxeequities_auctionfeed_asciipitch_v1_4.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.login_rejected_packet, buffer(offset, 0))
    local index = cboe_bxeequities_auctionfeed_asciipitch_v1_4.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_auctionfeed_asciipitch_v1_4.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.login_accepted_packet = {}

-- Size: Login Accepted Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.login_accepted_packet.size =
  cboe_bxeequities_auctionfeed_asciipitch_v1_4.session.size + 
  cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequence_number.size

-- Display: Login Accepted Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = cboe_bxeequities_auctionfeed_asciipitch_v1_4.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 10 Byte Ascii String
  index, sequence_number = cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.login_accepted_packet, buffer(offset, 0))
    local index = cboe_bxeequities_auctionfeed_asciipitch_v1_4.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_auctionfeed_asciipitch_v1_4.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.debug_packet = {}

-- Size: Debug Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.debug_packet.size =
  cboe_bxeequities_auctionfeed_asciipitch_v1_4.text.size

-- Display: Debug Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = cboe_bxeequities_auctionfeed_asciipitch_v1_4.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.debug_packet, buffer(offset, 0))
    local index = cboe_bxeequities_auctionfeed_asciipitch_v1_4.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_auctionfeed_asciipitch_v1_4.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_bxeequities_auctionfeed_asciipitch_v1_4.payload = {}

-- Dissect: Payload
cboe_bxeequities_auctionfeed_asciipitch_v1_4.payload.dispatch = {
  ["+"] = cboe_bxeequities_auctionfeed_asciipitch_v1_4.debug_packet.dissect,
  ["A"] = cboe_bxeequities_auctionfeed_asciipitch_v1_4.login_accepted_packet.dissect,
  ["J"] = cboe_bxeequities_auctionfeed_asciipitch_v1_4.login_rejected_packet.dissect,
  ["S"] = cboe_bxeequities_auctionfeed_asciipitch_v1_4.sequenced_data_packet.dissect,
  ["L"] = cboe_bxeequities_auctionfeed_asciipitch_v1_4.login_request_packet.dissect,
  ["U"] = cboe_bxeequities_auctionfeed_asciipitch_v1_4.unsequenced_data_packet.dissect,
}

cboe_bxeequities_auctionfeed_asciipitch_v1_4.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  local dissect = cboe_bxeequities_auctionfeed_asciipitch_v1_4.payload.dispatch[packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Frame
cboe_bxeequities_auctionfeed_asciipitch_v1_4.frame = {}

-- Display: Frame
cboe_bxeequities_auctionfeed_asciipitch_v1_4.frame.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Frame
cboe_bxeequities_auctionfeed_asciipitch_v1_4.frame.fields = function(buffer, offset, packet, parent, size_of_frame)
  local index = offset

  -- Packet Type: 1 Byte Ascii String Enum with 9 values
  index, packet_type = cboe_bxeequities_auctionfeed_asciipitch_v1_4.packet_type.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 6 branches
  index = cboe_bxeequities_auctionfeed_asciipitch_v1_4.payload.dissect(buffer, index, packet, parent, packet_type)

  -- Soup Lf: 1 Byte Fixed Width Integer Static
  index, soup_lf = cboe_bxeequities_auctionfeed_asciipitch_v1_4.soup_lf.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Frame
cboe_bxeequities_auctionfeed_asciipitch_v1_4.frame.dissect = function(buffer, offset, packet, parent, size_of_frame)
  local index = offset + size_of_frame

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.fields.frame, buffer(offset, 0))
    local current = cboe_bxeequities_auctionfeed_asciipitch_v1_4.frame.fields(buffer, offset, packet, parent, size_of_frame)
    parent:set_len(size_of_frame)
    local display = cboe_bxeequities_auctionfeed_asciipitch_v1_4.frame.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_bxeequities_auctionfeed_asciipitch_v1_4.frame.fields(buffer, offset, packet, parent, size_of_frame)

    return index
  end
end

-- Remaining Bytes For: Frame
local frame_bytes_remaining = function(buffer, index, available)
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

-- Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.packet = {}

-- Verify required size of Tcp packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_bxeequities_auctionfeed_asciipitch_v1_4.packet_type.size
end

-- Dissect Packet
cboe_bxeequities_auctionfeed_asciipitch_v1_4.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Frame
  local end_of_payload = buffer:len()

  -- Frame: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_frame = frame_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_frame):tvb()
      index = cboe_bxeequities_auctionfeed_asciipitch_v1_4.frame.dissect(frame, index, packet, parent, size_of_frame)
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
function omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.init()
end

-- Dissector for Cboe BxeEquities AuctionFeed AsciiPitch 1.4
function omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4, buffer(), omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.description, "("..buffer:len().." Bytes)")
  return cboe_bxeequities_auctionfeed_asciipitch_v1_4.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
cboe_bxeequities_auctionfeed_asciipitch_v1_4.packet.fingerprint = function(buffer)
  if buffer:len() < 1 then
    return false
  end

  local packet_type = buffer(0, 1):string()

  -- Debug Packet
  if packet_type == "+" then
    return true
  end

  -- Login Accepted Packet
  if packet_type == "A" then
    return true
  end

  -- Login Rejected Packet
  if packet_type == "J" then
    return true
  end

  -- Sequenced Data Packet: carries the application messages, which tell this protocol from others sharing the session framing
  if packet_type == "S" then
    if buffer:len() < 10 then
      return false
    end

    local sequenced_message_type = buffer(9, 1):string()

    -- Auction Update Message
    if sequenced_message_type == "l" then
      return true
    end

    -- Auction Summary Message
    if sequenced_message_type == "j" then
      return true
    end

    return false
  end

  -- Login Request Packet
  if packet_type == "L" then
    return true
  end

  -- Unsequenced Data Packet
  if packet_type == "U" then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe BxeEquities AuctionFeed AsciiPitch 1.4 (Tcp)
local function omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_bxeequities_auctionfeed_asciipitch_v1_4.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp packet message dispatch
  if not cboe_bxeequities_auctionfeed_asciipitch_v1_4.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4
  omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe BxeEquities AuctionFeed AsciiPitch 1.4
omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4:register_heuristic("tcp", omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4_tcp_heuristic)

-- Register Cboe BxeEquities AuctionFeed AsciiPitch 1.4 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_bxeequities_auctionfeed_asciipitch_v1_4)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.4
--   Since: 1.0
--   Date: Thursday, February 6, 2025
--   Specification: BATS_Europe_Auction_Feed_Specification.pdf
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
