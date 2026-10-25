-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe BzxEquities AuctionFeed AsciiPitch 1.3.8 Protocol
local omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8 = Proto("Omi.Cboe.BzxEquities.AuctionFeed.AsciiPitch.v1.3.8", "Cboe BzxEquities AuctionFeed AsciiPitch 1.3.8")

-- Protocol table
local cboe_bzxequities_auctionfeed_asciipitch_v1_3_8 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe BzxEquities AuctionFeed AsciiPitch 1.3.8 Fields
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.auction_only_price_long = ProtoField.new("Auction Only Price Long", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.auctiononlypricelong", ftypes.DOUBLE, nil, nil, nil, "Price at which the auction book would match using only Eligible Auction Orders.")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.auction_only_price_short = ProtoField.new("Auction Only Price Short", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.auctiononlypriceshort", ftypes.UINT64, nil, nil, nil, "Price at which the auction book would match using only Eligible Auction Orders.")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.auction_type = ProtoField.new("Auction Type", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.auctiontype", ftypes.STRING)
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.buy_shares = ProtoField.new("Buy Shares", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.buyshares", ftypes.UINT64, nil, nil, nil, "Number of shares on buy side at the Reference Price. Shares matched for Cboe Market Close session.")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.debug_packet = ProtoField.new("Debug Packet", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.debugpacket", ftypes.STRING, nil, nil, nil, "Debug packets are intended to provide human readable text that may aid in debugging problems.")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.indicative_price_long = ProtoField.new("Indicative Price Long", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.indicativepricelong", ftypes.DOUBLE, nil, nil, nil, "Price at which the auction book and the continuous book would match.")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.indicative_price_short = ProtoField.new("Indicative Price Short", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.indicativepriceshort", ftypes.UINT64, nil, nil, nil, "Price at which the auction book and the continuous book would match.")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.loginacceptedpacket", ftypes.STRING, nil, nil, nil, "The Soup 2.0 server sends a Login Accepted Packet in response to receiving a valid Login Request from the client.")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.loginrejectedpacket", ftypes.STRING, nil, nil, nil, "The Soup 2.0 server sends this packet in response to an invalid Login Request Packet from the client.")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.login_request_packet = ProtoField.new("Login Request Packet", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.loginrequestpacket", ftypes.STRING, nil, nil, nil, "The Soup 2.0 client must send a Login Request Packet immediately upon establishing a new TCP/IP socket connection to the server.")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.packet_type = ProtoField.new("Packet Type", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.packettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.password = ProtoField.new("Password", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.password", ftypes.STRING, nil, nil, nil, "Login password")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.price_long = ProtoField.new("Price Long", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.pricelong", ftypes.DOUBLE, nil, nil, nil, "Auction price. Price of the CMC match.")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.price_short = ProtoField.new("Price Short", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.priceshort", ftypes.UINT64, nil, nil, nil, "Auction price or CMC match price.")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.reference_price_long = ProtoField.new("Reference Price Long", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.referencepricelong", ftypes.DOUBLE, nil, nil, nil, "BBO Collared auction price.")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.reference_price_short = ProtoField.new("Reference Price Short", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.referencepriceshort", ftypes.UINT64, nil, nil, nil, "BBO Collared auction price.")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.rejectreasoncode", ftypes.STRING, nil, nil, nil, "Login Reject Codes")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.requestedsequencenumber", ftypes.STRING, nil, nil, nil, "Specifies the next sequence number in ASCII the client wants to receive upon connection, or 0 to start receiving the most recently generated message.")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.requested_session = ProtoField.new("Requested Session", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.requestedsession", ftypes.STRING, nil, nil, nil, "Specifies the session the client would like to log into, or all blanks to log into the currently active session.")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.sell_shares = ProtoField.new("Sell Shares", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.sellshares", ftypes.UINT64, nil, nil, nil, "Number of shares on sell side at the Reference Price. Shares matched for Cboe Market Close session.")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.sequence_number = ProtoField.new("Sequence Number", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.sequencenumber", ftypes.STRING, nil, nil, nil, "The sequence number in ASCII of the next Sequenced Message to be sent. Left padded with spaces.")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.sequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Sequenced Data Packets act as an envelope to carry the actual sequenced data messages that are transferred from the server to the client. Each Sequenced Data Packet carries one message from the higher-lever protocol.")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.sequenced_message_header = ProtoField.new("Sequenced Message Header", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.sequencedmessageheader", ftypes.STRING)
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.sequencedmessagetype", ftypes.STRING)
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.session = ProtoField.new("Session", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.session", ftypes.STRING, nil, nil, nil, "The session ID of the session that is now logged into. Left padded with spaces.")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.shares = ProtoField.new("Shares", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.shares", ftypes.UINT64, nil, nil, nil, "Cumulative number of shares executed during the auction or CMC matching session.")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.soup_lf = ProtoField.new("Soup Lf", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.souplf", ftypes.INT8, nil, nil, nil, "Terminating line feed character")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.stock_symbol = ProtoField.new("Stock Symbol", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.stocksymbol", ftypes.STRING, nil, nil, nil, "Stock symbol right padded with spaces.")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.text = ProtoField.new("Text", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.text", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.timestamp = ProtoField.new("Timestamp", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.timestamp", ftypes.UINT32)
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.unsequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Unsequenced Data Packets act as an envelope to carry the actual data messages that are transferred from the client to the server. These messages are not sequenced and may be lost in the event of a socket failure.")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.unsequencedmessage", ftypes.BYTES, nil, nil, nil, "Raw unsequenced message bytes")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.username = ProtoField.new("Username", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.username", ftypes.STRING, nil, nil, nil, "Session username")

-- Cboe BzxEquities AuctionFeed AsciiPitch 1.3.8 Framing
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.frame = ProtoField.new("Frame", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.frame", ftypes.STRING, nil, nil, nil, "Soup 2.0 Lf terminated record")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.packet = ProtoField.new("Packet", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.packet", ftypes.STRING, nil, nil, nil, "Soup 2.0 Packet")

-- Cboe BzxEquities AuctionFeed 1.3.8 Application Messages
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.auctionsummarymessage", ftypes.STRING, nil, nil, nil, "Auction Summary messages disseminate the results of a Cboe listed security auction and for Cboe Market Close.")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.auction_update_message = ProtoField.new("Auction Update Message", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.auctionupdatemessage", ftypes.STRING, nil, nil, nil, "Auction Update messages disseminate Cboe price and size information during auctions for Cboe listed securities and for CMC.")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.extended_auction_summary_message = ProtoField.new("Extended Auction Summary Message", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.extendedauctionsummarymessage", ftypes.STRING, nil, nil, nil, "The extended version of the Auction Summary message accommodates larger prices.")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.extended_auction_update_message = ProtoField.new("Extended Auction Update Message", "cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.extendedauctionupdatemessage", ftypes.STRING, nil, nil, nil, "The extended version of the Auction Update message accommodates larger prices.")

-- Cboe BzxEquities AuctionFeed AsciiPitch 1.3.8 Expert Info
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.experts = {}
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.experts.not_a_number = ProtoExpert.new("cboe.bzxequities.auctionfeed.asciipitch.v1.3.8.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.experts = { cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.experts.not_a_number }

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe BzxEquities AuctionFeed AsciiPitch 1.3.8 Element Dissection Options
show.application_messages = true
show.structs = true

-- Register Cboe BzxEquities AuctionFeed AsciiPitch 1.3.8 Show Options
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")

-- Handle changed preferences
function omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.prefs.show_application_messages then
    show.application_messages = omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.prefs.show_application_messages
  end
  if show.structs ~= omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.prefs.show_structs then
    show.structs = omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.prefs.show_structs
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
-- Cboe BzxEquities AuctionFeed AsciiPitch 1.3.8 Fields
-----------------------------------------------------------------------

-- Auction Only Price Long
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_only_price_long = {}

-- Size: Auction Only Price Long
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_only_price_long.size = 14

-- Display: Auction Only Price Long
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_only_price_long.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_only_price_long.size):string(), 6)

  if text == nil then
    return "Auction Only Price Long: "..tostring(value)
  end

  return "Auction Only Price Long: "..text
