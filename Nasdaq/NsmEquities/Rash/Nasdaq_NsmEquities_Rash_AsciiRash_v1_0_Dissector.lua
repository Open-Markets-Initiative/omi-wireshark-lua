-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NsmEquities Rash AsciiRash 1.0 Protocol
local omi_nasdaq_nsmequities_rash_asciirash_v1_0 = Proto("Omi.Nasdaq.NsmEquities.Rash.AsciiRash.v1.0", "Nasdaq NsmEquities Rash AsciiRash 1.0")

-- Protocol table
local nasdaq_nsmequities_rash_asciirash_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NsmEquities Rash AsciiRash 1.0 Fields
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.broken_trade_reason = ProtoField.new("Broken Trade Reason", "nasdaq.nsmequities.rash.asciirash.v1.0.brokentradereason", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.cancel_reason = ProtoField.new("Cancel Reason", "nasdaq.nsmequities.rash.asciirash.v1.0.cancelreason", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.capacity_rule_80_a_indicator = ProtoField.new("Capacity Rule 80 A Indicator", "nasdaq.nsmequities.rash.asciirash.v1.0.capacityrule80aindicator", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.client_packet_type = ProtoField.new("Client Packet Type", "nasdaq.nsmequities.rash.asciirash.v1.0.clientpackettype", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.nsmequities.rash.asciirash.v1.0.crosstype", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.cust_terminal_id_sender_sub_id = ProtoField.new("Cust Terminal Id Sender Sub Id", "nasdaq.nsmequities.rash.asciirash.v1.0.custterminalidsendersubid", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.customer_type = ProtoField.new("Customer Type", "nasdaq.nsmequities.rash.asciirash.v1.0.customertype", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.nsmequities.rash.asciirash.v1.0.debugpacket", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.discretion_peg_difference = ProtoField.new("Discretion Peg Difference", "nasdaq.nsmequities.rash.asciirash.v1.0.discretionpegdifference", ftypes.DOUBLE)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.discretion_peg_difference_sign = ProtoField.new("Discretion Peg Difference Sign", "nasdaq.nsmequities.rash.asciirash.v1.0.discretionpegdifferencesign", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.discretion_peg_type = ProtoField.new("Discretion Peg Type", "nasdaq.nsmequities.rash.asciirash.v1.0.discretionpegtype", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.discretion_price = ProtoField.new("Discretion Price", "nasdaq.nsmequities.rash.asciirash.v1.0.discretionprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.display = ProtoField.new("Display", "nasdaq.nsmequities.rash.asciirash.v1.0.display", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.event_code = ProtoField.new("Event Code", "nasdaq.nsmequities.rash.asciirash.v1.0.eventcode", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.firm_client_id = ProtoField.new("Firm Client Id", "nasdaq.nsmequities.rash.asciirash.v1.0.firmclientid", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.intermarket_sweep_eligibility = ProtoField.new("Intermarket Sweep Eligibility", "nasdaq.nsmequities.rash.asciirash.v1.0.intermarketsweepeligibility", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.liquidity = ProtoField.new("Liquidity", "nasdaq.nsmequities.rash.asciirash.v1.0.liquidity", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.nsmequities.rash.asciirash.v1.0.loginacceptedpacket", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.nsmequities.rash.asciirash.v1.0.loginrejectedpacket", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.nsmequities.rash.asciirash.v1.0.loginrequestpacket", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.match_number = ProtoField.new("Match Number", "nasdaq.nsmequities.rash.asciirash.v1.0.matchnumber", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.max_floor = ProtoField.new("Max Floor", "nasdaq.nsmequities.rash.asciirash.v1.0.maxfloor", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.min_qty = ProtoField.new("Min Qty", "nasdaq.nsmequities.rash.asciirash.v1.0.minqty", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.nsmequities.rash.asciirash.v1.0.orderreferencenumber", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.order_token = ProtoField.new("Order Token", "nasdaq.nsmequities.rash.asciirash.v1.0.ordertoken", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.order_token_client_order_id = ProtoField.new("Order Token Client Order Id", "nasdaq.nsmequities.rash.asciirash.v1.0.ordertokenclientorderid", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.password = ProtoField.new("Password", "nasdaq.nsmequities.rash.asciirash.v1.0.password", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.peg_difference = ProtoField.new("Peg Difference", "nasdaq.nsmequities.rash.asciirash.v1.0.pegdifference", ftypes.DOUBLE)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.peg_difference_sign = ProtoField.new("Peg Difference Sign", "nasdaq.nsmequities.rash.asciirash.v1.0.pegdifferencesign", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.peg_type = ProtoField.new("Peg Type", "nasdaq.nsmequities.rash.asciirash.v1.0.pegtype", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.price = ProtoField.new("Price", "nasdaq.nsmequities.rash.asciirash.v1.0.price", ftypes.DOUBLE)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.random_reserve = ProtoField.new("Random Reserve", "nasdaq.nsmequities.rash.asciirash.v1.0.randomreserve", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.reactive_trade_now = ProtoField.new("Reactive Trade Now", "nasdaq.nsmequities.rash.asciirash.v1.0.reactivetradenow", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.reference_price = ProtoField.new("Reference Price", "nasdaq.nsmequities.rash.asciirash.v1.0.referenceprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.reference_price_type = ProtoField.new("Reference Price Type", "nasdaq.nsmequities.rash.asciirash.v1.0.referencepricetype", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.reject_reason = ProtoField.new("Reject Reason", "nasdaq.nsmequities.rash.asciirash.v1.0.rejectreason", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.nsmequities.rash.asciirash.v1.0.rejectreasoncode", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.nsmequities.rash.asciirash.v1.0.requestedsequencenumber", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.nsmequities.rash.asciirash.v1.0.requestedsession", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.route_dest_exec_broker = ProtoField.new("Route Dest Exec Broker", "nasdaq.nsmequities.rash.asciirash.v1.0.routedestexecbroker", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.nsmequities.rash.asciirash.v1.0.sequencenumber", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.nsmequities.rash.asciirash.v1.0.sequenceddatapacket", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.nsmequities.rash.asciirash.v1.0.sequencedmessagetype", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.server_packet_type = ProtoField.new("Server Packet Type", "nasdaq.nsmequities.rash.asciirash.v1.0.serverpackettype", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.session = ProtoField.new("Session", "nasdaq.nsmequities.rash.asciirash.v1.0.session", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.shares = ProtoField.new("Shares", "nasdaq.nsmequities.rash.asciirash.v1.0.shares", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.shares_order_qty = ProtoField.new("Shares Order Qty", "nasdaq.nsmequities.rash.asciirash.v1.0.sharesorderqty", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.side = ProtoField.new("Side", "nasdaq.nsmequities.rash.asciirash.v1.0.side", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.soup_lf = ProtoField.new("Soup Lf", "nasdaq.nsmequities.rash.asciirash.v1.0.souplf", ftypes.INT8)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.stock_symbol = ProtoField.new("Stock Symbol", "nasdaq.nsmequities.rash.asciirash.v1.0.stocksymbol", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.text = ProtoField.new("Text", "nasdaq.nsmequities.rash.asciirash.v1.0.text", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.time_in_force = ProtoField.new("Time In Force", "nasdaq.nsmequities.rash.asciirash.v1.0.timeinforce", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nsmequities.rash.asciirash.v1.0.timestamp", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.trade_correction_reason = ProtoField.new("Trade Correction Reason", "nasdaq.nsmequities.rash.asciirash.v1.0.tradecorrectionreason", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.nsmequities.rash.asciirash.v1.0.unsequenceddatapacket", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.nsmequities.rash.asciirash.v1.0.unsequencedmessagetype", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.username = ProtoField.new("Username", "nasdaq.nsmequities.rash.asciirash.v1.0.username", ftypes.STRING)

-- Nasdaq NsmEquities Rash AsciiRash 1.0 Framing
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.client_packet = ProtoField.new("Client Packet", "nasdaq.nsmequities.rash.asciirash.v1.0.clientpacket", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.client_packet_header = ProtoField.new("Client Packet Header", "nasdaq.nsmequities.rash.asciirash.v1.0.clientpacketheader", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.sequenced_message_header = ProtoField.new("Sequenced Message Header", "nasdaq.nsmequities.rash.asciirash.v1.0.sequencedmessageheader", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.server_packet = ProtoField.new("Server Packet", "nasdaq.nsmequities.rash.asciirash.v1.0.serverpacket", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.server_packet_header = ProtoField.new("Server Packet Header", "nasdaq.nsmequities.rash.asciirash.v1.0.serverpacketheader", ftypes.STRING)

-- Nasdaq NsmEquities Rash 1.0 Application Messages
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.accepted_order_message = ProtoField.new("Accepted Order Message", "nasdaq.nsmequities.rash.asciirash.v1.0.acceptedordermessage", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.accepted_order_message_with_cross_functionality = ProtoField.new("Accepted Order Message With Cross Functionality", "nasdaq.nsmequities.rash.asciirash.v1.0.acceptedordermessagewithcrossfunctionality", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "nasdaq.nsmequities.rash.asciirash.v1.0.brokentrademessage", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.cancel_order_message = ProtoField.new("Cancel Order Message", "nasdaq.nsmequities.rash.asciirash.v1.0.cancelordermessage", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.canceled_order_message = ProtoField.new("Canceled Order Message", "nasdaq.nsmequities.rash.asciirash.v1.0.canceledordermessage", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.enter_order_message = ProtoField.new("Enter Order Message", "nasdaq.nsmequities.rash.asciirash.v1.0.enterordermessage", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.enter_order_message_with_cross_functionality = ProtoField.new("Enter Order Message With Cross Functionality", "nasdaq.nsmequities.rash.asciirash.v1.0.enterordermessagewithcrossfunctionality", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.executed_order_message = ProtoField.new("Executed Order Message", "nasdaq.nsmequities.rash.asciirash.v1.0.executedordermessage", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.executed_with_reference_price_message = ProtoField.new("Executed With Reference Price Message", "nasdaq.nsmequities.rash.asciirash.v1.0.executedwithreferencepricemessage", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.rejected_order_message = ProtoField.new("Rejected Order Message", "nasdaq.nsmequities.rash.asciirash.v1.0.rejectedordermessage", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nsmequities.rash.asciirash.v1.0.systemeventmessage", ftypes.STRING)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "nasdaq.nsmequities.rash.asciirash.v1.0.tradecorrectionmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Nasdaq NsmEquities Rash AsciiRash 1.0 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_nsmequities_rash_asciirash_v1_0.timestamp_format = 2

-- Hours behind UTC (EST) for midnight calculation
nasdaq_nsmequities_rash_asciirash_v1_0.utc_offset_hours = 5

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

-- Nasdaq NsmEquities Rash AsciiRash 1.0 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true

-- Register Nasdaq NsmEquities Rash AsciiRash 1.0 Show Options
omi_nasdaq_nsmequities_rash_asciirash_v1_0.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nasdaq_nsmequities_rash_asciirash_v1_0.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nasdaq_nsmequities_rash_asciirash_v1_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nsmequities_rash_asciirash_v1_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_nsmequities_rash_asciirash_v1_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

omi_nasdaq_nsmequities_rash_asciirash_v1_0.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_nsmequities_rash_asciirash_v1_0.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_nasdaq_nsmequities_rash_asciirash_v1_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_nsmequities_rash_asciirash_v1_0.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nsmequities_rash_asciirash_v1_0.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_nsmequities_rash_asciirash_v1_0.prefs.show_headers then
    show.headers = omi_nasdaq_nsmequities_rash_asciirash_v1_0.prefs.show_headers
  end
  if show.structs ~= omi_nasdaq_nsmequities_rash_asciirash_v1_0.prefs.show_structs then
    show.structs = omi_nasdaq_nsmequities_rash_asciirash_v1_0.prefs.show_structs
  end
  if nasdaq_nsmequities_rash_asciirash_v1_0.timestamp_format ~= omi_nasdaq_nsmequities_rash_asciirash_v1_0.prefs.timestamp_format then
    nasdaq_nsmequities_rash_asciirash_v1_0.timestamp_format = omi_nasdaq_nsmequities_rash_asciirash_v1_0.prefs.timestamp_format
  end
  if nasdaq_nsmequities_rash_asciirash_v1_0.utc_offset_hours ~= omi_nasdaq_nsmequities_rash_asciirash_v1_0.prefs.utc_offset_hours then
    nasdaq_nsmequities_rash_asciirash_v1_0.utc_offset_hours = omi_nasdaq_nsmequities_rash_asciirash_v1_0.prefs.utc_offset_hours
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


-----------------------------------------------------------------------
-- Nasdaq NsmEquities Rash AsciiRash 1.0 Fields
-----------------------------------------------------------------------

-- Broken Trade Reason
nasdaq_nsmequities_rash_asciirash_v1_0.broken_trade_reason = {}

-- Size: Broken Trade Reason
nasdaq_nsmequities_rash_asciirash_v1_0.broken_trade_reason.size = 1

-- Display: Broken Trade Reason
nasdaq_nsmequities_rash_asciirash_v1_0.broken_trade_reason.display = function(value)
  if value == "E" then
    return "Broken Trade Reason: Erroneous (E)"
  end
  if value == "C" then
    return "Broken Trade Reason: Consent (C)"
  end
  if value == "S" then
    return "Broken Trade Reason: Supervisory (S)"
  end
  if value == "X" then
    return "Broken Trade Reason: External (X)"
  end

  return "Broken Trade Reason: Unknown("..value..")"
end

-- Dissect: Broken Trade Reason
nasdaq_nsmequities_rash_asciirash_v1_0.broken_trade_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.broken_trade_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.broken_trade_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.broken_trade_reason, range, value, display)

  return offset + length, value
end

-- Cancel Reason
nasdaq_nsmequities_rash_asciirash_v1_0.cancel_reason = {}

-- Size: Cancel Reason
nasdaq_nsmequities_rash_asciirash_v1_0.cancel_reason.size = 1

-- Display: Cancel Reason
nasdaq_nsmequities_rash_asciirash_v1_0.cancel_reason.display = function(value)
  if value == "U" then
    return "Cancel Reason: User Requested Cancel (U)"
  end
  if value == "I" then
    return "Cancel Reason: Immediate Or Cancel (I)"
  end
  if value == "T" then
    return "Cancel Reason: Timeout (T)"
  end
  if value == "S" then
    return "Cancel Reason: Supervisory (S)"
  end
  if value == "D" then
    return "Cancel Reason: Regulatory Restriction (D)"
  end
  if value == "Q" then
    return "Cancel Reason: Self Match Prevention (Q)"
  end
  if value == "Z" then
    return "Cancel Reason: System Cancel (Z)"
  end
  if value == "K" then
    return "Cancel Reason: Market Collars (K)"
  end
  if value == "C" then
    return "Cancel Reason: Cross Cancel (C)"
  end
  if value == "q" then
    return "Cancel Reason: Insufficient Quantity (q)"
  end
  if value == "H" then
    return "Cancel Reason: Halted (H)"
  end
  if value == "X" then
    return "Cancel Reason: Open Protection (X)"
  end
  if value == "E" then
    return "Cancel Reason: Closed (E)"
  end
  if value == "J" then
    return "Cancel Reason: Rejected By Away Destination (J)"
  end
  if value == "A" then
    return "Cancel Reason: Administrative Cancel (A)"
  end
  if value == "F" then
    return "Cancel Reason: Post Only Cancel Nms (F)"
  end
  if value == "G" then
    return "Cancel Reason: Post Only Cancel Contra Displayed Order (G)"
  end

  return "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
nasdaq_nsmequities_rash_asciirash_v1_0.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Capacity Rule 80 A Indicator
nasdaq_nsmequities_rash_asciirash_v1_0.capacity_rule_80_a_indicator = {}

-- Size: Capacity Rule 80 A Indicator
nasdaq_nsmequities_rash_asciirash_v1_0.capacity_rule_80_a_indicator.size = 1

-- Display: Capacity Rule 80 A Indicator
nasdaq_nsmequities_rash_asciirash_v1_0.capacity_rule_80_a_indicator.display = function(value)
  return "Capacity Rule 80 A Indicator: "..value
end

-- Dissect: Capacity Rule 80 A Indicator
nasdaq_nsmequities_rash_asciirash_v1_0.capacity_rule_80_a_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.capacity_rule_80_a_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.capacity_rule_80_a_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.capacity_rule_80_a_indicator, range, value, display)

  return offset + length, value
end

-- Client Packet Type
nasdaq_nsmequities_rash_asciirash_v1_0.client_packet_type = {}

-- Size: Client Packet Type
nasdaq_nsmequities_rash_asciirash_v1_0.client_packet_type.size = 1

-- Display: Client Packet Type
nasdaq_nsmequities_rash_asciirash_v1_0.client_packet_type.display = function(value)
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
nasdaq_nsmequities_rash_asciirash_v1_0.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Cross Type
nasdaq_nsmequities_rash_asciirash_v1_0.cross_type = {}

-- Size: Cross Type
nasdaq_nsmequities_rash_asciirash_v1_0.cross_type.size = 1

-- Display: Cross Type
nasdaq_nsmequities_rash_asciirash_v1_0.cross_type.display = function(value)
  if value == "O" then
    return "Cross Type: Opening Cross (O)"
  end
  if value == "C" then
    return "Cross Type: Closing Cross (C)"
  end
  if value == "N" then
    return "Cross Type: Immediately Live (N)"
  end
  if value == "R" then
    return "Cross Type: Retail Cross (R)"
  end
  if value == "E" then
    return "Cross Type: Extended Life (E)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nasdaq_nsmequities_rash_asciirash_v1_0.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Cust Terminal Id Sender Sub Id
nasdaq_nsmequities_rash_asciirash_v1_0.cust_terminal_id_sender_sub_id = {}

-- Size: Cust Terminal Id Sender Sub Id
nasdaq_nsmequities_rash_asciirash_v1_0.cust_terminal_id_sender_sub_id.size = 32

-- Display: Cust Terminal Id Sender Sub Id
nasdaq_nsmequities_rash_asciirash_v1_0.cust_terminal_id_sender_sub_id.display = function(value)
  return "Cust Terminal Id Sender Sub Id: "..value
end

-- Dissect: Cust Terminal Id Sender Sub Id
nasdaq_nsmequities_rash_asciirash_v1_0.cust_terminal_id_sender_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.cust_terminal_id_sender_sub_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.cust_terminal_id_sender_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.cust_terminal_id_sender_sub_id, range, value, display)

  return offset + length, value
end

-- Customer Type
nasdaq_nsmequities_rash_asciirash_v1_0.customer_type = {}

-- Size: Customer Type
nasdaq_nsmequities_rash_asciirash_v1_0.customer_type.size = 1

-- Display: Customer Type
nasdaq_nsmequities_rash_asciirash_v1_0.customer_type.display = function(value)
  if value == "R" then
    return "Customer Type: Retail Designated Order (R)"
  end
  if value == "N" then
    return "Customer Type: Not A Retail Designated Order (N)"
  end

  return "Customer Type: Unknown("..value..")"
end

-- Dissect: Customer Type
nasdaq_nsmequities_rash_asciirash_v1_0.customer_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.customer_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.customer_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.customer_type, range, value, display)

  return offset + length, value
end

-- Discretion Peg Difference
nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_difference = {}

-- Size: Discretion Peg Difference
nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_difference.size = 10

-- Display: Discretion Peg Difference
nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_difference.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_difference.size):string(), 4)

  if text == nil then
    return "Discretion Peg Difference: "..tostring(value)
  end

  return "Discretion Peg Difference: "..text
end

-- Dissect: Discretion Peg Difference
nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_difference.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_difference.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
  end
  value = value/10000

  local display = nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_difference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.discretion_peg_difference, range, value, display)

  return offset + length, value
end

-- Discretion Peg Difference Sign
nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_difference_sign = {}

-- Size: Discretion Peg Difference Sign
nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_difference_sign.size = 1

-- Display: Discretion Peg Difference Sign
nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_difference_sign.display = function(value)
  if value == "+" then
    return "Discretion Peg Difference Sign: Plus (+)"
  end
  if value == "-" then
    return "Discretion Peg Difference Sign: Minus (-)"
  end

  return "Discretion Peg Difference Sign: Unknown("..value..")"
end

-- Dissect: Discretion Peg Difference Sign
nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_difference_sign.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_difference_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_difference_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.discretion_peg_difference_sign, range, value, display)

  return offset + length, value
end

-- Discretion Peg Type
nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_type = {}

-- Size: Discretion Peg Type
nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_type.size = 1

-- Display: Discretion Peg Type
nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_type.display = function(value)
  if value == "M" then
    return "Discretion Peg Type: Midpoint (M)"
  end
  if value == "N" then
    return "Discretion Peg Type: No Peg (N)"
  end
  if value == "P" then
    return "Discretion Peg Type: Market (P)"
  end
  if value == "R" then
    return "Discretion Peg Type: Primary (R)"
  end
  if value == "I" then
    return "Discretion Peg Type: Inav Peg (I)"
  end

  return "Discretion Peg Type: Unknown("..value..")"
end

-- Dissect: Discretion Peg Type
nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.discretion_peg_type, range, value, display)

  return offset + length, value
end

-- Discretion Price
nasdaq_nsmequities_rash_asciirash_v1_0.discretion_price = {}

-- Size: Discretion Price
nasdaq_nsmequities_rash_asciirash_v1_0.discretion_price.size = 10

-- Display: Discretion Price
nasdaq_nsmequities_rash_asciirash_v1_0.discretion_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, nasdaq_nsmequities_rash_asciirash_v1_0.discretion_price.size):string(), 4)

  if text == nil then
    return "Discretion Price: "..tostring(value)
  end

  return "Discretion Price: "..text
end

-- Dissect: Discretion Price
nasdaq_nsmequities_rash_asciirash_v1_0.discretion_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.discretion_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
  end
  value = value/10000

  local display = nasdaq_nsmequities_rash_asciirash_v1_0.discretion_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.discretion_price, range, value, display)

  return offset + length, value
end

-- Display
nasdaq_nsmequities_rash_asciirash_v1_0.display = {}

-- Size: Display
nasdaq_nsmequities_rash_asciirash_v1_0.display.size = 1

-- Display: Display
nasdaq_nsmequities_rash_asciirash_v1_0.display.display = function(value)
  if value == "Y" then
    return "Display: Anonymous Price To Comply (Y)"
  end
  if value == "N" then
    return "Display: Non Displayed (N)"
  end
  if value == "A" then
    return "Display: Attributable Price To Display (A)"
  end
  if value == "I" then
    return "Display: Imbalance Only (I)"
  end
  if value == "P" then
    return "Display: Post Only (P)"
  end
  if value == "W" then
    return "Display: Mid Point Peg Post Only (W)"
  end
  if value == "L" then
    return "Display: Post Only And Attributable Price To Display (L)"
  end
  if value == "O" then
    return "Display: Retail Order Type 1 (O)"
  end
  if value == "T" then
    return "Display: Retail Order Type 2 (T)"
  end
  if value == "Q" then
    return "Display: Retail Price Improvement Order (Q)"
  end
  if value == "M" then
    return "Display: Mid Point Peg (M)"
  end
  if value == "m" then
    return "Display: Mid Point Peg And Mid Point Trade Now (m)"
  end
  if value == "n" then
    return "Display: Non Display And Mid Point Trade Now (n)"
  end
  if value == "B" then
    return "Display: M Elo And Continuous Book Midpoint (B)"
  end

  return "Display: Unknown("..value..")"
end

-- Dissect: Display
nasdaq_nsmequities_rash_asciirash_v1_0.display.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.display.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.display.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.display, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_nsmequities_rash_asciirash_v1_0.event_code = {}

-- Size: Event Code
nasdaq_nsmequities_rash_asciirash_v1_0.event_code.size = 1

-- Display: Event Code
nasdaq_nsmequities_rash_asciirash_v1_0.event_code.display = function(value)
  if value == "S" then
    return "Event Code: Start Of Day (S)"
  end
  if value == "E" then
    return "Event Code: End Of Day (E)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_nsmequities_rash_asciirash_v1_0.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.event_code, range, value, display)

  return offset + length, value
end

-- Firm Client Id
nasdaq_nsmequities_rash_asciirash_v1_0.firm_client_id = {}

-- Size: Firm Client Id
nasdaq_nsmequities_rash_asciirash_v1_0.firm_client_id.size = 4

-- Display: Firm Client Id
nasdaq_nsmequities_rash_asciirash_v1_0.firm_client_id.display = function(value)
  return "Firm Client Id: "..value
end

-- Dissect: Firm Client Id
nasdaq_nsmequities_rash_asciirash_v1_0.firm_client_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.firm_client_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.firm_client_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.firm_client_id, range, value, display)

  return offset + length, value
end

-- Intermarket Sweep Eligibility
nasdaq_nsmequities_rash_asciirash_v1_0.intermarket_sweep_eligibility = {}

-- Size: Intermarket Sweep Eligibility
nasdaq_nsmequities_rash_asciirash_v1_0.intermarket_sweep_eligibility.size = 1

-- Display: Intermarket Sweep Eligibility
nasdaq_nsmequities_rash_asciirash_v1_0.intermarket_sweep_eligibility.display = function(value)
  if value == "Y" then
    return "Intermarket Sweep Eligibility: Eligible (Y)"
  end
  if value == "N" then
    return "Intermarket Sweep Eligibility: Not Eligible (N)"
  end
  if value == "y" then
    return "Intermarket Sweep Eligibility: Trade At Intermarket Sweep Order (y)"
  end

  return "Intermarket Sweep Eligibility: Unknown("..value..")"
end

-- Dissect: Intermarket Sweep Eligibility
nasdaq_nsmequities_rash_asciirash_v1_0.intermarket_sweep_eligibility.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.intermarket_sweep_eligibility.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.intermarket_sweep_eligibility.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.intermarket_sweep_eligibility, range, value, display)

  return offset + length, value
end

-- Liquidity
nasdaq_nsmequities_rash_asciirash_v1_0.liquidity = {}

-- Size: Liquidity
nasdaq_nsmequities_rash_asciirash_v1_0.liquidity.size = 1

-- Display: Liquidity
nasdaq_nsmequities_rash_asciirash_v1_0.liquidity.display = function(value)
  if value == "A" then
    return "Liquidity: Added (A)"
  end
  if value == "R" then
    return "Liquidity: Removed (R)"
  end
  if value == "J" then
    return "Liquidity: Non Displayed Adding Liquidity (J)"
  end
  if value == "X" then
    return "Liquidity: Routed (X)"
  end
  if value == "D" then
    return "Liquidity: Dot (D)"
  end
  if value == "F" then
    return "Liquidity: Opening Trade (F)"
  end
  if value == "G" then
    return "Liquidity: On Close Order (G)"
  end
  if value == "O" then
    return "Liquidity: Opening Cross (O)"
  end
  if value == "M" then
    return "Liquidity: Opening Cross (M)"
  end
  if value == "C" then
    return "Liquidity: Closing Cross (C)"
  end
  if value == "L" then
    return "Liquidity: Closing Cross (L)"
  end
  if value == "H" then
    return "Liquidity: Halt Ipo Cross (H)"
  end
  if value == "K" then
    return "Liquidity: Halt Cross (K)"
  end
  if value == "Y" then
    return "Liquidity: Re Routed By Nyse (Y)"
  end
  if value == "S" then
    return "Liquidity: Odd Lot Execution (S)"
  end
  if value == "U" then
    return "Liquidity: Added Liquidity (U)"
  end
  if value == "B" then
    return "Liquidity: Routed To Bx (B)"
  end
  if value == "E" then
    return "Liquidity: Nyse Other (E)"
  end
  if value == "P" then
    return "Liquidity: Routed To Psx (P)"
  end
  if value == "T" then
    return "Liquidity: Executed In Open Close Or Re Open On Arca (T)"
  end
  if value == "N" then
    return "Liquidity: Passive Midpoint Execution (N)"
  end
  if value == "W" then
    return "Liquidity: Added Post Only (W)"
  end
  if value == "m" then
    return "Liquidity: Removed Liquidity At A Midpoint (m)"
  end
  if value == "k" then
    return "Liquidity: Added Liquidity Via A Midpoint Order (k)"
  end
  if value == "0" then
    return "Liquidity: Supplemental Order Execution (0)"
  end
  if value == "7" then
    return "Liquidity: Displayed Liquidity Adding Order Improves The Nbbo (7)"
  end
  if value == "8" then
    return "Liquidity: Displayed Liquidity Adding Order Sets The Qbbo While Joining The Nbbo (8)"
  end
  if value == "d" then
    return "Liquidity: Retail Designated Execution That Removed Liquidity (d)"
  end
  if value == "e" then
    return "Liquidity: Retail Designated Execution That Added Displayed Liquidity (e)"
  end
  if value == "f" then
    return "Liquidity: Retail Designated Execution That Added Non Displayed Liquidity (f)"
  end
  if value == "j" then
    return "Liquidity: Rpi Order Provides Liquidity (j)"
  end
  if value == "r" then
    return "Liquidity: Retail Order Removes Rpi Liquidity (r)"
  end
  if value == "t" then
    return "Liquidity: Retail Order Removes Price Improving Non Displayed Liquidity Other Than Rpi Liquidity (t)"
  end
  if value == "4" then
    return "Liquidity: Added Displayed Liquidity In A Group A Symbol (4)"
  end
  if value == "5" then
    return "Liquidity: Added Non Displayed Liquidity In A Group A Symbol (5)"
  end
  if value == "6" then
    return "Liquidity: Removed Liquidity In A Group A Symbol (6)"
  end
  if value == "g" then
    return "Liquidity: Added Non Displayed Mid Point Liquidity In A Group A Symbol (g)"
  end
  if value == "n" then
    return "Liquidity: Midpoint Extended Life Order Execution (n)"
  end
  if value == "v" then
    return "Liquidity: Midp Order Executed On Away Nms Protected Market Center (v)"
  end
  if value == "w" then
    return "Liquidity: Midp Order Executed On Off Exchange Venue (w)"
  end

  return "Liquidity: Unknown("..value..")"
end

-- Dissect: Liquidity
nasdaq_nsmequities_rash_asciirash_v1_0.liquidity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.liquidity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.liquidity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.liquidity, range, value, display)

  return offset + length, value
end

-- Match Number
nasdaq_nsmequities_rash_asciirash_v1_0.match_number = {}

-- Size: Match Number
nasdaq_nsmequities_rash_asciirash_v1_0.match_number.size = 9

-- Display: Match Number
nasdaq_nsmequities_rash_asciirash_v1_0.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_nsmequities_rash_asciirash_v1_0.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.match_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_nsmequities_rash_asciirash_v1_0.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.match_number, range, value, display)

  return offset + length, value
end

-- Max Floor
nasdaq_nsmequities_rash_asciirash_v1_0.max_floor = {}

-- Size: Max Floor
nasdaq_nsmequities_rash_asciirash_v1_0.max_floor.size = 6

-- Display: Max Floor
nasdaq_nsmequities_rash_asciirash_v1_0.max_floor.display = function(value)
  return "Max Floor: "..value
end

-- Dissect: Max Floor
nasdaq_nsmequities_rash_asciirash_v1_0.max_floor.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.max_floor.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_nsmequities_rash_asciirash_v1_0.max_floor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.max_floor, range, value, display)

  return offset + length, value
end

-- Min Qty
nasdaq_nsmequities_rash_asciirash_v1_0.min_qty = {}

-- Size: Min Qty
nasdaq_nsmequities_rash_asciirash_v1_0.min_qty.size = 6

-- Display: Min Qty
nasdaq_nsmequities_rash_asciirash_v1_0.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
nasdaq_nsmequities_rash_asciirash_v1_0.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.min_qty.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_nsmequities_rash_asciirash_v1_0.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nasdaq_nsmequities_rash_asciirash_v1_0.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_nsmequities_rash_asciirash_v1_0.order_reference_number.size = 9

-- Display: Order Reference Number
nasdaq_nsmequities_rash_asciirash_v1_0.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_nsmequities_rash_asciirash_v1_0.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.order_reference_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_nsmequities_rash_asciirash_v1_0.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Order Token
nasdaq_nsmequities_rash_asciirash_v1_0.order_token = {}

-- Size: Order Token
nasdaq_nsmequities_rash_asciirash_v1_0.order_token.size = 14

-- Display: Order Token
nasdaq_nsmequities_rash_asciirash_v1_0.order_token.display = function(value)
  return "Order Token: "..value
end

-- Dissect: Order Token
nasdaq_nsmequities_rash_asciirash_v1_0.order_token.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.order_token.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.order_token, range, value, display)

  return offset + length, value
end

-- Order Token Client Order Id
nasdaq_nsmequities_rash_asciirash_v1_0.order_token_client_order_id = {}

-- Size: Order Token Client Order Id
nasdaq_nsmequities_rash_asciirash_v1_0.order_token_client_order_id.size = 14

-- Display: Order Token Client Order Id
nasdaq_nsmequities_rash_asciirash_v1_0.order_token_client_order_id.display = function(value)
  return "Order Token Client Order Id: "..value
end

-- Dissect: Order Token Client Order Id
nasdaq_nsmequities_rash_asciirash_v1_0.order_token_client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.order_token_client_order_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.order_token_client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.order_token_client_order_id, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_nsmequities_rash_asciirash_v1_0.password = {}

-- Size: Password
nasdaq_nsmequities_rash_asciirash_v1_0.password.size = 10

-- Display: Password
nasdaq_nsmequities_rash_asciirash_v1_0.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_nsmequities_rash_asciirash_v1_0.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.password, range, value, display)

  return offset + length, value
end

-- Peg Difference
nasdaq_nsmequities_rash_asciirash_v1_0.peg_difference = {}

-- Size: Peg Difference
nasdaq_nsmequities_rash_asciirash_v1_0.peg_difference.size = 10

-- Display: Peg Difference
nasdaq_nsmequities_rash_asciirash_v1_0.peg_difference.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, nasdaq_nsmequities_rash_asciirash_v1_0.peg_difference.size):string(), 4)

  if text == nil then
    return "Peg Difference: "..tostring(value)
  end

  return "Peg Difference: "..text
end

-- Dissect: Peg Difference
nasdaq_nsmequities_rash_asciirash_v1_0.peg_difference.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.peg_difference.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
  end
  value = value/10000

  local display = nasdaq_nsmequities_rash_asciirash_v1_0.peg_difference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.peg_difference, range, value, display)

  return offset + length, value
end

-- Peg Difference Sign
nasdaq_nsmequities_rash_asciirash_v1_0.peg_difference_sign = {}

-- Size: Peg Difference Sign
nasdaq_nsmequities_rash_asciirash_v1_0.peg_difference_sign.size = 1

-- Display: Peg Difference Sign
nasdaq_nsmequities_rash_asciirash_v1_0.peg_difference_sign.display = function(value)
  if value == "+" then
    return "Peg Difference Sign: Plus (+)"
  end
  if value == "-" then
    return "Peg Difference Sign: Minus (-)"
  end

  return "Peg Difference Sign: Unknown("..value..")"
end

-- Dissect: Peg Difference Sign
nasdaq_nsmequities_rash_asciirash_v1_0.peg_difference_sign.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.peg_difference_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.peg_difference_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.peg_difference_sign, range, value, display)

  return offset + length, value
end

-- Peg Type
nasdaq_nsmequities_rash_asciirash_v1_0.peg_type = {}

-- Size: Peg Type
nasdaq_nsmequities_rash_asciirash_v1_0.peg_type.size = 1

-- Display: Peg Type
nasdaq_nsmequities_rash_asciirash_v1_0.peg_type.display = function(value)
  if value == "M" then
    return "Peg Type: Midpoint (M)"
  end
  if value == "N" then
    return "Peg Type: No Peg (N)"
  end
  if value == "P" then
    return "Peg Type: Market (P)"
  end
  if value == "R" then
    return "Peg Type: Primary (R)"
  end
  if value == "Q" then
    return "Peg Type: Market Maker Peg (Q)"
  end
  if value == "I" then
    return "Peg Type: Inav Peg (I)"
  end

  return "Peg Type: Unknown("..value..")"
end

-- Dissect: Peg Type
nasdaq_nsmequities_rash_asciirash_v1_0.peg_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.peg_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.peg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.peg_type, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_nsmequities_rash_asciirash_v1_0.price = {}

-- Size: Price
nasdaq_nsmequities_rash_asciirash_v1_0.price.size = 10

-- Display: Price
nasdaq_nsmequities_rash_asciirash_v1_0.price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, nasdaq_nsmequities_rash_asciirash_v1_0.price.size):string(), 4)

  if text == nil then
    return "Price: "..tostring(value)
  end

  return "Price: "..text
end

-- Dissect: Price
nasdaq_nsmequities_rash_asciirash_v1_0.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
  end
  value = value/10000

  local display = nasdaq_nsmequities_rash_asciirash_v1_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.price, range, value, display)

  return offset + length, value
end

-- Random Reserve
nasdaq_nsmequities_rash_asciirash_v1_0.random_reserve = {}

-- Size: Random Reserve
nasdaq_nsmequities_rash_asciirash_v1_0.random_reserve.size = 6

-- Display: Random Reserve
nasdaq_nsmequities_rash_asciirash_v1_0.random_reserve.display = function(value)
  return "Random Reserve: "..value
end

-- Dissect: Random Reserve
nasdaq_nsmequities_rash_asciirash_v1_0.random_reserve.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.random_reserve.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_nsmequities_rash_asciirash_v1_0.random_reserve.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.random_reserve, range, value, display)

  return offset + length, value
end

-- Reactive Trade Now
nasdaq_nsmequities_rash_asciirash_v1_0.reactive_trade_now = {}

-- Size: Reactive Trade Now
nasdaq_nsmequities_rash_asciirash_v1_0.reactive_trade_now.size = 1

-- Display: Reactive Trade Now
nasdaq_nsmequities_rash_asciirash_v1_0.reactive_trade_now.display = function(value)
  if value == "B" then
    return "Reactive Trade Now: Reactive Trade Now (B)"
  end
  if value == "N" then
    return "Reactive Trade Now: Not A Reactive Trade Now (N)"
  end

  return "Reactive Trade Now: Unknown("..value..")"
end

-- Dissect: Reactive Trade Now
nasdaq_nsmequities_rash_asciirash_v1_0.reactive_trade_now.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.reactive_trade_now.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.reactive_trade_now.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.reactive_trade_now, range, value, display)

  return offset + length, value
end

-- Reference Price
nasdaq_nsmequities_rash_asciirash_v1_0.reference_price = {}

-- Size: Reference Price
nasdaq_nsmequities_rash_asciirash_v1_0.reference_price.size = 10

-- Display: Reference Price
nasdaq_nsmequities_rash_asciirash_v1_0.reference_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, nasdaq_nsmequities_rash_asciirash_v1_0.reference_price.size):string(), 4)

  if text == nil then
    return "Reference Price: "..tostring(value)
  end

  return "Reference Price: "..text
end

-- Dissect: Reference Price
nasdaq_nsmequities_rash_asciirash_v1_0.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.reference_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
  end
  value = value/10000

  local display = nasdaq_nsmequities_rash_asciirash_v1_0.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Reference Price Type
nasdaq_nsmequities_rash_asciirash_v1_0.reference_price_type = {}

-- Size: Reference Price Type
nasdaq_nsmequities_rash_asciirash_v1_0.reference_price_type.size = 1

-- Display: Reference Price Type
nasdaq_nsmequities_rash_asciirash_v1_0.reference_price_type.display = function(value)
  if value == "I" then
    return "Reference Price Type: Intraday Indicative Value (I)"
  end

  return "Reference Price Type: Unknown("..value..")"
end

-- Dissect: Reference Price Type
nasdaq_nsmequities_rash_asciirash_v1_0.reference_price_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.reference_price_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.reference_price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.reference_price_type, range, value, display)

  return offset + length, value
end

-- Reject Reason
nasdaq_nsmequities_rash_asciirash_v1_0.reject_reason = {}

-- Size: Reject Reason
nasdaq_nsmequities_rash_asciirash_v1_0.reject_reason.size = 1

-- Display: Reject Reason
nasdaq_nsmequities_rash_asciirash_v1_0.reject_reason.display = function(value)
  if value == "Y" then
    return "Reject Reason: No Shares Found For Routing (Y)"
  end
  if value == "C" then
    return "Reject Reason: Nasdaq Is Closed (C)"
  end
  if value == "I" then
    return "Reject Reason: Invalid Order Side (I)"
  end
  if value == "E" then
    return "Reject Reason: Invalid Peg (E)"
  end
  if value == "L" then
    return "Reject Reason: Invalid Firm (L)"
  end
  if value == "Z" then
    return "Reject Reason: Quantity Exceeds Threshold (Z)"
  end
  if value == "O" then
    return "Reject Reason: Other (O)"
  end
  if value == "B" then
    return "Reject Reason: Quote Not Available For Pegged Order (B)"
  end
  if value == "P" then
    return "Reject Reason: Pegging Not Allowed (P)"
  end
  if value == "X" then
    return "Reject Reason: Invalid Price (X)"
  end
  if value == "G" then
    return "Reject Reason: Destination Not Available (G)"
  end
  if value == "J" then
    return "Reject Reason: Processing Error (J)"
  end
  if value == "N" then
    return "Reject Reason: Invalid Routing Instructions (N)"
  end
  if value == "D" then
    return "Reject Reason: Invalid Display Value (D)"
  end
  if value == "M" then
    return "Reject Reason: Outside Of Permitted Times For Clearing Destination (M)"
  end
  if value == "H" then
    return "Reject Reason: Security Is Halted (H)"
  end
  if value == "S" then
    return "Reject Reason: Invalid Symbol (S)"
  end
  if value == "Q" then
    return "Reject Reason: Invalid Order Quantity (Q)"
  end
  if value == "K" then
    return "Reject Reason: Invalid Minimum Quantity (K)"
  end
  if value == "W" then
    return "Reject Reason: Invalid Destination (W)"
  end
  if value == "A" then
    return "Reject Reason: Advance Features Not Allowed (A)"
  end
  if value == "U" then
    return "Reject Reason: Possible Duplicate Order (U)"
  end
  if value == "V" then
    return "Reject Reason: Invalid Order Type (V)"
  end
  if value == "T" then
    return "Reject Reason: Test Mode (T)"
  end
  if value == "R" then
    return "Reject Reason: Routing Not Allowed (R)"
  end
  if value == "F" then
    return "Reject Reason: Order Not Marketable (F)"
  end
  if value == "o" then
    return "Reject Reason: No Noii Reference Price For Loc (o)"
  end
  if value == "q" then
    return "Reject Reason: Midpoint Peg Not Accepted In Crossed Market (q)"
  end
  if value == "u" then
    return "Reject Reason: Loc Priced More Aggressively Than Noii Reference Price (u)"
  end
  if value == "a" then
    return "Reject Reason: Prm Invalid Message Format (a)"
  end
  if value == "b" then
    return "Reject Reason: Prm No Quote (b)"
  end
  if value == "c" then
    return "Reject Reason: Prm Invalid Account (c)"
  end
  if value == "d" then
    return "Reject Reason: Prm Short Sale Violation (d)"
  end
  if value == "e" then
    return "Reject Reason: Prm Iso Order Check (e)"
  end
  if value == "f" then
    return "Reject Reason: Prm Gtc Order Check (f)"
  end
  if value == "g" then
    return "Reject Reason: Prm Pre Market Order Check (g)"
  end
  if value == "h" then
    return "Reject Reason: Prm Post Market Order Check (h)"
  end
  if value == "i" then
    return "Reject Reason: Prm Delayed Checking Flag Off (i)"
  end
  if value == "j" then
    return "Reject Reason: Prm Exceeded Maximum Shares Threshold (j)"
  end
  if value == "k" then
    return "Reject Reason: Prm Exceeded Maximum Value Threshold (k)"
  end
  if value == "m" then
    return "Reject Reason: Prm Reject All Orders (m)"
  end
  if value == "n" then
    return "Reject Reason: Prm Invalid Price Fat Finger (n)"
  end
  if value == "p" then
    return "Reject Reason: Prm Not Available (p)"
  end
  if value == "r" then
    return "Reject Reason: Prm Snap In Process (r)"
  end
  if value == "s" then
    return "Reject Reason: Prm Symbol Halted (s)"
  end
  if value == "t" then
    return "Reject Reason: Prm On Open (t)"
  end
  if value == "v" then
    return "Reject Reason: Prm Program Trading (v)"
  end
  if value == "{" then
    return "Reject Reason: Prm Not On Restricted List ({)"
  end

  return "Reject Reason: Unknown("..value..")"
end

-- Dissect: Reject Reason
nasdaq_nsmequities_rash_asciirash_v1_0.reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.reject_reason, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_nsmequities_rash_asciirash_v1_0.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_nsmequities_rash_asciirash_v1_0.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_nsmequities_rash_asciirash_v1_0.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
nasdaq_nsmequities_rash_asciirash_v1_0.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_nsmequities_rash_asciirash_v1_0.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_nsmequities_rash_asciirash_v1_0.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_nsmequities_rash_asciirash_v1_0.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_nsmequities_rash_asciirash_v1_0.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_nsmequities_rash_asciirash_v1_0.requested_session = {}

-- Size: Requested Session
nasdaq_nsmequities_rash_asciirash_v1_0.requested_session.size = 10

-- Display: Requested Session
nasdaq_nsmequities_rash_asciirash_v1_0.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_nsmequities_rash_asciirash_v1_0.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.requested_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Route Dest Exec Broker
nasdaq_nsmequities_rash_asciirash_v1_0.route_dest_exec_broker = {}

-- Size: Route Dest Exec Broker
nasdaq_nsmequities_rash_asciirash_v1_0.route_dest_exec_broker.size = 4

-- Display: Route Dest Exec Broker
nasdaq_nsmequities_rash_asciirash_v1_0.route_dest_exec_broker.display = function(value)
  if value == "INET" then
    return "Route Dest Exec Broker: Inet Strategy (INET)"
  end
  if value == "DOTA" then
    return "Route Dest Exec Broker: Dota Strategy (DOTA)"
  end
  if value == "DOTD" then
    return "Route Dest Exec Broker: Dotd Strategy (DOTD)"
  end
  if value == "DOTI" then
    return "Route Dest Exec Broker: Doti Strategy (DOTI)"
  end
  if value == "DOTM" then
    return "Route Dest Exec Broker: Dotm Strategy (DOTM)"
  end
  if value == "TFTY" then
    return "Route Dest Exec Broker: Tfty Strategy (TFTY)"
  end
  if value == "MOPP" then
    return "Route Dest Exec Broker: Mopp Strategy (MOPP)"
  end
  if value == "STGY" then
    return "Route Dest Exec Broker: Stgy Strategy (STGY)"
  end
  if value == "SCAN" then
    return "Route Dest Exec Broker: Scan Strategy (SCAN)"
  end
  if value == "SKIP" then
    return "Route Dest Exec Broker: Skip Strategy (SKIP)"
  end
  if value == "SKNY" then
    return "Route Dest Exec Broker: Skny Strategy (SKNY)"
  end
  if value == "SAVE" then
    return "Route Dest Exec Broker: Save Strategy (SAVE)"
  end
  if value == "QSAV" then
    return "Route Dest Exec Broker: Qsav Strategy (QSAV)"
  end
  if value == "QTFY" then
    return "Route Dest Exec Broker: Qtfy Strategy (QTFY)"
  end
  if value == "DOTZ" then
    return "Route Dest Exec Broker: Dotz Strategy (DOTZ)"
  end
  if value == "LIST" then
    return "Route Dest Exec Broker: List Strategy (LIST)"
  end
  if value == "SOLV" then
    return "Route Dest Exec Broker: Solv Strategy (SOLV)"
  end
  if value == "CART" then
    return "Route Dest Exec Broker: Cart Strategy (CART)"
  end
  if value == "QSLV" then
    return "Route Dest Exec Broker: Qslv Strategy (QSLV)"
  end
  if value == "ESCN" then
    return "Route Dest Exec Broker: Escn Strategy (ESCN)"
  end
  if value == "QDRK" then
    return "Route Dest Exec Broker: Qdrk Strategy (QDRK)"
  end
  if value == "QCST" then
    return "Route Dest Exec Broker: Qcst Strategy (QCST)"
  end
  if value == "MOPB" then
    return "Route Dest Exec Broker: Mopb Strategy (MOPB)"
  end
  if value == "QRTY" then
    return "Route Dest Exec Broker: Qrty Strategy (QRTY)"
  end
  if value == "RFTY" then
    return "Route Dest Exec Broker: Rfty Strategy (RFTY)"
  end
  if value == "SCAR" then
    return "Route Dest Exec Broker: Scar Strategy (SCAR)"
  end
  if value == "MIDP" then
    return "Route Dest Exec Broker: Midp Strategy (MIDP)"
  end
  if value == "ISAM" then
    return "Route Dest Exec Broker: Directed To Nyse American (ISAM)"
  end
  if value == "ISPA" then
    return "Route Dest Exec Broker: Directed To Nyse Arca (ISPA)"
  end
  if value == "ISBX" then
    return "Route Dest Exec Broker: Directed To Nasdaq Bx (ISBX)"
  end
  if value == "ISCB" then
    return "Route Dest Exec Broker: Directed To Cboe (ISCB)"
  end
  if value == "ISCX" then
    return "Route Dest Exec Broker: Directed To Nyse Chicago (ISCX)"
  end
  if value == "ISCN" then
    return "Route Dest Exec Broker: Directed To Nyse National (ISCN)"
  end
  if value == "ISNY" then
    return "Route Dest Exec Broker: Directed To Nyse (ISNY)"
  end
  if value == "ISBZ" then
    return "Route Dest Exec Broker: Directed To Bats Z (ISBZ)"
  end
  if value == "ISBY" then
    return "Route Dest Exec Broker: Directed To Bats Y (ISBY)"
  end
  if value == "ISNA" then
    return "Route Dest Exec Broker: Directed To Edga (ISNA)"
  end
  if value == "ISNX" then
    return "Route Dest Exec Broker: Directed To Edgx (ISNX)"
  end
  if value == "ISPX" then
    return "Route Dest Exec Broker: Directed To Nasdaq Psx (ISPX)"
  end
  if value == "ISIX" then
    return "Route Dest Exec Broker: Directed To Iex (ISIX)"
  end
  if value == "ISLT" then
    return "Route Dest Exec Broker: Directed To Long Term Stock Exchange (ISLT)"
  end

  return "Route Dest Exec Broker: Unknown("..value..")"
end

-- Dissect: Route Dest Exec Broker
nasdaq_nsmequities_rash_asciirash_v1_0.route_dest_exec_broker.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.route_dest_exec_broker.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.route_dest_exec_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.route_dest_exec_broker, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_nsmequities_rash_asciirash_v1_0.sequence_number = {}

-- Size: Sequence Number
nasdaq_nsmequities_rash_asciirash_v1_0.sequence_number.size = 20

-- Display: Sequence Number
nasdaq_nsmequities_rash_asciirash_v1_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_nsmequities_rash_asciirash_v1_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.sequence_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_message_type = {}

-- Size: Sequenced Message Type
nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_message_type.display = function(value)
  if value == "S" then
    return "Sequenced Message Type: System Event Message (S)"
  end
  if value == "A" then
    return "Sequenced Message Type: Accepted Order Message (A)"
  end
  if value == "R" then
    return "Sequenced Message Type: Accepted Order Message With Cross Functionality (R)"
  end
  if value == "C" then
    return "Sequenced Message Type: Canceled Order Message (C)"
  end
  if value == "J" then
    return "Sequenced Message Type: Rejected Order Message (J)"
  end
  if value == "E" then
    return "Sequenced Message Type: Executed Order Message (E)"
  end
  if value == "B" then
    return "Sequenced Message Type: Broken Trade Message (B)"
  end
  if value == "G" then
    return "Sequenced Message Type: Executed With Reference Price Message (G)"
  end
  if value == "F" then
    return "Sequenced Message Type: Trade Correction Message (F)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
nasdaq_nsmequities_rash_asciirash_v1_0.server_packet_type = {}

-- Size: Server Packet Type
nasdaq_nsmequities_rash_asciirash_v1_0.server_packet_type.size = 1

-- Display: Server Packet Type
nasdaq_nsmequities_rash_asciirash_v1_0.server_packet_type.display = function(value)
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
nasdaq_nsmequities_rash_asciirash_v1_0.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_nsmequities_rash_asciirash_v1_0.session = {}

-- Size: Session
nasdaq_nsmequities_rash_asciirash_v1_0.session.size = 10

-- Display: Session
nasdaq_nsmequities_rash_asciirash_v1_0.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
nasdaq_nsmequities_rash_asciirash_v1_0.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.session, range, value, display)

  return offset + length, value
end

-- Shares
nasdaq_nsmequities_rash_asciirash_v1_0.shares = {}

-- Size: Shares
nasdaq_nsmequities_rash_asciirash_v1_0.shares.size = 6

-- Display: Shares
nasdaq_nsmequities_rash_asciirash_v1_0.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
nasdaq_nsmequities_rash_asciirash_v1_0.shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_nsmequities_rash_asciirash_v1_0.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.shares, range, value, display)

  return offset + length, value
