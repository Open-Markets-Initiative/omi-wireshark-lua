-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq BxEquities Drop AsciiDrop 2.0 Protocol
local omi_nasdaq_bxequities_drop_asciidrop_v2_0 = Proto("Omi.Nasdaq.BxEquities.Drop.AsciiDrop.v2.0", "Nasdaq BxEquities Drop AsciiDrop 2.0")

-- Protocol table
local nasdaq_bxequities_drop_asciidrop_v2_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq BxEquities Drop AsciiDrop 2.0 Fields
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.buy_sell = ProtoField.new("Buy Sell", "nasdaq.bxequities.drop.asciidrop.v2.0.buysell", ftypes.STRING)
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.clearing_code = ProtoField.new("Clearing Code", "nasdaq.bxequities.drop.asciidrop.v2.0.clearingcode", ftypes.STRING)
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.comma = ProtoField.new("Comma", "nasdaq.bxequities.drop.asciidrop.v2.0.comma", ftypes.STRING)
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.cr = ProtoField.new("Cr", "nasdaq.bxequities.drop.asciidrop.v2.0.cr", ftypes.INT8)
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.firm = ProtoField.new("Firm", "nasdaq.bxequities.drop.asciidrop.v2.0.firm", ftypes.STRING)
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.lf = ProtoField.new("Lf", "nasdaq.bxequities.drop.asciidrop.v2.0.lf", ftypes.INT8)
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.liquidity_code = ProtoField.new("Liquidity Code", "nasdaq.bxequities.drop.asciidrop.v2.0.liquiditycode", ftypes.STRING)
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.match_number = ProtoField.new("Match Number", "nasdaq.bxequities.drop.asciidrop.v2.0.matchnumber", ftypes.STRING)
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.message_type = ProtoField.new("Message Type", "nasdaq.bxequities.drop.asciidrop.v2.0.messagetype", ftypes.STRING)
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.price = ProtoField.new("Price", "nasdaq.bxequities.drop.asciidrop.v2.0.price", ftypes.STRING)
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.reference = ProtoField.new("Reference", "nasdaq.bxequities.drop.asciidrop.v2.0.reference", ftypes.STRING)
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.shares = ProtoField.new("Shares", "nasdaq.bxequities.drop.asciidrop.v2.0.shares", ftypes.STRING)
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.source = ProtoField.new("Source", "nasdaq.bxequities.drop.asciidrop.v2.0.source", ftypes.STRING)
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.stock = ProtoField.new("Stock", "nasdaq.bxequities.drop.asciidrop.v2.0.stock", ftypes.STRING)
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.time_in_force = ProtoField.new("Time In Force", "nasdaq.bxequities.drop.asciidrop.v2.0.timeinforce", ftypes.STRING)
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.time_stamp = ProtoField.new("Time Stamp", "nasdaq.bxequities.drop.asciidrop.v2.0.timestamp", ftypes.STRING)
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.token = ProtoField.new("Token", "nasdaq.bxequities.drop.asciidrop.v2.0.token", ftypes.STRING)
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.user = ProtoField.new("User", "nasdaq.bxequities.drop.asciidrop.v2.0.user", ftypes.STRING)

-- Nasdaq BxEquities Drop AsciiDrop 2.0 Framing
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.line = ProtoField.new("Line", "nasdaq.bxequities.drop.asciidrop.v2.0.line", ftypes.STRING)
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.message_header = ProtoField.new("Message Header", "nasdaq.bxequities.drop.asciidrop.v2.0.messageheader", ftypes.STRING)

-- Nasdaq BxEquities Drop 2.0 Application Messages
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.existing_order_canceled_message = ProtoField.new("Existing Order Canceled Message", "nasdaq.bxequities.drop.asciidrop.v2.0.existingordercanceledmessage", ftypes.STRING)
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.existing_order_executed_message = ProtoField.new("Existing Order Executed Message", "nasdaq.bxequities.drop.asciidrop.v2.0.existingorderexecutedmessage", ftypes.STRING)
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.new_order_accepted_message = ProtoField.new("New Order Accepted Message", "nasdaq.bxequities.drop.asciidrop.v2.0.neworderacceptedmessage", ftypes.STRING)
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.previous_execution_broken_message = ProtoField.new("Previous Execution Broken Message", "nasdaq.bxequities.drop.asciidrop.v2.0.previousexecutionbrokenmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq BxEquities Drop AsciiDrop 2.0 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true

-- Register Nasdaq BxEquities Drop AsciiDrop 2.0 Show Options
omi_nasdaq_bxequities_drop_asciidrop_v2_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_bxequities_drop_asciidrop_v2_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_bxequities_drop_asciidrop_v2_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

-- Handle changed preferences
function omi_nasdaq_bxequities_drop_asciidrop_v2_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_bxequities_drop_asciidrop_v2_0.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_bxequities_drop_asciidrop_v2_0.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_bxequities_drop_asciidrop_v2_0.prefs.show_headers then
    show.headers = omi_nasdaq_bxequities_drop_asciidrop_v2_0.prefs.show_headers
  end
  if show.structs ~= omi_nasdaq_bxequities_drop_asciidrop_v2_0.prefs.show_structs then
    show.structs = omi_nasdaq_bxequities_drop_asciidrop_v2_0.prefs.show_structs
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
-- Nasdaq BxEquities Drop AsciiDrop 2.0 Fields
-----------------------------------------------------------------------

-- Buy Sell
nasdaq_bxequities_drop_asciidrop_v2_0.buy_sell = {}

-- Size: Buy Sell
nasdaq_bxequities_drop_asciidrop_v2_0.buy_sell.size = 1

-- Display: Buy Sell
nasdaq_bxequities_drop_asciidrop_v2_0.buy_sell.display = function(value)
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
nasdaq_bxequities_drop_asciidrop_v2_0.buy_sell.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_bxequities_drop_asciidrop_v2_0.buy_sell.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_bxequities_drop_asciidrop_v2_0.buy_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.buy_sell, range, value, display)

  return offset + length, value