end

-- Dissect: Auction Only Price Long
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_only_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_only_price_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.auction_only_price_long, range, value, "Auction Only Price Long: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.experts.not_a_number, "Auction Only Price Long is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000000

  local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_only_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.auction_only_price_long, range, value, display)

  return offset + length, value
end

-- Auction Only Price Short
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_only_price_short = {}

-- Size: Auction Only Price Short
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_only_price_short.size = 10

-- Display: Auction Only Price Short
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_only_price_short.display = function(value)
  return "Auction Only Price Short: "..value
end

-- Dissect: Auction Only Price Short
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_only_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_only_price_short.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.auction_only_price_short, range, value, "Auction Only Price Short: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.experts.not_a_number, "Auction Only Price Short is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_only_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.auction_only_price_short, range, value, display)

  return offset + length, value
end

-- Auction Type
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_type = {}

-- Size: Auction Type
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_type.size = 1

-- Display: Auction Type
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_type.labels = {
  ["O"] = "Auction Type: Opening Auction (O)",
  ["C"] = "Auction Type: Closing Auction (C)",
  ["H"] = "Auction Type: Halt Auction (H)",
  ["I"] = "Auction Type: Ipo Auction (I)",
  ["M"] = "Auction Type: Cboe Market Close (M)",
}

cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_type.display = function(value)
  return cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_type.labels[value] or "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Buy Shares
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.buy_shares = {}

