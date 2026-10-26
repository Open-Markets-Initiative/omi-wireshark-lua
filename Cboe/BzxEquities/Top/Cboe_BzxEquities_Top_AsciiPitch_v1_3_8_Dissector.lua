-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe BzxEquities Top AsciiPitch 1.3.8 Protocol
local omi_cboe_bzxequities_top_asciipitch_v1_3_8 = Proto("Omi.Cboe.BzxEquities.Top.AsciiPitch.v1.3.8", "Cboe BzxEquities Top AsciiPitch 1.3.8")

-- Protocol table
local cboe_bzxequities_top_asciipitch_v1_3_8 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe BzxEquities Top AsciiPitch 1.3.8 Fields
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.ask_price_extended = ProtoField.new("Ask Price Extended", "cboe.bzxequities.top.asciipitch.v1.3.8.askpriceextended", ftypes.DOUBLE, nil, nil, nil, "Ask price; 0 if no offers")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.ask_price_long = ProtoField.new("Ask Price Long", "cboe.bzxequities.top.asciipitch.v1.3.8.askpricelong", ftypes.DOUBLE, nil, nil, nil, "Ask price; 0 if no offers")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.ask_price_short = ProtoField.new("Ask Price Short", "cboe.bzxequities.top.asciipitch.v1.3.8.askpriceshort", ftypes.DOUBLE, nil, nil, nil, "Ask price; 0 if no offers")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.ask_quantity_long = ProtoField.new("Ask Quantity Long", "cboe.bzxequities.top.asciipitch.v1.3.8.askquantitylong", ftypes.UINT24, nil, nil, nil, "Ask quantity; 0 if no offers")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.ask_quantity_short = ProtoField.new("Ask Quantity Short", "cboe.bzxequities.top.asciipitch.v1.3.8.askquantityshort", ftypes.UINT24, nil, nil, nil, "Ask size; 0 if no offers")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.bid_price_extended = ProtoField.new("Bid Price Extended", "cboe.bzxequities.top.asciipitch.v1.3.8.bidpriceextended", ftypes.DOUBLE, nil, nil, nil, "Bid price; 0 if no bids")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.bid_price_long = ProtoField.new("Bid Price Long", "cboe.bzxequities.top.asciipitch.v1.3.8.bidpricelong", ftypes.DOUBLE, nil, nil, nil, "Bid price; 0 if no bids")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.bid_price_short = ProtoField.new("Bid Price Short", "cboe.bzxequities.top.asciipitch.v1.3.8.bidpriceshort", ftypes.DOUBLE, nil, nil, nil, "Bid price; 0 if no bids")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.bid_quantity_long = ProtoField.new("Bid Quantity Long", "cboe.bzxequities.top.asciipitch.v1.3.8.bidquantitylong", ftypes.UINT24, nil, nil, nil, "Bid quantity; 0 if no bids")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.bid_quantity_short = ProtoField.new("Bid Quantity Short", "cboe.bzxequities.top.asciipitch.v1.3.8.bidquantityshort", ftypes.UINT24, nil, nil, nil, "Bid size; 0 if no bids")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.cumulative_volume_long = ProtoField.new("Cumulative Volume Long", "cboe.bzxequities.top.asciipitch.v1.3.8.cumulativevolumelong", ftypes.UINT32, nil, nil, nil, "Cumulative volume executed today; 0 if no trades")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.cumulative_volume_short = ProtoField.new("Cumulative Volume Short", "cboe.bzxequities.top.asciipitch.v1.3.8.cumulativevolumeshort", ftypes.UINT24, nil, nil, nil, "Cumulative number of shares traded today")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.halt_status = ProtoField.new("Halt Status", "cboe.bzxequities.top.asciipitch.v1.3.8.haltstatus", ftypes.STRING)
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.last_price_extended = ProtoField.new("Last Price Extended", "cboe.bzxequities.top.asciipitch.v1.3.8.lastpriceextended", ftypes.DOUBLE, nil, nil, nil, "Last trade price")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.last_price_long = ProtoField.new("Last Price Long", "cboe.bzxequities.top.asciipitch.v1.3.8.lastpricelong", ftypes.DOUBLE, nil, nil, nil, "Last trade price")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.last_price_short = ProtoField.new("Last Price Short", "cboe.bzxequities.top.asciipitch.v1.3.8.lastpriceshort", ftypes.DOUBLE, nil, nil, nil, "Last trade price")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.last_quantity_long = ProtoField.new("Last Quantity Long", "cboe.bzxequities.top.asciipitch.v1.3.8.lastquantitylong", ftypes.UINT24, nil, nil, nil, "Last trade quantity")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.last_quantity_short = ProtoField.new("Last Quantity Short", "cboe.bzxequities.top.asciipitch.v1.3.8.lastquantityshort", ftypes.UINT24, nil, nil, nil, "Last trade quantity")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.last_trade_price_long = ProtoField.new("Last Trade Price Long", "cboe.bzxequities.top.asciipitch.v1.3.8.lasttradepricelong", ftypes.DOUBLE, nil, nil, nil, "Last trade price; 0 if no trades")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.last_trade_price_short = ProtoField.new("Last Trade Price Short", "cboe.bzxequities.top.asciipitch.v1.3.8.lasttradepriceshort", ftypes.DOUBLE, nil, nil, nil, "Last trade price; 0 if no trades")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.last_trade_size = ProtoField.new("Last Trade Size", "cboe.bzxequities.top.asciipitch.v1.3.8.lasttradesize", ftypes.UINT24, nil, nil, nil, "Last trade size; 0 if no trades")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.last_trade_time = ProtoField.new("Last Trade Time", "cboe.bzxequities.top.asciipitch.v1.3.8.lasttradetime", ftypes.UINT32, nil, nil, nil, "Time of last trade; milliseconds since midnight, Eastern time")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.message_type = ProtoField.new("Message Type", "cboe.bzxequities.top.asciipitch.v1.3.8.messagetype", ftypes.STRING, nil, nil, nil, "Single ASCII byte identifying this packet type")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.milliseconds = ProtoField.new("Milliseconds", "cboe.bzxequities.top.asciipitch.v1.3.8.milliseconds", ftypes.UINT16, nil, nil, nil, "Number of milliseconds since last Second message")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.password = ProtoField.new("Password", "cboe.bzxequities.top.asciipitch.v1.3.8.password", ftypes.STRING, nil, nil, nil, "Password, assigned by Cboe")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.reg_sho_action = ProtoField.new("Reg SHO Action", "cboe.bzxequities.top.asciipitch.v1.3.8.regshoaction", ftypes.STRING)
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.reject_reason = ProtoField.new("Reject Reason", "cboe.bzxequities.top.asciipitch.v1.3.8.rejectreason", ftypes.STRING, nil, nil, nil, "\"A\" = Authentication or authorization problem (currently the only reason sent)")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.bzxequities.top.asciipitch.v1.3.8.reserved1", ftypes.STRING, nil, nil, nil, "Reserved")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.bzxequities.top.asciipitch.v1.3.8.reserved2", ftypes.STRING, nil, nil, nil, "Reserved")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.seconds = ProtoField.new("Seconds", "cboe.bzxequities.top.asciipitch.v1.3.8.seconds", ftypes.UINT24, nil, nil, nil, "Number of seconds since midnight; e.g,. 32400 = 9:00am")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.spin_flag = ProtoField.new("Spin Flag", "cboe.bzxequities.top.asciipitch.v1.3.8.spinflag", ftypes.STRING, nil, nil, nil, "If \"Y\", spin current top of book")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.symbol_extended = ProtoField.new("Symbol Extended", "cboe.bzxequities.top.asciipitch.v1.3.8.symbolextended", ftypes.STRING, nil, nil, nil, "Symbol")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.symbol_long = ProtoField.new("Symbol Long", "cboe.bzxequities.top.asciipitch.v1.3.8.symbollong", ftypes.STRING, nil, nil, nil, "Symbol")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.symbol_short = ProtoField.new("Symbol Short", "cboe.bzxequities.top.asciipitch.v1.3.8.symbolshort", ftypes.STRING, nil, nil, nil, "Symbol")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.timestamp = ProtoField.new("Timestamp", "cboe.bzxequities.top.asciipitch.v1.3.8.timestamp", ftypes.UINT32, nil, nil, nil, "Time of top of book update; milliseconds since midnight, Eastern time")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.top_lf = ProtoField.new("Top Lf", "cboe.bzxequities.top.asciipitch.v1.3.8.toplf", ftypes.INT8, nil, nil, nil, "Terminating line feed character (0x0A)")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.username = ProtoField.new("Username", "cboe.bzxequities.top.asciipitch.v1.3.8.username", ftypes.STRING, nil, nil, nil, "Username, assigned by Cboe")

-- Cboe BzxEquities Top AsciiPitch 1.3.8 Framing
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.frame = ProtoField.new("Frame", "cboe.bzxequities.top.asciipitch.v1.3.8.frame", ftypes.STRING, nil, nil, nil, "Cboe TOP Tcp Lf terminated record — packet type byte, type-determined payload, terminating LF")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.packet = ProtoField.new("Packet", "cboe.bzxequities.top.asciipitch.v1.3.8.packet", ftypes.STRING, nil, nil, nil, "Cboe TOP Tcp packet")

