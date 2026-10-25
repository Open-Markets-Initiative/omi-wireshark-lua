-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe ByxEquities Top AsciiPitch 1.3.10 Protocol
local omi_cboe_byxequities_top_asciipitch_v1_3_10 = Proto("Omi.Cboe.ByxEquities.Top.AsciiPitch.v1.3.10", "Cboe ByxEquities Top AsciiPitch 1.3.10")

-- Protocol table
local cboe_byxequities_top_asciipitch_v1_3_10 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe ByxEquities Top AsciiPitch 1.3.10 Fields
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.ask_price_extended = ProtoField.new("Ask Price Extended", "cboe.byxequities.top.asciipitch.v1.3.10.askpriceextended", ftypes.DOUBLE, nil, nil, nil, "Ask price; 0 if no offers")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.ask_price_long = ProtoField.new("Ask Price Long", "cboe.byxequities.top.asciipitch.v1.3.10.askpricelong", ftypes.DOUBLE, nil, nil, nil, "Ask price; 0 if no offers")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.ask_price_short = ProtoField.new("Ask Price Short", "cboe.byxequities.top.asciipitch.v1.3.10.askpriceshort", ftypes.DOUBLE, nil, nil, nil, "Ask price; 0 if no offers")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.ask_quantity_long = ProtoField.new("Ask Quantity Long", "cboe.byxequities.top.asciipitch.v1.3.10.askquantitylong", ftypes.UINT24, nil, nil, nil, "Ask quantity; 0 if no offers")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.ask_quantity_short = ProtoField.new("Ask Quantity Short", "cboe.byxequities.top.asciipitch.v1.3.10.askquantityshort", ftypes.UINT24, nil, nil, nil, "Ask size; 0 if no offers")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.bid_price_extended = ProtoField.new("Bid Price Extended", "cboe.byxequities.top.asciipitch.v1.3.10.bidpriceextended", ftypes.DOUBLE, nil, nil, nil, "Bid price; 0 if no bids")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.bid_price_long = ProtoField.new("Bid Price Long", "cboe.byxequities.top.asciipitch.v1.3.10.bidpricelong", ftypes.DOUBLE, nil, nil, nil, "Bid price; 0 if no bids")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.bid_price_short = ProtoField.new("Bid Price Short", "cboe.byxequities.top.asciipitch.v1.3.10.bidpriceshort", ftypes.DOUBLE, nil, nil, nil, "Bid price; 0 if no bids")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.bid_quantity_long = ProtoField.new("Bid Quantity Long", "cboe.byxequities.top.asciipitch.v1.3.10.bidquantitylong", ftypes.UINT24, nil, nil, nil, "Bid quantity; 0 if no bids")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.bid_quantity_short = ProtoField.new("Bid Quantity Short", "cboe.byxequities.top.asciipitch.v1.3.10.bidquantityshort", ftypes.UINT24, nil, nil, nil, "Bid size; 0 if no bids")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.cumulative_volume_long = ProtoField.new("Cumulative Volume Long", "cboe.byxequities.top.asciipitch.v1.3.10.cumulativevolumelong", ftypes.UINT32, nil, nil, nil, "Cumulative volume executed today; 0 if no trades")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.cumulative_volume_short = ProtoField.new("Cumulative Volume Short", "cboe.byxequities.top.asciipitch.v1.3.10.cumulativevolumeshort", ftypes.UINT24, nil, nil, nil, "Cumulative number of shares traded today")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.halt_status = ProtoField.new("Halt Status", "cboe.byxequities.top.asciipitch.v1.3.10.haltstatus", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.last_price_extended = ProtoField.new("Last Price Extended", "cboe.byxequities.top.asciipitch.v1.3.10.lastpriceextended", ftypes.DOUBLE, nil, nil, nil, "Last trade price")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.last_price_long = ProtoField.new("Last Price Long", "cboe.byxequities.top.asciipitch.v1.3.10.lastpricelong", ftypes.DOUBLE, nil, nil, nil, "Last trade price")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.last_price_short = ProtoField.new("Last Price Short", "cboe.byxequities.top.asciipitch.v1.3.10.lastpriceshort", ftypes.DOUBLE, nil, nil, nil, "Last trade price")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.last_quantity_long = ProtoField.new("Last Quantity Long", "cboe.byxequities.top.asciipitch.v1.3.10.lastquantitylong", ftypes.UINT24, nil, nil, nil, "Last trade quantity")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.last_quantity_short = ProtoField.new("Last Quantity Short", "cboe.byxequities.top.asciipitch.v1.3.10.lastquantityshort", ftypes.UINT24, nil, nil, nil, "Last trade quantity")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.last_trade_day_indicator = ProtoField.new("Last Trade Day Indicator", "cboe.byxequities.top.asciipitch.v1.3.10.lasttradedayindicator", ftypes.STRING, nil, nil, nil, "Effective 11/02/26. Always 0 for BYX/EDGA.")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.last_trade_price_long = ProtoField.new("Last Trade Price Long", "cboe.byxequities.top.asciipitch.v1.3.10.lasttradepricelong", ftypes.DOUBLE, nil, nil, nil, "Last trade price; 0 if no trades")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.last_trade_price_short = ProtoField.new("Last Trade Price Short", "cboe.byxequities.top.asciipitch.v1.3.10.lasttradepriceshort", ftypes.DOUBLE, nil, nil, nil, "Last trade price; 0 if no trades")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.last_trade_size = ProtoField.new("Last Trade Size", "cboe.byxequities.top.asciipitch.v1.3.10.lasttradesize", ftypes.UINT24, nil, nil, nil, "Last trade size; 0 if no trades")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.last_trade_time = ProtoField.new("Last Trade Time", "cboe.byxequities.top.asciipitch.v1.3.10.lasttradetime", ftypes.UINT32, nil, nil, nil, "Time of last trade; milliseconds since midnight, Eastern time")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.message_type = ProtoField.new("Message Type", "cboe.byxequities.top.asciipitch.v1.3.10.messagetype", ftypes.STRING, nil, nil, nil, "Single ASCII byte identifying this packet type")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.milliseconds = ProtoField.new("Milliseconds", "cboe.byxequities.top.asciipitch.v1.3.10.milliseconds", ftypes.UINT16, nil, nil, nil, "Number of milliseconds since last Second message")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.password = ProtoField.new("Password", "cboe.byxequities.top.asciipitch.v1.3.10.password", ftypes.STRING, nil, nil, nil, "Password, assigned by Cboe")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.reg_sho_action = ProtoField.new("Reg SHO Action", "cboe.byxequities.top.asciipitch.v1.3.10.regshoaction", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.reject_reason = ProtoField.new("Reject Reason", "cboe.byxequities.top.asciipitch.v1.3.10.rejectreason", ftypes.STRING, nil, nil, nil, "\"A\" = Authentication or authorization problem (currently the only reason sent)")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.byxequities.top.asciipitch.v1.3.10.reserved1", ftypes.STRING, nil, nil, nil, "Reserved")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.byxequities.top.asciipitch.v1.3.10.reserved2", ftypes.STRING, nil, nil, nil, "Reserved")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.seconds = ProtoField.new("Seconds", "cboe.byxequities.top.asciipitch.v1.3.10.seconds", ftypes.UINT24, nil, nil, nil, "Number of seconds since midnight; e.g,. 32400 = 9:00am")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.spin_flag = ProtoField.new("Spin Flag", "cboe.byxequities.top.asciipitch.v1.3.10.spinflag", ftypes.STRING, nil, nil, nil, "If \"Y\", spin current top of book")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.symbol_extended = ProtoField.new("Symbol Extended", "cboe.byxequities.top.asciipitch.v1.3.10.symbolextended", ftypes.STRING, nil, nil, nil, "Symbol")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.symbol_long = ProtoField.new("Symbol Long", "cboe.byxequities.top.asciipitch.v1.3.10.symbollong", ftypes.STRING, nil, nil, nil, "Symbol")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.symbol_short = ProtoField.new("Symbol Short", "cboe.byxequities.top.asciipitch.v1.3.10.symbolshort", ftypes.STRING, nil, nil, nil, "Symbol")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.timestamp = ProtoField.new("Timestamp", "cboe.byxequities.top.asciipitch.v1.3.10.timestamp", ftypes.UINT32, nil, nil, nil, "Time of top of book update; milliseconds since midnight, Eastern time")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.top_lf = ProtoField.new("Top Lf", "cboe.byxequities.top.asciipitch.v1.3.10.toplf", ftypes.INT8, nil, nil, nil, "Terminating line feed character (0x0A)")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.username = ProtoField.new("Username", "cboe.byxequities.top.asciipitch.v1.3.10.username", ftypes.STRING, nil, nil, nil, "Username, assigned by Cboe")

-- Cboe ByxEquities Top AsciiPitch 1.3.10 Framing
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.frame = ProtoField.new("Frame", "cboe.byxequities.top.asciipitch.v1.3.10.frame", ftypes.STRING, nil, nil, nil, "Cboe TOP Tcp Lf terminated record — packet type byte, type-determined payload, terminating LF")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.packet = ProtoField.new("Packet", "cboe.byxequities.top.asciipitch.v1.3.10.packet", ftypes.STRING, nil, nil, nil, "Cboe TOP Tcp packet")

-- Cboe ByxEquities Top 1.3.10 Application Messages
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.client_heartbeat_message = ProtoField.new("Client Heartbeat Message", "cboe.byxequities.top.asciipitch.v1.3.10.clientheartbeatmessage", ftypes.BYTES)
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.expanded_ask_update_message = ProtoField.new("Expanded Ask Update Message", "cboe.byxequities.top.asciipitch.v1.3.10.expandedaskupdatemessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.expanded_bid_update_message = ProtoField.new("Expanded Bid Update Message", "cboe.byxequities.top.asciipitch.v1.3.10.expandedbidupdatemessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.expanded_spin_message = ProtoField.new("Expanded Spin Message", "cboe.byxequities.top.asciipitch.v1.3.10.expandedspinmessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.expanded_trade_message = ProtoField.new("Expanded Trade Message", "cboe.byxequities.top.asciipitch.v1.3.10.expandedtrademessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.expanded_two_sided_update_message = ProtoField.new("Expanded Two Sided Update Message", "cboe.byxequities.top.asciipitch.v1.3.10.expandedtwosidedupdatemessage", ftypes.STRING, nil, nil, nil, "Expanded Two-Sided Update Message")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.extended_ask_update_message = ProtoField.new("Extended Ask Update Message", "cboe.byxequities.top.asciipitch.v1.3.10.extendedaskupdatemessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.extended_bid_update_message = ProtoField.new("Extended Bid Update Message", "cboe.byxequities.top.asciipitch.v1.3.10.extendedbidupdatemessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.extended_spin_message = ProtoField.new("Extended Spin Message", "cboe.byxequities.top.asciipitch.v1.3.10.extendedspinmessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.extended_trade_message = ProtoField.new("Extended Trade Message", "cboe.byxequities.top.asciipitch.v1.3.10.extendedtrademessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.extended_two_sided_update_message = ProtoField.new("Extended Two Sided Update Message", "cboe.byxequities.top.asciipitch.v1.3.10.extendedtwosidedupdatemessage", ftypes.STRING, nil, nil, nil, "Extended Two-Sided Update Message")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.logon_accepted_message = ProtoField.new("Logon Accepted Message", "cboe.byxequities.top.asciipitch.v1.3.10.logonacceptedmessage", ftypes.BYTES)
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.logon_message = ProtoField.new("Logon Message", "cboe.byxequities.top.asciipitch.v1.3.10.logonmessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.logon_rejected_message = ProtoField.new("Logon Rejected Message", "cboe.byxequities.top.asciipitch.v1.3.10.logonrejectedmessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.long_ask_update_message = ProtoField.new("Long Ask Update Message", "cboe.byxequities.top.asciipitch.v1.3.10.longaskupdatemessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.long_bid_update_message = ProtoField.new("Long Bid Update Message", "cboe.byxequities.top.asciipitch.v1.3.10.longbidupdatemessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.long_trade_message = ProtoField.new("Long Trade Message", "cboe.byxequities.top.asciipitch.v1.3.10.longtrademessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.long_two_sided_update_message = ProtoField.new("Long Two Sided Update Message", "cboe.byxequities.top.asciipitch.v1.3.10.longtwosidedupdatemessage", ftypes.STRING, nil, nil, nil, "Long Two-Sided Update Message")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.milliseconds_message = ProtoField.new("Milliseconds Message", "cboe.byxequities.top.asciipitch.v1.3.10.millisecondsmessage", ftypes.STRING, nil, nil, nil, "Sent for every millisecond for which at least one message is being generated.")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.seconds_message = ProtoField.new("Seconds Message", "cboe.byxequities.top.asciipitch.v1.3.10.secondsmessage", ftypes.STRING, nil, nil, nil, "Sent for every second for which at least one message is being generated.")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.server_heartbeat_message = ProtoField.new("Server Heartbeat Message", "cboe.byxequities.top.asciipitch.v1.3.10.serverheartbeatmessage", ftypes.BYTES)
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.short_ask_update_message = ProtoField.new("Short Ask Update Message", "cboe.byxequities.top.asciipitch.v1.3.10.shortaskupdatemessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.short_bid_update_message = ProtoField.new("Short Bid Update Message", "cboe.byxequities.top.asciipitch.v1.3.10.shortbidupdatemessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.short_trade_message = ProtoField.new("Short Trade Message", "cboe.byxequities.top.asciipitch.v1.3.10.shorttrademessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.short_two_sided_update_message = ProtoField.new("Short Two Sided Update Message", "cboe.byxequities.top.asciipitch.v1.3.10.shorttwosidedupdatemessage", ftypes.STRING, nil, nil, nil, "Short Two-Sided Update Message")
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.spin_done_message = ProtoField.new("Spin Done Message", "cboe.byxequities.top.asciipitch.v1.3.10.spindonemessage", ftypes.BYTES)
omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.byxequities.top.asciipitch.v1.3.10.tradingstatusmessage", ftypes.STRING, nil, nil, nil, "The Trading Status Message is used to indicate the current trading status of a security.")

-- Cboe ByxEquities Top AsciiPitch 1.3.10 Expert Info
cboe_byxequities_top_asciipitch_v1_3_10.experts = {}
cboe_byxequities_top_asciipitch_v1_3_10.experts.not_a_number = ProtoExpert.new("cboe.byxequities.top.asciipitch.v1.3.10.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_cboe_byxequities_top_asciipitch_v1_3_10.experts = { cboe_byxequities_top_asciipitch_v1_3_10.experts.not_a_number }

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe ByxEquities Top AsciiPitch 1.3.10 Element Dissection Options
show.application_messages = true
show.structs = true

-- Register Cboe ByxEquities Top AsciiPitch 1.3.10 Show Options
omi_cboe_byxequities_top_asciipitch_v1_3_10.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_byxequities_top_asciipitch_v1_3_10.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")

-- Handle changed preferences
function omi_cboe_byxequities_top_asciipitch_v1_3_10.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_byxequities_top_asciipitch_v1_3_10.prefs.show_application_messages then
    show.application_messages = omi_cboe_byxequities_top_asciipitch_v1_3_10.prefs.show_application_messages
  end
  if show.structs ~= omi_cboe_byxequities_top_asciipitch_v1_3_10.prefs.show_structs then
    show.structs = omi_cboe_byxequities_top_asciipitch_v1_3_10.prefs.show_structs
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
-- Cboe ByxEquities Top AsciiPitch 1.3.10 Fields
-----------------------------------------------------------------------

-- Ask Price Extended
cboe_byxequities_top_asciipitch_v1_3_10.ask_price_extended = {}

-- Size: Ask Price Extended
cboe_byxequities_top_asciipitch_v1_3_10.ask_price_extended.size = 14

-- Display: Ask Price Extended
cboe_byxequities_top_asciipitch_v1_3_10.ask_price_extended.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_byxequities_top_asciipitch_v1_3_10.ask_price_extended.size):string(), 2)

  if text == nil then
    return "Ask Price Extended: "..tostring(value)
  end

  return "Ask Price Extended: "..text
end

-- Dissect: Ask Price Extended
cboe_byxequities_top_asciipitch_v1_3_10.ask_price_extended.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.ask_price_extended.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.ask_price_extended, range, value, "Ask Price Extended: Not Applicable")
    item:add_proto_expert_info(cboe_byxequities_top_asciipitch_v1_3_10.experts.not_a_number, "Ask Price Extended is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = cboe_byxequities_top_asciipitch_v1_3_10.ask_price_extended.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.ask_price_extended, range, value, display)

  return offset + length, value
end

-- Ask Price Long
cboe_byxequities_top_asciipitch_v1_3_10.ask_price_long = {}

-- Size: Ask Price Long
cboe_byxequities_top_asciipitch_v1_3_10.ask_price_long.size = 10

-- Display: Ask Price Long
cboe_byxequities_top_asciipitch_v1_3_10.ask_price_long.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_byxequities_top_asciipitch_v1_3_10.ask_price_long.size):string(), 4)

  if text == nil then
    return "Ask Price Long: "..tostring(value)
  end

  return "Ask Price Long: "..text
end

-- Dissect: Ask Price Long
cboe_byxequities_top_asciipitch_v1_3_10.ask_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.ask_price_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.ask_price_long, range, value, "Ask Price Long: Not Applicable")
    item:add_proto_expert_info(cboe_byxequities_top_asciipitch_v1_3_10.experts.not_a_number, "Ask Price Long is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = cboe_byxequities_top_asciipitch_v1_3_10.ask_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.ask_price_long, range, value, display)

  return offset + length, value
end

-- Ask Price Short
cboe_byxequities_top_asciipitch_v1_3_10.ask_price_short = {}

-- Size: Ask Price Short
cboe_byxequities_top_asciipitch_v1_3_10.ask_price_short.size = 5

-- Display: Ask Price Short
cboe_byxequities_top_asciipitch_v1_3_10.ask_price_short.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_byxequities_top_asciipitch_v1_3_10.ask_price_short.size):string(), 2)

  if text == nil then
    return "Ask Price Short: "..tostring(value)
  end

  return "Ask Price Short: "..text
end

-- Dissect: Ask Price Short
cboe_byxequities_top_asciipitch_v1_3_10.ask_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.ask_price_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.ask_price_short, range, value, "Ask Price Short: Not Applicable")
    item:add_proto_expert_info(cboe_byxequities_top_asciipitch_v1_3_10.experts.not_a_number, "Ask Price Short is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = cboe_byxequities_top_asciipitch_v1_3_10.ask_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.ask_price_short, range, value, display)

  return offset + length, value
end

-- Ask Quantity Long
cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_long = {}

-- Size: Ask Quantity Long
cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_long.size = 6

-- Display: Ask Quantity Long
cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_long.display = function(value)
  return "Ask Quantity Long: "..value
end

-- Dissect: Ask Quantity Long
cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.ask_quantity_long, range, value, "Ask Quantity Long: Not Applicable")
    item:add_proto_expert_info(cboe_byxequities_top_asciipitch_v1_3_10.experts.not_a_number, "Ask Quantity Long is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.ask_quantity_long, range, value, display)

  return offset + length, value
end

-- Ask Quantity Short
cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_short = {}

-- Size: Ask Quantity Short
cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_short.size = 5

-- Display: Ask Quantity Short
cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_short.display = function(value)
  return "Ask Quantity Short: "..value
end

-- Dissect: Ask Quantity Short
cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.ask_quantity_short, range, value, "Ask Quantity Short: Not Applicable")
    item:add_proto_expert_info(cboe_byxequities_top_asciipitch_v1_3_10.experts.not_a_number, "Ask Quantity Short is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.ask_quantity_short, range, value, display)

  return offset + length, value
end

-- Bid Price Extended
cboe_byxequities_top_asciipitch_v1_3_10.bid_price_extended = {}

-- Size: Bid Price Extended
cboe_byxequities_top_asciipitch_v1_3_10.bid_price_extended.size = 14

-- Display: Bid Price Extended
cboe_byxequities_top_asciipitch_v1_3_10.bid_price_extended.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_byxequities_top_asciipitch_v1_3_10.bid_price_extended.size):string(), 2)

  if text == nil then
    return "Bid Price Extended: "..tostring(value)
  end

  return "Bid Price Extended: "..text
end

-- Dissect: Bid Price Extended
cboe_byxequities_top_asciipitch_v1_3_10.bid_price_extended.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.bid_price_extended.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.bid_price_extended, range, value, "Bid Price Extended: Not Applicable")
    item:add_proto_expert_info(cboe_byxequities_top_asciipitch_v1_3_10.experts.not_a_number, "Bid Price Extended is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = cboe_byxequities_top_asciipitch_v1_3_10.bid_price_extended.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.bid_price_extended, range, value, display)

  return offset + length, value
end

-- Bid Price Long
cboe_byxequities_top_asciipitch_v1_3_10.bid_price_long = {}

-- Size: Bid Price Long
cboe_byxequities_top_asciipitch_v1_3_10.bid_price_long.size = 10

-- Display: Bid Price Long
cboe_byxequities_top_asciipitch_v1_3_10.bid_price_long.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_byxequities_top_asciipitch_v1_3_10.bid_price_long.size):string(), 4)

  if text == nil then
    return "Bid Price Long: "..tostring(value)
  end

  return "Bid Price Long: "..text
end

-- Dissect: Bid Price Long
cboe_byxequities_top_asciipitch_v1_3_10.bid_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.bid_price_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.bid_price_long, range, value, "Bid Price Long: Not Applicable")
    item:add_proto_expert_info(cboe_byxequities_top_asciipitch_v1_3_10.experts.not_a_number, "Bid Price Long is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = cboe_byxequities_top_asciipitch_v1_3_10.bid_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.bid_price_long, range, value, display)

  return offset + length, value
end

-- Bid Price Short
cboe_byxequities_top_asciipitch_v1_3_10.bid_price_short = {}

-- Size: Bid Price Short
cboe_byxequities_top_asciipitch_v1_3_10.bid_price_short.size = 5

-- Display: Bid Price Short
cboe_byxequities_top_asciipitch_v1_3_10.bid_price_short.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_byxequities_top_asciipitch_v1_3_10.bid_price_short.size):string(), 2)

  if text == nil then
    return "Bid Price Short: "..tostring(value)
  end

  return "Bid Price Short: "..text