end

-- Clearing Code
nasdaq_bxequities_drop_asciidrop_v2_0.clearing_code = {}

-- Size: Clearing Code
nasdaq_bxequities_drop_asciidrop_v2_0.clearing_code.size = 1

-- Display: Clearing Code
nasdaq_bxequities_drop_asciidrop_v2_0.clearing_code.display = function(value)
  if value == "Q" then
    return "Clearing Code: Qsr (Q)"
  end

  return "Clearing Code: Unknown("..value..")"
end

-- Dissect: Clearing Code
nasdaq_bxequities_drop_asciidrop_v2_0.clearing_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_bxequities_drop_asciidrop_v2_0.clearing_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_bxequities_drop_asciidrop_v2_0.clearing_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.clearing_code, range, value, display)

  return offset + length, value
end

-- Comma
nasdaq_bxequities_drop_asciidrop_v2_0.comma = {}

-- Size: Comma
nasdaq_bxequities_drop_asciidrop_v2_0.comma.size = 1

-- Display: Comma
nasdaq_bxequities_drop_asciidrop_v2_0.comma.display = function(value)
  return "Comma: "..value
end

-- Dissect: Comma
nasdaq_bxequities_drop_asciidrop_v2_0.comma.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_bxequities_drop_asciidrop_v2_0.comma.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_bxequities_drop_asciidrop_v2_0.comma.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.comma, range, value, display)

  return offset + length, value
end

-- Cr
nasdaq_bxequities_drop_asciidrop_v2_0.cr = {}

-- Size: Cr
nasdaq_bxequities_drop_asciidrop_v2_0.cr.size = 1

-- Display: Cr
nasdaq_bxequities_drop_asciidrop_v2_0.cr.display = function(value)
  if value == 13 then
    return "Cr: Carriage Return"
  end

  return "Cr: Unknown("..value..")"
end

-- Dissect: Cr
nasdaq_bxequities_drop_asciidrop_v2_0.cr.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_bxequities_drop_asciidrop_v2_0.cr.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_bxequities_drop_asciidrop_v2_0.cr.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.cr, range, value, display)

  return offset + length, value
end

-- Firm
nasdaq_bxequities_drop_asciidrop_v2_0.firm = {}

-- Size: Firm
nasdaq_bxequities_drop_asciidrop_v2_0.firm.size = 4

-- Display: Firm
nasdaq_bxequities_drop_asciidrop_v2_0.firm.display = function(value)
  return "Firm: "..value
end

-- Dissect: Firm
nasdaq_bxequities_drop_asciidrop_v2_0.firm.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_bxequities_drop_asciidrop_v2_0.firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_bxequities_drop_asciidrop_v2_0.firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.firm, range, value, display)

  return offset + length, value
end

-- Lf
nasdaq_bxequities_drop_asciidrop_v2_0.lf = {}

-- Size: Lf
nasdaq_bxequities_drop_asciidrop_v2_0.lf.size = 1

-- Display: Lf
nasdaq_bxequities_drop_asciidrop_v2_0.lf.display = function(value)
  if value == 10 then
    return "Lf: Line Feed"
  end

  return "Lf: Unknown("..value..")"
end

-- Dissect: Lf
nasdaq_bxequities_drop_asciidrop_v2_0.lf.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_bxequities_drop_asciidrop_v2_0.lf.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_bxequities_drop_asciidrop_v2_0.lf.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.lf, range, value, display)

  return offset + length, value
end

-- Liquidity Code
nasdaq_bxequities_drop_asciidrop_v2_0.liquidity_code = {}

-- Size: Liquidity Code
nasdaq_bxequities_drop_asciidrop_v2_0.liquidity_code.size = 1