-- Cboe BzxEquities Top 1.3.8 Application Messages
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.client_heartbeat_message = ProtoField.new("Client Heartbeat Message", "cboe.bzxequities.top.asciipitch.v1.3.8.clientheartbeatmessage", ftypes.BYTES)
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.expanded_ask_update_message = ProtoField.new("Expanded Ask Update Message", "cboe.bzxequities.top.asciipitch.v1.3.8.expandedaskupdatemessage", ftypes.STRING)
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.expanded_bid_update_message = ProtoField.new("Expanded Bid Update Message", "cboe.bzxequities.top.asciipitch.v1.3.8.expandedbidupdatemessage", ftypes.STRING)
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.expanded_spin_message = ProtoField.new("Expanded Spin Message", "cboe.bzxequities.top.asciipitch.v1.3.8.expandedspinmessage", ftypes.STRING)
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.expanded_trade_message = ProtoField.new("Expanded Trade Message", "cboe.bzxequities.top.asciipitch.v1.3.8.expandedtrademessage", ftypes.STRING)
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.expanded_two_sided_update_message = ProtoField.new("Expanded Two Sided Update Message", "cboe.bzxequities.top.asciipitch.v1.3.8.expandedtwosidedupdatemessage", ftypes.STRING, nil, nil, nil, "Expanded Two-Sided Update Message")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.extended_ask_update_message = ProtoField.new("Extended Ask Update Message", "cboe.bzxequities.top.asciipitch.v1.3.8.extendedaskupdatemessage", ftypes.STRING)
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.extended_bid_update_message = ProtoField.new("Extended Bid Update Message", "cboe.bzxequities.top.asciipitch.v1.3.8.extendedbidupdatemessage", ftypes.STRING)
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.extended_spin_message = ProtoField.new("Extended Spin Message", "cboe.bzxequities.top.asciipitch.v1.3.8.extendedspinmessage", ftypes.STRING)
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.extended_trade_message = ProtoField.new("Extended Trade Message", "cboe.bzxequities.top.asciipitch.v1.3.8.extendedtrademessage", ftypes.STRING)
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.extended_two_sided_update_message = ProtoField.new("Extended Two Sided Update Message", "cboe.bzxequities.top.asciipitch.v1.3.8.extendedtwosidedupdatemessage", ftypes.STRING, nil, nil, nil, "Extended Two-Sided Update Message")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.logon_accepted_message = ProtoField.new("Logon Accepted Message", "cboe.bzxequities.top.asciipitch.v1.3.8.logonacceptedmessage", ftypes.BYTES)
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.logon_message = ProtoField.new("Logon Message", "cboe.bzxequities.top.asciipitch.v1.3.8.logonmessage", ftypes.STRING)
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.logon_rejected_message = ProtoField.new("Logon Rejected Message", "cboe.bzxequities.top.asciipitch.v1.3.8.logonrejectedmessage", ftypes.STRING)
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.long_ask_update_message = ProtoField.new("Long Ask Update Message", "cboe.bzxequities.top.asciipitch.v1.3.8.longaskupdatemessage", ftypes.STRING)
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.long_bid_update_message = ProtoField.new("Long Bid Update Message", "cboe.bzxequities.top.asciipitch.v1.3.8.longbidupdatemessage", ftypes.STRING)
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.long_trade_message = ProtoField.new("Long Trade Message", "cboe.bzxequities.top.asciipitch.v1.3.8.longtrademessage", ftypes.STRING)
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.long_two_sided_update_message = ProtoField.new("Long Two Sided Update Message", "cboe.bzxequities.top.asciipitch.v1.3.8.longtwosidedupdatemessage", ftypes.STRING, nil, nil, nil, "Long Two-Sided Update Message")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.milliseconds_message = ProtoField.new("Milliseconds Message", "cboe.bzxequities.top.asciipitch.v1.3.8.millisecondsmessage", ftypes.STRING, nil, nil, nil, "Sent for every millisecond for which at least one message is being generated.")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.seconds_message = ProtoField.new("Seconds Message", "cboe.bzxequities.top.asciipitch.v1.3.8.secondsmessage", ftypes.STRING, nil, nil, nil, "Sent for every second for which at least one message is being generated.")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.server_heartbeat_message = ProtoField.new("Server Heartbeat Message", "cboe.bzxequities.top.asciipitch.v1.3.8.serverheartbeatmessage", ftypes.BYTES)
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.short_ask_update_message = ProtoField.new("Short Ask Update Message", "cboe.bzxequities.top.asciipitch.v1.3.8.shortaskupdatemessage", ftypes.STRING)
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.short_bid_update_message = ProtoField.new("Short Bid Update Message", "cboe.bzxequities.top.asciipitch.v1.3.8.shortbidupdatemessage", ftypes.STRING)
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.short_trade_message = ProtoField.new("Short Trade Message", "cboe.bzxequities.top.asciipitch.v1.3.8.shorttrademessage", ftypes.STRING)
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.short_two_sided_update_message = ProtoField.new("Short Two Sided Update Message", "cboe.bzxequities.top.asciipitch.v1.3.8.shorttwosidedupdatemessage", ftypes.STRING, nil, nil, nil, "Short Two-Sided Update Message")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.spin_done_message = ProtoField.new("Spin Done Message", "cboe.bzxequities.top.asciipitch.v1.3.8.spindonemessage", ftypes.BYTES)
omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.bzxequities.top.asciipitch.v1.3.8.tradingstatusmessage", ftypes.STRING, nil, nil, nil, "The Trading Status Message is used to indicate the current trading status of a security.")

-- Cboe BzxEquities Top AsciiPitch 1.3.8 Expert Info
cboe_bzxequities_top_asciipitch_v1_3_8.experts = {}
cboe_bzxequities_top_asciipitch_v1_3_8.experts.not_a_number = ProtoExpert.new("cboe.bzxequities.top.asciipitch.v1.3.8.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_cboe_bzxequities_top_asciipitch_v1_3_8.experts = { cboe_bzxequities_top_asciipitch_v1_3_8.experts.not_a_number }

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe BzxEquities Top AsciiPitch 1.3.8 Element Dissection Options
show.application_messages = true
show.structs = true

-- Register Cboe BzxEquities Top AsciiPitch 1.3.8 Show Options
omi_cboe_bzxequities_top_asciipitch_v1_3_8.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_bzxequities_top_asciipitch_v1_3_8.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")

-- Handle changed preferences
function omi_cboe_bzxequities_top_asciipitch_v1_3_8.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_bzxequities_top_asciipitch_v1_3_8.prefs.show_application_messages then
    show.application_messages = omi_cboe_bzxequities_top_asciipitch_v1_3_8.prefs.show_application_messages
  end
  if show.structs ~= omi_cboe_bzxequities_top_asciipitch_v1_3_8.prefs.show_structs then
    show.structs = omi_cboe_bzxequities_top_asciipitch_v1_3_8.prefs.show_structs
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
-- Cboe BzxEquities Top AsciiPitch 1.3.8 Fields
-----------------------------------------------------------------------

-- Ask Price Extended
cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_extended = {}

-- Size: Ask Price Extended
cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_extended.size = 14

-- Display: Ask Price Extended
cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_extended.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_extended.size):string(), 2)

  if text == nil then
    return "Ask Price Extended: "..tostring(value)
  end

  return "Ask Price Extended: "..text
end

-- Dissect: Ask Price Extended
cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_extended.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_extended.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.ask_price_extended, range, value, "Ask Price Extended: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_top_asciipitch_v1_3_8.experts.not_a_number, "Ask Price Extended is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_extended.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.ask_price_extended, range, value, display)

  return offset + length, value
end

-- Ask Price Long
cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_long = {}

-- Size: Ask Price Long
cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_long.size = 10

-- Display: Ask Price Long
cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_long.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_long.size):string(), 4)

  if text == nil then
    return "Ask Price Long: "..tostring(value)
  end

  return "Ask Price Long: "..text
end

-- Dissect: Ask Price Long
cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.ask_price_long, range, value, "Ask Price Long: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_top_asciipitch_v1_3_8.experts.not_a_number, "Ask Price Long is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.ask_price_long, range, value, display)

  return offset + length, value
end

-- Ask Price Short
cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_short = {}

-- Size: Ask Price Short
cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_short.size = 5

-- Display: Ask Price Short
cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_short.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_short.size):string(), 2)

  if text == nil then
    return "Ask Price Short: "..tostring(value)
  end

  return "Ask Price Short: "..text
end

-- Dissect: Ask Price Short
cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.ask_price_short, range, value, "Ask Price Short: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_top_asciipitch_v1_3_8.experts.not_a_number, "Ask Price Short is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.ask_price_short, range, value, display)

  return offset + length, value
end

-- Ask Quantity Long
cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_long = {}

-- Size: Ask Quantity Long
cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_long.size = 6

-- Display: Ask Quantity Long
cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_long.display = function(value)
  return "Ask Quantity Long: "..value
end

-- Dissect: Ask Quantity Long
cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.ask_quantity_long, range, value, "Ask Quantity Long: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_top_asciipitch_v1_3_8.experts.not_a_number, "Ask Quantity Long is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.ask_quantity_long, range, value, display)

  return offset + length, value
end

-- Ask Quantity Short
cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_short = {}

-- Size: Ask Quantity Short
cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_short.size = 5

-- Display: Ask Quantity Short
cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_short.display = function(value)
  return "Ask Quantity Short: "..value
end

-- Dissect: Ask Quantity Short
cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.ask_quantity_short, range, value, "Ask Quantity Short: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_top_asciipitch_v1_3_8.experts.not_a_number, "Ask Quantity Short is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.ask_quantity_short, range, value, display)

  return offset + length, value
end

-- Bid Price Extended
cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_extended = {}

-- Size: Bid Price Extended
cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_extended.size = 14

-- Display: Bid Price Extended
cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_extended.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_extended.size):string(), 2)

  if text == nil then
    return "Bid Price Extended: "..tostring(value)
  end

  return "Bid Price Extended: "..text
end

-- Dissect: Bid Price Extended
cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_extended.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_extended.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.bid_price_extended, range, value, "Bid Price Extended: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_top_asciipitch_v1_3_8.experts.not_a_number, "Bid Price Extended is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_extended.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.bid_price_extended, range, value, display)

  return offset + length, value
end

-- Bid Price Long
cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_long = {}

-- Size: Bid Price Long
cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_long.size = 10