end

-- Shares Order Qty
nasdaq_nsmequities_rash_asciirash_v1_0.shares_order_qty = {}

-- Size: Shares Order Qty
nasdaq_nsmequities_rash_asciirash_v1_0.shares_order_qty.size = 6

-- Display: Shares Order Qty
nasdaq_nsmequities_rash_asciirash_v1_0.shares_order_qty.display = function(value)
  return "Shares Order Qty: "..value
end

-- Dissect: Shares Order Qty
nasdaq_nsmequities_rash_asciirash_v1_0.shares_order_qty.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.shares_order_qty.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_nsmequities_rash_asciirash_v1_0.shares_order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.shares_order_qty, range, value, display)

  return offset + length, value
end

-- Side
nasdaq_nsmequities_rash_asciirash_v1_0.side = {}

-- Size: Side
nasdaq_nsmequities_rash_asciirash_v1_0.side.size = 1

-- Display: Side
nasdaq_nsmequities_rash_asciirash_v1_0.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end
  if value == "T" then
    return "Side: Short (T)"
  end
  if value == "E" then
    return "Side: Short Exempt (E)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nasdaq_nsmequities_rash_asciirash_v1_0.side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.side, range, value, display)

  return offset + length, value
end

-- Soup Lf
nasdaq_nsmequities_rash_asciirash_v1_0.soup_lf = {}