-- Display: Liquidity Code
nasdaq_bxequities_drop_asciidrop_v2_0.liquidity_code.display = function(value)
  if value == "A" then
    return "Liquidity Code: Added (A)"
  end
  if value == "R" then
    return "Liquidity Code: Removed (R)"
  end
  if value == "X" then
    return "Liquidity Code: Routed (X)"
  end
  if value == "D" then
    return "Liquidity Code: Dot (D)"
  end
  if value == "F" then
    return "Liquidity Code: Added Or Opening Trade On Nyse (F)"
  end
  if value == "G" then
    return "Liquidity Code: Odd Lot Or On Close Order On Nyse (G)"
  end
  if value == "O" then
    return "Liquidity Code: Opening Cross Billable (O)"
  end
  if value == "M" then
    return "Liquidity Code: Opening Cross Nonbillable (M)"
  end
  if value == "C" then
    return "Liquidity Code: Closing Cross Billable (C)"
  end
  if value == "L" then
    return "Liquidity Code: Closing Cross Nonbillable (L)"
  end
  if value == "H" then
    return "Liquidity Code: Halt Ipo Cross Billable (H)"
  end
  if value == "K" then
    return "Liquidity Code: Halt Ipo Cross Nonbillable (K)"
  end
  if value == "I" then
    return "Liquidity Code: Intraday And Postmarket Crosses (I)"
  end
  if value == "J" then
    return "Liquidity Code: Nondisplayed Adding Liquidity (J)"
  end
  if value == "Y" then
    return "Liquidity Code: Re Routed By Nyse (Y)"
  end
  if value == "S" then
    return "Liquidity Code: Odd Lot Execution On Nyse (S)"
  end
  if value == "U" then
    return "Liquidity Code: Added Liquidity On Nyse (U)"
  end
  if value == "B" then
    return "Liquidity Code: Routed To Bx (B)"
  end
  if value == "E" then
    return "Liquidity Code: Nyse Other (E)"
  end
  if value == "P" then
    return "Liquidity Code: Routed To Psx (P)"
  end
  if value == "T" then
    return "Liquidity Code: Opening Trade On Arca (T)"
  end
  if value == "Z" then
    return "Liquidity Code: On Close Order On Arca (Z)"
  end
  if value == "m" then
    return "Liquidity Code: Removed Liquidity At A Midpoint (m)"
  end
  if value == "k" then
    return "Liquidity Code: Added Liquidity Via A Midpoint Order (k)"
  end

  return "Liquidity Code: Unknown("..value..")"
end

-- Dissect: Liquidity Code
nasdaq_bxequities_drop_asciidrop_v2_0.liquidity_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_bxequities_drop_asciidrop_v2_0.liquidity_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_bxequities_drop_asciidrop_v2_0.liquidity_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.liquidity_code, range, value, display)

  return offset + length, value
end

-- Match Number
nasdaq_bxequities_drop_asciidrop_v2_0.match_number = {}

-- Size: Match Number
nasdaq_bxequities_drop_asciidrop_v2_0.match_number.size = 9

-- Display: Match Number
nasdaq_bxequities_drop_asciidrop_v2_0.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_bxequities_drop_asciidrop_v2_0.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_bxequities_drop_asciidrop_v2_0.match_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_bxequities_drop_asciidrop_v2_0.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.match_number, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_bxequities_drop_asciidrop_v2_0.message_type = {}

-- Size: Message Type
nasdaq_bxequities_drop_asciidrop_v2_0.message_type.size = 1

-- Display: Message Type
nasdaq_bxequities_drop_asciidrop_v2_0.message_type.display = function(value)
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

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_bxequities_drop_asciidrop_v2_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_bxequities_drop_asciidrop_v2_0.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_bxequities_drop_asciidrop_v2_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_bxequities_drop_asciidrop_v2_0.price = {}

-- Size: Price
nasdaq_bxequities_drop_asciidrop_v2_0.price.size = 11

-- Display: Price
nasdaq_bxequities_drop_asciidrop_v2_0.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
nasdaq_bxequities_drop_asciidrop_v2_0.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_bxequities_drop_asciidrop_v2_0.price.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_bxequities_drop_asciidrop_v2_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.price, range, value, display)

  return offset + length, value
end

-- Reference
nasdaq_bxequities_drop_asciidrop_v2_0.reference = {}

-- Size: Reference
nasdaq_bxequities_drop_asciidrop_v2_0.reference.size = 9

-- Display: Reference
nasdaq_bxequities_drop_asciidrop_v2_0.reference.display = function(value)
  return "Reference: "..value
end

-- Dissect: Reference
nasdaq_bxequities_drop_asciidrop_v2_0.reference.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_bxequities_drop_asciidrop_v2_0.reference.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_bxequities_drop_asciidrop_v2_0.reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.reference, range, value, display)

  return offset + length, value