-- Display: Bid Price Long
cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_long.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_long.size):string(), 4)

  if text == nil then
    return "Bid Price Long: "..tostring(value)
  end

  return "Bid Price Long: "..text
end

-- Dissect: Bid Price Long
cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.bid_price_long, range, value, "Bid Price Long: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_top_asciipitch_v1_3_8.experts.not_a_number, "Bid Price Long is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.bid_price_long, range, value, display)

  return offset + length, value
end

-- Bid Price Short
cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_short = {}

-- Size: Bid Price Short
cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_short.size = 5

-- Display: Bid Price Short
cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_short.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_short.size):string(), 2)

  if text == nil then
    return "Bid Price Short: "..tostring(value)
  end

  return "Bid Price Short: "..text
end

-- Dissect: Bid Price Short
cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.bid_price_short, range, value, "Bid Price Short: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_top_asciipitch_v1_3_8.experts.not_a_number, "Bid Price Short is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Bid Quantity Long
cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_long = {}

-- Size: Bid Quantity Long
cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_long.size = 6

-- Display: Bid Quantity Long
cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_long.display = function(value)
  return "Bid Quantity Long: "..value
end

-- Dissect: Bid Quantity Long
cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.bid_quantity_long, range, value, "Bid Quantity Long: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_top_asciipitch_v1_3_8.experts.not_a_number, "Bid Quantity Long is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.bid_quantity_long, range, value, display)

  return offset + length, value
end

-- Bid Quantity Short
cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_short = {}

-- Size: Bid Quantity Short
cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_short.size = 5

-- Display: Bid Quantity Short
cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_short.display = function(value)
  return "Bid Quantity Short: "..value
end

-- Dissect: Bid Quantity Short
cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.bid_quantity_short, range, value, "Bid Quantity Short: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_top_asciipitch_v1_3_8.experts.not_a_number, "Bid Quantity Short is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.bid_quantity_short, range, value, display)

  return offset + length, value
end

-- Cumulative Volume Long
cboe_bzxequities_top_asciipitch_v1_3_8.cumulative_volume_long = {}

-- Size: Cumulative Volume Long
cboe_bzxequities_top_asciipitch_v1_3_8.cumulative_volume_long.size = 9

-- Display: Cumulative Volume Long
cboe_bzxequities_top_asciipitch_v1_3_8.cumulative_volume_long.display = function(value)
  return "Cumulative Volume Long: "..value
end

-- Dissect: Cumulative Volume Long
cboe_bzxequities_top_asciipitch_v1_3_8.cumulative_volume_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.cumulative_volume_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.cumulative_volume_long, range, value, "Cumulative Volume Long: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_top_asciipitch_v1_3_8.experts.not_a_number, "Cumulative Volume Long is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_top_asciipitch_v1_3_8.cumulative_volume_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.cumulative_volume_long, range, value, display)

  return offset + length, value
end

-- Cumulative Volume Short
cboe_bzxequities_top_asciipitch_v1_3_8.cumulative_volume_short = {}

-- Size: Cumulative Volume Short
cboe_bzxequities_top_asciipitch_v1_3_8.cumulative_volume_short.size = 7

-- Display: Cumulative Volume Short
cboe_bzxequities_top_asciipitch_v1_3_8.cumulative_volume_short.display = function(value)
  return "Cumulative Volume Short: "..value
end

-- Dissect: Cumulative Volume Short
cboe_bzxequities_top_asciipitch_v1_3_8.cumulative_volume_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.cumulative_volume_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.cumulative_volume_short, range, value, "Cumulative Volume Short: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_top_asciipitch_v1_3_8.experts.not_a_number, "Cumulative Volume Short is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_top_asciipitch_v1_3_8.cumulative_volume_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.cumulative_volume_short, range, value, display)

  return offset + length, value
end

-- Halt Status
cboe_bzxequities_top_asciipitch_v1_3_8.halt_status = {}

-- Size: Halt Status
cboe_bzxequities_top_asciipitch_v1_3_8.halt_status.size = 1

-- Display: Halt Status
cboe_bzxequities_top_asciipitch_v1_3_8.halt_status.display = function(value)
  return "Halt Status: "..value
end

-- Dissect: Halt Status
cboe_bzxequities_top_asciipitch_v1_3_8.halt_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.halt_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_top_asciipitch_v1_3_8.halt_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.halt_status, range, value, display)

  return offset + length, value
end

-- Last Price Extended
cboe_bzxequities_top_asciipitch_v1_3_8.last_price_extended = {}

-- Size: Last Price Extended
cboe_bzxequities_top_asciipitch_v1_3_8.last_price_extended.size = 14

-- Display: Last Price Extended
cboe_bzxequities_top_asciipitch_v1_3_8.last_price_extended.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_bzxequities_top_asciipitch_v1_3_8.last_price_extended.size):string(), 2)

  if text == nil then
    return "Last Price Extended: "..tostring(value)
  end

  return "Last Price Extended: "..text
end

-- Dissect: Last Price Extended
cboe_bzxequities_top_asciipitch_v1_3_8.last_price_extended.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.last_price_extended.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.last_price_extended, range, value, "Last Price Extended: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_top_asciipitch_v1_3_8.experts.not_a_number, "Last Price Extended is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = cboe_bzxequities_top_asciipitch_v1_3_8.last_price_extended.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.last_price_extended, range, value, display)

  return offset + length, value
end

-- Last Price Long
cboe_bzxequities_top_asciipitch_v1_3_8.last_price_long = {}

-- Size: Last Price Long
cboe_bzxequities_top_asciipitch_v1_3_8.last_price_long.size = 10

-- Display: Last Price Long
cboe_bzxequities_top_asciipitch_v1_3_8.last_price_long.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_bzxequities_top_asciipitch_v1_3_8.last_price_long.size):string(), 4)

  if text == nil then
    return "Last Price Long: "..tostring(value)
  end

  return "Last Price Long: "..text
end

-- Dissect: Last Price Long
cboe_bzxequities_top_asciipitch_v1_3_8.last_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.last_price_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.last_price_long, range, value, "Last Price Long: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_top_asciipitch_v1_3_8.experts.not_a_number, "Last Price Long is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = cboe_bzxequities_top_asciipitch_v1_3_8.last_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.last_price_long, range, value, display)

  return offset + length, value
end

-- Last Price Short
cboe_bzxequities_top_asciipitch_v1_3_8.last_price_short = {}

-- Size: Last Price Short
cboe_bzxequities_top_asciipitch_v1_3_8.last_price_short.size = 5

-- Display: Last Price Short
cboe_bzxequities_top_asciipitch_v1_3_8.last_price_short.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_bzxequities_top_asciipitch_v1_3_8.last_price_short.size):string(), 2)

  if text == nil then
    return "Last Price Short: "..tostring(value)
  end

  return "Last Price Short: "..text
end

-- Dissect: Last Price Short
cboe_bzxequities_top_asciipitch_v1_3_8.last_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.last_price_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.last_price_short, range, value, "Last Price Short: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_top_asciipitch_v1_3_8.experts.not_a_number, "Last Price Short is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = cboe_bzxequities_top_asciipitch_v1_3_8.last_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.last_price_short, range, value, display)

  return offset + length, value
end

-- Last Quantity Long
cboe_bzxequities_top_asciipitch_v1_3_8.last_quantity_long = {}

-- Size: Last Quantity Long
cboe_bzxequities_top_asciipitch_v1_3_8.last_quantity_long.size = 6

-- Display: Last Quantity Long
cboe_bzxequities_top_asciipitch_v1_3_8.last_quantity_long.display = function(value)
  return "Last Quantity Long: "..value
end

-- Dissect: Last Quantity Long
cboe_bzxequities_top_asciipitch_v1_3_8.last_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.last_quantity_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.last_quantity_long, range, value, "Last Quantity Long: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_top_asciipitch_v1_3_8.experts.not_a_number, "Last Quantity Long is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_top_asciipitch_v1_3_8.last_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.last_quantity_long, range, value, display)

  return offset + length, value
end

-- Last Quantity Short
cboe_bzxequities_top_asciipitch_v1_3_8.last_quantity_short = {}

-- Size: Last Quantity Short
cboe_bzxequities_top_asciipitch_v1_3_8.last_quantity_short.size = 5

-- Display: Last Quantity Short
cboe_bzxequities_top_asciipitch_v1_3_8.last_quantity_short.display = function(value)
  return "Last Quantity Short: "..value
end

-- Dissect: Last Quantity Short
cboe_bzxequities_top_asciipitch_v1_3_8.last_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.last_quantity_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.last_quantity_short, range, value, "Last Quantity Short: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_top_asciipitch_v1_3_8.experts.not_a_number, "Last Quantity Short is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_top_asciipitch_v1_3_8.last_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.last_quantity_short, range, value, display)

  return offset + length, value
end

-- Last Trade Price Long
cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_price_long = {}

-- Size: Last Trade Price Long
cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_price_long.size = 14

-- Display: Last Trade Price Long
cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_price_long.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_price_long.size):string(), 2)

  if text == nil then
    return "Last Trade Price Long: "..tostring(value)
  end

  return "Last Trade Price Long: "..text
end

-- Dissect: Last Trade Price Long
cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_price_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.last_trade_price_long, range, value, "Last Trade Price Long: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_top_asciipitch_v1_3_8.experts.not_a_number, "Last Trade Price Long is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.last_trade_price_long, range, value, display)

  return offset + length, value
end

-- Last Trade Price Short
cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_price_short = {}

-- Size: Last Trade Price Short
cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_price_short.size = 10

-- Display: Last Trade Price Short
cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_price_short.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_price_short.size):string(), 4)

  if text == nil then
    return "Last Trade Price Short: "..tostring(value)
  end

  return "Last Trade Price Short: "..text
end