end

-- Dissect: Bid Price Short
cboe_byxequities_top_asciipitch_v1_3_10.bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.bid_price_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.bid_price_short, range, value, "Bid Price Short: Not Applicable")
    item:add_proto_expert_info(cboe_byxequities_top_asciipitch_v1_3_10.experts.not_a_number, "Bid Price Short is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = cboe_byxequities_top_asciipitch_v1_3_10.bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Bid Quantity Long
cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_long = {}

-- Size: Bid Quantity Long
cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_long.size = 6

-- Display: Bid Quantity Long
cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_long.display = function(value)
  return "Bid Quantity Long: "..value
end

-- Dissect: Bid Quantity Long
cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.bid_quantity_long, range, value, "Bid Quantity Long: Not Applicable")
    item:add_proto_expert_info(cboe_byxequities_top_asciipitch_v1_3_10.experts.not_a_number, "Bid Quantity Long is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.bid_quantity_long, range, value, display)

  return offset + length, value
end

-- Bid Quantity Short
cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_short = {}

-- Size: Bid Quantity Short
cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_short.size = 5

-- Display: Bid Quantity Short
cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_short.display = function(value)
  return "Bid Quantity Short: "..value
end

-- Dissect: Bid Quantity Short
cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.bid_quantity_short, range, value, "Bid Quantity Short: Not Applicable")
    item:add_proto_expert_info(cboe_byxequities_top_asciipitch_v1_3_10.experts.not_a_number, "Bid Quantity Short is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.bid_quantity_short, range, value, display)

  return offset + length, value
end

-- Cumulative Volume Long
cboe_byxequities_top_asciipitch_v1_3_10.cumulative_volume_long = {}

-- Size: Cumulative Volume Long
cboe_byxequities_top_asciipitch_v1_3_10.cumulative_volume_long.size = 9

-- Display: Cumulative Volume Long
cboe_byxequities_top_asciipitch_v1_3_10.cumulative_volume_long.display = function(value)
  return "Cumulative Volume Long: "..value
end

-- Dissect: Cumulative Volume Long
cboe_byxequities_top_asciipitch_v1_3_10.cumulative_volume_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.cumulative_volume_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.cumulative_volume_long, range, value, "Cumulative Volume Long: Not Applicable")
    item:add_proto_expert_info(cboe_byxequities_top_asciipitch_v1_3_10.experts.not_a_number, "Cumulative Volume Long is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_10.cumulative_volume_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.cumulative_volume_long, range, value, display)

  return offset + length, value
end

-- Cumulative Volume Short
cboe_byxequities_top_asciipitch_v1_3_10.cumulative_volume_short = {}

-- Size: Cumulative Volume Short
cboe_byxequities_top_asciipitch_v1_3_10.cumulative_volume_short.size = 7

-- Display: Cumulative Volume Short
cboe_byxequities_top_asciipitch_v1_3_10.cumulative_volume_short.display = function(value)
  return "Cumulative Volume Short: "..value
end

-- Dissect: Cumulative Volume Short
cboe_byxequities_top_asciipitch_v1_3_10.cumulative_volume_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.cumulative_volume_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.cumulative_volume_short, range, value, "Cumulative Volume Short: Not Applicable")
    item:add_proto_expert_info(cboe_byxequities_top_asciipitch_v1_3_10.experts.not_a_number, "Cumulative Volume Short is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_10.cumulative_volume_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.cumulative_volume_short, range, value, display)

  return offset + length, value
end

-- Halt Status
cboe_byxequities_top_asciipitch_v1_3_10.halt_status = {}

-- Size: Halt Status
cboe_byxequities_top_asciipitch_v1_3_10.halt_status.size = 1

-- Display: Halt Status
cboe_byxequities_top_asciipitch_v1_3_10.halt_status.display = function(value)
  return "Halt Status: "..value
end

-- Dissect: Halt Status
cboe_byxequities_top_asciipitch_v1_3_10.halt_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.halt_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byxequities_top_asciipitch_v1_3_10.halt_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.halt_status, range, value, display)

  return offset + length, value