-- Size: Soup Lf
nasdaq_nsmequities_rash_asciirash_v1_0.soup_lf.size = 1

-- Display: Soup Lf
nasdaq_nsmequities_rash_asciirash_v1_0.soup_lf.display = function(value)
  if value == 10 then
    return "Soup Lf: Line Feed"
  end

  return "Soup Lf: Unknown("..value..")"
end

-- Dissect: Soup Lf
nasdaq_nsmequities_rash_asciirash_v1_0.soup_lf.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.soup_lf.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.soup_lf.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.soup_lf, range, value, display)

  return offset + length, value
end

-- Stock Symbol
nasdaq_nsmequities_rash_asciirash_v1_0.stock_symbol = {}

-- Size: Stock Symbol
nasdaq_nsmequities_rash_asciirash_v1_0.stock_symbol.size = 6

-- Display: Stock Symbol
nasdaq_nsmequities_rash_asciirash_v1_0.stock_symbol.display = function(value)
  return "Stock Symbol: "..value
end

-- Dissect: Stock Symbol
nasdaq_nsmequities_rash_asciirash_v1_0.stock_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.stock_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.stock_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.stock_symbol, range, value, display)

  return offset + length, value
end

-- Text
nasdaq_nsmequities_rash_asciirash_v1_0.text = {}