-- Dissect: Last Trade Price Short
cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_price_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.last_trade_price_short, range, value, "Last Trade Price Short: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_top_asciipitch_v1_3_8.experts.not_a_number, "Last Trade Price Short is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.last_trade_price_short, range, value, display)

  return offset + length, value
end

-- Last Trade Size
cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_size = {}

-- Size: Last Trade Size
cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_size.size = 6

-- Display: Last Trade Size
cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_size.display = function(value)
  return "Last Trade Size: "..value
end

-- Dissect: Last Trade Size
cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.last_trade_size, range, value, "Last Trade Size: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_top_asciipitch_v1_3_8.experts.not_a_number, "Last Trade Size is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.last_trade_size, range, value, display)

  return offset + length, value
end

-- Last Trade Time
cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_time = {}

-- Size: Last Trade Time
cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_time.size = 8

-- Display: Last Trade Time
cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_time.display = function(value)
  return "Last Trade Time: "..value
end

-- Dissect: Last Trade Time
cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_time.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.last_trade_time, range, value, "Last Trade Time: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_top_asciipitch_v1_3_8.experts.not_a_number, "Last Trade Time is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.last_trade_time, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_bzxequities_top_asciipitch_v1_3_8.message_type = {}

-- Size: Message Type
cboe_bzxequities_top_asciipitch_v1_3_8.message_type.size = 1

-- Display: Message Type
cboe_bzxequities_top_asciipitch_v1_3_8.message_type.labels = {
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

cboe_bzxequities_top_asciipitch_v1_3_8.message_type.display = function(value)
  return cboe_bzxequities_top_asciipitch_v1_3_8.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_bzxequities_top_asciipitch_v1_3_8.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_top_asciipitch_v1_3_8.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.message_type, range, value, display)

  return offset + length, value
end

-- Milliseconds
cboe_bzxequities_top_asciipitch_v1_3_8.milliseconds = {}

-- Size: Milliseconds
cboe_bzxequities_top_asciipitch_v1_3_8.milliseconds.size = 3

-- Display: Milliseconds
cboe_bzxequities_top_asciipitch_v1_3_8.milliseconds.display = function(value)
  return "Milliseconds: "..value
end

-- Dissect: Milliseconds
cboe_bzxequities_top_asciipitch_v1_3_8.milliseconds.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.milliseconds.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.milliseconds, range, value, "Milliseconds: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_top_asciipitch_v1_3_8.experts.not_a_number, "Milliseconds is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_top_asciipitch_v1_3_8.milliseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.milliseconds, range, value, display)

  return offset + length, value
end

-- Password
cboe_bzxequities_top_asciipitch_v1_3_8.password = {}

-- Size: Password
cboe_bzxequities_top_asciipitch_v1_3_8.password.size = 10

-- Display: Password
cboe_bzxequities_top_asciipitch_v1_3_8.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_bzxequities_top_asciipitch_v1_3_8.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxequities_top_asciipitch_v1_3_8.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.password, range, value, display)

  return offset + length, value
end

-- Reg SHO Action
cboe_bzxequities_top_asciipitch_v1_3_8.reg_sho_action = {}

-- Size: Reg SHO Action
cboe_bzxequities_top_asciipitch_v1_3_8.reg_sho_action.size = 1

-- Display: Reg SHO Action
cboe_bzxequities_top_asciipitch_v1_3_8.reg_sho_action.labels = {
  ["0"] = "Reg SHO Action: No Price Test In Effect (0)",
  ["1"] = "Reg SHO Action: Reg Sho Price Test Restriction In Effect (1)",
}

cboe_bzxequities_top_asciipitch_v1_3_8.reg_sho_action.display = function(value)
  return cboe_bzxequities_top_asciipitch_v1_3_8.reg_sho_action.labels[value] or "Reg SHO Action: Unknown("..value..")"
end

-- Dissect: Reg SHO Action
cboe_bzxequities_top_asciipitch_v1_3_8.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_top_asciipitch_v1_3_8.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Reject Reason
cboe_bzxequities_top_asciipitch_v1_3_8.reject_reason = {}

-- Size: Reject Reason
cboe_bzxequities_top_asciipitch_v1_3_8.reject_reason.size = 1

-- Display: Reject Reason
cboe_bzxequities_top_asciipitch_v1_3_8.reject_reason.display = function(value)
  return "Reject Reason: "..value
end

-- Dissect: Reject Reason
cboe_bzxequities_top_asciipitch_v1_3_8.reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_top_asciipitch_v1_3_8.reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.reject_reason, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_bzxequities_top_asciipitch_v1_3_8.reserved_1 = {}

-- Size: Reserved 1
cboe_bzxequities_top_asciipitch_v1_3_8.reserved_1.size = 1

-- Display: Reserved 1
cboe_bzxequities_top_asciipitch_v1_3_8.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_bzxequities_top_asciipitch_v1_3_8.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_top_asciipitch_v1_3_8.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
cboe_bzxequities_top_asciipitch_v1_3_8.reserved_2 = {}

-- Size: Reserved 2
cboe_bzxequities_top_asciipitch_v1_3_8.reserved_2.size = 1

-- Display: Reserved 2
cboe_bzxequities_top_asciipitch_v1_3_8.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_bzxequities_top_asciipitch_v1_3_8.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.reserved_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_top_asciipitch_v1_3_8.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Seconds
cboe_bzxequities_top_asciipitch_v1_3_8.seconds = {}

-- Size: Seconds
cboe_bzxequities_top_asciipitch_v1_3_8.seconds.size = 5

-- Display: Seconds
cboe_bzxequities_top_asciipitch_v1_3_8.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
cboe_bzxequities_top_asciipitch_v1_3_8.seconds.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.seconds.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.seconds, range, value, "Seconds: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_top_asciipitch_v1_3_8.experts.not_a_number, "Seconds is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_top_asciipitch_v1_3_8.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.seconds, range, value, display)

  return offset + length, value
end

-- Spin Flag
cboe_bzxequities_top_asciipitch_v1_3_8.spin_flag = {}

-- Size: Spin Flag
cboe_bzxequities_top_asciipitch_v1_3_8.spin_flag.size = 1

-- Display: Spin Flag
cboe_bzxequities_top_asciipitch_v1_3_8.spin_flag.display = function(value)
  return "Spin Flag: "..value
end

-- Dissect: Spin Flag
cboe_bzxequities_top_asciipitch_v1_3_8.spin_flag.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.spin_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_top_asciipitch_v1_3_8.spin_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.spin_flag, range, value, display)

  return offset + length, value
end

-- Symbol Extended
cboe_bzxequities_top_asciipitch_v1_3_8.symbol_extended = {}

-- Size: Symbol Extended
cboe_bzxequities_top_asciipitch_v1_3_8.symbol_extended.size = 8

-- Display: Symbol Extended
cboe_bzxequities_top_asciipitch_v1_3_8.symbol_extended.display = function(value)
  return "Symbol Extended: "..value
end

-- Dissect: Symbol Extended
cboe_bzxequities_top_asciipitch_v1_3_8.symbol_extended.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.symbol_extended.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxequities_top_asciipitch_v1_3_8.symbol_extended.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.symbol_extended, range, value, display)

  return offset + length, value
end

-- Symbol Long
cboe_bzxequities_top_asciipitch_v1_3_8.symbol_long = {}

-- Size: Symbol Long
cboe_bzxequities_top_asciipitch_v1_3_8.symbol_long.size = 6

-- Display: Symbol Long
cboe_bzxequities_top_asciipitch_v1_3_8.symbol_long.display = function(value)
  return "Symbol Long: "..value
end

-- Dissect: Symbol Long
cboe_bzxequities_top_asciipitch_v1_3_8.symbol_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.symbol_long.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxequities_top_asciipitch_v1_3_8.symbol_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.symbol_long, range, value, display)

  return offset + length, value
end

-- Symbol Short
cboe_bzxequities_top_asciipitch_v1_3_8.symbol_short = {}

-- Size: Symbol Short
cboe_bzxequities_top_asciipitch_v1_3_8.symbol_short.size = 4

-- Display: Symbol Short
cboe_bzxequities_top_asciipitch_v1_3_8.symbol_short.display = function(value)
  return "Symbol Short: "..value
end

-- Dissect: Symbol Short
cboe_bzxequities_top_asciipitch_v1_3_8.symbol_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.symbol_short.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxequities_top_asciipitch_v1_3_8.symbol_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.symbol_short, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_bzxequities_top_asciipitch_v1_3_8.timestamp = {}

-- Size: Timestamp
cboe_bzxequities_top_asciipitch_v1_3_8.timestamp.size = 8

-- Display: Timestamp
cboe_bzxequities_top_asciipitch_v1_3_8.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_bzxequities_top_asciipitch_v1_3_8.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.timestamp, range, value, "Timestamp: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_top_asciipitch_v1_3_8.experts.not_a_number, "Timestamp is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_top_asciipitch_v1_3_8.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Top Lf
cboe_bzxequities_top_asciipitch_v1_3_8.top_lf = {}

-- Size: Top Lf
cboe_bzxequities_top_asciipitch_v1_3_8.top_lf.size = 1

-- Display: Top Lf
cboe_bzxequities_top_asciipitch_v1_3_8.top_lf.display = function(value)
  if value == 10 then
    return "Top Lf: Line Feed"
  end

  return "Top Lf: Unknown("..value..")"
end

-- Dissect: Top Lf
cboe_bzxequities_top_asciipitch_v1_3_8.top_lf.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.top_lf.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_bzxequities_top_asciipitch_v1_3_8.top_lf.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.top_lf, range, value, display)

  return offset + length, value
end

-- Username
cboe_bzxequities_top_asciipitch_v1_3_8.username = {}

-- Size: Username
cboe_bzxequities_top_asciipitch_v1_3_8.username.size = 6