end

-- Last Price Extended
cboe_byxequities_top_asciipitch_v1_3_10.last_price_extended = {}

-- Size: Last Price Extended
cboe_byxequities_top_asciipitch_v1_3_10.last_price_extended.size = 14

-- Display: Last Price Extended
cboe_byxequities_top_asciipitch_v1_3_10.last_price_extended.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_byxequities_top_asciipitch_v1_3_10.last_price_extended.size):string(), 2)

  if text == nil then
    return "Last Price Extended: "..tostring(value)
  end

  return "Last Price Extended: "..text
end

-- Dissect: Last Price Extended
cboe_byxequities_top_asciipitch_v1_3_10.last_price_extended.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.last_price_extended.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.last_price_extended, range, value, "Last Price Extended: Not Applicable")
    item:add_proto_expert_info(cboe_byxequities_top_asciipitch_v1_3_10.experts.not_a_number, "Last Price Extended is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = cboe_byxequities_top_asciipitch_v1_3_10.last_price_extended.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.last_price_extended, range, value, display)

  return offset + length, value
end

-- Last Price Long
cboe_byxequities_top_asciipitch_v1_3_10.last_price_long = {}

-- Size: Last Price Long
cboe_byxequities_top_asciipitch_v1_3_10.last_price_long.size = 10

-- Display: Last Price Long
cboe_byxequities_top_asciipitch_v1_3_10.last_price_long.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_byxequities_top_asciipitch_v1_3_10.last_price_long.size):string(), 4)

  if text == nil then
    return "Last Price Long: "..tostring(value)
  end

  return "Last Price Long: "..text
end

-- Dissect: Last Price Long
cboe_byxequities_top_asciipitch_v1_3_10.last_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.last_price_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.last_price_long, range, value, "Last Price Long: Not Applicable")
    item:add_proto_expert_info(cboe_byxequities_top_asciipitch_v1_3_10.experts.not_a_number, "Last Price Long is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = cboe_byxequities_top_asciipitch_v1_3_10.last_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.last_price_long, range, value, display)

  return offset + length, value
end

-- Last Price Short
cboe_byxequities_top_asciipitch_v1_3_10.last_price_short = {}

-- Size: Last Price Short
cboe_byxequities_top_asciipitch_v1_3_10.last_price_short.size = 5

-- Display: Last Price Short
cboe_byxequities_top_asciipitch_v1_3_10.last_price_short.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_byxequities_top_asciipitch_v1_3_10.last_price_short.size):string(), 2)

  if text == nil then
    return "Last Price Short: "..tostring(value)
  end

  return "Last Price Short: "..text
end