end

-- Shares
nasdaq_bxequities_drop_asciidrop_v2_0.shares = {}

-- Size: Shares
nasdaq_bxequities_drop_asciidrop_v2_0.shares.size = 6

-- Display: Shares
nasdaq_bxequities_drop_asciidrop_v2_0.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
nasdaq_bxequities_drop_asciidrop_v2_0.shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_bxequities_drop_asciidrop_v2_0.shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_bxequities_drop_asciidrop_v2_0.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.shares, range, value, display)

  return offset + length, value
end

-- Source
nasdaq_bxequities_drop_asciidrop_v2_0.source = {}

-- Size: Source
nasdaq_bxequities_drop_asciidrop_v2_0.source.size = 6

-- Display: Source
nasdaq_bxequities_drop_asciidrop_v2_0.source.display = function(value)
  return "Source: "..value
end

-- Dissect: Source
nasdaq_bxequities_drop_asciidrop_v2_0.source.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_bxequities_drop_asciidrop_v2_0.source.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_bxequities_drop_asciidrop_v2_0.source.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.source, range, value, display)

  return offset + length, value
end

-- Stock
nasdaq_bxequities_drop_asciidrop_v2_0.stock = {}

-- Size: Stock
nasdaq_bxequities_drop_asciidrop_v2_0.stock.size = 6

-- Display: Stock
nasdaq_bxequities_drop_asciidrop_v2_0.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_bxequities_drop_asciidrop_v2_0.stock.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_bxequities_drop_asciidrop_v2_0.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_bxequities_drop_asciidrop_v2_0.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.stock, range, value, display)

  return offset + length, value
end

-- Time In Force
nasdaq_bxequities_drop_asciidrop_v2_0.time_in_force = {}

-- Size: Time In Force
nasdaq_bxequities_drop_asciidrop_v2_0.time_in_force.size = 9

-- Display: Time In Force
nasdaq_bxequities_drop_asciidrop_v2_0.time_in_force.display = function(value)
  return "Time In Force: "..value
end

-- Dissect: Time In Force
nasdaq_bxequities_drop_asciidrop_v2_0.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_bxequities_drop_asciidrop_v2_0.time_in_force.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_bxequities_drop_asciidrop_v2_0.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Time Stamp
nasdaq_bxequities_drop_asciidrop_v2_0.time_stamp = {}

-- Size: Time Stamp
nasdaq_bxequities_drop_asciidrop_v2_0.time_stamp.size = 9

-- Display: Time Stamp
nasdaq_bxequities_drop_asciidrop_v2_0.time_stamp.display = function(value)
  return "Time Stamp: "..value
end

-- Dissect: Time Stamp
nasdaq_bxequities_drop_asciidrop_v2_0.time_stamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_bxequities_drop_asciidrop_v2_0.time_stamp.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_bxequities_drop_asciidrop_v2_0.time_stamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.time_stamp, range, value, display)

  return offset + length, value
end

-- Token
nasdaq_bxequities_drop_asciidrop_v2_0.token = {}

-- Size: Token
nasdaq_bxequities_drop_asciidrop_v2_0.token.size = 10

-- Display: Token
nasdaq_bxequities_drop_asciidrop_v2_0.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
nasdaq_bxequities_drop_asciidrop_v2_0.token.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_bxequities_drop_asciidrop_v2_0.token.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_bxequities_drop_asciidrop_v2_0.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.token, range, value, display)

  return offset + length, value
end

-- User
nasdaq_bxequities_drop_asciidrop_v2_0.user = {}

-- Size: User
nasdaq_bxequities_drop_asciidrop_v2_0.user.size = 4

-- Display: User
nasdaq_bxequities_drop_asciidrop_v2_0.user.display = function(value)
  return "User: "..value
end

-- Dissect: User
nasdaq_bxequities_drop_asciidrop_v2_0.user.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_bxequities_drop_asciidrop_v2_0.user.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_bxequities_drop_asciidrop_v2_0.user.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.user, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq BxEquities Drop AsciiDrop 2.0
-----------------------------------------------------------------------

-- Previous Execution Broken Message
nasdaq_bxequities_drop_asciidrop_v2_0.previous_execution_broken_message = {}

-- Size: Previous Execution Broken Message
nasdaq_bxequities_drop_asciidrop_v2_0.previous_execution_broken_message.size =
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.source.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.user.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.token.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.buy_sell.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.shares.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.stock.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.price.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.firm.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.reference.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.match_number.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.liquidity_code.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.clearing_code.size