-- Display: Username
cboe_bzxequities_top_asciipitch_v1_3_8.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_bzxequities_top_asciipitch_v1_3_8.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_top_asciipitch_v1_3_8.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxequities_top_asciipitch_v1_3_8.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe BzxEquities Top AsciiPitch 1.3.8
-----------------------------------------------------------------------

-- Trading Status Message
cboe_bzxequities_top_asciipitch_v1_3_8.trading_status_message = {}

-- Size: Trading Status Message
cboe_bzxequities_top_asciipitch_v1_3_8.trading_status_message.size =
  cboe_bzxequities_top_asciipitch_v1_3_8.symbol_extended.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.halt_status.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.reg_sho_action.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.reserved_1.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.reserved_2.size

-- Display: Trading Status Message
cboe_bzxequities_top_asciipitch_v1_3_8.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_bzxequities_top_asciipitch_v1_3_8.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_bzxequities_top_asciipitch_v1_3_8.symbol_extended.dissect(buffer, index, packet, parent)

  -- Halt Status: Alpha
  index, halt_status = cboe_bzxequities_top_asciipitch_v1_3_8.halt_status.dissect(buffer, index, packet, parent)

  -- Reg SHO Action: Alpha
  index, reg_sho_action = cboe_bzxequities_top_asciipitch_v1_3_8.reg_sho_action.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = cboe_bzxequities_top_asciipitch_v1_3_8.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 2: Alpha
  index, reserved_2 = cboe_bzxequities_top_asciipitch_v1_3_8.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_bzxequities_top_asciipitch_v1_3_8.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_bzxequities_top_asciipitch_v1_3_8.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_top_asciipitch_v1_3_8.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_top_asciipitch_v1_3_8.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Trade Message
cboe_bzxequities_top_asciipitch_v1_3_8.extended_trade_message = {}

-- Size: Extended Trade Message
cboe_bzxequities_top_asciipitch_v1_3_8.extended_trade_message.size =
  cboe_bzxequities_top_asciipitch_v1_3_8.symbol_extended.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.last_price_extended.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.last_quantity_long.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.cumulative_volume_long.size

-- Display: Extended Trade Message
cboe_bzxequities_top_asciipitch_v1_3_8.extended_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Trade Message
cboe_bzxequities_top_asciipitch_v1_3_8.extended_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_bzxequities_top_asciipitch_v1_3_8.symbol_extended.dissect(buffer, index, packet, parent)

  -- Last Price Extended: Price
  index, last_price_extended = cboe_bzxequities_top_asciipitch_v1_3_8.last_price_extended.dissect(buffer, index, packet, parent)

  -- Last Quantity Long: Numeric
  index, last_quantity_long = cboe_bzxequities_top_asciipitch_v1_3_8.last_quantity_long.dissect(buffer, index, packet, parent)

  -- Cumulative Volume Long: Numeric
  index, cumulative_volume_long = cboe_bzxequities_top_asciipitch_v1_3_8.cumulative_volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Trade Message
cboe_bzxequities_top_asciipitch_v1_3_8.extended_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.extended_trade_message, buffer(offset, 0))
    local index = cboe_bzxequities_top_asciipitch_v1_3_8.extended_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_top_asciipitch_v1_3_8.extended_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_top_asciipitch_v1_3_8.extended_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Trade Message
cboe_bzxequities_top_asciipitch_v1_3_8.short_trade_message = {}

-- Size: Short Trade Message
cboe_bzxequities_top_asciipitch_v1_3_8.short_trade_message.size =
  cboe_bzxequities_top_asciipitch_v1_3_8.symbol_short.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.last_price_short.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.last_quantity_short.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.cumulative_volume_short.size

-- Display: Short Trade Message
cboe_bzxequities_top_asciipitch_v1_3_8.short_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Trade Message
cboe_bzxequities_top_asciipitch_v1_3_8.short_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Short: Alpha
  index, symbol_short = cboe_bzxequities_top_asciipitch_v1_3_8.symbol_short.dissect(buffer, index, packet, parent)

  -- Last Price Short: Price
  index, last_price_short = cboe_bzxequities_top_asciipitch_v1_3_8.last_price_short.dissect(buffer, index, packet, parent)

  -- Last Quantity Short: Numeric
  index, last_quantity_short = cboe_bzxequities_top_asciipitch_v1_3_8.last_quantity_short.dissect(buffer, index, packet, parent)

  -- Cumulative Volume Short: Numeric
  index, cumulative_volume_short = cboe_bzxequities_top_asciipitch_v1_3_8.cumulative_volume_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Trade Message
cboe_bzxequities_top_asciipitch_v1_3_8.short_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.short_trade_message, buffer(offset, 0))
    local index = cboe_bzxequities_top_asciipitch_v1_3_8.short_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_top_asciipitch_v1_3_8.short_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_top_asciipitch_v1_3_8.short_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Trade Message
cboe_bzxequities_top_asciipitch_v1_3_8.long_trade_message = {}

-- Size: Long Trade Message
cboe_bzxequities_top_asciipitch_v1_3_8.long_trade_message.size =
  cboe_bzxequities_top_asciipitch_v1_3_8.symbol_long.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.last_price_long.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.last_quantity_long.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.cumulative_volume_long.size

-- Display: Long Trade Message
cboe_bzxequities_top_asciipitch_v1_3_8.long_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Trade Message
cboe_bzxequities_top_asciipitch_v1_3_8.long_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Long: Alpha
  index, symbol_long = cboe_bzxequities_top_asciipitch_v1_3_8.symbol_long.dissect(buffer, index, packet, parent)

  -- Last Price Long: Price
  index, last_price_long = cboe_bzxequities_top_asciipitch_v1_3_8.last_price_long.dissect(buffer, index, packet, parent)

  -- Last Quantity Long: Numeric
  index, last_quantity_long = cboe_bzxequities_top_asciipitch_v1_3_8.last_quantity_long.dissect(buffer, index, packet, parent)

  -- Cumulative Volume Long: Numeric
  index, cumulative_volume_long = cboe_bzxequities_top_asciipitch_v1_3_8.cumulative_volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Trade Message
cboe_bzxequities_top_asciipitch_v1_3_8.long_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.long_trade_message, buffer(offset, 0))
    local index = cboe_bzxequities_top_asciipitch_v1_3_8.long_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_top_asciipitch_v1_3_8.long_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_top_asciipitch_v1_3_8.long_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Trade Message
cboe_bzxequities_top_asciipitch_v1_3_8.expanded_trade_message = {}

-- Size: Expanded Trade Message
cboe_bzxequities_top_asciipitch_v1_3_8.expanded_trade_message.size =
  cboe_bzxequities_top_asciipitch_v1_3_8.symbol_extended.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.last_price_long.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.last_quantity_long.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.cumulative_volume_long.size

-- Display: Expanded Trade Message
cboe_bzxequities_top_asciipitch_v1_3_8.expanded_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Trade Message
cboe_bzxequities_top_asciipitch_v1_3_8.expanded_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_bzxequities_top_asciipitch_v1_3_8.symbol_extended.dissect(buffer, index, packet, parent)

  -- Last Price Long: Price
  index, last_price_long = cboe_bzxequities_top_asciipitch_v1_3_8.last_price_long.dissect(buffer, index, packet, parent)

  -- Last Quantity Long: Numeric
  index, last_quantity_long = cboe_bzxequities_top_asciipitch_v1_3_8.last_quantity_long.dissect(buffer, index, packet, parent)

  -- Cumulative Volume Long: Numeric
  index, cumulative_volume_long = cboe_bzxequities_top_asciipitch_v1_3_8.cumulative_volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Trade Message
cboe_bzxequities_top_asciipitch_v1_3_8.expanded_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.expanded_trade_message, buffer(offset, 0))
    local index = cboe_bzxequities_top_asciipitch_v1_3_8.expanded_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_top_asciipitch_v1_3_8.expanded_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_top_asciipitch_v1_3_8.expanded_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Two Sided Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.extended_two_sided_update_message = {}

-- Size: Extended Two Sided Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.extended_two_sided_update_message.size =
  cboe_bzxequities_top_asciipitch_v1_3_8.symbol_extended.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_extended.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_long.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_extended.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_long.size

-- Display: Extended Two Sided Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.extended_two_sided_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Two Sided Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.extended_two_sided_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_bzxequities_top_asciipitch_v1_3_8.symbol_extended.dissect(buffer, index, packet, parent)

  -- Bid Price Extended: Price
  index, bid_price_extended = cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_extended.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Numeric
  index, bid_quantity_long = cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_long.dissect(buffer, index, packet, parent)

  -- Ask Price Extended: Price
  index, ask_price_extended = cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_extended.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Numeric
  index, ask_quantity_long = cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Two Sided Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.extended_two_sided_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.extended_two_sided_update_message, buffer(offset, 0))
    local index = cboe_bzxequities_top_asciipitch_v1_3_8.extended_two_sided_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_top_asciipitch_v1_3_8.extended_two_sided_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_top_asciipitch_v1_3_8.extended_two_sided_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Two Sided Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.short_two_sided_update_message = {}

-- Size: Short Two Sided Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.short_two_sided_update_message.size =
  cboe_bzxequities_top_asciipitch_v1_3_8.symbol_short.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_short.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_short.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_short.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_short.size

-- Display: Short Two Sided Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.short_two_sided_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Two Sided Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.short_two_sided_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Short: Alpha
  index, symbol_short = cboe_bzxequities_top_asciipitch_v1_3_8.symbol_short.dissect(buffer, index, packet, parent)

  -- Bid Price Short: Price
  index, bid_price_short = cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Quantity Short: Numeric
  index, bid_quantity_short = cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_short.dissect(buffer, index, packet, parent)

  -- Ask Price Short: Price
  index, ask_price_short = cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_short.dissect(buffer, index, packet, parent)

  -- Ask Quantity Short: Numeric
  index, ask_quantity_short = cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Two Sided Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.short_two_sided_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.short_two_sided_update_message, buffer(offset, 0))
    local index = cboe_bzxequities_top_asciipitch_v1_3_8.short_two_sided_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_top_asciipitch_v1_3_8.short_two_sided_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_top_asciipitch_v1_3_8.short_two_sided_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Two Sided Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.long_two_sided_update_message = {}