-- Dissect: Last Price Short
cboe_byxequities_top_asciipitch_v1_3_10.last_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.last_price_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.last_price_short, range, value, "Last Price Short: Not Applicable")
    item:add_proto_expert_info(cboe_byxequities_top_asciipitch_v1_3_10.experts.not_a_number, "Last Price Short is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = cboe_byxequities_top_asciipitch_v1_3_10.last_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.last_price_short, range, value, display)

  return offset + length, value
end

-- Last Quantity Long
cboe_byxequities_top_asciipitch_v1_3_10.last_quantity_long = {}

-- Size: Last Quantity Long
cboe_byxequities_top_asciipitch_v1_3_10.last_quantity_long.size = 6

-- Display: Last Quantity Long
cboe_byxequities_top_asciipitch_v1_3_10.last_quantity_long.display = function(value)
  return "Last Quantity Long: "..value
end

-- Dissect: Last Quantity Long
cboe_byxequities_top_asciipitch_v1_3_10.last_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.last_quantity_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.last_quantity_long, range, value, "Last Quantity Long: Not Applicable")
    item:add_proto_expert_info(cboe_byxequities_top_asciipitch_v1_3_10.experts.not_a_number, "Last Quantity Long is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_10.last_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.last_quantity_long, range, value, display)

  return offset + length, value
end

-- Last Quantity Short
cboe_byxequities_top_asciipitch_v1_3_10.last_quantity_short = {}

-- Size: Last Quantity Short
cboe_byxequities_top_asciipitch_v1_3_10.last_quantity_short.size = 5

-- Display: Last Quantity Short
cboe_byxequities_top_asciipitch_v1_3_10.last_quantity_short.display = function(value)
  return "Last Quantity Short: "..value
end

-- Dissect: Last Quantity Short
cboe_byxequities_top_asciipitch_v1_3_10.last_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.last_quantity_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.last_quantity_short, range, value, "Last Quantity Short: Not Applicable")
    item:add_proto_expert_info(cboe_byxequities_top_asciipitch_v1_3_10.experts.not_a_number, "Last Quantity Short is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_10.last_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.last_quantity_short, range, value, display)

  return offset + length, value
end

-- Last Trade Day Indicator
cboe_byxequities_top_asciipitch_v1_3_10.last_trade_day_indicator = {}

-- Size: Last Trade Day Indicator
cboe_byxequities_top_asciipitch_v1_3_10.last_trade_day_indicator.size = 1

-- Display: Last Trade Day Indicator
cboe_byxequities_top_asciipitch_v1_3_10.last_trade_day_indicator.labels = {
  ["0"] = "Last Trade Day Indicator: Last Trade Time Follows Time Reference Milliseconds Since Todays Midnight (0)",
  ["1"] = "Last Trade Day Indicator: Last Trade Time Is Milliseconds Since Yesterdays Midnight (1)",
}

cboe_byxequities_top_asciipitch_v1_3_10.last_trade_day_indicator.display = function(value)
  return cboe_byxequities_top_asciipitch_v1_3_10.last_trade_day_indicator.labels[value] or "Last Trade Day Indicator: Unknown("..value..")"
end

-- Dissect: Last Trade Day Indicator
cboe_byxequities_top_asciipitch_v1_3_10.last_trade_day_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.last_trade_day_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byxequities_top_asciipitch_v1_3_10.last_trade_day_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.last_trade_day_indicator, range, value, display)

  return offset + length, value
end

-- Last Trade Price Long
cboe_byxequities_top_asciipitch_v1_3_10.last_trade_price_long = {}

-- Size: Last Trade Price Long
cboe_byxequities_top_asciipitch_v1_3_10.last_trade_price_long.size = 14

-- Display: Last Trade Price Long
cboe_byxequities_top_asciipitch_v1_3_10.last_trade_price_long.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_byxequities_top_asciipitch_v1_3_10.last_trade_price_long.size):string(), 2)

  if text == nil then
    return "Last Trade Price Long: "..tostring(value)
  end

  return "Last Trade Price Long: "..text
end

-- Dissect: Last Trade Price Long
cboe_byxequities_top_asciipitch_v1_3_10.last_trade_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.last_trade_price_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.last_trade_price_long, range, value, "Last Trade Price Long: Not Applicable")
    item:add_proto_expert_info(cboe_byxequities_top_asciipitch_v1_3_10.experts.not_a_number, "Last Trade Price Long is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = cboe_byxequities_top_asciipitch_v1_3_10.last_trade_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.last_trade_price_long, range, value, display)

  return offset + length, value
end

-- Last Trade Price Short
cboe_byxequities_top_asciipitch_v1_3_10.last_trade_price_short = {}

-- Size: Last Trade Price Short
cboe_byxequities_top_asciipitch_v1_3_10.last_trade_price_short.size = 10

-- Display: Last Trade Price Short
cboe_byxequities_top_asciipitch_v1_3_10.last_trade_price_short.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_byxequities_top_asciipitch_v1_3_10.last_trade_price_short.size):string(), 4)

  if text == nil then
    return "Last Trade Price Short: "..tostring(value)
  end

  return "Last Trade Price Short: "..text
end

-- Dissect: Last Trade Price Short
cboe_byxequities_top_asciipitch_v1_3_10.last_trade_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.last_trade_price_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.last_trade_price_short, range, value, "Last Trade Price Short: Not Applicable")
    item:add_proto_expert_info(cboe_byxequities_top_asciipitch_v1_3_10.experts.not_a_number, "Last Trade Price Short is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = cboe_byxequities_top_asciipitch_v1_3_10.last_trade_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.last_trade_price_short, range, value, display)

  return offset + length, value
end

-- Last Trade Size
cboe_byxequities_top_asciipitch_v1_3_10.last_trade_size = {}

-- Size: Last Trade Size
cboe_byxequities_top_asciipitch_v1_3_10.last_trade_size.size = 6

-- Display: Last Trade Size
cboe_byxequities_top_asciipitch_v1_3_10.last_trade_size.display = function(value)
  return "Last Trade Size: "..value
end

-- Dissect: Last Trade Size
cboe_byxequities_top_asciipitch_v1_3_10.last_trade_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.last_trade_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.last_trade_size, range, value, "Last Trade Size: Not Applicable")
    item:add_proto_expert_info(cboe_byxequities_top_asciipitch_v1_3_10.experts.not_a_number, "Last Trade Size is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_10.last_trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.last_trade_size, range, value, display)

  return offset + length, value
end

-- Last Trade Time
cboe_byxequities_top_asciipitch_v1_3_10.last_trade_time = {}

-- Size: Last Trade Time
cboe_byxequities_top_asciipitch_v1_3_10.last_trade_time.size = 8

-- Display: Last Trade Time
cboe_byxequities_top_asciipitch_v1_3_10.last_trade_time.display = function(value)
  return "Last Trade Time: "..value
end

-- Dissect: Last Trade Time
cboe_byxequities_top_asciipitch_v1_3_10.last_trade_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.last_trade_time.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.last_trade_time, range, value, "Last Trade Time: Not Applicable")
    item:add_proto_expert_info(cboe_byxequities_top_asciipitch_v1_3_10.experts.not_a_number, "Last Trade Time is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_10.last_trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.last_trade_time, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_byxequities_top_asciipitch_v1_3_10.message_type = {}

-- Size: Message Type
cboe_byxequities_top_asciipitch_v1_3_10.message_type.size = 1

-- Display: Message Type
cboe_byxequities_top_asciipitch_v1_3_10.message_type.labels = {
  ["L"] = "Message Type: Logon Message (L)",
  ["J"] = "Message Type: Logon Rejected Message (J)",
  ["T"] = "Message Type: Seconds Message (T)",
  ["M"] = "Message Type: Milliseconds Message (M)",
  ["C"] = "Message Type: Logon Accepted Message (C)",
  ["s"] = "Message Type: Expanded Spin Message (s)",
  ["S"] = "Message Type: Extended Spin Message (S)",
  ["D"] = "Message Type: Spin Done Message (D)",
  ["H"] = "Message Type: Server Heartbeat Message (H)",
  ["R"] = "Message Type: Client Heartbeat Message (R)",
  ["E"] = "Message Type: Expanded Bid Update Message (E)",
  ["B"] = "Message Type: Long Bid Update Message (B)",
  ["b"] = "Message Type: Short Bid Update Message (b)",
  ["N"] = "Message Type: Extended Bid Update Message (N)",
  ["e"] = "Message Type: Expanded Ask Update Message (e)",
  ["A"] = "Message Type: Long Ask Update Message (A)",
  ["a"] = "Message Type: Short Ask Update Message (a)",
  ["n"] = "Message Type: Extended Ask Update Message (n)",
  ["F"] = "Message Type: Expanded Two Sided Update Message (F)",
  ["U"] = "Message Type: Long Two Sided Update Message (U)",
  ["u"] = "Message Type: Short Two Sided Update Message (u)",
  ["d"] = "Message Type: Extended Two Sided Update Message (d)",
  ["f"] = "Message Type: Expanded Trade Message (f)",
  ["V"] = "Message Type: Long Trade Message (V)",
  ["v"] = "Message Type: Short Trade Message (v)",
  ["r"] = "Message Type: Extended Trade Message (r)",
  ["t"] = "Message Type: Trading Status Message (t)",
}

cboe_byxequities_top_asciipitch_v1_3_10.message_type.display = function(value)
  return cboe_byxequities_top_asciipitch_v1_3_10.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_byxequities_top_asciipitch_v1_3_10.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byxequities_top_asciipitch_v1_3_10.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.message_type, range, value, display)

  return offset + length, value
end

-- Milliseconds
cboe_byxequities_top_asciipitch_v1_3_10.milliseconds = {}

-- Size: Milliseconds
cboe_byxequities_top_asciipitch_v1_3_10.milliseconds.size = 3

-- Display: Milliseconds
cboe_byxequities_top_asciipitch_v1_3_10.milliseconds.display = function(value)
  return "Milliseconds: "..value
end

-- Dissect: Milliseconds
cboe_byxequities_top_asciipitch_v1_3_10.milliseconds.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.milliseconds.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.milliseconds, range, value, "Milliseconds: Not Applicable")
    item:add_proto_expert_info(cboe_byxequities_top_asciipitch_v1_3_10.experts.not_a_number, "Milliseconds is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_10.milliseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.milliseconds, range, value, display)

  return offset + length, value
end

-- Password
cboe_byxequities_top_asciipitch_v1_3_10.password = {}

-- Size: Password
cboe_byxequities_top_asciipitch_v1_3_10.password.size = 10

-- Display: Password
cboe_byxequities_top_asciipitch_v1_3_10.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_byxequities_top_asciipitch_v1_3_10.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_byxequities_top_asciipitch_v1_3_10.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.password, range, value, display)

  return offset + length, value
end

-- Reg SHO Action
cboe_byxequities_top_asciipitch_v1_3_10.reg_sho_action = {}

-- Size: Reg SHO Action
cboe_byxequities_top_asciipitch_v1_3_10.reg_sho_action.size = 1

-- Display: Reg SHO Action
cboe_byxequities_top_asciipitch_v1_3_10.reg_sho_action.labels = {
  ["0"] = "Reg SHO Action: No Price Test In Effect (0)",
  ["1"] = "Reg SHO Action: Reg Sho Price Test Restriction In Effect (1)",
}