-- Size: Text
nasdaq_nsmequities_rash_asciirash_v1_0.text.size = 1

-- Display: Text
nasdaq_nsmequities_rash_asciirash_v1_0.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
nasdaq_nsmequities_rash_asciirash_v1_0.text.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.text, range, value, display)

  return offset + length, value
end

-- Time In Force
nasdaq_nsmequities_rash_asciirash_v1_0.time_in_force = {}

-- Size: Time In Force
nasdaq_nsmequities_rash_asciirash_v1_0.time_in_force.size = 5

-- Display: Time In Force
nasdaq_nsmequities_rash_asciirash_v1_0.time_in_force.display = function(value)
  return "Time In Force: "..value
end

-- Dissect: Time In Force
nasdaq_nsmequities_rash_asciirash_v1_0.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.time_in_force.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_nsmequities_rash_asciirash_v1_0.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_nsmequities_rash_asciirash_v1_0.timestamp = {}

-- Size: Timestamp
nasdaq_nsmequities_rash_asciirash_v1_0.timestamp.size = 8

-- Display: Timestamp
nasdaq_nsmequities_rash_asciirash_v1_0.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode (or unparsable ASCII fell back to a non-number)
  if type(value) ~= "number" then
    return "Timestamp: "..tostring(value)
  end

  if nasdaq_nsmequities_rash_asciirash_v1_0.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_nsmequities_rash_asciirash_v1_0.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_nsmequities_rash_asciirash_v1_0.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", full_seconds + utc_offset_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Timestamp