-- Size: Long Two Sided Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.long_two_sided_update_message.size =
  cboe_bzxequities_top_asciipitch_v1_3_8.symbol_long.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_long.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_long.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_long.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_long.size

-- Display: Long Two Sided Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.long_two_sided_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Two Sided Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.long_two_sided_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Long: Alpha
  index, symbol_long = cboe_bzxequities_top_asciipitch_v1_3_8.symbol_long.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Price
  index, bid_price_long = cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Numeric
  index, bid_quantity_long = cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Price
  index, ask_price_long = cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Numeric
  index, ask_quantity_long = cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Two Sided Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.long_two_sided_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.long_two_sided_update_message, buffer(offset, 0))
    local index = cboe_bzxequities_top_asciipitch_v1_3_8.long_two_sided_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_top_asciipitch_v1_3_8.long_two_sided_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_top_asciipitch_v1_3_8.long_two_sided_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Two Sided Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.expanded_two_sided_update_message = {}

-- Size: Expanded Two Sided Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.expanded_two_sided_update_message.size =
  cboe_bzxequities_top_asciipitch_v1_3_8.symbol_extended.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_long.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_long.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_long.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_long.size

-- Display: Expanded Two Sided Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.expanded_two_sided_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Two Sided Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.expanded_two_sided_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_bzxequities_top_asciipitch_v1_3_8.symbol_extended.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Price
  index, bid_price_long = cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Numeric
  index, bid_quantity_long = cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Price
  index, ask_price_long = cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Numeric
  index, ask_quantity_long = cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Two Sided Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.expanded_two_sided_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.expanded_two_sided_update_message, buffer(offset, 0))
    local index = cboe_bzxequities_top_asciipitch_v1_3_8.expanded_two_sided_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_top_asciipitch_v1_3_8.expanded_two_sided_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_top_asciipitch_v1_3_8.expanded_two_sided_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Ask Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.extended_ask_update_message = {}

-- Size: Extended Ask Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.extended_ask_update_message.size =
  cboe_bzxequities_top_asciipitch_v1_3_8.symbol_extended.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_extended.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_long.size

-- Display: Extended Ask Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.extended_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Ask Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.extended_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_bzxequities_top_asciipitch_v1_3_8.symbol_extended.dissect(buffer, index, packet, parent)

  -- Ask Price Extended: Price
  index, ask_price_extended = cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_extended.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Numeric
  index, ask_quantity_long = cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Ask Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.extended_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.extended_ask_update_message, buffer(offset, 0))
    local index = cboe_bzxequities_top_asciipitch_v1_3_8.extended_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_top_asciipitch_v1_3_8.extended_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_top_asciipitch_v1_3_8.extended_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Ask Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.short_ask_update_message = {}

-- Size: Short Ask Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.short_ask_update_message.size =
  cboe_bzxequities_top_asciipitch_v1_3_8.symbol_short.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_short.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_short.size

-- Display: Short Ask Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.short_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Ask Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.short_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Short: Alpha
  index, symbol_short = cboe_bzxequities_top_asciipitch_v1_3_8.symbol_short.dissect(buffer, index, packet, parent)

  -- Ask Price Short: Price
  index, ask_price_short = cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_short.dissect(buffer, index, packet, parent)

  -- Ask Quantity Short: Numeric
  index, ask_quantity_short = cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Ask Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.short_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.short_ask_update_message, buffer(offset, 0))
    local index = cboe_bzxequities_top_asciipitch_v1_3_8.short_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_top_asciipitch_v1_3_8.short_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_top_asciipitch_v1_3_8.short_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Ask Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.long_ask_update_message = {}

-- Size: Long Ask Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.long_ask_update_message.size =
  cboe_bzxequities_top_asciipitch_v1_3_8.symbol_long.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_long.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_long.size

-- Display: Long Ask Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.long_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Ask Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.long_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Long: Alpha
  index, symbol_long = cboe_bzxequities_top_asciipitch_v1_3_8.symbol_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Price
  index, ask_price_long = cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Numeric
  index, ask_quantity_long = cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Ask Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.long_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.long_ask_update_message, buffer(offset, 0))
    local index = cboe_bzxequities_top_asciipitch_v1_3_8.long_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_top_asciipitch_v1_3_8.long_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_top_asciipitch_v1_3_8.long_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Ask Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.expanded_ask_update_message = {}

-- Size: Expanded Ask Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.expanded_ask_update_message.size =
  cboe_bzxequities_top_asciipitch_v1_3_8.symbol_extended.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_long.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_long.size

-- Display: Expanded Ask Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.expanded_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Ask Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.expanded_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_bzxequities_top_asciipitch_v1_3_8.symbol_extended.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Price
  index, ask_price_long = cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Numeric
  index, ask_quantity_long = cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Ask Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.expanded_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.expanded_ask_update_message, buffer(offset, 0))
    local index = cboe_bzxequities_top_asciipitch_v1_3_8.expanded_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_top_asciipitch_v1_3_8.expanded_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_top_asciipitch_v1_3_8.expanded_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Bid Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.extended_bid_update_message = {}

-- Size: Extended Bid Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.extended_bid_update_message.size =
  cboe_bzxequities_top_asciipitch_v1_3_8.symbol_extended.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_extended.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_long.size

-- Display: Extended Bid Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.extended_bid_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Bid Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.extended_bid_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_bzxequities_top_asciipitch_v1_3_8.symbol_extended.dissect(buffer, index, packet, parent)

  -- Bid Price Extended: Price
  index, bid_price_extended = cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_extended.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Numeric
  index, bid_quantity_long = cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Bid Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.extended_bid_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.extended_bid_update_message, buffer(offset, 0))
    local index = cboe_bzxequities_top_asciipitch_v1_3_8.extended_bid_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_top_asciipitch_v1_3_8.extended_bid_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_top_asciipitch_v1_3_8.extended_bid_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Bid Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.short_bid_update_message = {}

-- Size: Short Bid Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.short_bid_update_message.size =
  cboe_bzxequities_top_asciipitch_v1_3_8.symbol_short.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_short.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_short.size

-- Display: Short Bid Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.short_bid_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Bid Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.short_bid_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Short: Alpha
  index, symbol_short = cboe_bzxequities_top_asciipitch_v1_3_8.symbol_short.dissect(buffer, index, packet, parent)

  -- Bid Price Short: Price
  index, bid_price_short = cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Quantity Short: Numeric
  index, bid_quantity_short = cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Bid Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.short_bid_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.short_bid_update_message, buffer(offset, 0))
    local index = cboe_bzxequities_top_asciipitch_v1_3_8.short_bid_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_top_asciipitch_v1_3_8.short_bid_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_top_asciipitch_v1_3_8.short_bid_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Bid Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.long_bid_update_message = {}

-- Size: Long Bid Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.long_bid_update_message.size =
  cboe_bzxequities_top_asciipitch_v1_3_8.symbol_long.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_long.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_long.size

-- Display: Long Bid Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.long_bid_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Bid Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.long_bid_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Long: Alpha
  index, symbol_long = cboe_bzxequities_top_asciipitch_v1_3_8.symbol_long.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Price
  index, bid_price_long = cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Numeric
  index, bid_quantity_long = cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Bid Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.long_bid_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.long_bid_update_message, buffer(offset, 0))
    local index = cboe_bzxequities_top_asciipitch_v1_3_8.long_bid_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_top_asciipitch_v1_3_8.long_bid_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_top_asciipitch_v1_3_8.long_bid_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Bid Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.expanded_bid_update_message = {}

-- Size: Expanded Bid Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.expanded_bid_update_message.size =
  cboe_bzxequities_top_asciipitch_v1_3_8.symbol_extended.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_long.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_long.size

-- Display: Expanded Bid Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.expanded_bid_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Bid Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.expanded_bid_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_bzxequities_top_asciipitch_v1_3_8.symbol_extended.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Price
  index, bid_price_long = cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Numeric
  index, bid_quantity_long = cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Bid Update Message
cboe_bzxequities_top_asciipitch_v1_3_8.expanded_bid_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.expanded_bid_update_message, buffer(offset, 0))
    local index = cboe_bzxequities_top_asciipitch_v1_3_8.expanded_bid_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_top_asciipitch_v1_3_8.expanded_bid_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_top_asciipitch_v1_3_8.expanded_bid_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Client Heartbeat Message
cboe_bzxequities_top_asciipitch_v1_3_8.client_heartbeat_message = {}

-- Display: Client Heartbeat Message
cboe_bzxequities_top_asciipitch_v1_3_8.client_heartbeat_message.display = function(packet, parent, length)
  return "Client Heartbeat Message"
end


-- Dissect: Client Heartbeat Message
cboe_bzxequities_top_asciipitch_v1_3_8.client_heartbeat_message.dissect = function(buffer, offset, packet, parent)
  local display = cboe_bzxequities_top_asciipitch_v1_3_8.client_heartbeat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat Message
cboe_bzxequities_top_asciipitch_v1_3_8.server_heartbeat_message = {}

-- Display: Server Heartbeat Message
cboe_bzxequities_top_asciipitch_v1_3_8.server_heartbeat_message.display = function(packet, parent, length)
  return "Server Heartbeat Message"
end


-- Dissect: Server Heartbeat Message
cboe_bzxequities_top_asciipitch_v1_3_8.server_heartbeat_message.dissect = function(buffer, offset, packet, parent)
  local display = cboe_bzxequities_top_asciipitch_v1_3_8.server_heartbeat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Spin Done Message
cboe_bzxequities_top_asciipitch_v1_3_8.spin_done_message = {}