-- Size: Buy Shares
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.buy_shares.size = 10

-- Display: Buy Shares
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.buy_shares.display = function(value)
  return "Buy Shares: "..value
end

-- Dissect: Buy Shares
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.buy_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.buy_shares.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.buy_shares, range, value, "Buy Shares: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.experts.not_a_number, "Buy Shares is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.buy_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.buy_shares, range, value, display)

  return offset + length, value
end

-- Indicative Price Long
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.indicative_price_long = {}

-- Size: Indicative Price Long
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.indicative_price_long.size = 14

-- Display: Indicative Price Long
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.indicative_price_long.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.indicative_price_long.size):string(), 6)

  if text == nil then
    return "Indicative Price Long: "..tostring(value)
  end

  return "Indicative Price Long: "..text
end

-- Dissect: Indicative Price Long
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.indicative_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.indicative_price_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.indicative_price_long, range, value, "Indicative Price Long: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.experts.not_a_number, "Indicative Price Long is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000000

  local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.indicative_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.indicative_price_long, range, value, display)

  return offset + length, value
end

-- Indicative Price Short
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.indicative_price_short = {}

-- Size: Indicative Price Short
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.indicative_price_short.size = 10

-- Display: Indicative Price Short
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.indicative_price_short.display = function(value)
  return "Indicative Price Short: "..value
end

-- Dissect: Indicative Price Short
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.indicative_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.indicative_price_short.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.indicative_price_short, range, value, "Indicative Price Short: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.experts.not_a_number, "Indicative Price Short is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.indicative_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.indicative_price_short, range, value, display)

  return offset + length, value
end

-- Packet Type
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.packet_type = {}

-- Size: Packet Type
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.packet_type.size = 1

-- Display: Packet Type
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.packet_type.labels = {
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

cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.packet_type.display = function(value)
  return cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Password
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.password = {}

-- Size: Password
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.password.size = 10

-- Display: Password
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.password, range, value, display)

  return offset + length, value
end

-- Price Long
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.price_long = {}

-- Size: Price Long
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.price_long.size = 14

-- Display: Price Long
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.price_long.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.price_long.size):string(), 6)

  if text == nil then
    return "Price Long: "..tostring(value)
  end

  return "Price Long: "..text
end

-- Dissect: Price Long
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.price_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.price_long, range, value, "Price Long: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.experts.not_a_number, "Price Long is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000000

  local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.price_long, range, value, display)

  return offset + length, value
end

-- Price Short
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.price_short = {}

-- Size: Price Short
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.price_short.size = 10

-- Display: Price Short
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.price_short.display = function(value)
  return "Price Short: "..value
end

-- Dissect: Price Short
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.price_short.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.price_short, range, value, "Price Short: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.experts.not_a_number, "Price Short is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.price_short, range, value, display)

  return offset + length, value
end

-- Reference Price Long
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.reference_price_long = {}

-- Size: Reference Price Long
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.reference_price_long.size = 14

-- Display: Reference Price Long
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.reference_price_long.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.reference_price_long.size):string(), 6)

  if text == nil then
    return "Reference Price Long: "..tostring(value)
  end

  return "Reference Price Long: "..text
end

-- Dissect: Reference Price Long
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.reference_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.reference_price_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.reference_price_long, range, value, "Reference Price Long: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.experts.not_a_number, "Reference Price Long is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000000

  local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.reference_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.reference_price_long, range, value, display)

  return offset + length, value
end

-- Reference Price Short
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.reference_price_short = {}

-- Size: Reference Price Short
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.reference_price_short.size = 10