nasdaq_nsmequities_rash_asciirash_v1_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_nsmequities_rash_asciirash_v1_0.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Correction Reason
nasdaq_nsmequities_rash_asciirash_v1_0.trade_correction_reason = {}

-- Size: Trade Correction Reason
nasdaq_nsmequities_rash_asciirash_v1_0.trade_correction_reason.size = 1

-- Display: Trade Correction Reason
nasdaq_nsmequities_rash_asciirash_v1_0.trade_correction_reason.display = function(value)
  if value == "N" then
    return "Trade Correction Reason: Adjusted To Nav (N)"
  end

  return "Trade Correction Reason: Unknown("..value..")"
end

-- Dissect: Trade Correction Reason
nasdaq_nsmequities_rash_asciirash_v1_0.trade_correction_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.trade_correction_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.trade_correction_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.trade_correction_reason, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
nasdaq_nsmequities_rash_asciirash_v1_0.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nasdaq_nsmequities_rash_asciirash_v1_0.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
nasdaq_nsmequities_rash_asciirash_v1_0.unsequenced_message_type.display = function(value)
  if value == "O" then
    return "Unsequenced Message Type: Enter Order Message (O)"
  end
  if value == "Q" then
    return "Unsequenced Message Type: Enter Order Message With Cross Functionality (Q)"
  end
  if value == "X" then
    return "Unsequenced Message Type: Cancel Order Message (X)"
  end

  return "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
nasdaq_nsmequities_rash_asciirash_v1_0.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_nsmequities_rash_asciirash_v1_0.username = {}

-- Size: Username
nasdaq_nsmequities_rash_asciirash_v1_0.username.size = 6

-- Display: Username
nasdaq_nsmequities_rash_asciirash_v1_0.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_nsmequities_rash_asciirash_v1_0.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_rash_asciirash_v1_0.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_rash_asciirash_v1_0.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NsmEquities Rash AsciiRash 1.0
-----------------------------------------------------------------------

-- Trade Correction Message
nasdaq_nsmequities_rash_asciirash_v1_0.trade_correction_message = {}

-- Size: Trade Correction Message
nasdaq_nsmequities_rash_asciirash_v1_0.trade_correction_message.size =
  nasdaq_nsmequities_rash_asciirash_v1_0.order_token_client_order_id.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.shares.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.price.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.liquidity.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.match_number.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.trade_correction_reason.size

-- Display: Trade Correction Message
nasdaq_nsmequities_rash_asciirash_v1_0.trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
nasdaq_nsmequities_rash_asciirash_v1_0.trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token Client Order Id: Alphanumeric
  index, order_token_client_order_id = nasdaq_nsmequities_rash_asciirash_v1_0.order_token_client_order_id.dissect(buffer, index, packet, parent)

  -- Shares: Numeric
  index, shares = nasdaq_nsmequities_rash_asciirash_v1_0.shares.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_nsmequities_rash_asciirash_v1_0.price.dissect(buffer, index, packet, parent)

  -- Liquidity: Alpha
  index, liquidity = nasdaq_nsmequities_rash_asciirash_v1_0.liquidity.dissect(buffer, index, packet, parent)

  -- Match Number: Numeric
  index, match_number = nasdaq_nsmequities_rash_asciirash_v1_0.match_number.dissect(buffer, index, packet, parent)

  -- Trade Correction Reason: Alpha
  index, trade_correction_reason = nasdaq_nsmequities_rash_asciirash_v1_0.trade_correction_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
nasdaq_nsmequities_rash_asciirash_v1_0.trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.trade_correction_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_rash_asciirash_v1_0.trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_rash_asciirash_v1_0.trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_rash_asciirash_v1_0.trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Executed With Reference Price Message
nasdaq_nsmequities_rash_asciirash_v1_0.executed_with_reference_price_message = {}

-- Size: Executed With Reference Price Message
nasdaq_nsmequities_rash_asciirash_v1_0.executed_with_reference_price_message.size =
  nasdaq_nsmequities_rash_asciirash_v1_0.order_token_client_order_id.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.shares.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.price.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.liquidity.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.match_number.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.reference_price.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.reference_price_type.size

-- Display: Executed With Reference Price Message
nasdaq_nsmequities_rash_asciirash_v1_0.executed_with_reference_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Executed With Reference Price Message
nasdaq_nsmequities_rash_asciirash_v1_0.executed_with_reference_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token Client Order Id: Alphanumeric
  index, order_token_client_order_id = nasdaq_nsmequities_rash_asciirash_v1_0.order_token_client_order_id.dissect(buffer, index, packet, parent)

  -- Shares: Numeric
  index, shares = nasdaq_nsmequities_rash_asciirash_v1_0.shares.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_nsmequities_rash_asciirash_v1_0.price.dissect(buffer, index, packet, parent)

  -- Liquidity: Alpha
  index, liquidity = nasdaq_nsmequities_rash_asciirash_v1_0.liquidity.dissect(buffer, index, packet, parent)

  -- Match Number: Numeric
  index, match_number = nasdaq_nsmequities_rash_asciirash_v1_0.match_number.dissect(buffer, index, packet, parent)

  -- Reference Price: Price
  index, reference_price = nasdaq_nsmequities_rash_asciirash_v1_0.reference_price.dissect(buffer, index, packet, parent)

  -- Reference Price Type: Alpha
  index, reference_price_type = nasdaq_nsmequities_rash_asciirash_v1_0.reference_price_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Executed With Reference Price Message
nasdaq_nsmequities_rash_asciirash_v1_0.executed_with_reference_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.executed_with_reference_price_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_rash_asciirash_v1_0.executed_with_reference_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_rash_asciirash_v1_0.executed_with_reference_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_rash_asciirash_v1_0.executed_with_reference_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Message
nasdaq_nsmequities_rash_asciirash_v1_0.broken_trade_message = {}

-- Size: Broken Trade Message
nasdaq_nsmequities_rash_asciirash_v1_0.broken_trade_message.size =
  nasdaq_nsmequities_rash_asciirash_v1_0.order_token.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.match_number.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.broken_trade_reason.size

-- Display: Broken Trade Message
nasdaq_nsmequities_rash_asciirash_v1_0.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
nasdaq_nsmequities_rash_asciirash_v1_0.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: Alphanumeric
  index, order_token = nasdaq_nsmequities_rash_asciirash_v1_0.order_token.dissect(buffer, index, packet, parent)

  -- Match Number: Numeric
  index, match_number = nasdaq_nsmequities_rash_asciirash_v1_0.match_number.dissect(buffer, index, packet, parent)

  -- Broken Trade Reason: Alpha
  index, broken_trade_reason = nasdaq_nsmequities_rash_asciirash_v1_0.broken_trade_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
nasdaq_nsmequities_rash_asciirash_v1_0.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.broken_trade_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_rash_asciirash_v1_0.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_rash_asciirash_v1_0.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_rash_asciirash_v1_0.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Executed Order Message
nasdaq_nsmequities_rash_asciirash_v1_0.executed_order_message = {}

-- Size: Executed Order Message
nasdaq_nsmequities_rash_asciirash_v1_0.executed_order_message.size =
  nasdaq_nsmequities_rash_asciirash_v1_0.order_token_client_order_id.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.shares.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.price.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.liquidity.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.match_number.size

-- Display: Executed Order Message
nasdaq_nsmequities_rash_asciirash_v1_0.executed_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Executed Order Message
nasdaq_nsmequities_rash_asciirash_v1_0.executed_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token Client Order Id: Alphanumeric
  index, order_token_client_order_id = nasdaq_nsmequities_rash_asciirash_v1_0.order_token_client_order_id.dissect(buffer, index, packet, parent)

  -- Shares: Numeric
  index, shares = nasdaq_nsmequities_rash_asciirash_v1_0.shares.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_nsmequities_rash_asciirash_v1_0.price.dissect(buffer, index, packet, parent)

  -- Liquidity: Alpha
  index, liquidity = nasdaq_nsmequities_rash_asciirash_v1_0.liquidity.dissect(buffer, index, packet, parent)

  -- Match Number: Numeric
  index, match_number = nasdaq_nsmequities_rash_asciirash_v1_0.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Executed Order Message
nasdaq_nsmequities_rash_asciirash_v1_0.executed_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.executed_order_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_rash_asciirash_v1_0.executed_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_rash_asciirash_v1_0.executed_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_rash_asciirash_v1_0.executed_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Rejected Order Message
nasdaq_nsmequities_rash_asciirash_v1_0.rejected_order_message = {}

-- Size: Rejected Order Message
nasdaq_nsmequities_rash_asciirash_v1_0.rejected_order_message.size =
  nasdaq_nsmequities_rash_asciirash_v1_0.order_token_client_order_id.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.reject_reason.size

-- Display: Rejected Order Message
nasdaq_nsmequities_rash_asciirash_v1_0.rejected_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rejected Order Message
nasdaq_nsmequities_rash_asciirash_v1_0.rejected_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token Client Order Id: Alphanumeric
  index, order_token_client_order_id = nasdaq_nsmequities_rash_asciirash_v1_0.order_token_client_order_id.dissect(buffer, index, packet, parent)

  -- Reject Reason: Alpha
  index, reject_reason = nasdaq_nsmequities_rash_asciirash_v1_0.reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rejected Order Message
nasdaq_nsmequities_rash_asciirash_v1_0.rejected_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.rejected_order_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_rash_asciirash_v1_0.rejected_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_rash_asciirash_v1_0.rejected_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_rash_asciirash_v1_0.rejected_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Canceled Order Message
nasdaq_nsmequities_rash_asciirash_v1_0.canceled_order_message = {}