-- Display: Previous Execution Broken Message
nasdaq_bxequities_drop_asciidrop_v2_0.previous_execution_broken_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Previous Execution Broken Message
nasdaq_bxequities_drop_asciidrop_v2_0.previous_execution_broken_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Separator 1: 1 byte separator, stepped over
  index = index + 1

  -- Source: Alphanumeric
  index, source = nasdaq_bxequities_drop_asciidrop_v2_0.source.dissect(buffer, index, packet, parent)

  -- Separator 2: 1 byte separator, stepped over
  index = index + 1

  -- User: Alphanumeric
  index, user = nasdaq_bxequities_drop_asciidrop_v2_0.user.dissect(buffer, index, packet, parent)

  -- Separator 3: 1 byte separator, stepped over
  index = index + 1

  -- Token: Alphanumeric
  index, token = nasdaq_bxequities_drop_asciidrop_v2_0.token.dissect(buffer, index, packet, parent)

  -- Separator 4: 1 byte separator, stepped over
  index = index + 1

  -- Buy Sell: Alpha
  index, buy_sell = nasdaq_bxequities_drop_asciidrop_v2_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Separator 5: 1 byte separator, stepped over
  index = index + 1

  -- Shares: Numeric
  index, shares = nasdaq_bxequities_drop_asciidrop_v2_0.shares.dissect(buffer, index, packet, parent)

  -- Separator 6: 1 byte separator, stepped over
  index = index + 1

  -- Stock: Alpha
  index, stock = nasdaq_bxequities_drop_asciidrop_v2_0.stock.dissect(buffer, index, packet, parent)

  -- Separator 7: 1 byte separator, stepped over
  index = index + 1

  -- Price: Numeric
  index, price = nasdaq_bxequities_drop_asciidrop_v2_0.price.dissect(buffer, index, packet, parent)

  -- Separator 8: 1 byte separator, stepped over
  index = index + 1

  -- Firm: Alpha
  index, firm = nasdaq_bxequities_drop_asciidrop_v2_0.firm.dissect(buffer, index, packet, parent)

  -- Separator 9: 1 byte separator, stepped over
  index = index + 1

  -- Reference: Numeric
  index, reference = nasdaq_bxequities_drop_asciidrop_v2_0.reference.dissect(buffer, index, packet, parent)

  -- Separator 10: 1 byte separator, stepped over
  index = index + 1

  -- Match Number: Numeric
  index, match_number = nasdaq_bxequities_drop_asciidrop_v2_0.match_number.dissect(buffer, index, packet, parent)

  -- Separator 11: 1 byte separator, stepped over
  index = index + 1

  -- Liquidity Code: Alpha
  index, liquidity_code = nasdaq_bxequities_drop_asciidrop_v2_0.liquidity_code.dissect(buffer, index, packet, parent)

  -- Separator 12: 1 byte separator, stepped over
  index = index + 1

  -- Clearing Code: Alpha
  index, clearing_code = nasdaq_bxequities_drop_asciidrop_v2_0.clearing_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Previous Execution Broken Message
nasdaq_bxequities_drop_asciidrop_v2_0.previous_execution_broken_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.previous_execution_broken_message, buffer(offset, 0))
    local index = nasdaq_bxequities_drop_asciidrop_v2_0.previous_execution_broken_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_bxequities_drop_asciidrop_v2_0.previous_execution_broken_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_bxequities_drop_asciidrop_v2_0.previous_execution_broken_message.fields(buffer, offset, packet, parent)
  end
end

-- Existing Order Canceled Message
nasdaq_bxequities_drop_asciidrop_v2_0.existing_order_canceled_message = {}

-- Size: Existing Order Canceled Message
nasdaq_bxequities_drop_asciidrop_v2_0.existing_order_canceled_message.size =
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.source.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.user.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.token.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.buy_sell.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.shares.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.stock.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.price.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.firm.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.reference.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.time_in_force.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.liquidity_code.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.clearing_code.size