-- Display: Spin Done Message
cboe_bzxequities_top_asciipitch_v1_3_8.spin_done_message.display = function(packet, parent, length)
  return "Spin Done Message"
end


-- Dissect: Spin Done Message
cboe_bzxequities_top_asciipitch_v1_3_8.spin_done_message.dissect = function(buffer, offset, packet, parent)
  local display = cboe_bzxequities_top_asciipitch_v1_3_8.spin_done_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Extended Spin Message
cboe_bzxequities_top_asciipitch_v1_3_8.extended_spin_message = {}

-- Size: Extended Spin Message
cboe_bzxequities_top_asciipitch_v1_3_8.extended_spin_message.size =
  cboe_bzxequities_top_asciipitch_v1_3_8.timestamp.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.symbol_extended.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_extended.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_long.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_extended.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_long.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_time.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_price_long.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_size.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.cumulative_volume_long.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.halt_status.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.reg_sho_action.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.reserved_1.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.reserved_2.size

-- Display: Extended Spin Message
cboe_bzxequities_top_asciipitch_v1_3_8.extended_spin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Spin Message
cboe_bzxequities_top_asciipitch_v1_3_8.extended_spin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = cboe_bzxequities_top_asciipitch_v1_3_8.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_bzxequities_top_asciipitch_v1_3_8.symbol_extended.dissect(buffer, index, packet, parent)

  -- Bid Price Extended: Price
  index, bid_price_extended = cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_extended.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Numeric
  index, bid_quantity_long = cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_long.dissect(buffer, index, packet, parent)

  -- Ask Price Extended: Price
  index, ask_price_extended = cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_extended.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Numeric
  index, ask_quantity_long = cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_long.dissect(buffer, index, packet, parent)

  -- Last Trade Time: Timestamp
  index, last_trade_time = cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_time.dissect(buffer, index, packet, parent)

  -- Last Trade Price Long: Price
  index, last_trade_price_long = cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_price_long.dissect(buffer, index, packet, parent)

  -- Last Trade Size: Numeric
  index, last_trade_size = cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_size.dissect(buffer, index, packet, parent)

  -- Cumulative Volume Long: Numeric
  index, cumulative_volume_long = cboe_bzxequities_top_asciipitch_v1_3_8.cumulative_volume_long.dissect(buffer, index, packet, parent)

  -- Halt Status: Alpha
  index, halt_status = cboe_bzxequities_top_asciipitch_v1_3_8.halt_status.dissect(buffer, index, packet, parent)

  -- Reg SHO Action: Alpha
  index, reg_sho_action = cboe_bzxequities_top_asciipitch_v1_3_8.reg_sho_action.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = cboe_bzxequities_top_asciipitch_v1_3_8.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 2: Alpha
  index, reserved_2 = cboe_bzxequities_top_asciipitch_v1_3_8.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Spin Message
cboe_bzxequities_top_asciipitch_v1_3_8.extended_spin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.extended_spin_message, buffer(offset, 0))
    local index = cboe_bzxequities_top_asciipitch_v1_3_8.extended_spin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_top_asciipitch_v1_3_8.extended_spin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_top_asciipitch_v1_3_8.extended_spin_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Spin Message
cboe_bzxequities_top_asciipitch_v1_3_8.expanded_spin_message = {}

-- Size: Expanded Spin Message
cboe_bzxequities_top_asciipitch_v1_3_8.expanded_spin_message.size =
  cboe_bzxequities_top_asciipitch_v1_3_8.timestamp.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.symbol_extended.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_long.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_long.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_long.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_long.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_time.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_price_short.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_size.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.cumulative_volume_long.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.halt_status.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.reg_sho_action.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.reserved_1.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.reserved_2.size

-- Display: Expanded Spin Message
cboe_bzxequities_top_asciipitch_v1_3_8.expanded_spin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Spin Message
cboe_bzxequities_top_asciipitch_v1_3_8.expanded_spin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = cboe_bzxequities_top_asciipitch_v1_3_8.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_bzxequities_top_asciipitch_v1_3_8.symbol_extended.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Price
  index, bid_price_long = cboe_bzxequities_top_asciipitch_v1_3_8.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Numeric
  index, bid_quantity_long = cboe_bzxequities_top_asciipitch_v1_3_8.bid_quantity_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Price
  index, ask_price_long = cboe_bzxequities_top_asciipitch_v1_3_8.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Numeric
  index, ask_quantity_long = cboe_bzxequities_top_asciipitch_v1_3_8.ask_quantity_long.dissect(buffer, index, packet, parent)

  -- Last Trade Time: Timestamp
  index, last_trade_time = cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_time.dissect(buffer, index, packet, parent)

  -- Last Trade Price Short: Price
  index, last_trade_price_short = cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_price_short.dissect(buffer, index, packet, parent)

  -- Last Trade Size: Numeric
  index, last_trade_size = cboe_bzxequities_top_asciipitch_v1_3_8.last_trade_size.dissect(buffer, index, packet, parent)

  -- Cumulative Volume Long: Numeric
  index, cumulative_volume_long = cboe_bzxequities_top_asciipitch_v1_3_8.cumulative_volume_long.dissect(buffer, index, packet, parent)

  -- Halt Status: Alpha
  index, halt_status = cboe_bzxequities_top_asciipitch_v1_3_8.halt_status.dissect(buffer, index, packet, parent)

  -- Reg SHO Action: Alpha
  index, reg_sho_action = cboe_bzxequities_top_asciipitch_v1_3_8.reg_sho_action.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = cboe_bzxequities_top_asciipitch_v1_3_8.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 2: Alpha
  index, reserved_2 = cboe_bzxequities_top_asciipitch_v1_3_8.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Spin Message
cboe_bzxequities_top_asciipitch_v1_3_8.expanded_spin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.expanded_spin_message, buffer(offset, 0))
    local index = cboe_bzxequities_top_asciipitch_v1_3_8.expanded_spin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_top_asciipitch_v1_3_8.expanded_spin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_top_asciipitch_v1_3_8.expanded_spin_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Accepted Message
cboe_bzxequities_top_asciipitch_v1_3_8.logon_accepted_message = {}

-- Display: Logon Accepted Message
cboe_bzxequities_top_asciipitch_v1_3_8.logon_accepted_message.display = function(packet, parent, length)
  return "Logon Accepted Message"
end


-- Dissect: Logon Accepted Message
cboe_bzxequities_top_asciipitch_v1_3_8.logon_accepted_message.dissect = function(buffer, offset, packet, parent)
  local display = cboe_bzxequities_top_asciipitch_v1_3_8.logon_accepted_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Milliseconds Message
cboe_bzxequities_top_asciipitch_v1_3_8.milliseconds_message = {}

-- Size: Milliseconds Message
cboe_bzxequities_top_asciipitch_v1_3_8.milliseconds_message.size =
  cboe_bzxequities_top_asciipitch_v1_3_8.milliseconds.size

-- Display: Milliseconds Message
cboe_bzxequities_top_asciipitch_v1_3_8.milliseconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Milliseconds Message
cboe_bzxequities_top_asciipitch_v1_3_8.milliseconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Milliseconds: Numeric
  index, milliseconds = cboe_bzxequities_top_asciipitch_v1_3_8.milliseconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Milliseconds Message
cboe_bzxequities_top_asciipitch_v1_3_8.milliseconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.milliseconds_message, buffer(offset, 0))
    local index = cboe_bzxequities_top_asciipitch_v1_3_8.milliseconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_top_asciipitch_v1_3_8.milliseconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_top_asciipitch_v1_3_8.milliseconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Seconds Message
cboe_bzxequities_top_asciipitch_v1_3_8.seconds_message = {}

-- Size: Seconds Message
cboe_bzxequities_top_asciipitch_v1_3_8.seconds_message.size =
  cboe_bzxequities_top_asciipitch_v1_3_8.seconds.size

-- Display: Seconds Message
cboe_bzxequities_top_asciipitch_v1_3_8.seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seconds Message
cboe_bzxequities_top_asciipitch_v1_3_8.seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Numeric
  index, seconds = cboe_bzxequities_top_asciipitch_v1_3_8.seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Seconds Message
cboe_bzxequities_top_asciipitch_v1_3_8.seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.seconds_message, buffer(offset, 0))
    local index = cboe_bzxequities_top_asciipitch_v1_3_8.seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_top_asciipitch_v1_3_8.seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_top_asciipitch_v1_3_8.seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Rejected Message
cboe_bzxequities_top_asciipitch_v1_3_8.logon_rejected_message = {}

-- Size: Logon Rejected Message
cboe_bzxequities_top_asciipitch_v1_3_8.logon_rejected_message.size =
  cboe_bzxequities_top_asciipitch_v1_3_8.reject_reason.size

-- Display: Logon Rejected Message
cboe_bzxequities_top_asciipitch_v1_3_8.logon_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Rejected Message
cboe_bzxequities_top_asciipitch_v1_3_8.logon_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason: Alpha
  index, reject_reason = cboe_bzxequities_top_asciipitch_v1_3_8.reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Rejected Message
cboe_bzxequities_top_asciipitch_v1_3_8.logon_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.logon_rejected_message, buffer(offset, 0))
    local index = cboe_bzxequities_top_asciipitch_v1_3_8.logon_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_top_asciipitch_v1_3_8.logon_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_top_asciipitch_v1_3_8.logon_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Message
cboe_bzxequities_top_asciipitch_v1_3_8.logon_message = {}

-- Size: Logon Message
cboe_bzxequities_top_asciipitch_v1_3_8.logon_message.size =
  cboe_bzxequities_top_asciipitch_v1_3_8.username.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.password.size + 
  cboe_bzxequities_top_asciipitch_v1_3_8.spin_flag.size