-- Display: Reference Price Short
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.reference_price_short.display = function(value)
  return "Reference Price Short: "..value
end

-- Dissect: Reference Price Short
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.reference_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.reference_price_short.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.reference_price_short, range, value, "Reference Price Short: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.experts.not_a_number, "Reference Price Short is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.reference_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.reference_price_short, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.reject_reason_code = {}

-- Size: Reject Reason Code
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.reject_reason_code.size = 1

-- Display: Reject Reason Code
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.requested_sequence_number = {}

-- Size: Requested Sequence Number
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.requested_sequence_number.size = 10

-- Display: Requested Sequence Number
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.requested_session = {}

-- Size: Requested Session
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.requested_session.size = 10

-- Display: Requested Session
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.requested_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Sell Shares
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sell_shares = {}

-- Size: Sell Shares
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sell_shares.size = 10

-- Display: Sell Shares
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sell_shares.display = function(value)
  return "Sell Shares: "..value
end

-- Dissect: Sell Shares
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sell_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sell_shares.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.sell_shares, range, value, "Sell Shares: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.experts.not_a_number, "Sell Shares is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sell_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.sell_shares, range, value, display)

  return offset + length, value
end

-- Sequence Number
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequence_number = {}

-- Size: Sequence Number
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequence_number.size = 10

-- Display: Sequence Number
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequence_number.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_message_type = {}

-- Size: Sequenced Message Type
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_message_type.labels = {
  ["I"] = "Sequenced Message Type: Auction Update Message (I)",
  ["3"] = "Sequenced Message Type: Extended Auction Update Message (3)",
  ["J"] = "Sequenced Message Type: Auction Summary Message (J)",
  ["4"] = "Sequenced Message Type: Extended Auction Summary Message (4)",
}

cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_message_type.display = function(value)
  return cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_message_type.labels[value] or "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Session
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.session = {}

-- Size: Session
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.session.size = 10

-- Display: Session
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.session.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.session, range, value, display)

  return offset + length, value
end

-- Shares
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.shares = {}

-- Size: Shares
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.shares.size = 10

-- Display: Shares
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.shares.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.shares, range, value, "Shares: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.experts.not_a_number, "Shares is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.shares, range, value, display)

  return offset + length, value
end

-- Soup Lf
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.soup_lf = {}

-- Size: Soup Lf
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.soup_lf.size = 1

-- Display: Soup Lf
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.soup_lf.display = function(value)
  if value == 10 then
    return "Soup Lf: Line Feed"
  end

  return "Soup Lf: Unknown("..value..")"
end

-- Dissect: Soup Lf
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.soup_lf.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.soup_lf.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.soup_lf.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.soup_lf, range, value, display)

  return offset + length, value
end

-- Stock Symbol
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.stock_symbol = {}

-- Size: Stock Symbol
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.stock_symbol.size = 8

-- Display: Stock Symbol
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.stock_symbol.display = function(value)
  return "Stock Symbol: "..value
end

-- Dissect: Stock Symbol
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.stock_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.stock_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.stock_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.stock_symbol, range, value, display)

  return offset + length, value
end

-- Text
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.text = {}

-- Size: Text
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.text.size = 1

-- Display: Text
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.text, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.timestamp = {}

-- Size: Timestamp
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.timestamp.size = 8

-- Display: Timestamp
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.timestamp, range, value, "Timestamp: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.experts.not_a_number, "Timestamp is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.unsequenced_message = {}

-- Display: Unsequenced Message
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.unsequenced_message, range, value, display)

  return offset + size, value
end

-- Username
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.username = {}

-- Size: Username
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.username.size = 6

-- Display: Username
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe BzxEquities AuctionFeed AsciiPitch 1.3.8
-----------------------------------------------------------------------

-- Unsequenced Data Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.unsequenced_data_packet = {}

-- Calculate size of: Unsequenced Data Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.unsequenced_data_packet.size = function(buffer, offset)
  local index = 0

  -- Remaining size of: Unsequenced Message
  index = index + (buffer:len() - (offset + index))

  return index
end

-- Display: Unsequenced Data Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.unsequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = buffer:len() - index

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.unsequenced_data_packet, buffer(offset, 0))
    local index = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.unsequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.unsequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.unsequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.login_request_packet = {}

-- Size: Login Request Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.login_request_packet.size =
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.username.size + 
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.password.size + 
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.requested_session.size + 
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.requested_sequence_number.size

