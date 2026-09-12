-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe EdgaEquities Top AsciiPitch 1.3.9 Protocol
local omi_cboe_edgaequities_top_asciipitch_v1_3_9 = Proto("Omi.Cboe.EdgaEquities.Top.AsciiPitch.v1.3.9", "Cboe EdgaEquities Top AsciiPitch 1.3.9")

-- Protocol table
local cboe_edgaequities_top_asciipitch_v1_3_9 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe EdgaEquities Top AsciiPitch 1.3.9 Fields
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.ask_price_extended = ProtoField.new("Ask Price Extended", "cboe.edgaequities.top.asciipitch.v1.3.9.askpriceextended", ftypes.DOUBLE)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.ask_price_long = ProtoField.new("Ask Price Long", "cboe.edgaequities.top.asciipitch.v1.3.9.askpricelong", ftypes.DOUBLE)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.ask_price_short = ProtoField.new("Ask Price Short", "cboe.edgaequities.top.asciipitch.v1.3.9.askpriceshort", ftypes.DOUBLE)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.ask_quantity_long = ProtoField.new("Ask Quantity Long", "cboe.edgaequities.top.asciipitch.v1.3.9.askquantitylong", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.ask_quantity_short = ProtoField.new("Ask Quantity Short", "cboe.edgaequities.top.asciipitch.v1.3.9.askquantityshort", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.bid_price_extended = ProtoField.new("Bid Price Extended", "cboe.edgaequities.top.asciipitch.v1.3.9.bidpriceextended", ftypes.DOUBLE)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.bid_price_long = ProtoField.new("Bid Price Long", "cboe.edgaequities.top.asciipitch.v1.3.9.bidpricelong", ftypes.DOUBLE)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.bid_price_short = ProtoField.new("Bid Price Short", "cboe.edgaequities.top.asciipitch.v1.3.9.bidpriceshort", ftypes.DOUBLE)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.bid_quantity_long = ProtoField.new("Bid Quantity Long", "cboe.edgaequities.top.asciipitch.v1.3.9.bidquantitylong", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.bid_quantity_short = ProtoField.new("Bid Quantity Short", "cboe.edgaequities.top.asciipitch.v1.3.9.bidquantityshort", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.cumulative_volume_long = ProtoField.new("Cumulative Volume Long", "cboe.edgaequities.top.asciipitch.v1.3.9.cumulativevolumelong", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.cumulative_volume_short = ProtoField.new("Cumulative Volume Short", "cboe.edgaequities.top.asciipitch.v1.3.9.cumulativevolumeshort", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.halt_status = ProtoField.new("Halt Status", "cboe.edgaequities.top.asciipitch.v1.3.9.haltstatus", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.last_price_extended = ProtoField.new("Last Price Extended", "cboe.edgaequities.top.asciipitch.v1.3.9.lastpriceextended", ftypes.DOUBLE)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.last_price_long = ProtoField.new("Last Price Long", "cboe.edgaequities.top.asciipitch.v1.3.9.lastpricelong", ftypes.DOUBLE)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.last_price_short = ProtoField.new("Last Price Short", "cboe.edgaequities.top.asciipitch.v1.3.9.lastpriceshort", ftypes.DOUBLE)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.last_quantity_long = ProtoField.new("Last Quantity Long", "cboe.edgaequities.top.asciipitch.v1.3.9.lastquantitylong", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.last_quantity_short = ProtoField.new("Last Quantity Short", "cboe.edgaequities.top.asciipitch.v1.3.9.lastquantityshort", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.last_trade_price_long = ProtoField.new("Last Trade Price Long", "cboe.edgaequities.top.asciipitch.v1.3.9.lasttradepricelong", ftypes.DOUBLE)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.last_trade_price_short = ProtoField.new("Last Trade Price Short", "cboe.edgaequities.top.asciipitch.v1.3.9.lasttradepriceshort", ftypes.DOUBLE)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.last_trade_size = ProtoField.new("Last Trade Size", "cboe.edgaequities.top.asciipitch.v1.3.9.lasttradesize", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.last_trade_time = ProtoField.new("Last Trade Time", "cboe.edgaequities.top.asciipitch.v1.3.9.lasttradetime", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.message_type = ProtoField.new("Message Type", "cboe.edgaequities.top.asciipitch.v1.3.9.messagetype", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.milliseconds = ProtoField.new("Milliseconds", "cboe.edgaequities.top.asciipitch.v1.3.9.milliseconds", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.password = ProtoField.new("Password", "cboe.edgaequities.top.asciipitch.v1.3.9.password", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.reg_sho_action = ProtoField.new("Reg SHO Action", "cboe.edgaequities.top.asciipitch.v1.3.9.regshoaction", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.reject_reason = ProtoField.new("Reject Reason", "cboe.edgaequities.top.asciipitch.v1.3.9.rejectreason", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.edgaequities.top.asciipitch.v1.3.9.reserved1", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.edgaequities.top.asciipitch.v1.3.9.reserved2", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.seconds = ProtoField.new("Seconds", "cboe.edgaequities.top.asciipitch.v1.3.9.seconds", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.spin_flag = ProtoField.new("Spin Flag", "cboe.edgaequities.top.asciipitch.v1.3.9.spinflag", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.symbol_extended = ProtoField.new("Symbol Extended", "cboe.edgaequities.top.asciipitch.v1.3.9.symbolextended", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.symbol_long = ProtoField.new("Symbol Long", "cboe.edgaequities.top.asciipitch.v1.3.9.symbollong", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.symbol_short = ProtoField.new("Symbol Short", "cboe.edgaequities.top.asciipitch.v1.3.9.symbolshort", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.timestamp = ProtoField.new("Timestamp", "cboe.edgaequities.top.asciipitch.v1.3.9.timestamp", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.top_lf = ProtoField.new("Top Lf", "cboe.edgaequities.top.asciipitch.v1.3.9.toplf", ftypes.INT8)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.username = ProtoField.new("Username", "cboe.edgaequities.top.asciipitch.v1.3.9.username", ftypes.STRING)

-- Cboe EdgaEquities Top AsciiPitch 1.3.9 Framing
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.packet = ProtoField.new("Packet", "cboe.edgaequities.top.asciipitch.v1.3.9.packet", ftypes.STRING)

-- Cboe EdgaEquities Top 1.3.9 Application Messages
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.client_heartbeat_message = ProtoField.new("Client Heartbeat Message", "cboe.edgaequities.top.asciipitch.v1.3.9.clientheartbeatmessage", ftypes.BYTES)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.expanded_ask_update_message = ProtoField.new("Expanded Ask Update Message", "cboe.edgaequities.top.asciipitch.v1.3.9.expandedaskupdatemessage", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.expanded_bid_update_message = ProtoField.new("Expanded Bid Update Message", "cboe.edgaequities.top.asciipitch.v1.3.9.expandedbidupdatemessage", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.expanded_spin_message = ProtoField.new("Expanded Spin Message", "cboe.edgaequities.top.asciipitch.v1.3.9.expandedspinmessage", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.expanded_trade_message = ProtoField.new("Expanded Trade Message", "cboe.edgaequities.top.asciipitch.v1.3.9.expandedtrademessage", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.expanded_two_sided_update_message = ProtoField.new("Expanded Two Sided Update Message", "cboe.edgaequities.top.asciipitch.v1.3.9.expandedtwosidedupdatemessage", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.extended_ask_update_message = ProtoField.new("Extended Ask Update Message", "cboe.edgaequities.top.asciipitch.v1.3.9.extendedaskupdatemessage", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.extended_bid_update_message = ProtoField.new("Extended Bid Update Message", "cboe.edgaequities.top.asciipitch.v1.3.9.extendedbidupdatemessage", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.extended_spin_message = ProtoField.new("Extended Spin Message", "cboe.edgaequities.top.asciipitch.v1.3.9.extendedspinmessage", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.extended_trade_message = ProtoField.new("Extended Trade Message", "cboe.edgaequities.top.asciipitch.v1.3.9.extendedtrademessage", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.extended_two_sided_update_message = ProtoField.new("Extended Two Sided Update Message", "cboe.edgaequities.top.asciipitch.v1.3.9.extendedtwosidedupdatemessage", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.logon_accepted_message = ProtoField.new("Logon Accepted Message", "cboe.edgaequities.top.asciipitch.v1.3.9.logonacceptedmessage", ftypes.BYTES)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.logon_message = ProtoField.new("Logon Message", "cboe.edgaequities.top.asciipitch.v1.3.9.logonmessage", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.logon_rejected_message = ProtoField.new("Logon Rejected Message", "cboe.edgaequities.top.asciipitch.v1.3.9.logonrejectedmessage", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.long_ask_update_message = ProtoField.new("Long Ask Update Message", "cboe.edgaequities.top.asciipitch.v1.3.9.longaskupdatemessage", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.long_bid_update_message = ProtoField.new("Long Bid Update Message", "cboe.edgaequities.top.asciipitch.v1.3.9.longbidupdatemessage", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.long_trade_message = ProtoField.new("Long Trade Message", "cboe.edgaequities.top.asciipitch.v1.3.9.longtrademessage", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.long_two_sided_update_message = ProtoField.new("Long Two Sided Update Message", "cboe.edgaequities.top.asciipitch.v1.3.9.longtwosidedupdatemessage", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.milliseconds_message = ProtoField.new("Milliseconds Message", "cboe.edgaequities.top.asciipitch.v1.3.9.millisecondsmessage", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.seconds_message = ProtoField.new("Seconds Message", "cboe.edgaequities.top.asciipitch.v1.3.9.secondsmessage", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.server_heartbeat_message = ProtoField.new("Server Heartbeat Message", "cboe.edgaequities.top.asciipitch.v1.3.9.serverheartbeatmessage", ftypes.BYTES)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.short_ask_update_message = ProtoField.new("Short Ask Update Message", "cboe.edgaequities.top.asciipitch.v1.3.9.shortaskupdatemessage", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.short_bid_update_message = ProtoField.new("Short Bid Update Message", "cboe.edgaequities.top.asciipitch.v1.3.9.shortbidupdatemessage", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.short_trade_message = ProtoField.new("Short Trade Message", "cboe.edgaequities.top.asciipitch.v1.3.9.shorttrademessage", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.short_two_sided_update_message = ProtoField.new("Short Two Sided Update Message", "cboe.edgaequities.top.asciipitch.v1.3.9.shorttwosidedupdatemessage", ftypes.STRING)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.spin_done_message = ProtoField.new("Spin Done Message", "cboe.edgaequities.top.asciipitch.v1.3.9.spindonemessage", ftypes.BYTES)
omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.edgaequities.top.asciipitch.v1.3.9.tradingstatusmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe EdgaEquities Top AsciiPitch 1.3.9 Element Dissection Options
show.application_messages = true
show.structs = true

-- Register Cboe EdgaEquities Top AsciiPitch 1.3.9 Show Options
omi_cboe_edgaequities_top_asciipitch_v1_3_9.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_edgaequities_top_asciipitch_v1_3_9.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")

-- Handle changed preferences
function omi_cboe_edgaequities_top_asciipitch_v1_3_9.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_edgaequities_top_asciipitch_v1_3_9.prefs.show_application_messages then
    show.application_messages = omi_cboe_edgaequities_top_asciipitch_v1_3_9.prefs.show_application_messages
  end
  if show.structs ~= omi_cboe_edgaequities_top_asciipitch_v1_3_9.prefs.show_structs then
    show.structs = omi_cboe_edgaequities_top_asciipitch_v1_3_9.prefs.show_structs
  end
end


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
-- Cboe EdgaEquities Top AsciiPitch 1.3.9 Fields
-----------------------------------------------------------------------

-- Ask Price Extended
cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_extended = {}

-- Size: Ask Price Extended
cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_extended.size = 14

-- Display: Ask Price Extended
cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_extended.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_extended.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Ask Price Extended: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 2 then
    digits = string.rep("0", 2 - #digits + 1)..digits
  end

  return "Ask Price Extended: "..sign..digits:sub(1, #digits - 2)..".".. digits:sub(-2)
end

-- Dissect: Ask Price Extended
cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_extended.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_extended.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_extended.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.ask_price_extended, range, value, display)

  return offset + length, value
end

-- Ask Price Long
cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_long = {}

-- Size: Ask Price Long
cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_long.size = 10

-- Display: Ask Price Long
cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_long.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_long.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Ask Price Long: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 4 then
    digits = string.rep("0", 4 - #digits + 1)..digits
  end

  return "Ask Price Long: "..sign..digits:sub(1, #digits - 4)..".".. digits:sub(-4)
end

-- Dissect: Ask Price Long
cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.ask_price_long, range, value, display)

  return offset + length, value
end

-- Ask Price Short
cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_short = {}

-- Size: Ask Price Short
cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_short.size = 5

-- Display: Ask Price Short
cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_short.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_short.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Ask Price Short: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 2 then
    digits = string.rep("0", 2 - #digits + 1)..digits
  end

  return "Ask Price Short: "..sign..digits:sub(1, #digits - 2)..".".. digits:sub(-2)
end

-- Dissect: Ask Price Short
cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.ask_price_short, range, value, display)

  return offset + length, value
end

-- Ask Quantity Long
cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_long = {}

-- Size: Ask Quantity Long
cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_long.size = 6

-- Display: Ask Quantity Long
cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_long.display = function(value)
  return "Ask Quantity Long: "..value
end

-- Dissect: Ask Quantity Long
cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.ask_quantity_long, range, value, display)

  return offset + length, value
end

-- Ask Quantity Short
cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_short = {}

-- Size: Ask Quantity Short
cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_short.size = 5

-- Display: Ask Quantity Short
cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_short.display = function(value)
  return "Ask Quantity Short: "..value
end

-- Dissect: Ask Quantity Short
cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.ask_quantity_short, range, value, display)

  return offset + length, value
end

-- Bid Price Extended
cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_extended = {}

-- Size: Bid Price Extended
cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_extended.size = 14

-- Display: Bid Price Extended
cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_extended.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_extended.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Bid Price Extended: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 2 then
    digits = string.rep("0", 2 - #digits + 1)..digits
  end

  return "Bid Price Extended: "..sign..digits:sub(1, #digits - 2)..".".. digits:sub(-2)
end

-- Dissect: Bid Price Extended
cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_extended.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_extended.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_extended.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.bid_price_extended, range, value, display)

  return offset + length, value
end

-- Bid Price Long
cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_long = {}

-- Size: Bid Price Long
cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_long.size = 10

-- Display: Bid Price Long
cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_long.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_long.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Bid Price Long: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 4 then
    digits = string.rep("0", 4 - #digits + 1)..digits
  end

  return "Bid Price Long: "..sign..digits:sub(1, #digits - 4)..".".. digits:sub(-4)
end

-- Dissect: Bid Price Long
cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.bid_price_long, range, value, display)

  return offset + length, value
end

-- Bid Price Short
cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_short = {}

-- Size: Bid Price Short
cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_short.size = 5

-- Display: Bid Price Short
cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_short.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_short.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Bid Price Short: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 2 then
    digits = string.rep("0", 2 - #digits + 1)..digits
  end

  return "Bid Price Short: "..sign..digits:sub(1, #digits - 2)..".".. digits:sub(-2)
end

-- Dissect: Bid Price Short
cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Bid Quantity Long
cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_long = {}

-- Size: Bid Quantity Long
cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_long.size = 6

-- Display: Bid Quantity Long
cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_long.display = function(value)
  return "Bid Quantity Long: "..value
end

-- Dissect: Bid Quantity Long
cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.bid_quantity_long, range, value, display)

  return offset + length, value
end

-- Bid Quantity Short
cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_short = {}

-- Size: Bid Quantity Short
cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_short.size = 5

-- Display: Bid Quantity Short
cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_short.display = function(value)
  return "Bid Quantity Short: "..value
end

-- Dissect: Bid Quantity Short
cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.bid_quantity_short, range, value, display)

  return offset + length, value
end

-- Cumulative Volume Long
cboe_edgaequities_top_asciipitch_v1_3_9.cumulative_volume_long = {}

-- Size: Cumulative Volume Long
cboe_edgaequities_top_asciipitch_v1_3_9.cumulative_volume_long.size = 9

-- Display: Cumulative Volume Long
cboe_edgaequities_top_asciipitch_v1_3_9.cumulative_volume_long.display = function(value)
  return "Cumulative Volume Long: "..value
end

-- Dissect: Cumulative Volume Long
cboe_edgaequities_top_asciipitch_v1_3_9.cumulative_volume_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.cumulative_volume_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_edgaequities_top_asciipitch_v1_3_9.cumulative_volume_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.cumulative_volume_long, range, value, display)

  return offset + length, value
end

-- Cumulative Volume Short
cboe_edgaequities_top_asciipitch_v1_3_9.cumulative_volume_short = {}

-- Size: Cumulative Volume Short
cboe_edgaequities_top_asciipitch_v1_3_9.cumulative_volume_short.size = 7

-- Display: Cumulative Volume Short
cboe_edgaequities_top_asciipitch_v1_3_9.cumulative_volume_short.display = function(value)
  return "Cumulative Volume Short: "..value
end

-- Dissect: Cumulative Volume Short
cboe_edgaequities_top_asciipitch_v1_3_9.cumulative_volume_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.cumulative_volume_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_edgaequities_top_asciipitch_v1_3_9.cumulative_volume_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.cumulative_volume_short, range, value, display)

  return offset + length, value
end

-- Halt Status
cboe_edgaequities_top_asciipitch_v1_3_9.halt_status = {}

-- Size: Halt Status
cboe_edgaequities_top_asciipitch_v1_3_9.halt_status.size = 1

-- Display: Halt Status
cboe_edgaequities_top_asciipitch_v1_3_9.halt_status.display = function(value)
  return "Halt Status: "..value
end

-- Dissect: Halt Status
cboe_edgaequities_top_asciipitch_v1_3_9.halt_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.halt_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgaequities_top_asciipitch_v1_3_9.halt_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.halt_status, range, value, display)

  return offset + length, value
end

-- Last Price Extended
cboe_edgaequities_top_asciipitch_v1_3_9.last_price_extended = {}

-- Size: Last Price Extended
cboe_edgaequities_top_asciipitch_v1_3_9.last_price_extended.size = 14

-- Display: Last Price Extended
cboe_edgaequities_top_asciipitch_v1_3_9.last_price_extended.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, cboe_edgaequities_top_asciipitch_v1_3_9.last_price_extended.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Last Price Extended: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 2 then
    digits = string.rep("0", 2 - #digits + 1)..digits
  end

  return "Last Price Extended: "..sign..digits:sub(1, #digits - 2)..".".. digits:sub(-2)
end

-- Dissect: Last Price Extended
cboe_edgaequities_top_asciipitch_v1_3_9.last_price_extended.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.last_price_extended.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_edgaequities_top_asciipitch_v1_3_9.last_price_extended.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.last_price_extended, range, value, display)

  return offset + length, value
end

-- Last Price Long
cboe_edgaequities_top_asciipitch_v1_3_9.last_price_long = {}

-- Size: Last Price Long
cboe_edgaequities_top_asciipitch_v1_3_9.last_price_long.size = 10

-- Display: Last Price Long
cboe_edgaequities_top_asciipitch_v1_3_9.last_price_long.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, cboe_edgaequities_top_asciipitch_v1_3_9.last_price_long.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Last Price Long: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 4 then
    digits = string.rep("0", 4 - #digits + 1)..digits
  end

  return "Last Price Long: "..sign..digits:sub(1, #digits - 4)..".".. digits:sub(-4)
end

-- Dissect: Last Price Long
cboe_edgaequities_top_asciipitch_v1_3_9.last_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.last_price_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_edgaequities_top_asciipitch_v1_3_9.last_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.last_price_long, range, value, display)

  return offset + length, value
end

-- Last Price Short
cboe_edgaequities_top_asciipitch_v1_3_9.last_price_short = {}

-- Size: Last Price Short
cboe_edgaequities_top_asciipitch_v1_3_9.last_price_short.size = 5

-- Display: Last Price Short
cboe_edgaequities_top_asciipitch_v1_3_9.last_price_short.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, cboe_edgaequities_top_asciipitch_v1_3_9.last_price_short.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Last Price Short: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 2 then
    digits = string.rep("0", 2 - #digits + 1)..digits
  end

  return "Last Price Short: "..sign..digits:sub(1, #digits - 2)..".".. digits:sub(-2)
end

-- Dissect: Last Price Short
cboe_edgaequities_top_asciipitch_v1_3_9.last_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.last_price_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_edgaequities_top_asciipitch_v1_3_9.last_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.last_price_short, range, value, display)

  return offset + length, value
end

-- Last Quantity Long
cboe_edgaequities_top_asciipitch_v1_3_9.last_quantity_long = {}

-- Size: Last Quantity Long
cboe_edgaequities_top_asciipitch_v1_3_9.last_quantity_long.size = 6

-- Display: Last Quantity Long
cboe_edgaequities_top_asciipitch_v1_3_9.last_quantity_long.display = function(value)
  return "Last Quantity Long: "..value
end

-- Dissect: Last Quantity Long
cboe_edgaequities_top_asciipitch_v1_3_9.last_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.last_quantity_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_edgaequities_top_asciipitch_v1_3_9.last_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.last_quantity_long, range, value, display)

  return offset + length, value
end

-- Last Quantity Short
cboe_edgaequities_top_asciipitch_v1_3_9.last_quantity_short = {}

-- Size: Last Quantity Short
cboe_edgaequities_top_asciipitch_v1_3_9.last_quantity_short.size = 5

-- Display: Last Quantity Short
cboe_edgaequities_top_asciipitch_v1_3_9.last_quantity_short.display = function(value)
  return "Last Quantity Short: "..value
end

-- Dissect: Last Quantity Short
cboe_edgaequities_top_asciipitch_v1_3_9.last_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.last_quantity_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_edgaequities_top_asciipitch_v1_3_9.last_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.last_quantity_short, range, value, display)

  return offset + length, value
end

-- Last Trade Price Long
cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_price_long = {}

-- Size: Last Trade Price Long
cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_price_long.size = 14

-- Display: Last Trade Price Long
cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_price_long.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_price_long.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Last Trade Price Long: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 2 then
    digits = string.rep("0", 2 - #digits + 1)..digits
  end

  return "Last Trade Price Long: "..sign..digits:sub(1, #digits - 2)..".".. digits:sub(-2)
end

-- Dissect: Last Trade Price Long
cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_price_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.last_trade_price_long, range, value, display)

  return offset + length, value
end

-- Last Trade Price Short
cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_price_short = {}

-- Size: Last Trade Price Short
cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_price_short.size = 10

-- Display: Last Trade Price Short
cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_price_short.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_price_short.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Last Trade Price Short: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 4 then
    digits = string.rep("0", 4 - #digits + 1)..digits
  end

  return "Last Trade Price Short: "..sign..digits:sub(1, #digits - 4)..".".. digits:sub(-4)
end

-- Dissect: Last Trade Price Short
cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_price_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.last_trade_price_short, range, value, display)

  return offset + length, value
end

-- Last Trade Size
cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_size = {}

-- Size: Last Trade Size
cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_size.size = 6

-- Display: Last Trade Size
cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_size.display = function(value)
  return "Last Trade Size: "..value
end

-- Dissect: Last Trade Size
cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.last_trade_size, range, value, display)

  return offset + length, value
end

-- Last Trade Time
cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_time = {}

-- Size: Last Trade Time
cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_time.size = 8

-- Display: Last Trade Time
cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_time.display = function(value)
  return "Last Trade Time: "..value
end

-- Dissect: Last Trade Time
cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_time.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.last_trade_time, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_edgaequities_top_asciipitch_v1_3_9.message_type = {}

-- Size: Message Type
cboe_edgaequities_top_asciipitch_v1_3_9.message_type.size = 1

-- Display: Message Type
cboe_edgaequities_top_asciipitch_v1_3_9.message_type.display = function(value)
  if value == "L" then
    return "Message Type: Logon Message (L)"
  end
  if value == "J" then
    return "Message Type: Logon Rejected Message (J)"
  end
  if value == "T" then
    return "Message Type: Seconds Message (T)"
  end
  if value == "M" then
    return "Message Type: Milliseconds Message (M)"
  end
  if value == "C" then
    return "Message Type: Logon Accepted Message (C)"
  end
  if value == "s" then
    return "Message Type: Expanded Spin Message (s)"
  end
  if value == "S" then
    return "Message Type: Extended Spin Message (S)"
  end
  if value == "D" then
    return "Message Type: Spin Done Message (D)"
  end
  if value == "H" then
    return "Message Type: Server Heartbeat Message (H)"
  end
  if value == "R" then
    return "Message Type: Client Heartbeat Message (R)"
  end
  if value == "E" then
    return "Message Type: Expanded Bid Update Message (E)"
  end
  if value == "B" then
    return "Message Type: Long Bid Update Message (B)"
  end
  if value == "b" then
    return "Message Type: Short Bid Update Message (b)"
  end
  if value == "N" then
    return "Message Type: Extended Bid Update Message (N)"
  end
  if value == "e" then
    return "Message Type: Expanded Ask Update Message (e)"
  end
  if value == "A" then
    return "Message Type: Long Ask Update Message (A)"
  end
  if value == "a" then
    return "Message Type: Short Ask Update Message (a)"
  end
  if value == "n" then
    return "Message Type: Extended Ask Update Message (n)"
  end
  if value == "F" then
    return "Message Type: Expanded Two Sided Update Message (F)"
  end
  if value == "U" then
    return "Message Type: Long Two Sided Update Message (U)"
  end
  if value == "u" then
    return "Message Type: Short Two Sided Update Message (u)"
  end
  if value == "d" then
    return "Message Type: Extended Two Sided Update Message (d)"
  end
  if value == "f" then
    return "Message Type: Expanded Trade Message (f)"
  end
  if value == "V" then
    return "Message Type: Long Trade Message (V)"
  end
  if value == "v" then
    return "Message Type: Short Trade Message (v)"
  end
  if value == "r" then
    return "Message Type: Extended Trade Message (r)"
  end
  if value == "t" then
    return "Message Type: Trading Status Message (t)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_edgaequities_top_asciipitch_v1_3_9.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgaequities_top_asciipitch_v1_3_9.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.message_type, range, value, display)

  return offset + length, value
end

-- Milliseconds
cboe_edgaequities_top_asciipitch_v1_3_9.milliseconds = {}

-- Size: Milliseconds
cboe_edgaequities_top_asciipitch_v1_3_9.milliseconds.size = 3

-- Display: Milliseconds
cboe_edgaequities_top_asciipitch_v1_3_9.milliseconds.display = function(value)
  return "Milliseconds: "..value
end

-- Dissect: Milliseconds
cboe_edgaequities_top_asciipitch_v1_3_9.milliseconds.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.milliseconds.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_edgaequities_top_asciipitch_v1_3_9.milliseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.milliseconds, range, value, display)

  return offset + length, value
end

-- Password
cboe_edgaequities_top_asciipitch_v1_3_9.password = {}

-- Size: Password
cboe_edgaequities_top_asciipitch_v1_3_9.password.size = 10

-- Display: Password
cboe_edgaequities_top_asciipitch_v1_3_9.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_edgaequities_top_asciipitch_v1_3_9.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgaequities_top_asciipitch_v1_3_9.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.password, range, value, display)

  return offset + length, value
end

-- Reg SHO Action
cboe_edgaequities_top_asciipitch_v1_3_9.reg_sho_action = {}

-- Size: Reg SHO Action
cboe_edgaequities_top_asciipitch_v1_3_9.reg_sho_action.size = 1

-- Display: Reg SHO Action
cboe_edgaequities_top_asciipitch_v1_3_9.reg_sho_action.display = function(value)
  if value == "0" then
    return "Reg SHO Action: No Price Test In Effect (0)"
  end
  if value == "1" then
    return "Reg SHO Action: Reg Sho Price Test Restriction In Effect (1)"
  end

  return "Reg SHO Action: Unknown("..value..")"
end

-- Dissect: Reg SHO Action
cboe_edgaequities_top_asciipitch_v1_3_9.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgaequities_top_asciipitch_v1_3_9.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Reject Reason
cboe_edgaequities_top_asciipitch_v1_3_9.reject_reason = {}

-- Size: Reject Reason
cboe_edgaequities_top_asciipitch_v1_3_9.reject_reason.size = 1

-- Display: Reject Reason
cboe_edgaequities_top_asciipitch_v1_3_9.reject_reason.display = function(value)
  return "Reject Reason: "..value
end

-- Dissect: Reject Reason
cboe_edgaequities_top_asciipitch_v1_3_9.reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgaequities_top_asciipitch_v1_3_9.reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.reject_reason, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_edgaequities_top_asciipitch_v1_3_9.reserved_1 = {}

-- Size: Reserved 1
cboe_edgaequities_top_asciipitch_v1_3_9.reserved_1.size = 1

-- Display: Reserved 1
cboe_edgaequities_top_asciipitch_v1_3_9.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_edgaequities_top_asciipitch_v1_3_9.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgaequities_top_asciipitch_v1_3_9.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
cboe_edgaequities_top_asciipitch_v1_3_9.reserved_2 = {}

-- Size: Reserved 2
cboe_edgaequities_top_asciipitch_v1_3_9.reserved_2.size = 1

-- Display: Reserved 2
cboe_edgaequities_top_asciipitch_v1_3_9.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_edgaequities_top_asciipitch_v1_3_9.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.reserved_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgaequities_top_asciipitch_v1_3_9.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Seconds
cboe_edgaequities_top_asciipitch_v1_3_9.seconds = {}

-- Size: Seconds
cboe_edgaequities_top_asciipitch_v1_3_9.seconds.size = 5

-- Display: Seconds
cboe_edgaequities_top_asciipitch_v1_3_9.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
cboe_edgaequities_top_asciipitch_v1_3_9.seconds.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.seconds.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_edgaequities_top_asciipitch_v1_3_9.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.seconds, range, value, display)

  return offset + length, value
end

-- Spin Flag
cboe_edgaequities_top_asciipitch_v1_3_9.spin_flag = {}

-- Size: Spin Flag
cboe_edgaequities_top_asciipitch_v1_3_9.spin_flag.size = 1

-- Display: Spin Flag
cboe_edgaequities_top_asciipitch_v1_3_9.spin_flag.display = function(value)
  return "Spin Flag: "..value
end

-- Dissect: Spin Flag
cboe_edgaequities_top_asciipitch_v1_3_9.spin_flag.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.spin_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgaequities_top_asciipitch_v1_3_9.spin_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.spin_flag, range, value, display)

  return offset + length, value
end

-- Symbol Extended
cboe_edgaequities_top_asciipitch_v1_3_9.symbol_extended = {}

-- Size: Symbol Extended
cboe_edgaequities_top_asciipitch_v1_3_9.symbol_extended.size = 8

-- Display: Symbol Extended
cboe_edgaequities_top_asciipitch_v1_3_9.symbol_extended.display = function(value)
  return "Symbol Extended: "..value
end

-- Dissect: Symbol Extended
cboe_edgaequities_top_asciipitch_v1_3_9.symbol_extended.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.symbol_extended.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgaequities_top_asciipitch_v1_3_9.symbol_extended.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.symbol_extended, range, value, display)

  return offset + length, value
end

-- Symbol Long
cboe_edgaequities_top_asciipitch_v1_3_9.symbol_long = {}

-- Size: Symbol Long
cboe_edgaequities_top_asciipitch_v1_3_9.symbol_long.size = 6

-- Display: Symbol Long
cboe_edgaequities_top_asciipitch_v1_3_9.symbol_long.display = function(value)
  return "Symbol Long: "..value
end

-- Dissect: Symbol Long
cboe_edgaequities_top_asciipitch_v1_3_9.symbol_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.symbol_long.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgaequities_top_asciipitch_v1_3_9.symbol_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.symbol_long, range, value, display)

  return offset + length, value
end

-- Symbol Short
cboe_edgaequities_top_asciipitch_v1_3_9.symbol_short = {}

-- Size: Symbol Short
cboe_edgaequities_top_asciipitch_v1_3_9.symbol_short.size = 4

-- Display: Symbol Short
cboe_edgaequities_top_asciipitch_v1_3_9.symbol_short.display = function(value)
  return "Symbol Short: "..value
end

-- Dissect: Symbol Short
cboe_edgaequities_top_asciipitch_v1_3_9.symbol_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.symbol_short.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgaequities_top_asciipitch_v1_3_9.symbol_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.symbol_short, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_edgaequities_top_asciipitch_v1_3_9.timestamp = {}

-- Size: Timestamp
cboe_edgaequities_top_asciipitch_v1_3_9.timestamp.size = 8

-- Display: Timestamp
cboe_edgaequities_top_asciipitch_v1_3_9.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_edgaequities_top_asciipitch_v1_3_9.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_edgaequities_top_asciipitch_v1_3_9.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Top Lf
cboe_edgaequities_top_asciipitch_v1_3_9.top_lf = {}

-- Size: Top Lf
cboe_edgaequities_top_asciipitch_v1_3_9.top_lf.size = 1

-- Display: Top Lf
cboe_edgaequities_top_asciipitch_v1_3_9.top_lf.display = function(value)
  if value == 10 then
    return "Top Lf: Line Feed"
  end

  return "Top Lf: Unknown("..value..")"
end

-- Dissect: Top Lf
cboe_edgaequities_top_asciipitch_v1_3_9.top_lf.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.top_lf.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_edgaequities_top_asciipitch_v1_3_9.top_lf.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.top_lf, range, value, display)

  return offset + length, value
end

-- Username
cboe_edgaequities_top_asciipitch_v1_3_9.username = {}

-- Size: Username
cboe_edgaequities_top_asciipitch_v1_3_9.username.size = 6

-- Display: Username
cboe_edgaequities_top_asciipitch_v1_3_9.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_edgaequities_top_asciipitch_v1_3_9.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_top_asciipitch_v1_3_9.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgaequities_top_asciipitch_v1_3_9.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe EdgaEquities Top AsciiPitch 1.3.9
-----------------------------------------------------------------------

-- Trading Status Message
cboe_edgaequities_top_asciipitch_v1_3_9.trading_status_message = {}

-- Size: Trading Status Message
cboe_edgaequities_top_asciipitch_v1_3_9.trading_status_message.size =
  cboe_edgaequities_top_asciipitch_v1_3_9.symbol_extended.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.halt_status.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.reg_sho_action.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.reserved_1.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.reserved_2.size

-- Display: Trading Status Message
cboe_edgaequities_top_asciipitch_v1_3_9.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_edgaequities_top_asciipitch_v1_3_9.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_edgaequities_top_asciipitch_v1_3_9.symbol_extended.dissect(buffer, index, packet, parent)

  -- Halt Status: Alpha
  index, halt_status = cboe_edgaequities_top_asciipitch_v1_3_9.halt_status.dissect(buffer, index, packet, parent)

  -- Reg SHO Action: Alpha
  index, reg_sho_action = cboe_edgaequities_top_asciipitch_v1_3_9.reg_sho_action.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = cboe_edgaequities_top_asciipitch_v1_3_9.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 2: Alpha
  index, reserved_2 = cboe_edgaequities_top_asciipitch_v1_3_9.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_edgaequities_top_asciipitch_v1_3_9.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_edgaequities_top_asciipitch_v1_3_9.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgaequities_top_asciipitch_v1_3_9.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgaequities_top_asciipitch_v1_3_9.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Trade Message
cboe_edgaequities_top_asciipitch_v1_3_9.extended_trade_message = {}

-- Size: Extended Trade Message
cboe_edgaequities_top_asciipitch_v1_3_9.extended_trade_message.size =
  cboe_edgaequities_top_asciipitch_v1_3_9.symbol_extended.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.last_price_extended.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.last_quantity_long.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.cumulative_volume_long.size

-- Display: Extended Trade Message
cboe_edgaequities_top_asciipitch_v1_3_9.extended_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Trade Message
cboe_edgaequities_top_asciipitch_v1_3_9.extended_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_edgaequities_top_asciipitch_v1_3_9.symbol_extended.dissect(buffer, index, packet, parent)

  -- Last Price Extended: Price
  index, last_price_extended = cboe_edgaequities_top_asciipitch_v1_3_9.last_price_extended.dissect(buffer, index, packet, parent)

  -- Last Quantity Long: Numeric
  index, last_quantity_long = cboe_edgaequities_top_asciipitch_v1_3_9.last_quantity_long.dissect(buffer, index, packet, parent)

  -- Cumulative Volume Long: Numeric
  index, cumulative_volume_long = cboe_edgaequities_top_asciipitch_v1_3_9.cumulative_volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Trade Message
cboe_edgaequities_top_asciipitch_v1_3_9.extended_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.extended_trade_message, buffer(offset, 0))
    local index = cboe_edgaequities_top_asciipitch_v1_3_9.extended_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgaequities_top_asciipitch_v1_3_9.extended_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgaequities_top_asciipitch_v1_3_9.extended_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Trade Message
cboe_edgaequities_top_asciipitch_v1_3_9.short_trade_message = {}

-- Size: Short Trade Message
cboe_edgaequities_top_asciipitch_v1_3_9.short_trade_message.size =
  cboe_edgaequities_top_asciipitch_v1_3_9.symbol_short.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.last_price_short.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.last_quantity_short.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.cumulative_volume_short.size

-- Display: Short Trade Message
cboe_edgaequities_top_asciipitch_v1_3_9.short_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Trade Message
cboe_edgaequities_top_asciipitch_v1_3_9.short_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Short: Alpha
  index, symbol_short = cboe_edgaequities_top_asciipitch_v1_3_9.symbol_short.dissect(buffer, index, packet, parent)

  -- Last Price Short: Price
  index, last_price_short = cboe_edgaequities_top_asciipitch_v1_3_9.last_price_short.dissect(buffer, index, packet, parent)

  -- Last Quantity Short: Numeric
  index, last_quantity_short = cboe_edgaequities_top_asciipitch_v1_3_9.last_quantity_short.dissect(buffer, index, packet, parent)

  -- Cumulative Volume Short: Numeric
  index, cumulative_volume_short = cboe_edgaequities_top_asciipitch_v1_3_9.cumulative_volume_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Trade Message
cboe_edgaequities_top_asciipitch_v1_3_9.short_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.short_trade_message, buffer(offset, 0))
    local index = cboe_edgaequities_top_asciipitch_v1_3_9.short_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgaequities_top_asciipitch_v1_3_9.short_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgaequities_top_asciipitch_v1_3_9.short_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Trade Message
cboe_edgaequities_top_asciipitch_v1_3_9.long_trade_message = {}

-- Size: Long Trade Message
cboe_edgaequities_top_asciipitch_v1_3_9.long_trade_message.size =
  cboe_edgaequities_top_asciipitch_v1_3_9.symbol_long.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.last_price_long.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.last_quantity_long.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.cumulative_volume_long.size

-- Display: Long Trade Message
cboe_edgaequities_top_asciipitch_v1_3_9.long_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Trade Message
cboe_edgaequities_top_asciipitch_v1_3_9.long_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Long: Alpha
  index, symbol_long = cboe_edgaequities_top_asciipitch_v1_3_9.symbol_long.dissect(buffer, index, packet, parent)

  -- Last Price Long: Price
  index, last_price_long = cboe_edgaequities_top_asciipitch_v1_3_9.last_price_long.dissect(buffer, index, packet, parent)

  -- Last Quantity Long: Numeric
  index, last_quantity_long = cboe_edgaequities_top_asciipitch_v1_3_9.last_quantity_long.dissect(buffer, index, packet, parent)

  -- Cumulative Volume Long: Numeric
  index, cumulative_volume_long = cboe_edgaequities_top_asciipitch_v1_3_9.cumulative_volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Trade Message
cboe_edgaequities_top_asciipitch_v1_3_9.long_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.long_trade_message, buffer(offset, 0))
    local index = cboe_edgaequities_top_asciipitch_v1_3_9.long_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgaequities_top_asciipitch_v1_3_9.long_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgaequities_top_asciipitch_v1_3_9.long_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Trade Message
cboe_edgaequities_top_asciipitch_v1_3_9.expanded_trade_message = {}

-- Size: Expanded Trade Message
cboe_edgaequities_top_asciipitch_v1_3_9.expanded_trade_message.size =
  cboe_edgaequities_top_asciipitch_v1_3_9.symbol_extended.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.last_price_long.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.last_quantity_long.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.cumulative_volume_long.size

-- Display: Expanded Trade Message
cboe_edgaequities_top_asciipitch_v1_3_9.expanded_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Trade Message
cboe_edgaequities_top_asciipitch_v1_3_9.expanded_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_edgaequities_top_asciipitch_v1_3_9.symbol_extended.dissect(buffer, index, packet, parent)

  -- Last Price Long: Price
  index, last_price_long = cboe_edgaequities_top_asciipitch_v1_3_9.last_price_long.dissect(buffer, index, packet, parent)

  -- Last Quantity Long: Numeric
  index, last_quantity_long = cboe_edgaequities_top_asciipitch_v1_3_9.last_quantity_long.dissect(buffer, index, packet, parent)

  -- Cumulative Volume Long: Numeric
  index, cumulative_volume_long = cboe_edgaequities_top_asciipitch_v1_3_9.cumulative_volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Trade Message
cboe_edgaequities_top_asciipitch_v1_3_9.expanded_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.expanded_trade_message, buffer(offset, 0))
    local index = cboe_edgaequities_top_asciipitch_v1_3_9.expanded_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgaequities_top_asciipitch_v1_3_9.expanded_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgaequities_top_asciipitch_v1_3_9.expanded_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Two Sided Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.extended_two_sided_update_message = {}

-- Size: Extended Two Sided Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.extended_two_sided_update_message.size =
  cboe_edgaequities_top_asciipitch_v1_3_9.symbol_extended.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_extended.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_long.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_extended.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_long.size

-- Display: Extended Two Sided Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.extended_two_sided_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Two Sided Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.extended_two_sided_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_edgaequities_top_asciipitch_v1_3_9.symbol_extended.dissect(buffer, index, packet, parent)

  -- Bid Price Extended: Price
  index, bid_price_extended = cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_extended.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Numeric
  index, bid_quantity_long = cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_long.dissect(buffer, index, packet, parent)

  -- Ask Price Extended: Price
  index, ask_price_extended = cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_extended.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Numeric
  index, ask_quantity_long = cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Two Sided Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.extended_two_sided_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.extended_two_sided_update_message, buffer(offset, 0))
    local index = cboe_edgaequities_top_asciipitch_v1_3_9.extended_two_sided_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgaequities_top_asciipitch_v1_3_9.extended_two_sided_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgaequities_top_asciipitch_v1_3_9.extended_two_sided_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Two Sided Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.short_two_sided_update_message = {}

-- Size: Short Two Sided Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.short_two_sided_update_message.size =
  cboe_edgaequities_top_asciipitch_v1_3_9.symbol_short.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_short.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_short.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_short.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_short.size

-- Display: Short Two Sided Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.short_two_sided_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Two Sided Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.short_two_sided_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Short: Alpha
  index, symbol_short = cboe_edgaequities_top_asciipitch_v1_3_9.symbol_short.dissect(buffer, index, packet, parent)

  -- Bid Price Short: Price
  index, bid_price_short = cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Quantity Short: Numeric
  index, bid_quantity_short = cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_short.dissect(buffer, index, packet, parent)

  -- Ask Price Short: Price
  index, ask_price_short = cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_short.dissect(buffer, index, packet, parent)

  -- Ask Quantity Short: Numeric
  index, ask_quantity_short = cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Two Sided Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.short_two_sided_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.short_two_sided_update_message, buffer(offset, 0))
    local index = cboe_edgaequities_top_asciipitch_v1_3_9.short_two_sided_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgaequities_top_asciipitch_v1_3_9.short_two_sided_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgaequities_top_asciipitch_v1_3_9.short_two_sided_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Two Sided Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.long_two_sided_update_message = {}

-- Size: Long Two Sided Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.long_two_sided_update_message.size =
  cboe_edgaequities_top_asciipitch_v1_3_9.symbol_long.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_long.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_long.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_long.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_long.size

-- Display: Long Two Sided Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.long_two_sided_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Two Sided Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.long_two_sided_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Long: Alpha
  index, symbol_long = cboe_edgaequities_top_asciipitch_v1_3_9.symbol_long.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Price
  index, bid_price_long = cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Numeric
  index, bid_quantity_long = cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Price
  index, ask_price_long = cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Numeric
  index, ask_quantity_long = cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Two Sided Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.long_two_sided_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.long_two_sided_update_message, buffer(offset, 0))
    local index = cboe_edgaequities_top_asciipitch_v1_3_9.long_two_sided_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgaequities_top_asciipitch_v1_3_9.long_two_sided_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgaequities_top_asciipitch_v1_3_9.long_two_sided_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Two Sided Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.expanded_two_sided_update_message = {}

-- Size: Expanded Two Sided Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.expanded_two_sided_update_message.size =
  cboe_edgaequities_top_asciipitch_v1_3_9.symbol_extended.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_long.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_long.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_long.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_long.size

-- Display: Expanded Two Sided Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.expanded_two_sided_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Two Sided Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.expanded_two_sided_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_edgaequities_top_asciipitch_v1_3_9.symbol_extended.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Price
  index, bid_price_long = cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Numeric
  index, bid_quantity_long = cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Price
  index, ask_price_long = cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Numeric
  index, ask_quantity_long = cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Two Sided Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.expanded_two_sided_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.expanded_two_sided_update_message, buffer(offset, 0))
    local index = cboe_edgaequities_top_asciipitch_v1_3_9.expanded_two_sided_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgaequities_top_asciipitch_v1_3_9.expanded_two_sided_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgaequities_top_asciipitch_v1_3_9.expanded_two_sided_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Ask Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.extended_ask_update_message = {}

-- Size: Extended Ask Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.extended_ask_update_message.size =
  cboe_edgaequities_top_asciipitch_v1_3_9.symbol_extended.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_extended.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_long.size

-- Display: Extended Ask Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.extended_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Ask Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.extended_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_edgaequities_top_asciipitch_v1_3_9.symbol_extended.dissect(buffer, index, packet, parent)

  -- Ask Price Extended: Price
  index, ask_price_extended = cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_extended.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Numeric
  index, ask_quantity_long = cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Ask Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.extended_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.extended_ask_update_message, buffer(offset, 0))
    local index = cboe_edgaequities_top_asciipitch_v1_3_9.extended_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgaequities_top_asciipitch_v1_3_9.extended_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgaequities_top_asciipitch_v1_3_9.extended_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Ask Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.short_ask_update_message = {}

-- Size: Short Ask Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.short_ask_update_message.size =
  cboe_edgaequities_top_asciipitch_v1_3_9.symbol_short.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_short.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_short.size

-- Display: Short Ask Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.short_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Ask Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.short_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Short: Alpha
  index, symbol_short = cboe_edgaequities_top_asciipitch_v1_3_9.symbol_short.dissect(buffer, index, packet, parent)

  -- Ask Price Short: Price
  index, ask_price_short = cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_short.dissect(buffer, index, packet, parent)

  -- Ask Quantity Short: Numeric
  index, ask_quantity_short = cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Ask Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.short_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.short_ask_update_message, buffer(offset, 0))
    local index = cboe_edgaequities_top_asciipitch_v1_3_9.short_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgaequities_top_asciipitch_v1_3_9.short_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgaequities_top_asciipitch_v1_3_9.short_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Ask Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.long_ask_update_message = {}

-- Size: Long Ask Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.long_ask_update_message.size =
  cboe_edgaequities_top_asciipitch_v1_3_9.symbol_long.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_long.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_long.size

-- Display: Long Ask Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.long_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Ask Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.long_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Long: Alpha
  index, symbol_long = cboe_edgaequities_top_asciipitch_v1_3_9.symbol_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Price
  index, ask_price_long = cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Numeric
  index, ask_quantity_long = cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Ask Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.long_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.long_ask_update_message, buffer(offset, 0))
    local index = cboe_edgaequities_top_asciipitch_v1_3_9.long_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgaequities_top_asciipitch_v1_3_9.long_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgaequities_top_asciipitch_v1_3_9.long_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Ask Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.expanded_ask_update_message = {}

-- Size: Expanded Ask Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.expanded_ask_update_message.size =
  cboe_edgaequities_top_asciipitch_v1_3_9.symbol_extended.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_long.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_long.size

-- Display: Expanded Ask Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.expanded_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Ask Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.expanded_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_edgaequities_top_asciipitch_v1_3_9.symbol_extended.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Price
  index, ask_price_long = cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Numeric
  index, ask_quantity_long = cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Ask Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.expanded_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.expanded_ask_update_message, buffer(offset, 0))
    local index = cboe_edgaequities_top_asciipitch_v1_3_9.expanded_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgaequities_top_asciipitch_v1_3_9.expanded_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgaequities_top_asciipitch_v1_3_9.expanded_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Bid Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.extended_bid_update_message = {}

-- Size: Extended Bid Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.extended_bid_update_message.size =
  cboe_edgaequities_top_asciipitch_v1_3_9.symbol_extended.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_extended.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_long.size

-- Display: Extended Bid Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.extended_bid_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Bid Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.extended_bid_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_edgaequities_top_asciipitch_v1_3_9.symbol_extended.dissect(buffer, index, packet, parent)

  -- Bid Price Extended: Price
  index, bid_price_extended = cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_extended.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Numeric
  index, bid_quantity_long = cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Bid Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.extended_bid_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.extended_bid_update_message, buffer(offset, 0))
    local index = cboe_edgaequities_top_asciipitch_v1_3_9.extended_bid_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgaequities_top_asciipitch_v1_3_9.extended_bid_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgaequities_top_asciipitch_v1_3_9.extended_bid_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Bid Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.short_bid_update_message = {}

-- Size: Short Bid Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.short_bid_update_message.size =
  cboe_edgaequities_top_asciipitch_v1_3_9.symbol_short.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_short.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_short.size

-- Display: Short Bid Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.short_bid_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Bid Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.short_bid_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Short: Alpha
  index, symbol_short = cboe_edgaequities_top_asciipitch_v1_3_9.symbol_short.dissect(buffer, index, packet, parent)

  -- Bid Price Short: Price
  index, bid_price_short = cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Quantity Short: Numeric
  index, bid_quantity_short = cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Bid Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.short_bid_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.short_bid_update_message, buffer(offset, 0))
    local index = cboe_edgaequities_top_asciipitch_v1_3_9.short_bid_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgaequities_top_asciipitch_v1_3_9.short_bid_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgaequities_top_asciipitch_v1_3_9.short_bid_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Bid Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.long_bid_update_message = {}

-- Size: Long Bid Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.long_bid_update_message.size =
  cboe_edgaequities_top_asciipitch_v1_3_9.symbol_long.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_long.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_long.size

-- Display: Long Bid Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.long_bid_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Bid Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.long_bid_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Long: Alpha
  index, symbol_long = cboe_edgaequities_top_asciipitch_v1_3_9.symbol_long.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Price
  index, bid_price_long = cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Numeric
  index, bid_quantity_long = cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Bid Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.long_bid_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.long_bid_update_message, buffer(offset, 0))
    local index = cboe_edgaequities_top_asciipitch_v1_3_9.long_bid_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgaequities_top_asciipitch_v1_3_9.long_bid_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgaequities_top_asciipitch_v1_3_9.long_bid_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Bid Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.expanded_bid_update_message = {}

-- Size: Expanded Bid Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.expanded_bid_update_message.size =
  cboe_edgaequities_top_asciipitch_v1_3_9.symbol_extended.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_long.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_long.size

-- Display: Expanded Bid Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.expanded_bid_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Bid Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.expanded_bid_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_edgaequities_top_asciipitch_v1_3_9.symbol_extended.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Price
  index, bid_price_long = cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Numeric
  index, bid_quantity_long = cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Bid Update Message
cboe_edgaequities_top_asciipitch_v1_3_9.expanded_bid_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.expanded_bid_update_message, buffer(offset, 0))
    local index = cboe_edgaequities_top_asciipitch_v1_3_9.expanded_bid_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgaequities_top_asciipitch_v1_3_9.expanded_bid_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgaequities_top_asciipitch_v1_3_9.expanded_bid_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Spin Message
cboe_edgaequities_top_asciipitch_v1_3_9.extended_spin_message = {}

-- Size: Extended Spin Message
cboe_edgaequities_top_asciipitch_v1_3_9.extended_spin_message.size =
  cboe_edgaequities_top_asciipitch_v1_3_9.timestamp.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.symbol_extended.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_extended.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_long.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_extended.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_long.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_time.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_price_long.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_size.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.cumulative_volume_long.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.halt_status.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.reg_sho_action.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.reserved_1.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.reserved_2.size

-- Display: Extended Spin Message
cboe_edgaequities_top_asciipitch_v1_3_9.extended_spin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Spin Message
cboe_edgaequities_top_asciipitch_v1_3_9.extended_spin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = cboe_edgaequities_top_asciipitch_v1_3_9.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_edgaequities_top_asciipitch_v1_3_9.symbol_extended.dissect(buffer, index, packet, parent)

  -- Bid Price Extended: Price
  index, bid_price_extended = cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_extended.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Numeric
  index, bid_quantity_long = cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_long.dissect(buffer, index, packet, parent)

  -- Ask Price Extended: Price
  index, ask_price_extended = cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_extended.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Numeric
  index, ask_quantity_long = cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_long.dissect(buffer, index, packet, parent)

  -- Last Trade Time: Timestamp
  index, last_trade_time = cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_time.dissect(buffer, index, packet, parent)

  -- Last Trade Price Long: Price
  index, last_trade_price_long = cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_price_long.dissect(buffer, index, packet, parent)

  -- Last Trade Size: Numeric
  index, last_trade_size = cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_size.dissect(buffer, index, packet, parent)

  -- Cumulative Volume Long: Numeric
  index, cumulative_volume_long = cboe_edgaequities_top_asciipitch_v1_3_9.cumulative_volume_long.dissect(buffer, index, packet, parent)

  -- Halt Status: Alpha
  index, halt_status = cboe_edgaequities_top_asciipitch_v1_3_9.halt_status.dissect(buffer, index, packet, parent)

  -- Reg SHO Action: Alpha
  index, reg_sho_action = cboe_edgaequities_top_asciipitch_v1_3_9.reg_sho_action.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = cboe_edgaequities_top_asciipitch_v1_3_9.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 2: Alpha
  index, reserved_2 = cboe_edgaequities_top_asciipitch_v1_3_9.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Spin Message
cboe_edgaequities_top_asciipitch_v1_3_9.extended_spin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.extended_spin_message, buffer(offset, 0))
    local index = cboe_edgaequities_top_asciipitch_v1_3_9.extended_spin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgaequities_top_asciipitch_v1_3_9.extended_spin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgaequities_top_asciipitch_v1_3_9.extended_spin_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Spin Message
cboe_edgaequities_top_asciipitch_v1_3_9.expanded_spin_message = {}

-- Size: Expanded Spin Message
cboe_edgaequities_top_asciipitch_v1_3_9.expanded_spin_message.size =
  cboe_edgaequities_top_asciipitch_v1_3_9.timestamp.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.symbol_extended.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_long.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_long.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_long.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_long.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_time.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_price_short.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_size.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.cumulative_volume_long.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.halt_status.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.reg_sho_action.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.reserved_1.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.reserved_2.size

-- Display: Expanded Spin Message
cboe_edgaequities_top_asciipitch_v1_3_9.expanded_spin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Spin Message
cboe_edgaequities_top_asciipitch_v1_3_9.expanded_spin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = cboe_edgaequities_top_asciipitch_v1_3_9.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Extended: Alpha
  index, symbol_extended = cboe_edgaequities_top_asciipitch_v1_3_9.symbol_extended.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Price
  index, bid_price_long = cboe_edgaequities_top_asciipitch_v1_3_9.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Numeric
  index, bid_quantity_long = cboe_edgaequities_top_asciipitch_v1_3_9.bid_quantity_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Price
  index, ask_price_long = cboe_edgaequities_top_asciipitch_v1_3_9.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Numeric
  index, ask_quantity_long = cboe_edgaequities_top_asciipitch_v1_3_9.ask_quantity_long.dissect(buffer, index, packet, parent)

  -- Last Trade Time: Timestamp
  index, last_trade_time = cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_time.dissect(buffer, index, packet, parent)

  -- Last Trade Price Short: Price
  index, last_trade_price_short = cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_price_short.dissect(buffer, index, packet, parent)

  -- Last Trade Size: Numeric
  index, last_trade_size = cboe_edgaequities_top_asciipitch_v1_3_9.last_trade_size.dissect(buffer, index, packet, parent)

  -- Cumulative Volume Long: Numeric
  index, cumulative_volume_long = cboe_edgaequities_top_asciipitch_v1_3_9.cumulative_volume_long.dissect(buffer, index, packet, parent)

  -- Halt Status: Alpha
  index, halt_status = cboe_edgaequities_top_asciipitch_v1_3_9.halt_status.dissect(buffer, index, packet, parent)

  -- Reg SHO Action: Alpha
  index, reg_sho_action = cboe_edgaequities_top_asciipitch_v1_3_9.reg_sho_action.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = cboe_edgaequities_top_asciipitch_v1_3_9.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 2: Alpha
  index, reserved_2 = cboe_edgaequities_top_asciipitch_v1_3_9.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Spin Message
cboe_edgaequities_top_asciipitch_v1_3_9.expanded_spin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.expanded_spin_message, buffer(offset, 0))
    local index = cboe_edgaequities_top_asciipitch_v1_3_9.expanded_spin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgaequities_top_asciipitch_v1_3_9.expanded_spin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgaequities_top_asciipitch_v1_3_9.expanded_spin_message.fields(buffer, offset, packet, parent)
  end
end

-- Milliseconds Message
cboe_edgaequities_top_asciipitch_v1_3_9.milliseconds_message = {}

-- Size: Milliseconds Message
cboe_edgaequities_top_asciipitch_v1_3_9.milliseconds_message.size =
  cboe_edgaequities_top_asciipitch_v1_3_9.milliseconds.size

-- Display: Milliseconds Message
cboe_edgaequities_top_asciipitch_v1_3_9.milliseconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Milliseconds Message
cboe_edgaequities_top_asciipitch_v1_3_9.milliseconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Milliseconds: Numeric
  index, milliseconds = cboe_edgaequities_top_asciipitch_v1_3_9.milliseconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Milliseconds Message
cboe_edgaequities_top_asciipitch_v1_3_9.milliseconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.milliseconds_message, buffer(offset, 0))
    local index = cboe_edgaequities_top_asciipitch_v1_3_9.milliseconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgaequities_top_asciipitch_v1_3_9.milliseconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgaequities_top_asciipitch_v1_3_9.milliseconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Seconds Message
cboe_edgaequities_top_asciipitch_v1_3_9.seconds_message = {}

-- Size: Seconds Message
cboe_edgaequities_top_asciipitch_v1_3_9.seconds_message.size =
  cboe_edgaequities_top_asciipitch_v1_3_9.seconds.size

-- Display: Seconds Message
cboe_edgaequities_top_asciipitch_v1_3_9.seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seconds Message
cboe_edgaequities_top_asciipitch_v1_3_9.seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Numeric
  index, seconds = cboe_edgaequities_top_asciipitch_v1_3_9.seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Seconds Message
cboe_edgaequities_top_asciipitch_v1_3_9.seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.seconds_message, buffer(offset, 0))
    local index = cboe_edgaequities_top_asciipitch_v1_3_9.seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgaequities_top_asciipitch_v1_3_9.seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgaequities_top_asciipitch_v1_3_9.seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Rejected Message
cboe_edgaequities_top_asciipitch_v1_3_9.logon_rejected_message = {}

-- Size: Logon Rejected Message
cboe_edgaequities_top_asciipitch_v1_3_9.logon_rejected_message.size =
  cboe_edgaequities_top_asciipitch_v1_3_9.reject_reason.size

-- Display: Logon Rejected Message
cboe_edgaequities_top_asciipitch_v1_3_9.logon_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Rejected Message
cboe_edgaequities_top_asciipitch_v1_3_9.logon_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason: Alpha
  index, reject_reason = cboe_edgaequities_top_asciipitch_v1_3_9.reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Rejected Message
cboe_edgaequities_top_asciipitch_v1_3_9.logon_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.logon_rejected_message, buffer(offset, 0))
    local index = cboe_edgaequities_top_asciipitch_v1_3_9.logon_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgaequities_top_asciipitch_v1_3_9.logon_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgaequities_top_asciipitch_v1_3_9.logon_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Message
cboe_edgaequities_top_asciipitch_v1_3_9.logon_message = {}

-- Size: Logon Message
cboe_edgaequities_top_asciipitch_v1_3_9.logon_message.size =
  cboe_edgaequities_top_asciipitch_v1_3_9.username.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.password.size + 
  cboe_edgaequities_top_asciipitch_v1_3_9.spin_flag.size

-- Display: Logon Message
cboe_edgaequities_top_asciipitch_v1_3_9.logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Message
cboe_edgaequities_top_asciipitch_v1_3_9.logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: Alphanumeric
  index, username = cboe_edgaequities_top_asciipitch_v1_3_9.username.dissect(buffer, index, packet, parent)

  -- Password: Alphanumeric
  index, password = cboe_edgaequities_top_asciipitch_v1_3_9.password.dissect(buffer, index, packet, parent)

  -- Spin Flag: Boolean
  index, spin_flag = cboe_edgaequities_top_asciipitch_v1_3_9.spin_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
cboe_edgaequities_top_asciipitch_v1_3_9.logon_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9.fields.logon_message, buffer(offset, 0))
    local index = cboe_edgaequities_top_asciipitch_v1_3_9.logon_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgaequities_top_asciipitch_v1_3_9.logon_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgaequities_top_asciipitch_v1_3_9.logon_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_edgaequities_top_asciipitch_v1_3_9.payload = {}

-- Dissect: Payload
cboe_edgaequities_top_asciipitch_v1_3_9.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Logon Message
  if message_type == "L" then
    return cboe_edgaequities_top_asciipitch_v1_3_9.logon_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Rejected Message
  if message_type == "J" then
    return cboe_edgaequities_top_asciipitch_v1_3_9.logon_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Seconds Message
  if message_type == "T" then
    return cboe_edgaequities_top_asciipitch_v1_3_9.seconds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Milliseconds Message
  if message_type == "M" then
    return cboe_edgaequities_top_asciipitch_v1_3_9.milliseconds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Accepted Message
  if message_type == "C" then
    return offset
  end
  -- Dissect Expanded Spin Message
  if message_type == "s" then
    return cboe_edgaequities_top_asciipitch_v1_3_9.expanded_spin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Extended Spin Message
  if message_type == "S" then
    return cboe_edgaequities_top_asciipitch_v1_3_9.extended_spin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Done Message
  if message_type == "D" then
    return offset
  end
  -- Dissect Server Heartbeat Message
  if message_type == "H" then
    return offset
  end
  -- Dissect Client Heartbeat Message
  if message_type == "R" then
    return offset
  end
  -- Dissect Expanded Bid Update Message
  if message_type == "E" then
    return cboe_edgaequities_top_asciipitch_v1_3_9.expanded_bid_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Bid Update Message
  if message_type == "B" then
    return cboe_edgaequities_top_asciipitch_v1_3_9.long_bid_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Bid Update Message
  if message_type == "b" then
    return cboe_edgaequities_top_asciipitch_v1_3_9.short_bid_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Extended Bid Update Message
  if message_type == "N" then
    return cboe_edgaequities_top_asciipitch_v1_3_9.extended_bid_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expanded Ask Update Message
  if message_type == "e" then
    return cboe_edgaequities_top_asciipitch_v1_3_9.expanded_ask_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Ask Update Message
  if message_type == "A" then
    return cboe_edgaequities_top_asciipitch_v1_3_9.long_ask_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Ask Update Message
  if message_type == "a" then
    return cboe_edgaequities_top_asciipitch_v1_3_9.short_ask_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Extended Ask Update Message
  if message_type == "n" then
    return cboe_edgaequities_top_asciipitch_v1_3_9.extended_ask_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expanded Two Sided Update Message
  if message_type == "F" then
    return cboe_edgaequities_top_asciipitch_v1_3_9.expanded_two_sided_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Two Sided Update Message
  if message_type == "U" then
    return cboe_edgaequities_top_asciipitch_v1_3_9.long_two_sided_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Two Sided Update Message
  if message_type == "u" then
    return cboe_edgaequities_top_asciipitch_v1_3_9.short_two_sided_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Extended Two Sided Update Message
  if message_type == "d" then
    return cboe_edgaequities_top_asciipitch_v1_3_9.extended_two_sided_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expanded Trade Message
  if message_type == "f" then
    return cboe_edgaequities_top_asciipitch_v1_3_9.expanded_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Trade Message
  if message_type == "V" then
    return cboe_edgaequities_top_asciipitch_v1_3_9.long_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Trade Message
  if message_type == "v" then
    return cboe_edgaequities_top_asciipitch_v1_3_9.short_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Extended Trade Message
  if message_type == "r" then
    return cboe_edgaequities_top_asciipitch_v1_3_9.extended_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == "t" then
    return cboe_edgaequities_top_asciipitch_v1_3_9.trading_status_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Packet
cboe_edgaequities_top_asciipitch_v1_3_9.packet = {}

-- Verify required size of Tcp packet
cboe_edgaequities_top_asciipitch_v1_3_9.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_edgaequities_top_asciipitch_v1_3_9.message_type.size
end

-- Dissect Packet
cboe_edgaequities_top_asciipitch_v1_3_9.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Message Type: 1 Byte Ascii String Enum with 27 values
    index, message_type = cboe_edgaequities_top_asciipitch_v1_3_9.message_type.dissect(buffer, index, packet, parent)

    -- Payload: Runtime Type with 27 branches
    index = cboe_edgaequities_top_asciipitch_v1_3_9.payload.dissect(buffer, index, packet, parent, message_type)

    -- Top Lf: 1 Byte Fixed Width Integer Static
    index, top_lf = cboe_edgaequities_top_asciipitch_v1_3_9.top_lf.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_edgaequities_top_asciipitch_v1_3_9.init()
end

-- Dissector for Cboe EdgaEquities Top AsciiPitch 1.3.9
function omi_cboe_edgaequities_top_asciipitch_v1_3_9.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_edgaequities_top_asciipitch_v1_3_9.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_edgaequities_top_asciipitch_v1_3_9, buffer(), omi_cboe_edgaequities_top_asciipitch_v1_3_9.description, "("..buffer:len().." Bytes)")
  return cboe_edgaequities_top_asciipitch_v1_3_9.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Top Lf Field
cboe_edgaequities_top_asciipitch_v1_3_9.top_lf.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(669, 1):int()

  if value == 10 then
    return true
  end

  return false
end

-- Dissector Heuristic for Cboe EdgaEquities Top AsciiPitch 1.3.9 (Tcp)
local function omi_cboe_edgaequities_top_asciipitch_v1_3_9_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_edgaequities_top_asciipitch_v1_3_9.packet.requiredsize(buffer) then return false end

  -- Verify Top Lf
  if not cboe_edgaequities_top_asciipitch_v1_3_9.top_lf.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_edgaequities_top_asciipitch_v1_3_9
  omi_cboe_edgaequities_top_asciipitch_v1_3_9.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe EdgaEquities Top AsciiPitch 1.3.9
omi_cboe_edgaequities_top_asciipitch_v1_3_9:register_heuristic("tcp", omi_cboe_edgaequities_top_asciipitch_v1_3_9_tcp_heuristic)

-- Register Cboe EdgaEquities Top AsciiPitch 1.3.9 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_edgaequities_top_asciipitch_v1_3_9)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.3.9
--   Date: Wednesday, January 15, 2025
--   Specification: Cboe_US_Equities_Summary_Depth_Feed_Specification.pdf
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