-- Display: Logon Message
cboe_bzxequities_top_asciipitch_v1_3_8.logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Message
cboe_bzxequities_top_asciipitch_v1_3_8.logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: Alphanumeric
  index, username = cboe_bzxequities_top_asciipitch_v1_3_8.username.dissect(buffer, index, packet, parent)

  -- Password: Alphanumeric
  index, password = cboe_bzxequities_top_asciipitch_v1_3_8.password.dissect(buffer, index, packet, parent)

  -- Spin Flag: Boolean
  index, spin_flag = cboe_bzxequities_top_asciipitch_v1_3_8.spin_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
cboe_bzxequities_top_asciipitch_v1_3_8.logon_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.logon_message, buffer(offset, 0))
    local index = cboe_bzxequities_top_asciipitch_v1_3_8.logon_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_top_asciipitch_v1_3_8.logon_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_top_asciipitch_v1_3_8.logon_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_bzxequities_top_asciipitch_v1_3_8.payload = {}

-- Dispatch: Payload
cboe_bzxequities_top_asciipitch_v1_3_8.payload.dispatch = {
  ["L"] = cboe_bzxequities_top_asciipitch_v1_3_8.logon_message.dissect,
  ["J"] = cboe_bzxequities_top_asciipitch_v1_3_8.logon_rejected_message.dissect,
  ["T"] = cboe_bzxequities_top_asciipitch_v1_3_8.seconds_message.dissect,
  ["M"] = cboe_bzxequities_top_asciipitch_v1_3_8.milliseconds_message.dissect,
  ["C"] = cboe_bzxequities_top_asciipitch_v1_3_8.logon_accepted_message.dissect,
  ["s"] = cboe_bzxequities_top_asciipitch_v1_3_8.expanded_spin_message.dissect,
  ["S"] = cboe_bzxequities_top_asciipitch_v1_3_8.extended_spin_message.dissect,
  ["D"] = cboe_bzxequities_top_asciipitch_v1_3_8.spin_done_message.dissect,
  ["H"] = cboe_bzxequities_top_asciipitch_v1_3_8.server_heartbeat_message.dissect,
  ["R"] = cboe_bzxequities_top_asciipitch_v1_3_8.client_heartbeat_message.dissect,
  ["E"] = cboe_bzxequities_top_asciipitch_v1_3_8.expanded_bid_update_message.dissect,
  ["B"] = cboe_bzxequities_top_asciipitch_v1_3_8.long_bid_update_message.dissect,
  ["b"] = cboe_bzxequities_top_asciipitch_v1_3_8.short_bid_update_message.dissect,
  ["N"] = cboe_bzxequities_top_asciipitch_v1_3_8.extended_bid_update_message.dissect,
  ["e"] = cboe_bzxequities_top_asciipitch_v1_3_8.expanded_ask_update_message.dissect,
  ["A"] = cboe_bzxequities_top_asciipitch_v1_3_8.long_ask_update_message.dissect,
  ["a"] = cboe_bzxequities_top_asciipitch_v1_3_8.short_ask_update_message.dissect,
  ["n"] = cboe_bzxequities_top_asciipitch_v1_3_8.extended_ask_update_message.dissect,
  ["F"] = cboe_bzxequities_top_asciipitch_v1_3_8.expanded_two_sided_update_message.dissect,
  ["U"] = cboe_bzxequities_top_asciipitch_v1_3_8.long_two_sided_update_message.dissect,
  ["u"] = cboe_bzxequities_top_asciipitch_v1_3_8.short_two_sided_update_message.dissect,
  ["d"] = cboe_bzxequities_top_asciipitch_v1_3_8.extended_two_sided_update_message.dissect,
  ["f"] = cboe_bzxequities_top_asciipitch_v1_3_8.expanded_trade_message.dissect,
  ["V"] = cboe_bzxequities_top_asciipitch_v1_3_8.long_trade_message.dissect,
  ["v"] = cboe_bzxequities_top_asciipitch_v1_3_8.short_trade_message.dissect,
  ["r"] = cboe_bzxequities_top_asciipitch_v1_3_8.extended_trade_message.dissect,
  ["t"] = cboe_bzxequities_top_asciipitch_v1_3_8.trading_status_message.dissect,
}

-- Dissect: Payload
cboe_bzxequities_top_asciipitch_v1_3_8.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = cboe_bzxequities_top_asciipitch_v1_3_8.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Frame
cboe_bzxequities_top_asciipitch_v1_3_8.frame = {}

-- Display: Frame
cboe_bzxequities_top_asciipitch_v1_3_8.frame.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Frame
cboe_bzxequities_top_asciipitch_v1_3_8.frame.fields = function(buffer, offset, packet, parent, size_of_frame)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 27 values
  index, message_type = cboe_bzxequities_top_asciipitch_v1_3_8.message_type.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 27 branches
  index = cboe_bzxequities_top_asciipitch_v1_3_8.payload.dissect(buffer, index, packet, parent, message_type)

  -- Top Lf: 1 Byte Fixed Width Integer Static
  index, top_lf = cboe_bzxequities_top_asciipitch_v1_3_8.top_lf.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Frame
cboe_bzxequities_top_asciipitch_v1_3_8.frame.dissect = function(buffer, offset, packet, parent, size_of_frame)
  local index = offset + size_of_frame

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8.fields.frame, buffer(offset, 0))
    local current = cboe_bzxequities_top_asciipitch_v1_3_8.frame.fields(buffer, offset, packet, parent, size_of_frame)
    parent:set_len(size_of_frame)
    local display = cboe_bzxequities_top_asciipitch_v1_3_8.frame.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_bzxequities_top_asciipitch_v1_3_8.frame.fields(buffer, offset, packet, parent, size_of_frame)

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
cboe_bzxequities_top_asciipitch_v1_3_8.packet = {}

-- Verify required size of Tcp packet
cboe_bzxequities_top_asciipitch_v1_3_8.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_bzxequities_top_asciipitch_v1_3_8.message_type.size
end

-- Dissect Packet
cboe_bzxequities_top_asciipitch_v1_3_8.packet.dissect = function(buffer, packet, parent)
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
      index = cboe_bzxequities_top_asciipitch_v1_3_8.frame.dissect(frame, index, packet, parent, size_of_frame)
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
function omi_cboe_bzxequities_top_asciipitch_v1_3_8.init()
end

-- Dissector for Cboe BzxEquities Top AsciiPitch 1.3.8
function omi_cboe_bzxequities_top_asciipitch_v1_3_8.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_bzxequities_top_asciipitch_v1_3_8.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_bzxequities_top_asciipitch_v1_3_8, buffer(), omi_cboe_bzxequities_top_asciipitch_v1_3_8.description, "("..buffer:len().." Bytes)")
  return cboe_bzxequities_top_asciipitch_v1_3_8.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
cboe_bzxequities_top_asciipitch_v1_3_8.packet.fingerprint = function(buffer)
  if buffer:len() < 1 then
    return false
  end

  local message_type = buffer(0, 1):string()

  -- Logon Message
  if message_type == "L" then
    return true
  end

  -- Logon Rejected Message
  if message_type == "J" then
    return true
  end

  -- Seconds Message
  if message_type == "T" then
    return true
  end

  -- Milliseconds Message
  if message_type == "M" then
    return true
  end

  -- Logon Accepted Message
  if message_type == "C" then
    return true
  end

  -- Expanded Spin Message
  if message_type == "s" then
    return true
  end

  -- Extended Spin Message
  if message_type == "S" then
    return true
  end

  -- Spin Done Message
  if message_type == "D" then
    return true
  end

  -- Server Heartbeat Message
  if message_type == "H" then
    return true
  end

  -- Client Heartbeat Message
  if message_type == "R" then
    return true
  end

  -- Expanded Bid Update Message
  if message_type == "E" then
    return true
  end

  -- Long Bid Update Message
  if message_type == "B" then
    return true
  end

  -- Short Bid Update Message
  if message_type == "b" then
    return true
  end

  -- Extended Bid Update Message
  if message_type == "N" then
    return true
  end

  -- Expanded Ask Update Message
  if message_type == "e" then
    return true
  end

  -- Long Ask Update Message
  if message_type == "A" then
    return true
  end

  -- Short Ask Update Message
  if message_type == "a" then
    return true
  end

  -- Extended Ask Update Message
  if message_type == "n" then
    return true
  end

  -- Expanded Two Sided Update Message
  if message_type == "F" then
    return true
  end

  -- Long Two Sided Update Message
  if message_type == "U" then
    return true
  end

  -- Short Two Sided Update Message
  if message_type == "u" then
    return true
  end

  -- Extended Two Sided Update Message
  if message_type == "d" then
    return true
  end

  -- Expanded Trade Message
  if message_type == "f" then
    return true
  end

  -- Long Trade Message
  if message_type == "V" then
    return true
  end

  -- Short Trade Message
  if message_type == "v" then
    return true
  end

  -- Extended Trade Message
  if message_type == "r" then
    return true
  end

  -- Trading Status Message
  if message_type == "t" then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe BzxEquities Top AsciiPitch 1.3.8 (Tcp)
local function omi_cboe_bzxequities_top_asciipitch_v1_3_8_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_bzxequities_top_asciipitch_v1_3_8.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp packet message dispatch
  if not cboe_bzxequities_top_asciipitch_v1_3_8.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_bzxequities_top_asciipitch_v1_3_8
  omi_cboe_bzxequities_top_asciipitch_v1_3_8.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe BzxEquities Top AsciiPitch 1.3.8
omi_cboe_bzxequities_top_asciipitch_v1_3_8:register_heuristic("tcp", omi_cboe_bzxequities_top_asciipitch_v1_3_8_tcp_heuristic)

-- Register Cboe BzxEquities Top AsciiPitch 1.3.8 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_bzxequities_top_asciipitch_v1_3_8)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.3.8
--   Date: Wednesday, January 15, 2025
--   Specification: Cboe US Equities TOP Specification.pdf
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