-- Size: Canceled Order Message
nasdaq_nsmequities_rash_asciirash_v1_0.canceled_order_message.size =
  nasdaq_nsmequities_rash_asciirash_v1_0.order_token_client_order_id.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.shares.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.cancel_reason.size

-- Display: Canceled Order Message
nasdaq_nsmequities_rash_asciirash_v1_0.canceled_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Canceled Order Message
nasdaq_nsmequities_rash_asciirash_v1_0.canceled_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token Client Order Id: Alphanumeric
  index, order_token_client_order_id = nasdaq_nsmequities_rash_asciirash_v1_0.order_token_client_order_id.dissect(buffer, index, packet, parent)

  -- Shares: Numeric
  index, shares = nasdaq_nsmequities_rash_asciirash_v1_0.shares.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Alpha
  index, cancel_reason = nasdaq_nsmequities_rash_asciirash_v1_0.cancel_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Canceled Order Message
nasdaq_nsmequities_rash_asciirash_v1_0.canceled_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.canceled_order_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_rash_asciirash_v1_0.canceled_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_rash_asciirash_v1_0.canceled_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_rash_asciirash_v1_0.canceled_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Accepted Order Message With Cross Functionality
nasdaq_nsmequities_rash_asciirash_v1_0.accepted_order_message_with_cross_functionality = {}

-- Size: Accepted Order Message With Cross Functionality
nasdaq_nsmequities_rash_asciirash_v1_0.accepted_order_message_with_cross_functionality.size =
  nasdaq_nsmequities_rash_asciirash_v1_0.order_token_client_order_id.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.side.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.shares_order_qty.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.stock_symbol.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.price.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.time_in_force.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.firm_client_id.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.display.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.order_reference_number.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.min_qty.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.max_floor.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.peg_type.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.peg_difference_sign.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.peg_difference.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.discretion_price.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_type.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_difference_sign.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_difference.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.capacity_rule_80_a_indicator.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.random_reserve.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.route_dest_exec_broker.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.cust_terminal_id_sender_sub_id.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.intermarket_sweep_eligibility.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.cross_type.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.customer_type.size

-- Display: Accepted Order Message With Cross Functionality
nasdaq_nsmequities_rash_asciirash_v1_0.accepted_order_message_with_cross_functionality.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Accepted Order Message With Cross Functionality
nasdaq_nsmequities_rash_asciirash_v1_0.accepted_order_message_with_cross_functionality.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token Client Order Id: Alphanumeric
  index, order_token_client_order_id = nasdaq_nsmequities_rash_asciirash_v1_0.order_token_client_order_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_nsmequities_rash_asciirash_v1_0.side.dissect(buffer, index, packet, parent)

  -- Shares Order Qty: Numeric
  index, shares_order_qty = nasdaq_nsmequities_rash_asciirash_v1_0.shares_order_qty.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Alpha
  index, stock_symbol = nasdaq_nsmequities_rash_asciirash_v1_0.stock_symbol.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_nsmequities_rash_asciirash_v1_0.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Numeric
  index, time_in_force = nasdaq_nsmequities_rash_asciirash_v1_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Firm Client Id: Alpha
  index, firm_client_id = nasdaq_nsmequities_rash_asciirash_v1_0.firm_client_id.dissect(buffer, index, packet, parent)

  -- Display: Alpha
  index, display = nasdaq_nsmequities_rash_asciirash_v1_0.display.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Numeric
  index, order_reference_number = nasdaq_nsmequities_rash_asciirash_v1_0.order_reference_number.dissect(buffer, index, packet, parent)

  -- Min Qty: Numeric
  index, min_qty = nasdaq_nsmequities_rash_asciirash_v1_0.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: Numeric
  index, max_floor = nasdaq_nsmequities_rash_asciirash_v1_0.max_floor.dissect(buffer, index, packet, parent)

  -- Peg Type: Alpha
  index, peg_type = nasdaq_nsmequities_rash_asciirash_v1_0.peg_type.dissect(buffer, index, packet, parent)

  -- Peg Difference Sign: Alpha
  index, peg_difference_sign = nasdaq_nsmequities_rash_asciirash_v1_0.peg_difference_sign.dissect(buffer, index, packet, parent)

  -- Peg Difference: Price
  index, peg_difference = nasdaq_nsmequities_rash_asciirash_v1_0.peg_difference.dissect(buffer, index, packet, parent)

  -- Discretion Price: Price
  index, discretion_price = nasdaq_nsmequities_rash_asciirash_v1_0.discretion_price.dissect(buffer, index, packet, parent)

  -- Discretion Peg Type: Alpha
  index, discretion_peg_type = nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_type.dissect(buffer, index, packet, parent)

  -- Discretion Peg Difference Sign: Alpha
  index, discretion_peg_difference_sign = nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_difference_sign.dissect(buffer, index, packet, parent)

  -- Discretion Peg Difference: Price
  index, discretion_peg_difference = nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_difference.dissect(buffer, index, packet, parent)

  -- Capacity Rule 80 A Indicator: Alpha
  index, capacity_rule_80_a_indicator = nasdaq_nsmequities_rash_asciirash_v1_0.capacity_rule_80_a_indicator.dissect(buffer, index, packet, parent)

  -- Random Reserve: Numeric
  index, random_reserve = nasdaq_nsmequities_rash_asciirash_v1_0.random_reserve.dissect(buffer, index, packet, parent)

  -- Route Dest Exec Broker: Alpha
  index, route_dest_exec_broker = nasdaq_nsmequities_rash_asciirash_v1_0.route_dest_exec_broker.dissect(buffer, index, packet, parent)

  -- Cust Terminal Id Sender Sub Id: Alphanumeric
  index, cust_terminal_id_sender_sub_id = nasdaq_nsmequities_rash_asciirash_v1_0.cust_terminal_id_sender_sub_id.dissect(buffer, index, packet, parent)

  -- Intermarket Sweep Eligibility: Alpha
  index, intermarket_sweep_eligibility = nasdaq_nsmequities_rash_asciirash_v1_0.intermarket_sweep_eligibility.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nasdaq_nsmequities_rash_asciirash_v1_0.cross_type.dissect(buffer, index, packet, parent)

  -- Customer Type: Alpha
  index, customer_type = nasdaq_nsmequities_rash_asciirash_v1_0.customer_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Accepted Order Message With Cross Functionality
nasdaq_nsmequities_rash_asciirash_v1_0.accepted_order_message_with_cross_functionality.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.accepted_order_message_with_cross_functionality, buffer(offset, 0))
    local index = nasdaq_nsmequities_rash_asciirash_v1_0.accepted_order_message_with_cross_functionality.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_rash_asciirash_v1_0.accepted_order_message_with_cross_functionality.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_rash_asciirash_v1_0.accepted_order_message_with_cross_functionality.fields(buffer, offset, packet, parent)
  end
end

-- Accepted Order Message
nasdaq_nsmequities_rash_asciirash_v1_0.accepted_order_message = {}

-- Size: Accepted Order Message
nasdaq_nsmequities_rash_asciirash_v1_0.accepted_order_message.size =
  nasdaq_nsmequities_rash_asciirash_v1_0.order_token_client_order_id.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.side.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.shares_order_qty.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.stock_symbol.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.price.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.time_in_force.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.firm_client_id.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.display.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.order_reference_number.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.min_qty.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.max_floor.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.peg_type.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.peg_difference_sign.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.peg_difference.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.discretion_price.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_type.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_difference_sign.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_difference.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.capacity_rule_80_a_indicator.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.random_reserve.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.route_dest_exec_broker.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.cust_terminal_id_sender_sub_id.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.customer_type.size

-- Display: Accepted Order Message
nasdaq_nsmequities_rash_asciirash_v1_0.accepted_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Accepted Order Message
nasdaq_nsmequities_rash_asciirash_v1_0.accepted_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token Client Order Id: Alphanumeric
  index, order_token_client_order_id = nasdaq_nsmequities_rash_asciirash_v1_0.order_token_client_order_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_nsmequities_rash_asciirash_v1_0.side.dissect(buffer, index, packet, parent)

  -- Shares Order Qty: Numeric
  index, shares_order_qty = nasdaq_nsmequities_rash_asciirash_v1_0.shares_order_qty.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Alpha
  index, stock_symbol = nasdaq_nsmequities_rash_asciirash_v1_0.stock_symbol.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_nsmequities_rash_asciirash_v1_0.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Numeric
  index, time_in_force = nasdaq_nsmequities_rash_asciirash_v1_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Firm Client Id: Alpha
  index, firm_client_id = nasdaq_nsmequities_rash_asciirash_v1_0.firm_client_id.dissect(buffer, index, packet, parent)

  -- Display: Alpha
  index, display = nasdaq_nsmequities_rash_asciirash_v1_0.display.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Numeric
  index, order_reference_number = nasdaq_nsmequities_rash_asciirash_v1_0.order_reference_number.dissect(buffer, index, packet, parent)

  -- Min Qty: Numeric
  index, min_qty = nasdaq_nsmequities_rash_asciirash_v1_0.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: Numeric
  index, max_floor = nasdaq_nsmequities_rash_asciirash_v1_0.max_floor.dissect(buffer, index, packet, parent)

  -- Peg Type: Alpha
  index, peg_type = nasdaq_nsmequities_rash_asciirash_v1_0.peg_type.dissect(buffer, index, packet, parent)

  -- Peg Difference Sign: Alpha
  index, peg_difference_sign = nasdaq_nsmequities_rash_asciirash_v1_0.peg_difference_sign.dissect(buffer, index, packet, parent)

  -- Peg Difference: Price
  index, peg_difference = nasdaq_nsmequities_rash_asciirash_v1_0.peg_difference.dissect(buffer, index, packet, parent)

  -- Discretion Price: Price
  index, discretion_price = nasdaq_nsmequities_rash_asciirash_v1_0.discretion_price.dissect(buffer, index, packet, parent)

  -- Discretion Peg Type: Alpha
  index, discretion_peg_type = nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_type.dissect(buffer, index, packet, parent)

  -- Discretion Peg Difference Sign: Alpha
  index, discretion_peg_difference_sign = nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_difference_sign.dissect(buffer, index, packet, parent)

  -- Discretion Peg Difference: Price
  index, discretion_peg_difference = nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_difference.dissect(buffer, index, packet, parent)

  -- Capacity Rule 80 A Indicator: Alpha
  index, capacity_rule_80_a_indicator = nasdaq_nsmequities_rash_asciirash_v1_0.capacity_rule_80_a_indicator.dissect(buffer, index, packet, parent)

  -- Random Reserve: Numeric
  index, random_reserve = nasdaq_nsmequities_rash_asciirash_v1_0.random_reserve.dissect(buffer, index, packet, parent)

  -- Route Dest Exec Broker: Alpha
  index, route_dest_exec_broker = nasdaq_nsmequities_rash_asciirash_v1_0.route_dest_exec_broker.dissect(buffer, index, packet, parent)

  -- Cust Terminal Id Sender Sub Id: Alphanumeric
  index, cust_terminal_id_sender_sub_id = nasdaq_nsmequities_rash_asciirash_v1_0.cust_terminal_id_sender_sub_id.dissect(buffer, index, packet, parent)

  -- Customer Type: Alpha
  index, customer_type = nasdaq_nsmequities_rash_asciirash_v1_0.customer_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Accepted Order Message
nasdaq_nsmequities_rash_asciirash_v1_0.accepted_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.accepted_order_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_rash_asciirash_v1_0.accepted_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_rash_asciirash_v1_0.accepted_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_rash_asciirash_v1_0.accepted_order_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_nsmequities_rash_asciirash_v1_0.system_event_message = {}

-- Size: System Event Message
nasdaq_nsmequities_rash_asciirash_v1_0.system_event_message.size =
  nasdaq_nsmequities_rash_asciirash_v1_0.event_code.size

-- Display: System Event Message
nasdaq_nsmequities_rash_asciirash_v1_0.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nsmequities_rash_asciirash_v1_0.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Code: Alpha
  index, event_code = nasdaq_nsmequities_rash_asciirash_v1_0.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nsmequities_rash_asciirash_v1_0.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_rash_asciirash_v1_0.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_rash_asciirash_v1_0.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_rash_asciirash_v1_0.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_message = {}

-- Dissect: Sequenced Message
nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect System Event Message
  if sequenced_message_type == "S" then
    return nasdaq_nsmequities_rash_asciirash_v1_0.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Accepted Order Message
  if sequenced_message_type == "A" then
    return nasdaq_nsmequities_rash_asciirash_v1_0.accepted_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Accepted Order Message With Cross Functionality
  if sequenced_message_type == "R" then
    return nasdaq_nsmequities_rash_asciirash_v1_0.accepted_order_message_with_cross_functionality.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Canceled Order Message
  if sequenced_message_type == "C" then
    return nasdaq_nsmequities_rash_asciirash_v1_0.canceled_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Rejected Order Message
  if sequenced_message_type == "J" then
    return nasdaq_nsmequities_rash_asciirash_v1_0.rejected_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Executed Order Message
  if sequenced_message_type == "E" then
    return nasdaq_nsmequities_rash_asciirash_v1_0.executed_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Message
  if sequenced_message_type == "B" then
    return nasdaq_nsmequities_rash_asciirash_v1_0.broken_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Executed With Reference Price Message
  if sequenced_message_type == "G" then
    return nasdaq_nsmequities_rash_asciirash_v1_0.executed_with_reference_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if sequenced_message_type == "F" then
    return nasdaq_nsmequities_rash_asciirash_v1_0.trade_correction_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Message Header
nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_message_header = {}

-- Size: Sequenced Message Header
nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_message_header.size =
  nasdaq_nsmequities_rash_asciirash_v1_0.timestamp.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_message_type.size

-- Display: Sequenced Message Header
nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message Header
nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Ascii String
  index, timestamp = nasdaq_nsmequities_rash_asciirash_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 9 values
  index, sequenced_message_type = nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Message Header
nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.sequenced_message_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Data Packet
nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_data_packet = {}

-- Calculate size of: Sequenced Data Packet
nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_data_packet.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_message_header.size

  -- Calculate runtime size of Sequenced Message field
  local sequenced_message_offset = offset + index
  local sequenced_message_type = buffer(sequenced_message_offset - 1, 1):string()
  index = index + nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_message.size(buffer, sequenced_message_offset, sequenced_message_type)

  return index
end

-- Display: Sequenced Data Packet
nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequenced Message Header: Struct of 2 fields
  index, sequenced_message_header = nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Sequenced Message Type
  local sequenced_message_type = buffer(index - 1, 1):string()

  -- Sequenced Message: Runtime Type with 9 branches
  index = nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.sequenced_data_packet, buffer(offset, 0))
    local index = nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Rejected Packet
nasdaq_nsmequities_rash_asciirash_v1_0.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_nsmequities_rash_asciirash_v1_0.login_rejected_packet.size =
  nasdaq_nsmequities_rash_asciirash_v1_0.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_nsmequities_rash_asciirash_v1_0.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_nsmequities_rash_asciirash_v1_0.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = nasdaq_nsmequities_rash_asciirash_v1_0.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_nsmequities_rash_asciirash_v1_0.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_nsmequities_rash_asciirash_v1_0.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_rash_asciirash_v1_0.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_rash_asciirash_v1_0.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_nsmequities_rash_asciirash_v1_0.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_nsmequities_rash_asciirash_v1_0.login_accepted_packet.size =
  nasdaq_nsmequities_rash_asciirash_v1_0.session.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.sequence_number.size

-- Display: Login Accepted Packet
nasdaq_nsmequities_rash_asciirash_v1_0.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_nsmequities_rash_asciirash_v1_0.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nsmequities_rash_asciirash_v1_0.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 20 Byte Ascii String
  index, sequence_number = nasdaq_nsmequities_rash_asciirash_v1_0.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_nsmequities_rash_asciirash_v1_0.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_nsmequities_rash_asciirash_v1_0.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_rash_asciirash_v1_0.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_rash_asciirash_v1_0.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_nsmequities_rash_asciirash_v1_0.debug_packet = {}

-- Size: Debug Packet
nasdaq_nsmequities_rash_asciirash_v1_0.debug_packet.size =
  nasdaq_nsmequities_rash_asciirash_v1_0.text.size

-- Display: Debug Packet
nasdaq_nsmequities_rash_asciirash_v1_0.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_nsmequities_rash_asciirash_v1_0.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = nasdaq_nsmequities_rash_asciirash_v1_0.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
nasdaq_nsmequities_rash_asciirash_v1_0.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_nsmequities_rash_asciirash_v1_0.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_rash_asciirash_v1_0.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_rash_asciirash_v1_0.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
nasdaq_nsmequities_rash_asciirash_v1_0.server_payload = {}

-- Dissect: Server Payload
nasdaq_nsmequities_rash_asciirash_v1_0.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  -- Dissect Debug Packet
  if server_packet_type == "+" then
    return nasdaq_nsmequities_rash_asciirash_v1_0.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if server_packet_type == "A" then
    return nasdaq_nsmequities_rash_asciirash_v1_0.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if server_packet_type == "J" then
    return nasdaq_nsmequities_rash_asciirash_v1_0.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if server_packet_type == "S" then
    return nasdaq_nsmequities_rash_asciirash_v1_0.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
nasdaq_nsmequities_rash_asciirash_v1_0.server_packet_header = {}

-- Size: Server Packet Header
nasdaq_nsmequities_rash_asciirash_v1_0.server_packet_header.size =
  nasdaq_nsmequities_rash_asciirash_v1_0.server_packet_type.size

-- Display: Server Packet Header
nasdaq_nsmequities_rash_asciirash_v1_0.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
nasdaq_nsmequities_rash_asciirash_v1_0.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Server Packet Type: 1 Byte Ascii String Enum with 5 values
  index, server_packet_type = nasdaq_nsmequities_rash_asciirash_v1_0.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
nasdaq_nsmequities_rash_asciirash_v1_0.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.server_packet_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_rash_asciirash_v1_0.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_rash_asciirash_v1_0.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_rash_asciirash_v1_0.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Packet
nasdaq_nsmequities_rash_asciirash_v1_0.server_packet = {}

-- Verify required size of Tcp packet
nasdaq_nsmequities_rash_asciirash_v1_0.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nsmequities_rash_asciirash_v1_0.server_packet_header.size
end

-- Dissect Server Packet
nasdaq_nsmequities_rash_asciirash_v1_0.server_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Server Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Server Packet Header: Struct of 1 fields
    index, server_packet_header = nasdaq_nsmequities_rash_asciirash_v1_0.server_packet_header.dissect(buffer, index, packet, parent)

    -- Dependency element: Server Packet Type
    local server_packet_type = buffer(index - 1, 1):string()

    -- Server Payload: Runtime Type with 4 branches
    index = nasdaq_nsmequities_rash_asciirash_v1_0.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

    -- Soup Lf: 1 Byte Fixed Width Integer Static
    index, soup_lf = nasdaq_nsmequities_rash_asciirash_v1_0.soup_lf.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Cancel Order Message
nasdaq_nsmequities_rash_asciirash_v1_0.cancel_order_message = {}

-- Size: Cancel Order Message
nasdaq_nsmequities_rash_asciirash_v1_0.cancel_order_message.size =
  nasdaq_nsmequities_rash_asciirash_v1_0.order_token_client_order_id.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.shares.size

-- Display: Cancel Order Message
nasdaq_nsmequities_rash_asciirash_v1_0.cancel_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Message
nasdaq_nsmequities_rash_asciirash_v1_0.cancel_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token Client Order Id: Alphanumeric
  index, order_token_client_order_id = nasdaq_nsmequities_rash_asciirash_v1_0.order_token_client_order_id.dissect(buffer, index, packet, parent)

  -- Shares: Numeric
  index, shares = nasdaq_nsmequities_rash_asciirash_v1_0.shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Message
nasdaq_nsmequities_rash_asciirash_v1_0.cancel_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.cancel_order_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_rash_asciirash_v1_0.cancel_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_rash_asciirash_v1_0.cancel_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_rash_asciirash_v1_0.cancel_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Enter Order Message With Cross Functionality
nasdaq_nsmequities_rash_asciirash_v1_0.enter_order_message_with_cross_functionality = {}

-- Size: Enter Order Message With Cross Functionality
nasdaq_nsmequities_rash_asciirash_v1_0.enter_order_message_with_cross_functionality.size =
  nasdaq_nsmequities_rash_asciirash_v1_0.order_token_client_order_id.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.side.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.shares_order_qty.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.stock_symbol.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.price.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.time_in_force.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.firm_client_id.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.display.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.min_qty.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.max_floor.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.peg_type.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.peg_difference_sign.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.peg_difference.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.discretion_price.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_type.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_difference_sign.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_difference.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.capacity_rule_80_a_indicator.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.random_reserve.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.route_dest_exec_broker.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.cust_terminal_id_sender_sub_id.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.intermarket_sweep_eligibility.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.cross_type.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.customer_type.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.reactive_trade_now.size

-- Display: Enter Order Message With Cross Functionality
nasdaq_nsmequities_rash_asciirash_v1_0.enter_order_message_with_cross_functionality.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enter Order Message With Cross Functionality
nasdaq_nsmequities_rash_asciirash_v1_0.enter_order_message_with_cross_functionality.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token Client Order Id: Alphanumeric
  index, order_token_client_order_id = nasdaq_nsmequities_rash_asciirash_v1_0.order_token_client_order_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_nsmequities_rash_asciirash_v1_0.side.dissect(buffer, index, packet, parent)

  -- Shares Order Qty: Numeric
  index, shares_order_qty = nasdaq_nsmequities_rash_asciirash_v1_0.shares_order_qty.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Alpha
  index, stock_symbol = nasdaq_nsmequities_rash_asciirash_v1_0.stock_symbol.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_nsmequities_rash_asciirash_v1_0.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Numeric
  index, time_in_force = nasdaq_nsmequities_rash_asciirash_v1_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Firm Client Id: Alpha
  index, firm_client_id = nasdaq_nsmequities_rash_asciirash_v1_0.firm_client_id.dissect(buffer, index, packet, parent)

  -- Display: Alpha
  index, display = nasdaq_nsmequities_rash_asciirash_v1_0.display.dissect(buffer, index, packet, parent)

  -- Min Qty: Numeric
  index, min_qty = nasdaq_nsmequities_rash_asciirash_v1_0.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: Numeric
  index, max_floor = nasdaq_nsmequities_rash_asciirash_v1_0.max_floor.dissect(buffer, index, packet, parent)

  -- Peg Type: Alpha
  index, peg_type = nasdaq_nsmequities_rash_asciirash_v1_0.peg_type.dissect(buffer, index, packet, parent)

  -- Peg Difference Sign: Alpha
  index, peg_difference_sign = nasdaq_nsmequities_rash_asciirash_v1_0.peg_difference_sign.dissect(buffer, index, packet, parent)

  -- Peg Difference: Price
  index, peg_difference = nasdaq_nsmequities_rash_asciirash_v1_0.peg_difference.dissect(buffer, index, packet, parent)

  -- Discretion Price: Price
  index, discretion_price = nasdaq_nsmequities_rash_asciirash_v1_0.discretion_price.dissect(buffer, index, packet, parent)

  -- Discretion Peg Type: Alpha
  index, discretion_peg_type = nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_type.dissect(buffer, index, packet, parent)

  -- Discretion Peg Difference Sign: Alpha
  index, discretion_peg_difference_sign = nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_difference_sign.dissect(buffer, index, packet, parent)

  -- Discretion Peg Difference: Price
  index, discretion_peg_difference = nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_difference.dissect(buffer, index, packet, parent)

  -- Capacity Rule 80 A Indicator: Alpha
  index, capacity_rule_80_a_indicator = nasdaq_nsmequities_rash_asciirash_v1_0.capacity_rule_80_a_indicator.dissect(buffer, index, packet, parent)

  -- Random Reserve: Numeric
  index, random_reserve = nasdaq_nsmequities_rash_asciirash_v1_0.random_reserve.dissect(buffer, index, packet, parent)

  -- Route Dest Exec Broker: Alpha
  index, route_dest_exec_broker = nasdaq_nsmequities_rash_asciirash_v1_0.route_dest_exec_broker.dissect(buffer, index, packet, parent)

  -- Cust Terminal Id Sender Sub Id: Alphanumeric
  index, cust_terminal_id_sender_sub_id = nasdaq_nsmequities_rash_asciirash_v1_0.cust_terminal_id_sender_sub_id.dissect(buffer, index, packet, parent)

  -- Intermarket Sweep Eligibility: Alpha
  index, intermarket_sweep_eligibility = nasdaq_nsmequities_rash_asciirash_v1_0.intermarket_sweep_eligibility.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nasdaq_nsmequities_rash_asciirash_v1_0.cross_type.dissect(buffer, index, packet, parent)

  -- Customer Type: Alpha
  index, customer_type = nasdaq_nsmequities_rash_asciirash_v1_0.customer_type.dissect(buffer, index, packet, parent)

  -- Reactive Trade Now: Alpha
  index, reactive_trade_now = nasdaq_nsmequities_rash_asciirash_v1_0.reactive_trade_now.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enter Order Message With Cross Functionality
nasdaq_nsmequities_rash_asciirash_v1_0.enter_order_message_with_cross_functionality.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.enter_order_message_with_cross_functionality, buffer(offset, 0))
    local index = nasdaq_nsmequities_rash_asciirash_v1_0.enter_order_message_with_cross_functionality.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_rash_asciirash_v1_0.enter_order_message_with_cross_functionality.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_rash_asciirash_v1_0.enter_order_message_with_cross_functionality.fields(buffer, offset, packet, parent)
  end
end

-- Enter Order Message
nasdaq_nsmequities_rash_asciirash_v1_0.enter_order_message = {}

-- Size: Enter Order Message
nasdaq_nsmequities_rash_asciirash_v1_0.enter_order_message.size =
  nasdaq_nsmequities_rash_asciirash_v1_0.order_token_client_order_id.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.side.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.shares_order_qty.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.stock_symbol.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.price.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.time_in_force.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.firm_client_id.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.display.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.min_qty.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.max_floor.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.peg_type.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.peg_difference_sign.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.peg_difference.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.discretion_price.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_type.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_difference_sign.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_difference.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.capacity_rule_80_a_indicator.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.random_reserve.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.route_dest_exec_broker.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.cust_terminal_id_sender_sub_id.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.customer_type.size

