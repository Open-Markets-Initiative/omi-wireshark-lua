-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NsmEquities TotalView Itch 2.0.a Protocol
local omi_nasdaq_nsmequities_totalview_itch_v2_0_a = Proto("Omi.Nasdaq.NsmEquities.TotalView.Itch.v2.0.a", "Nasdaq NsmEquities TotalView Itch 2.0.a")

-- Protocol table
local nasdaq_nsmequities_totalview_itch_v2_0_a = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NsmEquities TotalView Itch 2.0.a Fields
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.canceled_shares = ProtoField.new("Canceled Shares", "nasdaq.nsmequities.totalview.itch.v2.0.a.canceledshares", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.count = ProtoField.new("Count", "nasdaq.nsmequities.totalview.itch.v2.0.a.count", ftypes.UINT16)
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.display = ProtoField.new("Display", "nasdaq.nsmequities.totalview.itch.v2.0.a.display", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.event_code = ProtoField.new("Event Code", "nasdaq.nsmequities.totalview.itch.v2.0.a.eventcode", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.executed_shares = ProtoField.new("Executed Shares", "nasdaq.nsmequities.totalview.itch.v2.0.a.executedshares", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.length = ProtoField.new("Length", "nasdaq.nsmequities.totalview.itch.v2.0.a.length", ftypes.UINT16)
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.match_number = ProtoField.new("Match Number", "nasdaq.nsmequities.totalview.itch.v2.0.a.matchnumber", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.message_type = ProtoField.new("Message Type", "nasdaq.nsmequities.totalview.itch.v2.0.a.messagetype", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.mmid = ProtoField.new("Mmid", "nasdaq.nsmequities.totalview.itch.v2.0.a.mmid", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.nsmequities.totalview.itch.v2.0.a.orderreferencenumber", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.price = ProtoField.new("Price", "nasdaq.nsmequities.totalview.itch.v2.0.a.price", ftypes.DOUBLE)
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.sequence = ProtoField.new("Sequence", "nasdaq.nsmequities.totalview.itch.v2.0.a.sequence", ftypes.UINT32)
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.session = ProtoField.new("Session", "nasdaq.nsmequities.totalview.itch.v2.0.a.session", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.shares = ProtoField.new("Shares", "nasdaq.nsmequities.totalview.itch.v2.0.a.shares", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.side = ProtoField.new("Side", "nasdaq.nsmequities.totalview.itch.v2.0.a.side", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.stock = ProtoField.new("Stock", "nasdaq.nsmequities.totalview.itch.v2.0.a.stock", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.stock_halted = ProtoField.new("Stock Halted", "nasdaq.nsmequities.totalview.itch.v2.0.a.stockhalted", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.time_stamp = ProtoField.new("Time Stamp", "nasdaq.nsmequities.totalview.itch.v2.0.a.timestamp", ftypes.STRING)

-- Nasdaq NsmEquities TotalView Itch 2.0.a Framing
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.message = ProtoField.new("Message", "nasdaq.nsmequities.totalview.itch.v2.0.a.message", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.message_header = ProtoField.new("Message Header", "nasdaq.nsmequities.totalview.itch.v2.0.a.messageheader", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.packet = ProtoField.new("Packet", "nasdaq.nsmequities.totalview.itch.v2.0.a.packet", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.nsmequities.totalview.itch.v2.0.a.packetheader", ftypes.STRING)

-- Nasdaq NsmEquities TotalView 2.0.a Application Messages
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.add_order_message = ProtoField.new("Add Order Message", "nasdaq.nsmequities.totalview.itch.v2.0.a.addordermessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "nasdaq.nsmequities.totalview.itch.v2.0.a.brokentrademessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "nasdaq.nsmequities.totalview.itch.v2.0.a.ordercancelmessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.order_executed_message = ProtoField.new("Order Executed Message", "nasdaq.nsmequities.totalview.itch.v2.0.a.orderexecutedmessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.stock_halt_status_message = ProtoField.new("Stock Halt Status Message", "nasdaq.nsmequities.totalview.itch.v2.0.a.stockhaltstatusmessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nsmequities.totalview.itch.v2.0.a.systemeventmessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.trade_message = ProtoField.new("Trade Message", "nasdaq.nsmequities.totalview.itch.v2.0.a.trademessage", ftypes.STRING)

-- Nasdaq NsmEquities TotalView 2.0.a Session Messages
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.nsmequities.totalview.itch.v2.0.a.endofsession", ftypes.BYTES)
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.heartbeat = ProtoField.new("Heartbeat", "nasdaq.nsmequities.totalview.itch.v2.0.a.heartbeat", ftypes.BYTES)

-- Nasdaq NsmEquities TotalView Itch 2.0.a Generated Fields
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.message_index = ProtoField.new("Message Index", "nasdaq.nsmequities.totalview.itch.v2.0.a.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq NsmEquities TotalView Itch 2.0.a Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Nasdaq NsmEquities TotalView Itch 2.0.a Show Options
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v2_0_a.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_nasdaq_nsmequities_totalview_itch_v2_0_a.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_nsmequities_totalview_itch_v2_0_a.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nsmequities_totalview_itch_v2_0_a.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_nsmequities_totalview_itch_v2_0_a.prefs.show_headers then
    show.headers = omi_nasdaq_nsmequities_totalview_itch_v2_0_a.prefs.show_headers
  end
  if show.structs ~= omi_nasdaq_nsmequities_totalview_itch_v2_0_a.prefs.show_structs then
    show.structs = omi_nasdaq_nsmequities_totalview_itch_v2_0_a.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_nsmequities_totalview_itch_v2_0_a.prefs.show_indexes then
    show.indexes = omi_nasdaq_nsmequities_totalview_itch_v2_0_a.prefs.show_indexes
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
-- Nasdaq NsmEquities TotalView Itch 2.0.a Fields
-----------------------------------------------------------------------

-- Canceled Shares
nasdaq_nsmequities_totalview_itch_v2_0_a.canceled_shares = {}

-- Size: Canceled Shares
nasdaq_nsmequities_totalview_itch_v2_0_a.canceled_shares.size = 6

-- Display: Canceled Shares
nasdaq_nsmequities_totalview_itch_v2_0_a.canceled_shares.display = function(value)
  return "Canceled Shares: "..value
end

-- Dissect: Canceled Shares
nasdaq_nsmequities_totalview_itch_v2_0_a.canceled_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v2_0_a.canceled_shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nsmequities_totalview_itch_v2_0_a.canceled_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.canceled_shares, range, value, display)

  return offset + length, value
end

-- Count
nasdaq_nsmequities_totalview_itch_v2_0_a.count = {}

-- Size: Count
nasdaq_nsmequities_totalview_itch_v2_0_a.count.size = 2

-- Display: Count
nasdaq_nsmequities_totalview_itch_v2_0_a.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
nasdaq_nsmequities_totalview_itch_v2_0_a.count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v2_0_a.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nasdaq_nsmequities_totalview_itch_v2_0_a.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.count, range, value, display)

  return offset + length, value
end

-- Display
nasdaq_nsmequities_totalview_itch_v2_0_a.display = {}

-- Size: Display
nasdaq_nsmequities_totalview_itch_v2_0_a.display.size = 1

-- Display: Display
nasdaq_nsmequities_totalview_itch_v2_0_a.display.display = function(value)
  if value == "Y" then
    return "Display: Displayed (Y)"
  end
  if value == "A" then
    return "Display: Attributable (A)"
  end

  return "Display: Unknown("..value..")"
end

-- Dissect: Display
nasdaq_nsmequities_totalview_itch_v2_0_a.display.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v2_0_a.display.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v2_0_a.display.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.display, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_nsmequities_totalview_itch_v2_0_a.event_code = {}

-- Size: Event Code
nasdaq_nsmequities_totalview_itch_v2_0_a.event_code.size = 1

-- Display: Event Code
nasdaq_nsmequities_totalview_itch_v2_0_a.event_code.display = function(value)
  if value == "S" then
    return "Event Code: Start Of Day (S)"
  end
  if value == "E" then
    return "Event Code: End Of Day (E)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_nsmequities_totalview_itch_v2_0_a.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v2_0_a.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v2_0_a.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executed Shares
nasdaq_nsmequities_totalview_itch_v2_0_a.executed_shares = {}

-- Size: Executed Shares
nasdaq_nsmequities_totalview_itch_v2_0_a.executed_shares.size = 6

-- Display: Executed Shares
nasdaq_nsmequities_totalview_itch_v2_0_a.executed_shares.display = function(value)
  return "Executed Shares: "..value
end

-- Dissect: Executed Shares
nasdaq_nsmequities_totalview_itch_v2_0_a.executed_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v2_0_a.executed_shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nsmequities_totalview_itch_v2_0_a.executed_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.executed_shares, range, value, display)

  return offset + length, value
end

-- Length
nasdaq_nsmequities_totalview_itch_v2_0_a.length = {}

-- Size: Length
nasdaq_nsmequities_totalview_itch_v2_0_a.length.size = 2

-- Display: Length
nasdaq_nsmequities_totalview_itch_v2_0_a.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
nasdaq_nsmequities_totalview_itch_v2_0_a.length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v2_0_a.length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v2_0_a.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.length, range, value, display)

  return offset + length, value
end

-- Match Number
nasdaq_nsmequities_totalview_itch_v2_0_a.match_number = {}

-- Size: Match Number
nasdaq_nsmequities_totalview_itch_v2_0_a.match_number.size = 9

-- Display: Match Number
nasdaq_nsmequities_totalview_itch_v2_0_a.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_nsmequities_totalview_itch_v2_0_a.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v2_0_a.match_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nsmequities_totalview_itch_v2_0_a.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.match_number, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_nsmequities_totalview_itch_v2_0_a.message_type = {}

-- Size: Message Type
nasdaq_nsmequities_totalview_itch_v2_0_a.message_type.size = 1

-- Display: Message Type
nasdaq_nsmequities_totalview_itch_v2_0_a.message_type.display = function(value)
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "A" then
    return "Message Type: Add Order Message (A)"
  end
  if value == "E" then
    return "Message Type: Order Executed Message (E)"
  end
  if value == "X" then
    return "Message Type: Order Cancel Message (X)"
  end
  if value == "P" then
    return "Message Type: Trade Message (P)"
  end
  if value == "B" then
    return "Message Type: Broken Trade Message (B)"
  end
  if value == "H" then
    return "Message Type: Stock Halt Status Message (H)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_nsmequities_totalview_itch_v2_0_a.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v2_0_a.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v2_0_a.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mmid
nasdaq_nsmequities_totalview_itch_v2_0_a.mmid = {}

-- Size: Mmid
nasdaq_nsmequities_totalview_itch_v2_0_a.mmid.size = 4

-- Display: Mmid
nasdaq_nsmequities_totalview_itch_v2_0_a.mmid.display = function(value)
  return "Mmid: "..value
end

-- Dissect: Mmid
nasdaq_nsmequities_totalview_itch_v2_0_a.mmid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v2_0_a.mmid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v2_0_a.mmid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.mmid, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nasdaq_nsmequities_totalview_itch_v2_0_a.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_nsmequities_totalview_itch_v2_0_a.order_reference_number.size = 9

-- Display: Order Reference Number
nasdaq_nsmequities_totalview_itch_v2_0_a.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_nsmequities_totalview_itch_v2_0_a.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v2_0_a.order_reference_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nsmequities_totalview_itch_v2_0_a.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_nsmequities_totalview_itch_v2_0_a.price = {}

-- Size: Price
nasdaq_nsmequities_totalview_itch_v2_0_a.price.size = 10

-- Display: Price
nasdaq_nsmequities_totalview_itch_v2_0_a.price.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, nasdaq_nsmequities_totalview_itch_v2_0_a.price.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Price: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 4 then
    digits = string.rep("0", 4 - #digits + 1)..digits
  end

  return "Price: "..sign..digits:sub(1, #digits - 4)..".".. digits:sub(-4)
end

-- Dissect: Price
nasdaq_nsmequities_totalview_itch_v2_0_a.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v2_0_a.price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nsmequities_totalview_itch_v2_0_a.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.price, range, value, display)

  return offset + length, value
end

-- Sequence
nasdaq_nsmequities_totalview_itch_v2_0_a.sequence = {}

-- Size: Sequence
nasdaq_nsmequities_totalview_itch_v2_0_a.sequence.size = 4

-- Display: Sequence
nasdaq_nsmequities_totalview_itch_v2_0_a.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
nasdaq_nsmequities_totalview_itch_v2_0_a.sequence.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v2_0_a.sequence.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v2_0_a.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.sequence, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_nsmequities_totalview_itch_v2_0_a.session = {}

-- Size: Session
nasdaq_nsmequities_totalview_itch_v2_0_a.session.size = 10

-- Display: Session
nasdaq_nsmequities_totalview_itch_v2_0_a.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
nasdaq_nsmequities_totalview_itch_v2_0_a.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v2_0_a.session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v2_0_a.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.session, range, value, display)

  return offset + length, value
end

-- Shares
nasdaq_nsmequities_totalview_itch_v2_0_a.shares = {}

-- Size: Shares
nasdaq_nsmequities_totalview_itch_v2_0_a.shares.size = 6

-- Display: Shares
nasdaq_nsmequities_totalview_itch_v2_0_a.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
nasdaq_nsmequities_totalview_itch_v2_0_a.shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v2_0_a.shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nsmequities_totalview_itch_v2_0_a.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.shares, range, value, display)

  return offset + length, value
end

-- Side
nasdaq_nsmequities_totalview_itch_v2_0_a.side = {}

-- Size: Side
nasdaq_nsmequities_totalview_itch_v2_0_a.side.size = 1

-- Display: Side
nasdaq_nsmequities_totalview_itch_v2_0_a.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nasdaq_nsmequities_totalview_itch_v2_0_a.side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v2_0_a.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v2_0_a.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.side, range, value, display)

  return offset + length, value
end

-- Stock
nasdaq_nsmequities_totalview_itch_v2_0_a.stock = {}

-- Size: Stock
nasdaq_nsmequities_totalview_itch_v2_0_a.stock.size = 6

-- Display: Stock
nasdaq_nsmequities_totalview_itch_v2_0_a.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_nsmequities_totalview_itch_v2_0_a.stock.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v2_0_a.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v2_0_a.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.stock, range, value, display)

  return offset + length, value
end

-- Stock Halted
nasdaq_nsmequities_totalview_itch_v2_0_a.stock_halted = {}

-- Size: Stock Halted
nasdaq_nsmequities_totalview_itch_v2_0_a.stock_halted.size = 1

-- Display: Stock Halted
nasdaq_nsmequities_totalview_itch_v2_0_a.stock_halted.display = function(value)
  if value == "T" then
    return "Stock Halted: Halted (T)"
  end
  if value == "F" then
    return "Stock Halted: Trading (F)"
  end

  return "Stock Halted: Unknown("..value..")"
end

-- Dissect: Stock Halted
nasdaq_nsmequities_totalview_itch_v2_0_a.stock_halted.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v2_0_a.stock_halted.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v2_0_a.stock_halted.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.stock_halted, range, value, display)

  return offset + length, value
end

-- Time Stamp
nasdaq_nsmequities_totalview_itch_v2_0_a.time_stamp = {}

-- Size: Time Stamp
nasdaq_nsmequities_totalview_itch_v2_0_a.time_stamp.size = 8

-- Display: Time Stamp
nasdaq_nsmequities_totalview_itch_v2_0_a.time_stamp.display = function(value)
  return "Time Stamp: "..value
end

-- Dissect: Time Stamp
nasdaq_nsmequities_totalview_itch_v2_0_a.time_stamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v2_0_a.time_stamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nsmequities_totalview_itch_v2_0_a.time_stamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.time_stamp, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NsmEquities TotalView Itch 2.0.a
-----------------------------------------------------------------------

-- Stock Halt Status Message
nasdaq_nsmequities_totalview_itch_v2_0_a.stock_halt_status_message = {}

-- Size: Stock Halt Status Message
nasdaq_nsmequities_totalview_itch_v2_0_a.stock_halt_status_message.size =
  nasdaq_nsmequities_totalview_itch_v2_0_a.stock.size + 
  nasdaq_nsmequities_totalview_itch_v2_0_a.stock_halted.size

-- Display: Stock Halt Status Message
nasdaq_nsmequities_totalview_itch_v2_0_a.stock_halt_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Halt Status Message
nasdaq_nsmequities_totalview_itch_v2_0_a.stock_halt_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_totalview_itch_v2_0_a.stock.dissect(buffer, index, packet, parent)

  -- Stock Halted: Alpha
  index, stock_halted = nasdaq_nsmequities_totalview_itch_v2_0_a.stock_halted.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Halt Status Message
nasdaq_nsmequities_totalview_itch_v2_0_a.stock_halt_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.stock_halt_status_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v2_0_a.stock_halt_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v2_0_a.stock_halt_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v2_0_a.stock_halt_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Message
nasdaq_nsmequities_totalview_itch_v2_0_a.broken_trade_message = {}

-- Size: Broken Trade Message
nasdaq_nsmequities_totalview_itch_v2_0_a.broken_trade_message.size =
  nasdaq_nsmequities_totalview_itch_v2_0_a.match_number.size

-- Display: Broken Trade Message
nasdaq_nsmequities_totalview_itch_v2_0_a.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
nasdaq_nsmequities_totalview_itch_v2_0_a.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Number: Numeric
  index, match_number = nasdaq_nsmequities_totalview_itch_v2_0_a.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
nasdaq_nsmequities_totalview_itch_v2_0_a.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.broken_trade_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v2_0_a.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v2_0_a.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v2_0_a.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
nasdaq_nsmequities_totalview_itch_v2_0_a.trade_message = {}

-- Size: Trade Message
nasdaq_nsmequities_totalview_itch_v2_0_a.trade_message.size =
  nasdaq_nsmequities_totalview_itch_v2_0_a.order_reference_number.size + 
  nasdaq_nsmequities_totalview_itch_v2_0_a.side.size + 
  nasdaq_nsmequities_totalview_itch_v2_0_a.shares.size + 
  nasdaq_nsmequities_totalview_itch_v2_0_a.stock.size + 
  nasdaq_nsmequities_totalview_itch_v2_0_a.price.size + 
  nasdaq_nsmequities_totalview_itch_v2_0_a.match_number.size

-- Display: Trade Message
nasdaq_nsmequities_totalview_itch_v2_0_a.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
nasdaq_nsmequities_totalview_itch_v2_0_a.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Reference Number: Numeric
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v2_0_a.order_reference_number.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_nsmequities_totalview_itch_v2_0_a.side.dissect(buffer, index, packet, parent)

  -- Shares: Numeric
  index, shares = nasdaq_nsmequities_totalview_itch_v2_0_a.shares.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_totalview_itch_v2_0_a.stock.dissect(buffer, index, packet, parent)

  -- Price: Price (4)
  index, price = nasdaq_nsmequities_totalview_itch_v2_0_a.price.dissect(buffer, index, packet, parent)

  -- Match Number: Numeric
  index, match_number = nasdaq_nsmequities_totalview_itch_v2_0_a.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
nasdaq_nsmequities_totalview_itch_v2_0_a.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.trade_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v2_0_a.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v2_0_a.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v2_0_a.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Message
nasdaq_nsmequities_totalview_itch_v2_0_a.order_cancel_message = {}

-- Size: Order Cancel Message
nasdaq_nsmequities_totalview_itch_v2_0_a.order_cancel_message.size =
  nasdaq_nsmequities_totalview_itch_v2_0_a.order_reference_number.size + 
  nasdaq_nsmequities_totalview_itch_v2_0_a.canceled_shares.size

-- Display: Order Cancel Message
nasdaq_nsmequities_totalview_itch_v2_0_a.order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message
nasdaq_nsmequities_totalview_itch_v2_0_a.order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Reference Number: Numeric
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v2_0_a.order_reference_number.dissect(buffer, index, packet, parent)

  -- Canceled Shares: Numeric
  index, canceled_shares = nasdaq_nsmequities_totalview_itch_v2_0_a.canceled_shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
nasdaq_nsmequities_totalview_itch_v2_0_a.order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.order_cancel_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v2_0_a.order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v2_0_a.order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v2_0_a.order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
nasdaq_nsmequities_totalview_itch_v2_0_a.order_executed_message = {}

-- Size: Order Executed Message
nasdaq_nsmequities_totalview_itch_v2_0_a.order_executed_message.size =
  nasdaq_nsmequities_totalview_itch_v2_0_a.order_reference_number.size + 
  nasdaq_nsmequities_totalview_itch_v2_0_a.executed_shares.size + 
  nasdaq_nsmequities_totalview_itch_v2_0_a.match_number.size

-- Display: Order Executed Message
nasdaq_nsmequities_totalview_itch_v2_0_a.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
nasdaq_nsmequities_totalview_itch_v2_0_a.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Reference Number: Numeric
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v2_0_a.order_reference_number.dissect(buffer, index, packet, parent)

  -- Executed Shares: Numeric
  index, executed_shares = nasdaq_nsmequities_totalview_itch_v2_0_a.executed_shares.dissect(buffer, index, packet, parent)

  -- Match Number: Numeric
  index, match_number = nasdaq_nsmequities_totalview_itch_v2_0_a.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
nasdaq_nsmequities_totalview_itch_v2_0_a.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.order_executed_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v2_0_a.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v2_0_a.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v2_0_a.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
nasdaq_nsmequities_totalview_itch_v2_0_a.add_order_message = {}

-- Size: Add Order Message
nasdaq_nsmequities_totalview_itch_v2_0_a.add_order_message.size =
  nasdaq_nsmequities_totalview_itch_v2_0_a.order_reference_number.size + 
  nasdaq_nsmequities_totalview_itch_v2_0_a.side.size + 
  nasdaq_nsmequities_totalview_itch_v2_0_a.shares.size + 
  nasdaq_nsmequities_totalview_itch_v2_0_a.stock.size + 
  nasdaq_nsmequities_totalview_itch_v2_0_a.price.size + 
  nasdaq_nsmequities_totalview_itch_v2_0_a.display.size + 
  nasdaq_nsmequities_totalview_itch_v2_0_a.mmid.size

-- Display: Add Order Message
nasdaq_nsmequities_totalview_itch_v2_0_a.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
nasdaq_nsmequities_totalview_itch_v2_0_a.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Reference Number: Numeric
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v2_0_a.order_reference_number.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_nsmequities_totalview_itch_v2_0_a.side.dissect(buffer, index, packet, parent)

  -- Shares: Numeric
  index, shares = nasdaq_nsmequities_totalview_itch_v2_0_a.shares.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_totalview_itch_v2_0_a.stock.dissect(buffer, index, packet, parent)

  -- Price: Price (4)
  index, price = nasdaq_nsmequities_totalview_itch_v2_0_a.price.dissect(buffer, index, packet, parent)

  -- Display: Alpha
  index, display = nasdaq_nsmequities_totalview_itch_v2_0_a.display.dissect(buffer, index, packet, parent)

  -- Mmid: Alpha
  index, mmid = nasdaq_nsmequities_totalview_itch_v2_0_a.mmid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
nasdaq_nsmequities_totalview_itch_v2_0_a.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.add_order_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v2_0_a.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v2_0_a.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v2_0_a.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_nsmequities_totalview_itch_v2_0_a.system_event_message = {}

-- Size: System Event Message
nasdaq_nsmequities_totalview_itch_v2_0_a.system_event_message.size =
  nasdaq_nsmequities_totalview_itch_v2_0_a.event_code.size

-- Display: System Event Message
nasdaq_nsmequities_totalview_itch_v2_0_a.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nsmequities_totalview_itch_v2_0_a.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Code: Alpha
  index, event_code = nasdaq_nsmequities_totalview_itch_v2_0_a.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nsmequities_totalview_itch_v2_0_a.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v2_0_a.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v2_0_a.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v2_0_a.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_nsmequities_totalview_itch_v2_0_a.payload = {}

-- Dissect: Payload
nasdaq_nsmequities_totalview_itch_v2_0_a.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_nsmequities_totalview_itch_v2_0_a.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == "A" then
    return nasdaq_nsmequities_totalview_itch_v2_0_a.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "E" then
    return nasdaq_nsmequities_totalview_itch_v2_0_a.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Message
  if message_type == "X" then
    return nasdaq_nsmequities_totalview_itch_v2_0_a.order_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == "P" then
    return nasdaq_nsmequities_totalview_itch_v2_0_a.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Message
  if message_type == "B" then
    return nasdaq_nsmequities_totalview_itch_v2_0_a.broken_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Halt Status Message
  if message_type == "H" then
    return nasdaq_nsmequities_totalview_itch_v2_0_a.stock_halt_status_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_nsmequities_totalview_itch_v2_0_a.message_header = {}

-- Size: Message Header
nasdaq_nsmequities_totalview_itch_v2_0_a.message_header.size =
  nasdaq_nsmequities_totalview_itch_v2_0_a.length.size + 
  nasdaq_nsmequities_totalview_itch_v2_0_a.time_stamp.size + 
  nasdaq_nsmequities_totalview_itch_v2_0_a.message_type.size

-- Display: Message Header
nasdaq_nsmequities_totalview_itch_v2_0_a.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_nsmequities_totalview_itch_v2_0_a.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = nasdaq_nsmequities_totalview_itch_v2_0_a.length.dissect(buffer, index, packet, parent)

  -- Time Stamp: 8 Byte Ascii String
  index, time_stamp = nasdaq_nsmequities_totalview_itch_v2_0_a.time_stamp.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 7 values
  index, message_type = nasdaq_nsmequities_totalview_itch_v2_0_a.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_nsmequities_totalview_itch_v2_0_a.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.message_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v2_0_a.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v2_0_a.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v2_0_a.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_nsmequities_totalview_itch_v2_0_a.message = {}

-- Read runtime size of: Message
nasdaq_nsmequities_totalview_itch_v2_0_a.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Length
  local length = buffer(offset, 2):uint()

  return length + 2
end

-- Display: Message
nasdaq_nsmequities_totalview_itch_v2_0_a.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_nsmequities_totalview_itch_v2_0_a.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 3 fields
  index, message_header = nasdaq_nsmequities_totalview_itch_v2_0_a.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 7 branches
  index = nasdaq_nsmequities_totalview_itch_v2_0_a.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_nsmequities_totalview_itch_v2_0_a.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_nsmequities_totalview_itch_v2_0_a.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.message, buffer(offset, 0))
    local current = nasdaq_nsmequities_totalview_itch_v2_0_a.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_nsmequities_totalview_itch_v2_0_a.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_totalview_itch_v2_0_a.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
nasdaq_nsmequities_totalview_itch_v2_0_a.end_of_session = {}

-- Display: End Of Session
nasdaq_nsmequities_totalview_itch_v2_0_a.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_nsmequities_totalview_itch_v2_0_a.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nsmequities_totalview_itch_v2_0_a.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_nsmequities_totalview_itch_v2_0_a.heartbeat = {}

-- Display: Heartbeat
nasdaq_nsmequities_totalview_itch_v2_0_a.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_nsmequities_totalview_itch_v2_0_a.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nsmequities_totalview_itch_v2_0_a.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_nsmequities_totalview_itch_v2_0_a.messages = {}

-- Dissect: Messages
nasdaq_nsmequities_totalview_itch_v2_0_a.messages.dissect = function(buffer, offset, packet, parent, count)
  -- Dissect Heartbeat
  if count == 0 then
    return nasdaq_nsmequities_totalview_itch_v2_0_a.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if count == 65535 then
    return nasdaq_nsmequities_totalview_itch_v2_0_a.end_of_session.dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, count do

    -- Dependency element: Length
    local length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_nsmequities_totalview_itch_v2_0_a.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
nasdaq_nsmequities_totalview_itch_v2_0_a.packet_header = {}

-- Size: Packet Header
nasdaq_nsmequities_totalview_itch_v2_0_a.packet_header.size =
  nasdaq_nsmequities_totalview_itch_v2_0_a.session.size + 
  nasdaq_nsmequities_totalview_itch_v2_0_a.sequence.size + 
  nasdaq_nsmequities_totalview_itch_v2_0_a.count.size

-- Display: Packet Header
nasdaq_nsmequities_totalview_itch_v2_0_a.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_nsmequities_totalview_itch_v2_0_a.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nsmequities_totalview_itch_v2_0_a.session.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = nasdaq_nsmequities_totalview_itch_v2_0_a.sequence.dissect(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index, count = nasdaq_nsmequities_totalview_itch_v2_0_a.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_nsmequities_totalview_itch_v2_0_a.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v2_0_a.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v2_0_a.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v2_0_a.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v2_0_a.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_nsmequities_totalview_itch_v2_0_a.packet = {}

-- Verify required size of Udp packet
nasdaq_nsmequities_totalview_itch_v2_0_a.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nsmequities_totalview_itch_v2_0_a.packet_header.size
end

-- Dissect Packet
nasdaq_nsmequities_totalview_itch_v2_0_a.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_nsmequities_totalview_itch_v2_0_a.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Count
  local count = buffer(index - 2, 2):le_uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_nsmequities_totalview_itch_v2_0_a.messages.dissect(buffer, index, packet, parent, count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_nsmequities_totalview_itch_v2_0_a.init()
end

-- Dissector for Nasdaq NsmEquities TotalView Itch 2.0.a
function omi_nasdaq_nsmequities_totalview_itch_v2_0_a.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nsmequities_totalview_itch_v2_0_a.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nsmequities_totalview_itch_v2_0_a, buffer(), omi_nasdaq_nsmequities_totalview_itch_v2_0_a.description, "("..buffer:len().." Bytes)")
  return nasdaq_nsmequities_totalview_itch_v2_0_a.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq NsmEquities TotalView Itch 2.0.a (Udp)
local function omi_nasdaq_nsmequities_totalview_itch_v2_0_a_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nsmequities_totalview_itch_v2_0_a.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nsmequities_totalview_itch_v2_0_a
  omi_nasdaq_nsmequities_totalview_itch_v2_0_a.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NsmEquities TotalView Itch 2.0.a
omi_nasdaq_nsmequities_totalview_itch_v2_0_a:register_heuristic("udp", omi_nasdaq_nsmequities_totalview_itch_v2_0_a_udp_heuristic)

-- Register Nasdaq NsmEquities TotalView Itch 2.0.a for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_nsmequities_totalview_itch_v2_0_a)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 2.0.a
--   Date: Thursday, February 15, 2007
--   Specification: Nasdaq TotalView ITCH (2.0a).pdf
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