-- Display: Existing Order Canceled Message
nasdaq_bxequities_drop_asciidrop_v2_0.existing_order_canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Existing Order Canceled Message
nasdaq_bxequities_drop_asciidrop_v2_0.existing_order_canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Separator 1: 1 byte separator, stepped over
  index = index + 1

  -- Source: Alphanumeric
  index, source = nasdaq_bxequities_drop_asciidrop_v2_0.source.dissect(buffer, index, packet, parent)

  -- Separator 2: 1 byte separator, stepped over
  index = index + 1

  -- User: Alphanumeric
  index, user = nasdaq_bxequities_drop_asciidrop_v2_0.user.dissect(buffer, index, packet, parent)

  -- Separator 3: 1 byte separator, stepped over
  index = index + 1

  -- Token: Alphanumeric
  index, token = nasdaq_bxequities_drop_asciidrop_v2_0.token.dissect(buffer, index, packet, parent)

  -- Separator 4: 1 byte separator, stepped over
  index = index + 1

  -- Buy Sell: Alpha
  index, buy_sell = nasdaq_bxequities_drop_asciidrop_v2_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Separator 5: 1 byte separator, stepped over
  index = index + 1

  -- Shares: Numeric
  index, shares = nasdaq_bxequities_drop_asciidrop_v2_0.shares.dissect(buffer, index, packet, parent)

  -- Separator 6: 1 byte separator, stepped over
  index = index + 1

  -- Stock: Alpha
  index, stock = nasdaq_bxequities_drop_asciidrop_v2_0.stock.dissect(buffer, index, packet, parent)

  -- Separator 7: 1 byte separator, stepped over
  index = index + 1

  -- Price: Numeric
  index, price = nasdaq_bxequities_drop_asciidrop_v2_0.price.dissect(buffer, index, packet, parent)

  -- Separator 8: 1 byte separator, stepped over
  index = index + 1

  -- Firm: Alpha
  index, firm = nasdaq_bxequities_drop_asciidrop_v2_0.firm.dissect(buffer, index, packet, parent)

  -- Separator 9: 1 byte separator, stepped over
  index = index + 1

  -- Reference: Numeric
  index, reference = nasdaq_bxequities_drop_asciidrop_v2_0.reference.dissect(buffer, index, packet, parent)

  -- Separator 10: 1 byte separator, stepped over
  index = index + 1

  -- Time In Force: Numeric
  index, time_in_force = nasdaq_bxequities_drop_asciidrop_v2_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Separator 11: 1 byte separator, stepped over
  index = index + 1

  -- Liquidity Code: Alpha
  index, liquidity_code = nasdaq_bxequities_drop_asciidrop_v2_0.liquidity_code.dissect(buffer, index, packet, parent)

  -- Separator 12: 1 byte separator, stepped over
  index = index + 1

  -- Clearing Code: Alpha
  index, clearing_code = nasdaq_bxequities_drop_asciidrop_v2_0.clearing_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Existing Order Canceled Message
nasdaq_bxequities_drop_asciidrop_v2_0.existing_order_canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.existing_order_canceled_message, buffer(offset, 0))
    local index = nasdaq_bxequities_drop_asciidrop_v2_0.existing_order_canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_bxequities_drop_asciidrop_v2_0.existing_order_canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_bxequities_drop_asciidrop_v2_0.existing_order_canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Existing Order Executed Message
nasdaq_bxequities_drop_asciidrop_v2_0.existing_order_executed_message = {}

-- Size: Existing Order Executed Message
nasdaq_bxequities_drop_asciidrop_v2_0.existing_order_executed_message.size =
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.source.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.user.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.token.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.buy_sell.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.shares.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.stock.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.price.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.firm.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.reference.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.match_number.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.liquidity_code.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.clearing_code.size

-- Display: Existing Order Executed Message
nasdaq_bxequities_drop_asciidrop_v2_0.existing_order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Existing Order Executed Message
nasdaq_bxequities_drop_asciidrop_v2_0.existing_order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Separator 1: 1 byte separator, stepped over
  index = index + 1

  -- Source: Alphanumeric
  index, source = nasdaq_bxequities_drop_asciidrop_v2_0.source.dissect(buffer, index, packet, parent)

  -- Separator 2: 1 byte separator, stepped over
  index = index + 1

  -- User: Alphanumeric
  index, user = nasdaq_bxequities_drop_asciidrop_v2_0.user.dissect(buffer, index, packet, parent)

  -- Separator 3: 1 byte separator, stepped over
  index = index + 1

  -- Token: Alphanumeric
  index, token = nasdaq_bxequities_drop_asciidrop_v2_0.token.dissect(buffer, index, packet, parent)

  -- Separator 4: 1 byte separator, stepped over
  index = index + 1

  -- Buy Sell: Alpha
  index, buy_sell = nasdaq_bxequities_drop_asciidrop_v2_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Separator 5: 1 byte separator, stepped over
  index = index + 1

  -- Shares: Numeric
  index, shares = nasdaq_bxequities_drop_asciidrop_v2_0.shares.dissect(buffer, index, packet, parent)

  -- Separator 6: 1 byte separator, stepped over
  index = index + 1

  -- Stock: Alpha
  index, stock = nasdaq_bxequities_drop_asciidrop_v2_0.stock.dissect(buffer, index, packet, parent)

  -- Separator 7: 1 byte separator, stepped over
  index = index + 1

  -- Price: Numeric
  index, price = nasdaq_bxequities_drop_asciidrop_v2_0.price.dissect(buffer, index, packet, parent)

  -- Separator 8: 1 byte separator, stepped over
  index = index + 1

  -- Firm: Alpha
  index, firm = nasdaq_bxequities_drop_asciidrop_v2_0.firm.dissect(buffer, index, packet, parent)

  -- Separator 9: 1 byte separator, stepped over
  index = index + 1

  -- Reference: Numeric
  index, reference = nasdaq_bxequities_drop_asciidrop_v2_0.reference.dissect(buffer, index, packet, parent)

  -- Separator 10: 1 byte separator, stepped over
  index = index + 1

  -- Match Number: Numeric
  index, match_number = nasdaq_bxequities_drop_asciidrop_v2_0.match_number.dissect(buffer, index, packet, parent)

  -- Separator 11: 1 byte separator, stepped over
  index = index + 1

  -- Liquidity Code: Alpha
  index, liquidity_code = nasdaq_bxequities_drop_asciidrop_v2_0.liquidity_code.dissect(buffer, index, packet, parent)

  -- Separator 12: 1 byte separator, stepped over
  index = index + 1

  -- Clearing Code: Alpha
  index, clearing_code = nasdaq_bxequities_drop_asciidrop_v2_0.clearing_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Existing Order Executed Message