cboe_byxequities_top_asciipitch_v1_3_10.reg_sho_action.display = function(value)
  return cboe_byxequities_top_asciipitch_v1_3_10.reg_sho_action.labels[value] or "Reg SHO Action: Unknown("..value..")"
end

-- Dissect: Reg SHO Action
cboe_byxequities_top_asciipitch_v1_3_10.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byxequities_top_asciipitch_v1_3_10.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Reject Reason
cboe_byxequities_top_asciipitch_v1_3_10.reject_reason = {}

-- Size: Reject Reason
cboe_byxequities_top_asciipitch_v1_3_10.reject_reason.size = 1

-- Display: Reject Reason
cboe_byxequities_top_asciipitch_v1_3_10.reject_reason.display = function(value)
  return "Reject Reason: "..value
end

-- Dissect: Reject Reason
cboe_byxequities_top_asciipitch_v1_3_10.reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byxequities_top_asciipitch_v1_3_10.reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.reject_reason, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_byxequities_top_asciipitch_v1_3_10.reserved_1 = {}

-- Size: Reserved 1
cboe_byxequities_top_asciipitch_v1_3_10.reserved_1.size = 1

-- Display: Reserved 1
cboe_byxequities_top_asciipitch_v1_3_10.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_byxequities_top_asciipitch_v1_3_10.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byxequities_top_asciipitch_v1_3_10.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
cboe_byxequities_top_asciipitch_v1_3_10.reserved_2 = {}

-- Size: Reserved 2
cboe_byxequities_top_asciipitch_v1_3_10.reserved_2.size = 1

-- Display: Reserved 2
cboe_byxequities_top_asciipitch_v1_3_10.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_byxequities_top_asciipitch_v1_3_10.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.reserved_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byxequities_top_asciipitch_v1_3_10.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Seconds
cboe_byxequities_top_asciipitch_v1_3_10.seconds = {}

-- Size: Seconds
cboe_byxequities_top_asciipitch_v1_3_10.seconds.size = 5

-- Display: Seconds
cboe_byxequities_top_asciipitch_v1_3_10.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
cboe_byxequities_top_asciipitch_v1_3_10.seconds.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.seconds.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.seconds, range, value, "Seconds: Not Applicable")
    item:add_proto_expert_info(cboe_byxequities_top_asciipitch_v1_3_10.experts.not_a_number, "Seconds is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_10.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.seconds, range, value, display)

  return offset + length, value
end

-- Spin Flag
cboe_byxequities_top_asciipitch_v1_3_10.spin_flag = {}

-- Size: Spin Flag
cboe_byxequities_top_asciipitch_v1_3_10.spin_flag.size = 1

-- Display: Spin Flag
cboe_byxequities_top_asciipitch_v1_3_10.spin_flag.display = function(value)
  return "Spin Flag: "..value
end

-- Dissect: Spin Flag
cboe_byxequities_top_asciipitch_v1_3_10.spin_flag.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.spin_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byxequities_top_asciipitch_v1_3_10.spin_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.spin_flag, range, value, display)

  return offset + length, value
end

-- Symbol Extended
cboe_byxequities_top_asciipitch_v1_3_10.symbol_extended = {}

-- Size: Symbol Extended
cboe_byxequities_top_asciipitch_v1_3_10.symbol_extended.size = 8

-- Display: Symbol Extended
cboe_byxequities_top_asciipitch_v1_3_10.symbol_extended.display = function(value)
  return "Symbol Extended: "..value
end

-- Dissect: Symbol Extended
cboe_byxequities_top_asciipitch_v1_3_10.symbol_extended.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.symbol_extended.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_byxequities_top_asciipitch_v1_3_10.symbol_extended.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.symbol_extended, range, value, display)

  return offset + length, value
end

-- Symbol Long
cboe_byxequities_top_asciipitch_v1_3_10.symbol_long = {}

-- Size: Symbol Long
cboe_byxequities_top_asciipitch_v1_3_10.symbol_long.size = 6

-- Display: Symbol Long
cboe_byxequities_top_asciipitch_v1_3_10.symbol_long.display = function(value)
  return "Symbol Long: "..value
end

-- Dissect: Symbol Long
cboe_byxequities_top_asciipitch_v1_3_10.symbol_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.symbol_long.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_byxequities_top_asciipitch_v1_3_10.symbol_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.symbol_long, range, value, display)

  return offset + length, value
end

-- Symbol Short
cboe_byxequities_top_asciipitch_v1_3_10.symbol_short = {}

-- Size: Symbol Short
cboe_byxequities_top_asciipitch_v1_3_10.symbol_short.size = 4

-- Display: Symbol Short
cboe_byxequities_top_asciipitch_v1_3_10.symbol_short.display = function(value)
  return "Symbol Short: "..value
end

-- Dissect: Symbol Short
cboe_byxequities_top_asciipitch_v1_3_10.symbol_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.symbol_short.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_byxequities_top_asciipitch_v1_3_10.symbol_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.symbol_short, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_byxequities_top_asciipitch_v1_3_10.timestamp = {}

-- Size: Timestamp
cboe_byxequities_top_asciipitch_v1_3_10.timestamp.size = 8

-- Display: Timestamp
cboe_byxequities_top_asciipitch_v1_3_10.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_byxequities_top_asciipitch_v1_3_10.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.timestamp, range, value, "Timestamp: Not Applicable")
    item:add_proto_expert_info(cboe_byxequities_top_asciipitch_v1_3_10.experts.not_a_number, "Timestamp is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_10.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Top Lf
cboe_byxequities_top_asciipitch_v1_3_10.top_lf = {}

-- Size: Top Lf
cboe_byxequities_top_asciipitch_v1_3_10.top_lf.size = 1

-- Display: Top Lf
cboe_byxequities_top_asciipitch_v1_3_10.top_lf.display = function(value)
  if value == 10 then
    return "Top Lf: Line Feed"
  end

  return "Top Lf: Unknown("..value..")"
end

-- Dissect: Top Lf
cboe_byxequities_top_asciipitch_v1_3_10.top_lf.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.top_lf.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_byxequities_top_asciipitch_v1_3_10.top_lf.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.top_lf, range, value, display)

  return offset + length, value
end

-- Username
cboe_byxequities_top_asciipitch_v1_3_10.username = {}

-- Size: Username
cboe_byxequities_top_asciipitch_v1_3_10.username.size = 6

-- Display: Username
cboe_byxequities_top_asciipitch_v1_3_10.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_byxequities_top_asciipitch_v1_3_10.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_10.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_byxequities_top_asciipitch_v1_3_10.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe ByxEquities Top AsciiPitch 1.3.10
-----------------------------------------------------------------------

-- Trading Status Message
cboe_byxequities_top_asciipitch_v1_3_10.trading_status_message = {}

-- Size: Trading Status Message
cboe_byxequities_top_asciipitch_v1_3_10.trading_status_message.size =
  cboe_byxequities_top_asciipitch_v1_3_10.symbol_extended.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.halt_status.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.reg_sho_action.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.reserved_1.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.reserved_2.size

-- Display: Trading Status Message
cboe_byxequities_top_asciipitch_v1_3_10.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_byxequities_top_asciipitch_v1_3_10.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_byxequities_top_asciipitch_v1_3_10.symbol_extended.dissect(buffer, index, packet, parent)

  -- Halt Status: Alpha
  index, halt_status = cboe_byxequities_top_asciipitch_v1_3_10.halt_status.dissect(buffer, index, packet, parent)

  -- Reg SHO Action: Alpha
  index, reg_sho_action = cboe_byxequities_top_asciipitch_v1_3_10.reg_sho_action.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = cboe_byxequities_top_asciipitch_v1_3_10.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 2: Alpha
  index, reserved_2 = cboe_byxequities_top_asciipitch_v1_3_10.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_byxequities_top_asciipitch_v1_3_10.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_10.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_10.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_10.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Trade Message
cboe_byxequities_top_asciipitch_v1_3_10.extended_trade_message = {}

-- Size: Extended Trade Message
cboe_byxequities_top_asciipitch_v1_3_10.extended_trade_message.size =
  cboe_byxequities_top_asciipitch_v1_3_10.symbol_extended.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.last_price_extended.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.last_quantity_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.cumulative_volume_long.size

-- Display: Extended Trade Message
cboe_byxequities_top_asciipitch_v1_3_10.extended_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Trade Message
cboe_byxequities_top_asciipitch_v1_3_10.extended_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_byxequities_top_asciipitch_v1_3_10.symbol_extended.dissect(buffer, index, packet, parent)

  -- Last Price Extended: Price
  index, last_price_extended = cboe_byxequities_top_asciipitch_v1_3_10.last_price_extended.dissect(buffer, index, packet, parent)

  -- Last Quantity Long: Numeric
  index, last_quantity_long = cboe_byxequities_top_asciipitch_v1_3_10.last_quantity_long.dissect(buffer, index, packet, parent)

  -- Cumulative Volume Long: Numeric
  index, cumulative_volume_long = cboe_byxequities_top_asciipitch_v1_3_10.cumulative_volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Trade Message
cboe_byxequities_top_asciipitch_v1_3_10.extended_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.extended_trade_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_10.extended_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_10.extended_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_10.extended_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Trade Message
cboe_byxequities_top_asciipitch_v1_3_10.short_trade_message = {}

-- Size: Short Trade Message
cboe_byxequities_top_asciipitch_v1_3_10.short_trade_message.size =
  cboe_byxequities_top_asciipitch_v1_3_10.symbol_short.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.last_price_short.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.last_quantity_short.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.cumulative_volume_short.size

-- Display: Short Trade Message
cboe_byxequities_top_asciipitch_v1_3_10.short_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Trade Message
cboe_byxequities_top_asciipitch_v1_3_10.short_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Short: Alpha
  index, symbol_short = cboe_byxequities_top_asciipitch_v1_3_10.symbol_short.dissect(buffer, index, packet, parent)

  -- Last Price Short: Price
  index, last_price_short = cboe_byxequities_top_asciipitch_v1_3_10.last_price_short.dissect(buffer, index, packet, parent)

  -- Last Quantity Short: Numeric
  index, last_quantity_short = cboe_byxequities_top_asciipitch_v1_3_10.last_quantity_short.dissect(buffer, index, packet, parent)

  -- Cumulative Volume Short: Numeric
  index, cumulative_volume_short = cboe_byxequities_top_asciipitch_v1_3_10.cumulative_volume_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Trade Message