-- Display: Enter Order Message
nasdaq_nsmequities_rash_asciirash_v1_0.enter_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enter Order Message
nasdaq_nsmequities_rash_asciirash_v1_0.enter_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token Client Order Id: Alphanumeric
  index, order_token_client_order_id = nasdaq_nsmequities_rash_asciirash_v1_0.order_token_client_order_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_nsmequities_rash_asciirash_v1_0.side.dissect(buffer, index, packet, parent)

  -- Shares Order Qty: Numeric
  index, shares_order_qty = nasdaq_nsmequities_rash_asciirash_v1_0.shares_order_qty.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Alpha
  index, stock_symbol = nasdaq_nsmequities_rash_asciirash_v1_0.stock_symbol.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_nsmequities_rash_asciirash_v1_0.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Numeric
  index, time_in_force = nasdaq_nsmequities_rash_asciirash_v1_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Firm Client Id: Alpha
  index, firm_client_id = nasdaq_nsmequities_rash_asciirash_v1_0.firm_client_id.dissect(buffer, index, packet, parent)

  -- Display: Alpha
  index, display = nasdaq_nsmequities_rash_asciirash_v1_0.display.dissect(buffer, index, packet, parent)

  -- Min Qty: Numeric
  index, min_qty = nasdaq_nsmequities_rash_asciirash_v1_0.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: Numeric
  index, max_floor = nasdaq_nsmequities_rash_asciirash_v1_0.max_floor.dissect(buffer, index, packet, parent)

  -- Peg Type: Alpha
  index, peg_type = nasdaq_nsmequities_rash_asciirash_v1_0.peg_type.dissect(buffer, index, packet, parent)

  -- Peg Difference Sign: Alpha
  index, peg_difference_sign = nasdaq_nsmequities_rash_asciirash_v1_0.peg_difference_sign.dissect(buffer, index, packet, parent)

  -- Peg Difference: Price
  index, peg_difference = nasdaq_nsmequities_rash_asciirash_v1_0.peg_difference.dissect(buffer, index, packet, parent)

  -- Discretion Price: Price
  index, discretion_price = nasdaq_nsmequities_rash_asciirash_v1_0.discretion_price.dissect(buffer, index, packet, parent)

  -- Discretion Peg Type: Alpha
  index, discretion_peg_type = nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_type.dissect(buffer, index, packet, parent)

  -- Discretion Peg Difference Sign: Alpha
  index, discretion_peg_difference_sign = nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_difference_sign.dissect(buffer, index, packet, parent)

  -- Discretion Peg Difference: Price
  index, discretion_peg_difference = nasdaq_nsmequities_rash_asciirash_v1_0.discretion_peg_difference.dissect(buffer, index, packet, parent)

  -- Capacity Rule 80 A Indicator: Alpha
  index, capacity_rule_80_a_indicator = nasdaq_nsmequities_rash_asciirash_v1_0.capacity_rule_80_a_indicator.dissect(buffer, index, packet, parent)

  -- Random Reserve: Numeric
  index, random_reserve = nasdaq_nsmequities_rash_asciirash_v1_0.random_reserve.dissect(buffer, index, packet, parent)

  -- Route Dest Exec Broker: Alpha
  index, route_dest_exec_broker = nasdaq_nsmequities_rash_asciirash_v1_0.route_dest_exec_broker.dissect(buffer, index, packet, parent)

  -- Cust Terminal Id Sender Sub Id: Alphanumeric
  index, cust_terminal_id_sender_sub_id = nasdaq_nsmequities_rash_asciirash_v1_0.cust_terminal_id_sender_sub_id.dissect(buffer, index, packet, parent)

  -- Customer Type: Alpha
  index, customer_type = nasdaq_nsmequities_rash_asciirash_v1_0.customer_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enter Order Message
nasdaq_nsmequities_rash_asciirash_v1_0.enter_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.enter_order_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_rash_asciirash_v1_0.enter_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_rash_asciirash_v1_0.enter_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_rash_asciirash_v1_0.enter_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
nasdaq_nsmequities_rash_asciirash_v1_0.unsequenced_message = {}

-- Dissect: Unsequenced Message
nasdaq_nsmequities_rash_asciirash_v1_0.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  -- Dissect Enter Order Message
  if unsequenced_message_type == "O" then
    return nasdaq_nsmequities_rash_asciirash_v1_0.enter_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Enter Order Message With Cross Functionality
  if unsequenced_message_type == "Q" then
    return nasdaq_nsmequities_rash_asciirash_v1_0.enter_order_message_with_cross_functionality.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Message
  if unsequenced_message_type == "X" then
    return nasdaq_nsmequities_rash_asciirash_v1_0.cancel_order_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
nasdaq_nsmequities_rash_asciirash_v1_0.unsequenced_data_packet = {}

-- Calculate size of: Unsequenced Data Packet
nasdaq_nsmequities_rash_asciirash_v1_0.unsequenced_data_packet.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_rash_asciirash_v1_0.unsequenced_message_type.size

  -- Calculate runtime size of Unsequenced Message field
  local unsequenced_message_offset = offset + index
  local unsequenced_message_type = buffer(unsequenced_message_offset - 1, 1):string()
  index = index + nasdaq_nsmequities_rash_asciirash_v1_0.unsequenced_message.size(buffer, unsequenced_message_offset, unsequenced_message_type)

  return index
end

-- Display: Unsequenced Data Packet
nasdaq_nsmequities_rash_asciirash_v1_0.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_nsmequities_rash_asciirash_v1_0.unsequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String Enum with 3 values
  index, unsequenced_message_type = nasdaq_nsmequities_rash_asciirash_v1_0.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 3 branches
  index = nasdaq_nsmequities_rash_asciirash_v1_0.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_nsmequities_rash_asciirash_v1_0.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.unsequenced_data_packet, buffer(offset, 0))
    local index = nasdaq_nsmequities_rash_asciirash_v1_0.unsequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_rash_asciirash_v1_0.unsequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_rash_asciirash_v1_0.unsequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Packet
nasdaq_nsmequities_rash_asciirash_v1_0.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_nsmequities_rash_asciirash_v1_0.login_request_packet.size =
  nasdaq_nsmequities_rash_asciirash_v1_0.username.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.password.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.requested_session.size + 
  nasdaq_nsmequities_rash_asciirash_v1_0.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_nsmequities_rash_asciirash_v1_0.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_nsmequities_rash_asciirash_v1_0.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_nsmequities_rash_asciirash_v1_0.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_nsmequities_rash_asciirash_v1_0.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_nsmequities_rash_asciirash_v1_0.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_nsmequities_rash_asciirash_v1_0.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_nsmequities_rash_asciirash_v1_0.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_nsmequities_rash_asciirash_v1_0.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_rash_asciirash_v1_0.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_rash_asciirash_v1_0.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
nasdaq_nsmequities_rash_asciirash_v1_0.client_payload = {}

-- Dissect: Client Payload
nasdaq_nsmequities_rash_asciirash_v1_0.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  -- Dissect Debug Packet
  if client_packet_type == "+" then
    return nasdaq_nsmequities_rash_asciirash_v1_0.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if client_packet_type == "L" then
    return nasdaq_nsmequities_rash_asciirash_v1_0.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if client_packet_type == "U" then
    return nasdaq_nsmequities_rash_asciirash_v1_0.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
nasdaq_nsmequities_rash_asciirash_v1_0.client_packet_header = {}

-- Size: Client Packet Header
nasdaq_nsmequities_rash_asciirash_v1_0.client_packet_header.size =
  nasdaq_nsmequities_rash_asciirash_v1_0.client_packet_type.size

-- Display: Client Packet Header
nasdaq_nsmequities_rash_asciirash_v1_0.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
nasdaq_nsmequities_rash_asciirash_v1_0.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = nasdaq_nsmequities_rash_asciirash_v1_0.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
nasdaq_nsmequities_rash_asciirash_v1_0.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0.fields.client_packet_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_rash_asciirash_v1_0.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_rash_asciirash_v1_0.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_rash_asciirash_v1_0.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Packet
nasdaq_nsmequities_rash_asciirash_v1_0.client_packet = {}

-- Verify required size of Tcp packet
nasdaq_nsmequities_rash_asciirash_v1_0.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nsmequities_rash_asciirash_v1_0.client_packet_header.size
end

-- Dissect Client Packet
nasdaq_nsmequities_rash_asciirash_v1_0.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Client Packet Header: Struct of 1 fields
    index, client_packet_header = nasdaq_nsmequities_rash_asciirash_v1_0.client_packet_header.dissect(buffer, index, packet, parent)

    -- Dependency element: Client Packet Type
    local client_packet_type = buffer(index - 1, 1):string()

    -- Client Payload: Runtime Type with 3 branches
    index = nasdaq_nsmequities_rash_asciirash_v1_0.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

    -- Soup Lf: 1 Byte Fixed Width Integer Static
    index, soup_lf = nasdaq_nsmequities_rash_asciirash_v1_0.soup_lf.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_nsmequities_rash_asciirash_v1_0.init()
end

-- Connection roles for Nasdaq NsmEquities Rash AsciiRash 1.0: Client is the initiator, Server is the acceptor
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
nasdaq_nsmequities_rash_asciirash_v1_0.role = function(packet)
  if omi_nasdaq_nsmequities_rash_asciirash_v1_0.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nasdaq_nsmequities_rash_asciirash_v1_0.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nasdaq_nsmequities_rash_asciirash_v1_0.prefs.acceptor_port

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

  if omi_nasdaq_nsmequities_rash_asciirash_v1_0.prefs.swap_sides then
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
nasdaq_nsmequities_rash_asciirash_v1_0.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nasdaq NsmEquities Rash AsciiRash 1.0
function omi_nasdaq_nsmequities_rash_asciirash_v1_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nsmequities_rash_asciirash_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nsmequities_rash_asciirash_v1_0, buffer(), omi_nasdaq_nsmequities_rash_asciirash_v1_0.description, "("..buffer:len().." Bytes)")

  local role = nasdaq_nsmequities_rash_asciirash_v1_0.role(packet)

  if role == "initiator" then
    return nasdaq_nsmequities_rash_asciirash_v1_0.client_packet.dissect(buffer, packet, protocol)
  end

  return nasdaq_nsmequities_rash_asciirash_v1_0.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nasdaq_nsmequities_rash_asciirash_v1_0.client_packet.fingerprint = function(buffer)
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

  -- Unsequenced Data Packet: carries the application messages, which tell this protocol from others sharing the session framing
  if client_packet_type == "U" then
    if buffer:len() < 2 then
      return false
    end

    local unsequenced_message_type = buffer(1, 1):string()

    -- Enter Order Message
    if unsequenced_message_type == "O" then
      return true
    end

    -- Enter Order Message With Cross Functionality
    if unsequenced_message_type == "Q" then
      return true
    end

    -- Cancel Order Message
    if unsequenced_message_type == "X" then
      return true
    end

    return false
  end

  return false
end

-- Fingerprint of Server Packet: would its message dispatch accept this frame?
nasdaq_nsmequities_rash_asciirash_v1_0.server_packet.fingerprint = function(buffer)
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
    if buffer:len() < 10 then
      return false
    end

    local sequenced_message_type = buffer(9, 1):string()

    -- System Event Message
    if sequenced_message_type == "S" then
      return true
    end

    -- Accepted Order Message
    if sequenced_message_type == "A" then
      return true
    end

    -- Accepted Order Message With Cross Functionality
    if sequenced_message_type == "R" then
      return true
    end

    -- Canceled Order Message
    if sequenced_message_type == "C" then
      return true
    end

    -- Rejected Order Message
    if sequenced_message_type == "J" then
      return true
    end

    -- Executed Order Message
    if sequenced_message_type == "E" then
      return true
    end

    -- Broken Trade Message
    if sequenced_message_type == "B" then
      return true
    end

    -- Executed With Reference Price Message
    if sequenced_message_type == "G" then
      return true
    end

    -- Trade Correction Message
    if sequenced_message_type == "F" then
      return true
    end

    return false
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq NsmEquities Rash AsciiRash 1.0 (Tcp)
local function omi_nasdaq_nsmequities_rash_asciirash_v1_0_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nsmequities_rash_asciirash_v1_0.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_nsmequities_rash_asciirash_v1_0.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nsmequities_rash_asciirash_v1_0
  omi_nasdaq_nsmequities_rash_asciirash_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NsmEquities Rash AsciiRash 1.0 (Tcp)
local function omi_nasdaq_nsmequities_rash_asciirash_v1_0_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nsmequities_rash_asciirash_v1_0.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_nsmequities_rash_asciirash_v1_0.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nsmequities_rash_asciirash_v1_0
  omi_nasdaq_nsmequities_rash_asciirash_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NsmEquities Rash AsciiRash 1.0 (Tcp): apply the heuristic of the sender's connection role
local function omi_nasdaq_nsmequities_rash_asciirash_v1_0_tcp_heuristic(buffer, packet, parent)
  local role = nasdaq_nsmequities_rash_asciirash_v1_0.role(packet)
  local initiator = omi_nasdaq_nsmequities_rash_asciirash_v1_0_tcp_initiator_heuristic
  local acceptor = omi_nasdaq_nsmequities_rash_asciirash_v1_0_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nasdaq_nsmequities_rash_asciirash_v1_0.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nasdaq_nsmequities_rash_asciirash_v1_0.swap(packet)

  return false
end

-- Register Heuristics for Nasdaq NsmEquities Rash AsciiRash 1.0
omi_nasdaq_nsmequities_rash_asciirash_v1_0:register_heuristic("tcp", omi_nasdaq_nsmequities_rash_asciirash_v1_0_tcp_heuristic)

-- Register Nasdaq NsmEquities Rash AsciiRash 1.0 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nasdaq_nsmequities_rash_asciirash_v1_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 1.0
--   Date: Wednesday, March 11, 2020
--   Specification: rash.pdf
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