nasdaq_bxequities_drop_asciidrop_v2_0.existing_order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.existing_order_executed_message, buffer(offset, 0))
    local index = nasdaq_bxequities_drop_asciidrop_v2_0.existing_order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_bxequities_drop_asciidrop_v2_0.existing_order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_bxequities_drop_asciidrop_v2_0.existing_order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Accepted Message
nasdaq_bxequities_drop_asciidrop_v2_0.new_order_accepted_message = {}

-- Size: New Order Accepted Message
nasdaq_bxequities_drop_asciidrop_v2_0.new_order_accepted_message.size =
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.source.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.user.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.token.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.buy_sell.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.shares.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.stock.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.price.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.firm.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.reference.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.time_in_force.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.liquidity_code.size + 
  1 + 
  nasdaq_bxequities_drop_asciidrop_v2_0.clearing_code.size

-- Display: New Order Accepted Message
nasdaq_bxequities_drop_asciidrop_v2_0.new_order_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Accepted Message
nasdaq_bxequities_drop_asciidrop_v2_0.new_order_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Separator 1: 1 byte separator, stepped over
  index = index + 1

  -- Source: Alphanumeric
  index, source = nasdaq_bxequities_drop_asciidrop_v2_0.source.dissect(buffer, index, packet, parent)

  -- Separator 2: 1 byte separator, stepped over
  index = index + 1

  -- User: Alphanumeric
  index, user = nasdaq_bxequities_drop_asciidrop_v2_0.user.dissect(buffer, index, packet, parent)

  -- Separator 3: 1 byte separator, stepped over
  index = index + 1

  -- Token: Alphanumeric
  index, token = nasdaq_bxequities_drop_asciidrop_v2_0.token.dissect(buffer, index, packet, parent)

  -- Separator 4: 1 byte separator, stepped over
  index = index + 1

  -- Buy Sell: Alpha
  index, buy_sell = nasdaq_bxequities_drop_asciidrop_v2_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Separator 5: 1 byte separator, stepped over
  index = index + 1

  -- Shares: Numeric
  index, shares = nasdaq_bxequities_drop_asciidrop_v2_0.shares.dissect(buffer, index, packet, parent)

  -- Separator 6: 1 byte separator, stepped over
  index = index + 1

  -- Stock: Alpha
  index, stock = nasdaq_bxequities_drop_asciidrop_v2_0.stock.dissect(buffer, index, packet, parent)

  -- Separator 7: 1 byte separator, stepped over
  index = index + 1

  -- Price: Numeric
  index, price = nasdaq_bxequities_drop_asciidrop_v2_0.price.dissect(buffer, index, packet, parent)

  -- Separator 8: 1 byte separator, stepped over
  index = index + 1

  -- Firm: Alpha
  index, firm = nasdaq_bxequities_drop_asciidrop_v2_0.firm.dissect(buffer, index, packet, parent)

  -- Separator 9: 1 byte separator, stepped over
  index = index + 1

  -- Reference: Numeric
  index, reference = nasdaq_bxequities_drop_asciidrop_v2_0.reference.dissect(buffer, index, packet, parent)

  -- Separator 10: 1 byte separator, stepped over
  index = index + 1

  -- Time In Force: Numeric
  index, time_in_force = nasdaq_bxequities_drop_asciidrop_v2_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Separator 11: 1 byte separator, stepped over
  index = index + 1

  -- Liquidity Code: Alpha
  index, liquidity_code = nasdaq_bxequities_drop_asciidrop_v2_0.liquidity_code.dissect(buffer, index, packet, parent)

  -- Separator 12: 1 byte separator, stepped over
  index = index + 1

  -- Clearing Code: Alpha
  index, clearing_code = nasdaq_bxequities_drop_asciidrop_v2_0.clearing_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Accepted Message
nasdaq_bxequities_drop_asciidrop_v2_0.new_order_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.new_order_accepted_message, buffer(offset, 0))
    local index = nasdaq_bxequities_drop_asciidrop_v2_0.new_order_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_bxequities_drop_asciidrop_v2_0.new_order_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_bxequities_drop_asciidrop_v2_0.new_order_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_bxequities_drop_asciidrop_v2_0.message = {}