cboe_byxequities_top_asciipitch_v1_3_10.short_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.short_trade_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_10.short_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_10.short_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_10.short_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Trade Message
cboe_byxequities_top_asciipitch_v1_3_10.long_trade_message = {}

-- Size: Long Trade Message
cboe_byxequities_top_asciipitch_v1_3_10.long_trade_message.size =
  cboe_byxequities_top_asciipitch_v1_3_10.symbol_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.last_price_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.last_quantity_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.cumulative_volume_long.size

-- Display: Long Trade Message
cboe_byxequities_top_asciipitch_v1_3_10.long_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Trade Message
cboe_byxequities_top_asciipitch_v1_3_10.long_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Long: Alpha
  index, symbol_long = cboe_byxequities_top_asciipitch_v1_3_10.symbol_long.dissect(buffer, index, packet, parent)

  -- Last Price Long: Price
  index, last_price_long = cboe_byxequities_top_asciipitch_v1_3_10.last_price_long.dissect(buffer, index, packet, parent)

  -- Last Quantity Long: Numeric
  index, last_quantity_long = cboe_byxequities_top_asciipitch_v1_3_10.last_quantity_long.dissect(buffer, index, packet, parent)

  -- Cumulative Volume Long: Numeric
  index, cumulative_volume_long = cboe_byxequities_top_asciipitch_v1_3_10.cumulative_volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Trade Message
cboe_byxequities_top_asciipitch_v1_3_10.long_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.long_trade_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_10.long_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_10.long_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_10.long_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Trade Message
cboe_byxequities_top_asciipitch_v1_3_10.expanded_trade_message = {}

-- Size: Expanded Trade Message
cboe_byxequities_top_asciipitch_v1_3_10.expanded_trade_message.size =
  cboe_byxequities_top_asciipitch_v1_3_10.symbol_extended.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.last_price_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.last_quantity_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.cumulative_volume_long.size

-- Display: Expanded Trade Message
cboe_byxequities_top_asciipitch_v1_3_10.expanded_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Trade Message
cboe_byxequities_top_asciipitch_v1_3_10.expanded_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_byxequities_top_asciipitch_v1_3_10.symbol_extended.dissect(buffer, index, packet, parent)

  -- Last Price Long: Price
  index, last_price_long = cboe_byxequities_top_asciipitch_v1_3_10.last_price_long.dissect(buffer, index, packet, parent)

  -- Last Quantity Long: Numeric
  index, last_quantity_long = cboe_byxequities_top_asciipitch_v1_3_10.last_quantity_long.dissect(buffer, index, packet, parent)

  -- Cumulative Volume Long: Numeric
  index, cumulative_volume_long = cboe_byxequities_top_asciipitch_v1_3_10.cumulative_volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Trade Message
cboe_byxequities_top_asciipitch_v1_3_10.expanded_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.expanded_trade_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_10.expanded_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_10.expanded_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_10.expanded_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_10.extended_two_sided_update_message = {}

-- Size: Extended Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_10.extended_two_sided_update_message.size =
  cboe_byxequities_top_asciipitch_v1_3_10.symbol_extended.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.bid_price_extended.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.ask_price_extended.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_long.size

-- Display: Extended Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_10.extended_two_sided_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_10.extended_two_sided_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_byxequities_top_asciipitch_v1_3_10.symbol_extended.dissect(buffer, index, packet, parent)

  -- Bid Price Extended: Price
  index, bid_price_extended = cboe_byxequities_top_asciipitch_v1_3_10.bid_price_extended.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Numeric
  index, bid_quantity_long = cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_long.dissect(buffer, index, packet, parent)

  -- Ask Price Extended: Price
  index, ask_price_extended = cboe_byxequities_top_asciipitch_v1_3_10.ask_price_extended.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Numeric
  index, ask_quantity_long = cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_10.extended_two_sided_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.extended_two_sided_update_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_10.extended_two_sided_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_10.extended_two_sided_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_10.extended_two_sided_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_10.short_two_sided_update_message = {}

-- Size: Short Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_10.short_two_sided_update_message.size =
  cboe_byxequities_top_asciipitch_v1_3_10.symbol_short.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.bid_price_short.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_short.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.ask_price_short.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_short.size

-- Display: Short Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_10.short_two_sided_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_10.short_two_sided_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Short: Alpha
  index, symbol_short = cboe_byxequities_top_asciipitch_v1_3_10.symbol_short.dissect(buffer, index, packet, parent)

  -- Bid Price Short: Price
  index, bid_price_short = cboe_byxequities_top_asciipitch_v1_3_10.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Quantity Short: Numeric
  index, bid_quantity_short = cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_short.dissect(buffer, index, packet, parent)

  -- Ask Price Short: Price
  index, ask_price_short = cboe_byxequities_top_asciipitch_v1_3_10.ask_price_short.dissect(buffer, index, packet, parent)

  -- Ask Quantity Short: Numeric
  index, ask_quantity_short = cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_10.short_two_sided_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.short_two_sided_update_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_10.short_two_sided_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_10.short_two_sided_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_10.short_two_sided_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_10.long_two_sided_update_message = {}

-- Size: Long Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_10.long_two_sided_update_message.size =
  cboe_byxequities_top_asciipitch_v1_3_10.symbol_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.bid_price_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.ask_price_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_long.size

-- Display: Long Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_10.long_two_sided_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_10.long_two_sided_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Long: Alpha
  index, symbol_long = cboe_byxequities_top_asciipitch_v1_3_10.symbol_long.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Price
  index, bid_price_long = cboe_byxequities_top_asciipitch_v1_3_10.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Numeric
  index, bid_quantity_long = cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Price
  index, ask_price_long = cboe_byxequities_top_asciipitch_v1_3_10.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Numeric
  index, ask_quantity_long = cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_10.long_two_sided_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.long_two_sided_update_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_10.long_two_sided_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_10.long_two_sided_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_10.long_two_sided_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_10.expanded_two_sided_update_message = {}

-- Size: Expanded Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_10.expanded_two_sided_update_message.size =
  cboe_byxequities_top_asciipitch_v1_3_10.symbol_extended.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.bid_price_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.ask_price_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_long.size

-- Display: Expanded Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_10.expanded_two_sided_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_10.expanded_two_sided_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_byxequities_top_asciipitch_v1_3_10.symbol_extended.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Price
  index, bid_price_long = cboe_byxequities_top_asciipitch_v1_3_10.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Numeric
  index, bid_quantity_long = cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Price
  index, ask_price_long = cboe_byxequities_top_asciipitch_v1_3_10.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Numeric
  index, ask_quantity_long = cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_10.expanded_two_sided_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.expanded_two_sided_update_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_10.expanded_two_sided_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_10.expanded_two_sided_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_10.expanded_two_sided_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_10.extended_ask_update_message = {}

-- Size: Extended Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_10.extended_ask_update_message.size =
  cboe_byxequities_top_asciipitch_v1_3_10.symbol_extended.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.ask_price_extended.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_long.size

-- Display: Extended Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_10.extended_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_10.extended_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_byxequities_top_asciipitch_v1_3_10.symbol_extended.dissect(buffer, index, packet, parent)

  -- Ask Price Extended: Price
  index, ask_price_extended = cboe_byxequities_top_asciipitch_v1_3_10.ask_price_extended.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Numeric
  index, ask_quantity_long = cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_10.extended_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.extended_ask_update_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_10.extended_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_10.extended_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_10.extended_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_10.short_ask_update_message = {}

-- Size: Short Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_10.short_ask_update_message.size =
  cboe_byxequities_top_asciipitch_v1_3_10.symbol_short.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.ask_price_short.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_short.size

-- Display: Short Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_10.short_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_10.short_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Short: Alpha
  index, symbol_short = cboe_byxequities_top_asciipitch_v1_3_10.symbol_short.dissect(buffer, index, packet, parent)

  -- Ask Price Short: Price
  index, ask_price_short = cboe_byxequities_top_asciipitch_v1_3_10.ask_price_short.dissect(buffer, index, packet, parent)

  -- Ask Quantity Short: Numeric
  index, ask_quantity_short = cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_10.short_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.short_ask_update_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_10.short_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_10.short_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_10.short_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_10.long_ask_update_message = {}

-- Size: Long Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_10.long_ask_update_message.size =
  cboe_byxequities_top_asciipitch_v1_3_10.symbol_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.ask_price_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_long.size

-- Display: Long Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_10.long_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_10.long_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Long: Alpha
  index, symbol_long = cboe_byxequities_top_asciipitch_v1_3_10.symbol_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Price
  index, ask_price_long = cboe_byxequities_top_asciipitch_v1_3_10.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Numeric
  index, ask_quantity_long = cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_10.long_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.long_ask_update_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_10.long_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_10.long_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_10.long_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_10.expanded_ask_update_message = {}

-- Size: Expanded Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_10.expanded_ask_update_message.size =
  cboe_byxequities_top_asciipitch_v1_3_10.symbol_extended.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.ask_price_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_long.size

-- Display: Expanded Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_10.expanded_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_10.expanded_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_byxequities_top_asciipitch_v1_3_10.symbol_extended.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Price
  index, ask_price_long = cboe_byxequities_top_asciipitch_v1_3_10.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Numeric
  index, ask_quantity_long = cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_10.expanded_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.expanded_ask_update_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_10.expanded_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_10.expanded_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_10.expanded_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_10.extended_bid_update_message = {}

-- Size: Extended Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_10.extended_bid_update_message.size =
  cboe_byxequities_top_asciipitch_v1_3_10.symbol_extended.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.bid_price_extended.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_long.size