-- Display: Login Request Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 10 Byte Ascii String
  index, requested_sequence_number = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.login_request_packet, buffer(offset, 0))
    local index = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Extended Auction Summary Message
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.extended_auction_summary_message = {}

-- Size: Extended Auction Summary Message
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.extended_auction_summary_message.size =
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.stock_symbol.size + 
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_type.size + 
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.price_long.size + 
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.shares.size

-- Display: Extended Auction Summary Message
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.extended_auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Auction Summary Message
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.extended_auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Symbol: Alpha
  index, stock_symbol = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.stock_symbol.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_type.dissect(buffer, index, packet, parent)

  -- Price Long: Long Price
  index, price_long = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.price_long.dissect(buffer, index, packet, parent)

  -- Shares: Numeric
  index, shares = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Auction Summary Message
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.extended_auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.extended_auction_summary_message, buffer(offset, 0))
    local index = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.extended_auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.extended_auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.extended_auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Summary Message
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_summary_message = {}

-- Size: Auction Summary Message
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_summary_message.size =
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.stock_symbol.size + 
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_type.size + 
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.price_short.size + 
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.shares.size

-- Display: Auction Summary Message
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Symbol: Alpha
  index, stock_symbol = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.stock_symbol.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_type.dissect(buffer, index, packet, parent)

  -- Price Short: Numeric
  index, price_short = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.price_short.dissect(buffer, index, packet, parent)

  -- Shares: Numeric
  index, shares = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Auction Update Message
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.extended_auction_update_message = {}

-- Size: Extended Auction Update Message
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.extended_auction_update_message.size =
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.stock_symbol.size + 
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_type.size + 
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.reference_price_long.size + 
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.buy_shares.size + 
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sell_shares.size + 
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.indicative_price_long.size + 
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_only_price_long.size

-- Display: Extended Auction Update Message
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.extended_auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Auction Update Message
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.extended_auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Symbol: Alpha
  index, stock_symbol = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.stock_symbol.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price Long: Long Price
  index, reference_price_long = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.reference_price_long.dissect(buffer, index, packet, parent)

  -- Buy Shares: Numeric
  index, buy_shares = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.buy_shares.dissect(buffer, index, packet, parent)

  -- Sell Shares: Numeric
  index, sell_shares = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sell_shares.dissect(buffer, index, packet, parent)

  -- Indicative Price Long: Long Price
  index, indicative_price_long = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.indicative_price_long.dissect(buffer, index, packet, parent)

  -- Auction Only Price Long: Long Price
  index, auction_only_price_long = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_only_price_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Auction Update Message
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.extended_auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.extended_auction_update_message, buffer(offset, 0))
    local index = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.extended_auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.extended_auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.extended_auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Update Message
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_update_message = {}

-- Size: Auction Update Message
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_update_message.size =
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.stock_symbol.size + 
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_type.size + 
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.reference_price_short.size + 
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.buy_shares.size + 
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sell_shares.size + 
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.indicative_price_short.size + 
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_only_price_short.size

-- Display: Auction Update Message
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Update Message
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Symbol: Alpha
  index, stock_symbol = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.stock_symbol.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price Short: Numeric
  index, reference_price_short = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.reference_price_short.dissect(buffer, index, packet, parent)

  -- Buy Shares: Numeric
  index, buy_shares = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.buy_shares.dissect(buffer, index, packet, parent)

  -- Sell Shares: Numeric
  index, sell_shares = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sell_shares.dissect(buffer, index, packet, parent)

  -- Indicative Price Short: Numeric
  index, indicative_price_short = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.indicative_price_short.dissect(buffer, index, packet, parent)

  -- Auction Only Price Short: Numeric
  index, auction_only_price_short = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_only_price_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Update Message
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.auction_update_message, buffer(offset, 0))
    local index = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_message = {}

-- Dissect: Sequenced Message
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_message.dispatch = {
  ["I"] = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_update_message.dissect,
  ["3"] = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.extended_auction_update_message.dissect,
  ["J"] = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.auction_summary_message.dissect,
  ["4"] = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.extended_auction_summary_message.dissect,
}

cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  local dissect = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_message.dispatch[sequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Message Header
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_message_header = {}

-- Size: Sequenced Message Header
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_message_header.size =
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.timestamp.size + 
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_message_type.size

-- Display: Sequenced Message Header
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message Header
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.timestamp.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: Alphanumeric
  index, sequenced_message_type = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Message Header
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_message_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.sequenced_message_header, buffer(offset, 0))
    local index = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Data Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_data_packet = {}