-- Dissect: Message
nasdaq_bxequities_drop_asciidrop_v2_0.message.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect New Order Accepted Message
  if message_type == "A" then
    return nasdaq_bxequities_drop_asciidrop_v2_0.new_order_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Existing Order Executed Message
  if message_type == "E" then
    return nasdaq_bxequities_drop_asciidrop_v2_0.existing_order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Existing Order Canceled Message
  if message_type == "X" then
    return nasdaq_bxequities_drop_asciidrop_v2_0.existing_order_canceled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Previous Execution Broken Message
  if message_type == "B" then
    return nasdaq_bxequities_drop_asciidrop_v2_0.previous_execution_broken_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_bxequities_drop_asciidrop_v2_0.message_header = {}

-- Size: Message Header
nasdaq_bxequities_drop_asciidrop_v2_0.message_header.size =
  nasdaq_bxequities_drop_asciidrop_v2_0.time_stamp.size + 
  nasdaq_bxequities_drop_asciidrop_v2_0.comma.size + 
  nasdaq_bxequities_drop_asciidrop_v2_0.message_type.size

-- Display: Message Header
nasdaq_bxequities_drop_asciidrop_v2_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_bxequities_drop_asciidrop_v2_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Stamp: 9 Byte Ascii String
  index, time_stamp = nasdaq_bxequities_drop_asciidrop_v2_0.time_stamp.dissect(buffer, index, packet, parent)

  -- Comma: 1 Byte Ascii String
  index, comma = nasdaq_bxequities_drop_asciidrop_v2_0.comma.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 4 values
  index, message_type = nasdaq_bxequities_drop_asciidrop_v2_0.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_bxequities_drop_asciidrop_v2_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.message_header, buffer(offset, 0))
    local index = nasdaq_bxequities_drop_asciidrop_v2_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_bxequities_drop_asciidrop_v2_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_bxequities_drop_asciidrop_v2_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Line
nasdaq_bxequities_drop_asciidrop_v2_0.line = {}

-- Verify required size of Tcp packet
nasdaq_bxequities_drop_asciidrop_v2_0.line.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_bxequities_drop_asciidrop_v2_0.message_header.size
end

-- Dissect Line
nasdaq_bxequities_drop_asciidrop_v2_0.line.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Line
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Message Header: Struct of 3 fields
    index, message_header = nasdaq_bxequities_drop_asciidrop_v2_0.message_header.dissect(buffer, index, packet, parent)

    -- Dependency element: Message Type
    local message_type = buffer(index - 1, 1):string()

    -- Message: Runtime Type with 4 branches
    index = nasdaq_bxequities_drop_asciidrop_v2_0.message.dissect(buffer, index, packet, parent, message_type)

    -- Cr: 1 Byte Fixed Width Integer Static
    index, cr = nasdaq_bxequities_drop_asciidrop_v2_0.cr.dissect(buffer, index, packet, parent)

    -- Lf: 1 Byte Fixed Width Integer Static
    index, lf = nasdaq_bxequities_drop_asciidrop_v2_0.lf.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_bxequities_drop_asciidrop_v2_0.init()
end

-- Dissector for Nasdaq BxEquities Drop AsciiDrop 2.0
function omi_nasdaq_bxequities_drop_asciidrop_v2_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_bxequities_drop_asciidrop_v2_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_bxequities_drop_asciidrop_v2_0, buffer(), omi_nasdaq_bxequities_drop_asciidrop_v2_0.description, "("..buffer:len().." Bytes)")
  return nasdaq_bxequities_drop_asciidrop_v2_0.line.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Line: would its message dispatch accept this frame?
nasdaq_bxequities_drop_asciidrop_v2_0.line.fingerprint = function(buffer)
  if buffer:len() < 11 then
    return false
  end

  local message_type = buffer(10, 1):string()

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

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq BxEquities Drop AsciiDrop 2.0 (Tcp)
local function omi_nasdaq_bxequities_drop_asciidrop_v2_0_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_bxequities_drop_asciidrop_v2_0.line.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_bxequities_drop_asciidrop_v2_0.line.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_bxequities_drop_asciidrop_v2_0
  omi_nasdaq_bxequities_drop_asciidrop_v2_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq BxEquities Drop AsciiDrop 2.0
omi_nasdaq_bxequities_drop_asciidrop_v2_0:register_heuristic("tcp", omi_nasdaq_bxequities_drop_asciidrop_v2_0_tcp_acceptor_heuristic)

-- Register Nasdaq BxEquities Drop AsciiDrop 2.0 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nasdaq_bxequities_drop_asciidrop_v2_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 2.0
--   Date: Thursday, April 19, 2012
--   Specification: NQBX_DROP20.pdf
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