-- Display: Extended Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_10.extended_bid_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_10.extended_bid_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_byxequities_top_asciipitch_v1_3_10.symbol_extended.dissect(buffer, index, packet, parent)

  -- Bid Price Extended: Price
  index, bid_price_extended = cboe_byxequities_top_asciipitch_v1_3_10.bid_price_extended.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Numeric
  index, bid_quantity_long = cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_10.extended_bid_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.extended_bid_update_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_10.extended_bid_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_10.extended_bid_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_10.extended_bid_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_10.short_bid_update_message = {}

-- Size: Short Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_10.short_bid_update_message.size =
  cboe_byxequities_top_asciipitch_v1_3_10.symbol_short.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.bid_price_short.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_short.size

-- Display: Short Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_10.short_bid_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_10.short_bid_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Short: Alpha
  index, symbol_short = cboe_byxequities_top_asciipitch_v1_3_10.symbol_short.dissect(buffer, index, packet, parent)

  -- Bid Price Short: Price
  index, bid_price_short = cboe_byxequities_top_asciipitch_v1_3_10.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Quantity Short: Numeric
  index, bid_quantity_short = cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_10.short_bid_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.short_bid_update_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_10.short_bid_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_10.short_bid_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_10.short_bid_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_10.long_bid_update_message = {}

-- Size: Long Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_10.long_bid_update_message.size =
  cboe_byxequities_top_asciipitch_v1_3_10.symbol_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.bid_price_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_long.size

-- Display: Long Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_10.long_bid_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_10.long_bid_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Long: Alpha
  index, symbol_long = cboe_byxequities_top_asciipitch_v1_3_10.symbol_long.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Price
  index, bid_price_long = cboe_byxequities_top_asciipitch_v1_3_10.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Numeric
  index, bid_quantity_long = cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_10.long_bid_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.long_bid_update_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_10.long_bid_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_10.long_bid_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_10.long_bid_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_10.expanded_bid_update_message = {}

-- Size: Expanded Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_10.expanded_bid_update_message.size =
  cboe_byxequities_top_asciipitch_v1_3_10.symbol_extended.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.bid_price_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_long.size

-- Display: Expanded Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_10.expanded_bid_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_10.expanded_bid_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_byxequities_top_asciipitch_v1_3_10.symbol_extended.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Price
  index, bid_price_long = cboe_byxequities_top_asciipitch_v1_3_10.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Numeric
  index, bid_quantity_long = cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_10.expanded_bid_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.expanded_bid_update_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_10.expanded_bid_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_10.expanded_bid_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_10.expanded_bid_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Client Heartbeat Message
cboe_byxequities_top_asciipitch_v1_3_10.client_heartbeat_message = {}

-- Display: Client Heartbeat Message
cboe_byxequities_top_asciipitch_v1_3_10.client_heartbeat_message.display = function(packet, parent, length)
  return "Client Heartbeat Message"
end


-- Dissect: Client Heartbeat Message
cboe_byxequities_top_asciipitch_v1_3_10.client_heartbeat_message.dissect = function(buffer, offset, packet, parent)
  local display = cboe_byxequities_top_asciipitch_v1_3_10.client_heartbeat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat Message
cboe_byxequities_top_asciipitch_v1_3_10.server_heartbeat_message = {}

-- Display: Server Heartbeat Message
cboe_byxequities_top_asciipitch_v1_3_10.server_heartbeat_message.display = function(packet, parent, length)
  return "Server Heartbeat Message"
end


-- Dissect: Server Heartbeat Message
cboe_byxequities_top_asciipitch_v1_3_10.server_heartbeat_message.dissect = function(buffer, offset, packet, parent)
  local display = cboe_byxequities_top_asciipitch_v1_3_10.server_heartbeat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Spin Done Message
cboe_byxequities_top_asciipitch_v1_3_10.spin_done_message = {}

-- Display: Spin Done Message
cboe_byxequities_top_asciipitch_v1_3_10.spin_done_message.display = function(packet, parent, length)
  return "Spin Done Message"
end


-- Dissect: Spin Done Message
cboe_byxequities_top_asciipitch_v1_3_10.spin_done_message.dissect = function(buffer, offset, packet, parent)
  local display = cboe_byxequities_top_asciipitch_v1_3_10.spin_done_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Extended Spin Message
cboe_byxequities_top_asciipitch_v1_3_10.extended_spin_message = {}

-- Size: Extended Spin Message
cboe_byxequities_top_asciipitch_v1_3_10.extended_spin_message.size =
  cboe_byxequities_top_asciipitch_v1_3_10.timestamp.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.symbol_extended.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.bid_price_extended.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.ask_price_extended.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.last_trade_time.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.last_trade_price_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.last_trade_size.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.cumulative_volume_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.halt_status.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.reg_sho_action.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.last_trade_day_indicator.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.reserved_2.size

-- Display: Extended Spin Message
cboe_byxequities_top_asciipitch_v1_3_10.extended_spin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Spin Message
cboe_byxequities_top_asciipitch_v1_3_10.extended_spin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = cboe_byxequities_top_asciipitch_v1_3_10.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_byxequities_top_asciipitch_v1_3_10.symbol_extended.dissect(buffer, index, packet, parent)

  -- Bid Price Extended: Price
  index, bid_price_extended = cboe_byxequities_top_asciipitch_v1_3_10.bid_price_extended.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Numeric
  index, bid_quantity_long = cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_long.dissect(buffer, index, packet, parent)

  -- Ask Price Extended: Price
  index, ask_price_extended = cboe_byxequities_top_asciipitch_v1_3_10.ask_price_extended.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Numeric
  index, ask_quantity_long = cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_long.dissect(buffer, index, packet, parent)

  -- Last Trade Time: Timestamp
  index, last_trade_time = cboe_byxequities_top_asciipitch_v1_3_10.last_trade_time.dissect(buffer, index, packet, parent)

  -- Last Trade Price Long: Price
  index, last_trade_price_long = cboe_byxequities_top_asciipitch_v1_3_10.last_trade_price_long.dissect(buffer, index, packet, parent)

  -- Last Trade Size: Numeric
  index, last_trade_size = cboe_byxequities_top_asciipitch_v1_3_10.last_trade_size.dissect(buffer, index, packet, parent)

  -- Cumulative Volume Long: Numeric
  index, cumulative_volume_long = cboe_byxequities_top_asciipitch_v1_3_10.cumulative_volume_long.dissect(buffer, index, packet, parent)

  -- Halt Status: Alpha
  index, halt_status = cboe_byxequities_top_asciipitch_v1_3_10.halt_status.dissect(buffer, index, packet, parent)

  -- Reg SHO Action: Alpha
  index, reg_sho_action = cboe_byxequities_top_asciipitch_v1_3_10.reg_sho_action.dissect(buffer, index, packet, parent)

  -- Last Trade Day Indicator: Alpha
  index, last_trade_day_indicator = cboe_byxequities_top_asciipitch_v1_3_10.last_trade_day_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 2: Alpha
  index, reserved_2 = cboe_byxequities_top_asciipitch_v1_3_10.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Spin Message
cboe_byxequities_top_asciipitch_v1_3_10.extended_spin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.extended_spin_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_10.extended_spin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_10.extended_spin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_10.extended_spin_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Spin Message
cboe_byxequities_top_asciipitch_v1_3_10.expanded_spin_message = {}

-- Size: Expanded Spin Message
cboe_byxequities_top_asciipitch_v1_3_10.expanded_spin_message.size =
  cboe_byxequities_top_asciipitch_v1_3_10.timestamp.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.symbol_extended.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.bid_price_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.ask_price_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.last_trade_time.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.last_trade_price_short.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.last_trade_size.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.cumulative_volume_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.halt_status.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.reg_sho_action.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.last_trade_day_indicator.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.reserved_2.size

-- Display: Expanded Spin Message
cboe_byxequities_top_asciipitch_v1_3_10.expanded_spin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Spin Message
cboe_byxequities_top_asciipitch_v1_3_10.expanded_spin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = cboe_byxequities_top_asciipitch_v1_3_10.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_byxequities_top_asciipitch_v1_3_10.symbol_extended.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Price
  index, bid_price_long = cboe_byxequities_top_asciipitch_v1_3_10.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Numeric
  index, bid_quantity_long = cboe_byxequities_top_asciipitch_v1_3_10.bid_quantity_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Price
  index, ask_price_long = cboe_byxequities_top_asciipitch_v1_3_10.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Numeric
  index, ask_quantity_long = cboe_byxequities_top_asciipitch_v1_3_10.ask_quantity_long.dissect(buffer, index, packet, parent)

  -- Last Trade Time: Timestamp
  index, last_trade_time = cboe_byxequities_top_asciipitch_v1_3_10.last_trade_time.dissect(buffer, index, packet, parent)

  -- Last Trade Price Short: Price
  index, last_trade_price_short = cboe_byxequities_top_asciipitch_v1_3_10.last_trade_price_short.dissect(buffer, index, packet, parent)

  -- Last Trade Size: Numeric
  index, last_trade_size = cboe_byxequities_top_asciipitch_v1_3_10.last_trade_size.dissect(buffer, index, packet, parent)

  -- Cumulative Volume Long: Numeric
  index, cumulative_volume_long = cboe_byxequities_top_asciipitch_v1_3_10.cumulative_volume_long.dissect(buffer, index, packet, parent)

  -- Halt Status: Alpha
  index, halt_status = cboe_byxequities_top_asciipitch_v1_3_10.halt_status.dissect(buffer, index, packet, parent)

  -- Reg SHO Action: Alpha
  index, reg_sho_action = cboe_byxequities_top_asciipitch_v1_3_10.reg_sho_action.dissect(buffer, index, packet, parent)

  -- Last Trade Day Indicator: Alpha
  index, last_trade_day_indicator = cboe_byxequities_top_asciipitch_v1_3_10.last_trade_day_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 2: Alpha
  index, reserved_2 = cboe_byxequities_top_asciipitch_v1_3_10.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Spin Message
cboe_byxequities_top_asciipitch_v1_3_10.expanded_spin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.expanded_spin_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_10.expanded_spin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_10.expanded_spin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_10.expanded_spin_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Accepted Message
cboe_byxequities_top_asciipitch_v1_3_10.logon_accepted_message = {}

-- Display: Logon Accepted Message
cboe_byxequities_top_asciipitch_v1_3_10.logon_accepted_message.display = function(packet, parent, length)
  return "Logon Accepted Message"