-- Calculate size of: Sequenced Data Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_data_packet.size = function(buffer, offset)
  local index = 0

  index = index + cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_message_header.size

  -- Calculate runtime size of Sequenced Message field
  local sequenced_message_offset = offset + index
  local sequenced_message_type = buffer(sequenced_message_offset - 1, 1):string()
  index = index + cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_message.size(buffer, sequenced_message_offset, sequenced_message_type)

  return index
end

-- Display: Sequenced Data Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequenced Message Header: Struct of 2 fields
  index, sequenced_message_header = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Sequenced Message Type
  local sequenced_message_type = trim_right_spaces(buffer(index - 1, 1):string())

  -- Sequenced Message: Runtime Type with 4 branches
  index = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.sequenced_data_packet, buffer(offset, 0))
    local index = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Rejected Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.login_rejected_packet = {}

-- Size: Login Rejected Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.login_rejected_packet.size =
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.reject_reason_code.size

-- Display: Login Rejected Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.login_rejected_packet, buffer(offset, 0))
    local index = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.login_accepted_packet = {}

-- Size: Login Accepted Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.login_accepted_packet.size =
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.session.size + 
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequence_number.size

-- Display: Login Accepted Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 10 Byte Ascii String
  index, sequence_number = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.login_accepted_packet, buffer(offset, 0))
    local index = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.debug_packet = {}

-- Size: Debug Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.debug_packet.size =
  cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.text.size

-- Display: Debug Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.debug_packet, buffer(offset, 0))
    local index = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.payload = {}

-- Dissect: Payload
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.payload.dispatch = {
  ["+"] = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.debug_packet.dissect,
  ["A"] = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.login_accepted_packet.dissect,
  ["J"] = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.login_rejected_packet.dissect,
  ["S"] = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.sequenced_data_packet.dissect,
  ["L"] = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.login_request_packet.dissect,
  ["U"] = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.unsequenced_data_packet.dissect,
}

cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  local dissect = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.payload.dispatch[packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Frame
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.frame = {}

-- Display: Frame
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.frame.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Frame
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.frame.fields = function(buffer, offset, packet, parent, size_of_frame)
  local index = offset

  -- Packet Type: 1 Byte Ascii String Enum with 9 values
  index, packet_type = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.packet_type.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 6 branches
  index = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.payload.dissect(buffer, index, packet, parent, packet_type)

  -- Soup Lf: 1 Byte Fixed Width Integer Static
  index, soup_lf = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.soup_lf.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Frame
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.frame.dissect = function(buffer, offset, packet, parent, size_of_frame)
  local index = offset + size_of_frame

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.fields.frame, buffer(offset, 0))
    local current = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.frame.fields(buffer, offset, packet, parent, size_of_frame)
    parent:set_len(size_of_frame)
    local display = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.frame.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.frame.fields(buffer, offset, packet, parent, size_of_frame)

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
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.packet = {}

-- Verify required size of Tcp packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.packet_type.size
end

-- Dissect Packet
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.packet.dissect = function(buffer, packet, parent)
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
      index = cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.frame.dissect(frame, index, packet, parent, size_of_frame)
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
function omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.init()
end

-- Dissector for Cboe BzxEquities AuctionFeed AsciiPitch 1.3.8
function omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8, buffer(), omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.description, "("..buffer:len().." Bytes)")
  return cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.packet.fingerprint = function(buffer)
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
    if sequenced_message_type == "I" then
      return true
    end

    -- Extended Auction Update Message
    if sequenced_message_type == "3" then
      return true
    end

    -- Auction Summary Message
    if sequenced_message_type == "J" then
      return true
    end

    -- Extended Auction Summary Message
    if sequenced_message_type == "4" then
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

-- Dissector Heuristic for Cboe BzxEquities AuctionFeed AsciiPitch 1.3.8 (Tcp)
local function omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp packet message dispatch
  if not cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8
  omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe BzxEquities AuctionFeed AsciiPitch 1.3.8
omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8:register_heuristic("tcp", omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8_tcp_heuristic)

-- Register Cboe BzxEquities AuctionFeed AsciiPitch 1.3.8 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_bzxequities_auctionfeed_asciipitch_v1_3_8)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.3.8
--   Date: Monday, April 21, 2025
--   Specification: Cboe US Equities Auction Feed Specification.pdf
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