end


-- Dissect: Logon Accepted Message
cboe_byxequities_top_asciipitch_v1_3_10.logon_accepted_message.dissect = function(buffer, offset, packet, parent)
  local display = cboe_byxequities_top_asciipitch_v1_3_10.logon_accepted_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Milliseconds Message
cboe_byxequities_top_asciipitch_v1_3_10.milliseconds_message = {}

-- Size: Milliseconds Message
cboe_byxequities_top_asciipitch_v1_3_10.milliseconds_message.size =
  cboe_byxequities_top_asciipitch_v1_3_10.milliseconds.size

-- Display: Milliseconds Message
cboe_byxequities_top_asciipitch_v1_3_10.milliseconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Milliseconds Message
cboe_byxequities_top_asciipitch_v1_3_10.milliseconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Milliseconds: Numeric
  index, milliseconds = cboe_byxequities_top_asciipitch_v1_3_10.milliseconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Milliseconds Message
cboe_byxequities_top_asciipitch_v1_3_10.milliseconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.milliseconds_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_10.milliseconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_10.milliseconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_10.milliseconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Seconds Message
cboe_byxequities_top_asciipitch_v1_3_10.seconds_message = {}

-- Size: Seconds Message
cboe_byxequities_top_asciipitch_v1_3_10.seconds_message.size =
  cboe_byxequities_top_asciipitch_v1_3_10.seconds.size

-- Display: Seconds Message
cboe_byxequities_top_asciipitch_v1_3_10.seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seconds Message
cboe_byxequities_top_asciipitch_v1_3_10.seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Numeric
  index, seconds = cboe_byxequities_top_asciipitch_v1_3_10.seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Seconds Message
cboe_byxequities_top_asciipitch_v1_3_10.seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.seconds_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_10.seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_10.seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_10.seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Rejected Message
cboe_byxequities_top_asciipitch_v1_3_10.logon_rejected_message = {}

-- Size: Logon Rejected Message
cboe_byxequities_top_asciipitch_v1_3_10.logon_rejected_message.size =
  cboe_byxequities_top_asciipitch_v1_3_10.reject_reason.size

-- Display: Logon Rejected Message
cboe_byxequities_top_asciipitch_v1_3_10.logon_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Rejected Message
cboe_byxequities_top_asciipitch_v1_3_10.logon_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason: Alpha
  index, reject_reason = cboe_byxequities_top_asciipitch_v1_3_10.reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Rejected Message
cboe_byxequities_top_asciipitch_v1_3_10.logon_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.logon_rejected_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_10.logon_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_10.logon_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_10.logon_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Message
cboe_byxequities_top_asciipitch_v1_3_10.logon_message = {}

-- Size: Logon Message
cboe_byxequities_top_asciipitch_v1_3_10.logon_message.size =
  cboe_byxequities_top_asciipitch_v1_3_10.username.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.password.size + 
  cboe_byxequities_top_asciipitch_v1_3_10.spin_flag.size

-- Display: Logon Message
cboe_byxequities_top_asciipitch_v1_3_10.logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Message
cboe_byxequities_top_asciipitch_v1_3_10.logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: Alphanumeric
  index, username = cboe_byxequities_top_asciipitch_v1_3_10.username.dissect(buffer, index, packet, parent)

  -- Password: Alphanumeric
  index, password = cboe_byxequities_top_asciipitch_v1_3_10.password.dissect(buffer, index, packet, parent)

  -- Spin Flag: Boolean
  index, spin_flag = cboe_byxequities_top_asciipitch_v1_3_10.spin_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
cboe_byxequities_top_asciipitch_v1_3_10.logon_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.logon_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_10.logon_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_10.logon_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_10.logon_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_byxequities_top_asciipitch_v1_3_10.payload = {}

-- Dissect: Payload
cboe_byxequities_top_asciipitch_v1_3_10.payload.dispatch = {
  ["L"] = cboe_byxequities_top_asciipitch_v1_3_10.logon_message.dissect,
  ["J"] = cboe_byxequities_top_asciipitch_v1_3_10.logon_rejected_message.dissect,
  ["T"] = cboe_byxequities_top_asciipitch_v1_3_10.seconds_message.dissect,
  ["M"] = cboe_byxequities_top_asciipitch_v1_3_10.milliseconds_message.dissect,
  ["C"] = cboe_byxequities_top_asciipitch_v1_3_10.logon_accepted_message.dissect,
  ["s"] = cboe_byxequities_top_asciipitch_v1_3_10.expanded_spin_message.dissect,
  ["S"] = cboe_byxequities_top_asciipitch_v1_3_10.extended_spin_message.dissect,
  ["D"] = cboe_byxequities_top_asciipitch_v1_3_10.spin_done_message.dissect,
  ["H"] = cboe_byxequities_top_asciipitch_v1_3_10.server_heartbeat_message.dissect,
  ["R"] = cboe_byxequities_top_asciipitch_v1_3_10.client_heartbeat_message.dissect,
  ["E"] = cboe_byxequities_top_asciipitch_v1_3_10.expanded_bid_update_message.dissect,
  ["B"] = cboe_byxequities_top_asciipitch_v1_3_10.long_bid_update_message.dissect,
  ["b"] = cboe_byxequities_top_asciipitch_v1_3_10.short_bid_update_message.dissect,
  ["N"] = cboe_byxequities_top_asciipitch_v1_3_10.extended_bid_update_message.dissect,
  ["e"] = cboe_byxequities_top_asciipitch_v1_3_10.expanded_ask_update_message.dissect,
  ["A"] = cboe_byxequities_top_asciipitch_v1_3_10.long_ask_update_message.dissect,
  ["a"] = cboe_byxequities_top_asciipitch_v1_3_10.short_ask_update_message.dissect,
  ["n"] = cboe_byxequities_top_asciipitch_v1_3_10.extended_ask_update_message.dissect,
  ["F"] = cboe_byxequities_top_asciipitch_v1_3_10.expanded_two_sided_update_message.dissect,
  ["U"] = cboe_byxequities_top_asciipitch_v1_3_10.long_two_sided_update_message.dissect,
  ["u"] = cboe_byxequities_top_asciipitch_v1_3_10.short_two_sided_update_message.dissect,
  ["d"] = cboe_byxequities_top_asciipitch_v1_3_10.extended_two_sided_update_message.dissect,
  ["f"] = cboe_byxequities_top_asciipitch_v1_3_10.expanded_trade_message.dissect,
  ["V"] = cboe_byxequities_top_asciipitch_v1_3_10.long_trade_message.dissect,
  ["v"] = cboe_byxequities_top_asciipitch_v1_3_10.short_trade_message.dissect,
  ["r"] = cboe_byxequities_top_asciipitch_v1_3_10.extended_trade_message.dissect,
  ["t"] = cboe_byxequities_top_asciipitch_v1_3_10.trading_status_message.dissect,
}

cboe_byxequities_top_asciipitch_v1_3_10.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = cboe_byxequities_top_asciipitch_v1_3_10.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Frame
cboe_byxequities_top_asciipitch_v1_3_10.frame = {}

-- Display: Frame
cboe_byxequities_top_asciipitch_v1_3_10.frame.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Frame
cboe_byxequities_top_asciipitch_v1_3_10.frame.fields = function(buffer, offset, packet, parent, size_of_frame)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 27 values
  index, message_type = cboe_byxequities_top_asciipitch_v1_3_10.message_type.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 27 branches
  index = cboe_byxequities_top_asciipitch_v1_3_10.payload.dissect(buffer, index, packet, parent, message_type)

  -- Top Lf: 1 Byte Fixed Width Integer Static
  index, top_lf = cboe_byxequities_top_asciipitch_v1_3_10.top_lf.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Frame
cboe_byxequities_top_asciipitch_v1_3_10.frame.dissect = function(buffer, offset, packet, parent, size_of_frame)
  local index = offset + size_of_frame

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10.fields.frame, buffer(offset, 0))
    local current = cboe_byxequities_top_asciipitch_v1_3_10.frame.fields(buffer, offset, packet, parent, size_of_frame)
    parent:set_len(size_of_frame)
    local display = cboe_byxequities_top_asciipitch_v1_3_10.frame.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_byxequities_top_asciipitch_v1_3_10.frame.fields(buffer, offset, packet, parent, size_of_frame)

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
cboe_byxequities_top_asciipitch_v1_3_10.packet = {}

-- Verify required size of Tcp packet
cboe_byxequities_top_asciipitch_v1_3_10.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_byxequities_top_asciipitch_v1_3_10.message_type.size
end

-- Dissect Packet
cboe_byxequities_top_asciipitch_v1_3_10.packet.dissect = function(buffer, packet, parent)
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
      index = cboe_byxequities_top_asciipitch_v1_3_10.frame.dissect(frame, index, packet, parent, size_of_frame)
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
function omi_cboe_byxequities_top_asciipitch_v1_3_10.init()
end

-- Dissector for Cboe ByxEquities Top AsciiPitch 1.3.10
function omi_cboe_byxequities_top_asciipitch_v1_3_10.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_byxequities_top_asciipitch_v1_3_10.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_10, buffer(), omi_cboe_byxequities_top_asciipitch_v1_3_10.description, "("..buffer:len().." Bytes)")
  return cboe_byxequities_top_asciipitch_v1_3_10.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe ByxEquities Top AsciiPitch 1.3.10 (Tcp)
local function omi_cboe_byxequities_top_asciipitch_v1_3_10_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_byxequities_top_asciipitch_v1_3_10.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_byxequities_top_asciipitch_v1_3_10
  omi_cboe_byxequities_top_asciipitch_v1_3_10.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe ByxEquities Top AsciiPitch 1.3.10
omi_cboe_byxequities_top_asciipitch_v1_3_10:register_heuristic("tcp", omi_cboe_byxequities_top_asciipitch_v1_3_10_tcp_heuristic)

-- Register Cboe ByxEquities Top AsciiPitch 1.3.10 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_byxequities_top_asciipitch_v1_3_10)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.3.10
--   Date: Wednesday, September 23, 2026
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
