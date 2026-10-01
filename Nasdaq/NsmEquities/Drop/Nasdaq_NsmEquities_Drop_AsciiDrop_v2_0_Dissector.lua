-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NsmEquities Drop AsciiDrop 2.0 Protocol
local omi_nasdaq_nsmequities_drop_asciidrop_v2_0 = Proto("Omi.Nasdaq.NsmEquities.Drop.AsciiDrop.v2.0", "Nasdaq NsmEquities Drop AsciiDrop 2.0")

-- Protocol table
local nasdaq_nsmequities_drop_asciidrop_v2_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NsmEquities Drop AsciiDrop 2.0 Fields
omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.buy_sell = ProtoField.new("Buy Sell", "nasdaq.nsmequities.drop.asciidrop.v2.0.buysell", ftypes.STRING)
omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.cancel_reason = ProtoField.new("Cancel Reason", "nasdaq.nsmequities.drop.asciidrop.v2.0.cancelreason", ftypes.STRING)
omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.clearing_code = ProtoField.new("Clearing Code", "nasdaq.nsmequities.drop.asciidrop.v2.0.clearingcode", ftypes.STRING)
omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.comma = ProtoField.new("Comma", "nasdaq.nsmequities.drop.asciidrop.v2.0.comma", ftypes.STRING)
omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.cr = ProtoField.new("Cr", "nasdaq.nsmequities.drop.asciidrop.v2.0.cr", ftypes.INT8)
omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.firm = ProtoField.new("Firm", "nasdaq.nsmequities.drop.asciidrop.v2.0.firm", ftypes.STRING)
omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.lf = ProtoField.new("Lf", "nasdaq.nsmequities.drop.asciidrop.v2.0.lf", ftypes.INT8)
omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.liquidity_code = ProtoField.new("Liquidity Code", "nasdaq.nsmequities.drop.asciidrop.v2.0.liquiditycode", ftypes.STRING)
omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.match_number = ProtoField.new("Match Number", "nasdaq.nsmequities.drop.asciidrop.v2.0.matchnumber", ftypes.STRING)
omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.message_type = ProtoField.new("Message Type", "nasdaq.nsmequities.drop.asciidrop.v2.0.messagetype", ftypes.STRING)
omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.price = ProtoField.new("Price", "nasdaq.nsmequities.drop.asciidrop.v2.0.price", ftypes.STRING)
omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.reference = ProtoField.new("Reference", "nasdaq.nsmequities.drop.asciidrop.v2.0.reference", ftypes.STRING)
omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.shares = ProtoField.new("Shares", "nasdaq.nsmequities.drop.asciidrop.v2.0.shares", ftypes.STRING)
omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.source = ProtoField.new("Source", "nasdaq.nsmequities.drop.asciidrop.v2.0.source", ftypes.STRING)
omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.stock = ProtoField.new("Stock", "nasdaq.nsmequities.drop.asciidrop.v2.0.stock", ftypes.STRING)
omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.time_in_force = ProtoField.new("Time In Force", "nasdaq.nsmequities.drop.asciidrop.v2.0.timeinforce", ftypes.STRING)
omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.time_stamp = ProtoField.new("Time Stamp", "nasdaq.nsmequities.drop.asciidrop.v2.0.timestamp", ftypes.STRING)
omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.token = ProtoField.new("Token", "nasdaq.nsmequities.drop.asciidrop.v2.0.token", ftypes.STRING)
omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.user = ProtoField.new("User", "nasdaq.nsmequities.drop.asciidrop.v2.0.user", ftypes.STRING)

-- Nasdaq NsmEquities Drop AsciiDrop 2.0 Framing
omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.line = ProtoField.new("Line", "nasdaq.nsmequities.drop.asciidrop.v2.0.line", ftypes.STRING)
omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.message_header = ProtoField.new("Message Header", "nasdaq.nsmequities.drop.asciidrop.v2.0.messageheader", ftypes.STRING)

-- Nasdaq NsmEquities Drop 2.0 Application Messages
omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.existing_order_canceled_message = ProtoField.new("Existing Order Canceled Message", "nasdaq.nsmequities.drop.asciidrop.v2.0.existingordercanceledmessage", ftypes.STRING)
omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.existing_order_cancelled_aiq_message = ProtoField.new("Existing Order Cancelled Aiq Message", "nasdaq.nsmequities.drop.asciidrop.v2.0.existingordercancelledaiqmessage", ftypes.STRING)
omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.existing_order_executed_message = ProtoField.new("Existing Order Executed Message", "nasdaq.nsmequities.drop.asciidrop.v2.0.existingorderexecutedmessage", ftypes.STRING)
omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.new_order_accepted_message = ProtoField.new("New Order Accepted Message", "nasdaq.nsmequities.drop.asciidrop.v2.0.neworderacceptedmessage", ftypes.STRING)
omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.previous_execution_broken_message = ProtoField.new("Previous Execution Broken Message", "nasdaq.nsmequities.drop.asciidrop.v2.0.previousexecutionbrokenmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq NsmEquities Drop AsciiDrop 2.0 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true

-- Register Nasdaq NsmEquities Drop AsciiDrop 2.0 Show Options
omi_nasdaq_nsmequities_drop_asciidrop_v2_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nsmequities_drop_asciidrop_v2_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_nsmequities_drop_asciidrop_v2_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

-- Handle changed preferences
function omi_nasdaq_nsmequities_drop_asciidrop_v2_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_nsmequities_drop_asciidrop_v2_0.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nsmequities_drop_asciidrop_v2_0.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_nsmequities_drop_asciidrop_v2_0.prefs.show_headers then
    show.headers = omi_nasdaq_nsmequities_drop_asciidrop_v2_0.prefs.show_headers
  end
  if show.structs ~= omi_nasdaq_nsmequities_drop_asciidrop_v2_0.prefs.show_structs then
    show.structs = omi_nasdaq_nsmequities_drop_asciidrop_v2_0.prefs.show_structs
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
-- Nasdaq NsmEquities Drop AsciiDrop 2.0 Fields
-----------------------------------------------------------------------

-- Buy Sell
nasdaq_nsmequities_drop_asciidrop_v2_0.buy_sell = {}

-- Size: Buy Sell
nasdaq_nsmequities_drop_asciidrop_v2_0.buy_sell.size = 1

-- Display: Buy Sell
nasdaq_nsmequities_drop_asciidrop_v2_0.buy_sell.display = function(value)
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
nasdaq_nsmequities_drop_asciidrop_v2_0.buy_sell.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_drop_asciidrop_v2_0.buy_sell.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_drop_asciidrop_v2_0.buy_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.buy_sell, range, value, display)

  return offset + length, value
end

-- Cancel Reason
nasdaq_nsmequities_drop_asciidrop_v2_0.cancel_reason = {}

-- Size: Cancel Reason
nasdaq_nsmequities_drop_asciidrop_v2_0.cancel_reason.size = 1

-- Display: Cancel Reason
nasdaq_nsmequities_drop_asciidrop_v2_0.cancel_reason.display = function(value)
  if value == "U" then
    return "Cancel Reason: User Cancel (U)"
  end
  if value == "I" then
    return "Cancel Reason: Ioc Cancel (I)"
  end
  if value == "T" then
    return "Cancel Reason: Timeout (T)"
  end
  if value == "S" then
    return "Cancel Reason: Supervisory Cancel (S)"
  end
  if value == "D" then
    return "Cancel Reason: Regulatory Cancel (D)"
  end
  if value == "Q" then
    return "Cancel Reason: Self Match Prevention (Q)"
  end
  if value == "Z" then
    return "Cancel Reason: System Cancel (Z)"
  end
  if value == "C" then
    return "Cancel Reason: Cross Cancel (C)"
  end

  return "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
nasdaq_nsmequities_drop_asciidrop_v2_0.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_drop_asciidrop_v2_0.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_drop_asciidrop_v2_0.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Clearing Code
nasdaq_nsmequities_drop_asciidrop_v2_0.clearing_code = {}

-- Size: Clearing Code
nasdaq_nsmequities_drop_asciidrop_v2_0.clearing_code.size = 1

-- Display: Clearing Code
nasdaq_nsmequities_drop_asciidrop_v2_0.clearing_code.display = function(value)
  if value == "Q" then
    return "Clearing Code: Qsr (Q)"
  end

  return "Clearing Code: Unknown("..value..")"
end

-- Dissect: Clearing Code
nasdaq_nsmequities_drop_asciidrop_v2_0.clearing_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_drop_asciidrop_v2_0.clearing_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_drop_asciidrop_v2_0.clearing_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.clearing_code, range, value, display)

  return offset + length, value
end

-- Comma
nasdaq_nsmequities_drop_asciidrop_v2_0.comma = {}

-- Size: Comma
nasdaq_nsmequities_drop_asciidrop_v2_0.comma.size = 1

-- Display: Comma
nasdaq_nsmequities_drop_asciidrop_v2_0.comma.display = function(value)
  return "Comma: "..value
end

-- Dissect: Comma
nasdaq_nsmequities_drop_asciidrop_v2_0.comma.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_drop_asciidrop_v2_0.comma.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_drop_asciidrop_v2_0.comma.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.comma, range, value, display)

  return offset + length, value
end

-- Cr
nasdaq_nsmequities_drop_asciidrop_v2_0.cr = {}

-- Size: Cr
nasdaq_nsmequities_drop_asciidrop_v2_0.cr.size = 1

-- Display: Cr
nasdaq_nsmequities_drop_asciidrop_v2_0.cr.display = function(value)
  if value == 13 then
    return "Cr: Carriage Return"
  end

  return "Cr: Unknown("..value..")"
end

-- Dissect: Cr
nasdaq_nsmequities_drop_asciidrop_v2_0.cr.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_drop_asciidrop_v2_0.cr.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nsmequities_drop_asciidrop_v2_0.cr.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.cr, range, value, display)

  return offset + length, value
end

-- Firm
nasdaq_nsmequities_drop_asciidrop_v2_0.firm = {}

-- Size: Firm
nasdaq_nsmequities_drop_asciidrop_v2_0.firm.size = 4

-- Display: Firm
nasdaq_nsmequities_drop_asciidrop_v2_0.firm.display = function(value)
  return "Firm: "..value
end

-- Dissect: Firm
nasdaq_nsmequities_drop_asciidrop_v2_0.firm.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_drop_asciidrop_v2_0.firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_drop_asciidrop_v2_0.firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.firm, range, value, display)

  return offset + length, value
end

-- Lf
nasdaq_nsmequities_drop_asciidrop_v2_0.lf = {}

-- Size: Lf
nasdaq_nsmequities_drop_asciidrop_v2_0.lf.size = 1

-- Display: Lf
nasdaq_nsmequities_drop_asciidrop_v2_0.lf.display = function(value)
  if value == 10 then
    return "Lf: Line Feed"
  end

  return "Lf: Unknown("..value..")"
end

-- Dissect: Lf
nasdaq_nsmequities_drop_asciidrop_v2_0.lf.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_drop_asciidrop_v2_0.lf.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nsmequities_drop_asciidrop_v2_0.lf.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.lf, range, value, display)

  return offset + length, value
end

-- Liquidity Code
nasdaq_nsmequities_drop_asciidrop_v2_0.liquidity_code = {}

-- Size: Liquidity Code
nasdaq_nsmequities_drop_asciidrop_v2_0.liquidity_code.size = 1

-- Display: Liquidity Code
nasdaq_nsmequities_drop_asciidrop_v2_0.liquidity_code.display = function(value)
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
    return "Liquidity Code: Opening Trade On Nyse (F)"
  end
  if value == "G" then
    return "Liquidity Code: On Close Order On Nyse (G)"
  end
  if value == "O" then
    return "Liquidity Code: Opening Cross (O)"
  end
  if value == "M" then
    return "Liquidity Code: Opening Cross Imbalanceonly (M)"
  end
  if value == "C" then
    return "Liquidity Code: Closing Cross (C)"
  end
  if value == "L" then
    return "Liquidity Code: Closing Cross Imbalanceonly (L)"
  end
  if value == "H" then
    return "Liquidity Code: Halt Ipo Cross (H)"
  end
  if value == "K" then
    return "Liquidity Code: Halt Cross (K)"
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
  if value == "W" then
    return "Liquidity Code: Added Postonly Not Currently Available (W)"
  end
  if value == "m" then
    return "Liquidity Code: Removed Liquidity At A Midpoint (m)"
  end
  if value == "k" then
    return "Liquidity Code: Added Liquidity Via A Midpoint Order (k)"
  end
  if value == "0" then
    return "Liquidity Code: Supplemental Order Execution (0)"
  end
  if value == "7" then
    return "Liquidity Code: Displayed Liquidityadding Order Improves The Nbbo (7)"
  end
  if value == "8" then
    return "Liquidity Code: Displayed Liquidityadding Order Sets The Qbbo While Joining The Nbbo (8)"
  end
  if value == "d" then
    return "Liquidity Code: Retail Designated Execution That Removed Liquidity Not Currently Available (d)"
  end
  if value == "e" then
    return "Liquidity Code: Retail Designated Execution That Added Displayed Liquidity (e)"
  end
  if value == "f" then
    return "Liquidity Code: Retail Designated Execution That Added Nondisplayed Liquidity Not Currently Available (f)"
  end
  if value == "j" then
    return "Liquidity Code: Rpi Order That Provides Liquidity (j)"
  end
  if value == "r" then
    return "Liquidity Code: Retail Order That Removes Rpi Liquidity (r)"
  end
  if value == "t" then
    return "Liquidity Code: Retail Order That Removes Price Improving Nondisplayed Liquidity Other Than Rpi Liquidity (t)"
  end
  if value == "4" then
    return "Liquidity Code: Added Displayed Liquidity In A Group A Symbol (4)"
  end
  if value == "5" then
    return "Liquidity Code: Added Nondisplayed Liquidity In A Group A Symbol (5)"
  end
  if value == "6" then
    return "Liquidity Code: Liquidity Removing Order In A Group A Symbol (6)"
  end
  if value == "g" then
    return "Liquidity Code: Added Nondisplayed Midpoint Liquidity In A Group A Symbol (g)"
  end
  if value == "a" then
    return "Liquidity Code: Added Displayed Liquidity In A Scip Symbol (a)"
  end
  if value == "x" then
    return "Liquidity Code: Displayed Liquidityadding Order Improves The Nbbo In A Scip Symbol (x)"
  end
  if value == "y" then
    return "Liquidity Code: Displayed Liquidityadding Order Set The Qbbo While Joining The Nbbo In A Scip Symbol (y)"
  end
  if value == "b" then
    return "Liquidity Code: Displayed Liquidityadding Order Improves The Nbbo In Pilot Symbol During Specified Luld Pricing Pilot Timeframe (b)"
  end
  if value == "c" then
    return "Liquidity Code: Added Displayed Liquidity In A Pilot Symbol During Specified Luld Pricing Pilot Timeframe (c)"
  end
  if value == "h" then
    return "Liquidity Code: Removed Liquidity In A Pilot Symbol During Specified Luld Pricing Pilot Timeframe (h)"
  end
  if value == "N" then
    return "Liquidity Code: Halt Cross Orders Entered In Pilot Symbols During The Luld Trading Pause (N)"
  end

  return "Liquidity Code: Unknown("..value..")"
end

-- Dissect: Liquidity Code
nasdaq_nsmequities_drop_asciidrop_v2_0.liquidity_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_drop_asciidrop_v2_0.liquidity_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_drop_asciidrop_v2_0.liquidity_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.liquidity_code, range, value, display)

  return offset + length, value
end

-- Match Number
nasdaq_nsmequities_drop_asciidrop_v2_0.match_number = {}

-- Size: Match Number
nasdaq_nsmequities_drop_asciidrop_v2_0.match_number.size = 9

-- Display: Match Number
nasdaq_nsmequities_drop_asciidrop_v2_0.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_nsmequities_drop_asciidrop_v2_0.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_drop_asciidrop_v2_0.match_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nsmequities_drop_asciidrop_v2_0.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.match_number, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_nsmequities_drop_asciidrop_v2_0.message_type = {}

-- Size: Message Type
nasdaq_nsmequities_drop_asciidrop_v2_0.message_type.size = 1

-- Display: Message Type
nasdaq_nsmequities_drop_asciidrop_v2_0.message_type.display = function(value)
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
  if value == "Y" then
    return "Message Type: Existing Order Cancelled Aiq Message (Y)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_nsmequities_drop_asciidrop_v2_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_drop_asciidrop_v2_0.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_drop_asciidrop_v2_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_nsmequities_drop_asciidrop_v2_0.price = {}

-- Size: Price
nasdaq_nsmequities_drop_asciidrop_v2_0.price.size = 11

-- Display: Price
nasdaq_nsmequities_drop_asciidrop_v2_0.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
nasdaq_nsmequities_drop_asciidrop_v2_0.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_drop_asciidrop_v2_0.price.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_drop_asciidrop_v2_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.price, range, value, display)

  return offset + length, value
end

-- Reference
nasdaq_nsmequities_drop_asciidrop_v2_0.reference = {}

-- Size: Reference
nasdaq_nsmequities_drop_asciidrop_v2_0.reference.size = 9

-- Display: Reference
nasdaq_nsmequities_drop_asciidrop_v2_0.reference.display = function(value)
  return "Reference: "..value
end

-- Dissect: Reference
nasdaq_nsmequities_drop_asciidrop_v2_0.reference.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_drop_asciidrop_v2_0.reference.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nsmequities_drop_asciidrop_v2_0.reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.reference, range, value, display)

  return offset + length, value
end

-- Shares
nasdaq_nsmequities_drop_asciidrop_v2_0.shares = {}

-- Size: Shares
nasdaq_nsmequities_drop_asciidrop_v2_0.shares.size = 6

-- Display: Shares
nasdaq_nsmequities_drop_asciidrop_v2_0.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
nasdaq_nsmequities_drop_asciidrop_v2_0.shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_drop_asciidrop_v2_0.shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nsmequities_drop_asciidrop_v2_0.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.shares, range, value, display)

  return offset + length, value
end

-- Source
nasdaq_nsmequities_drop_asciidrop_v2_0.source = {}

-- Size: Source
nasdaq_nsmequities_drop_asciidrop_v2_0.source.size = 6

-- Display: Source
nasdaq_nsmequities_drop_asciidrop_v2_0.source.display = function(value)
  return "Source: "..value
end

-- Dissect: Source
nasdaq_nsmequities_drop_asciidrop_v2_0.source.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_drop_asciidrop_v2_0.source.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_drop_asciidrop_v2_0.source.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.source, range, value, display)

  return offset + length, value
end

-- Stock
nasdaq_nsmequities_drop_asciidrop_v2_0.stock = {}

-- Size: Stock
nasdaq_nsmequities_drop_asciidrop_v2_0.stock.size = 6

-- Display: Stock
nasdaq_nsmequities_drop_asciidrop_v2_0.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_nsmequities_drop_asciidrop_v2_0.stock.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_drop_asciidrop_v2_0.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_drop_asciidrop_v2_0.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.stock, range, value, display)

  return offset + length, value
end

-- Time In Force
nasdaq_nsmequities_drop_asciidrop_v2_0.time_in_force = {}

-- Size: Time In Force
nasdaq_nsmequities_drop_asciidrop_v2_0.time_in_force.size = 9

-- Display: Time In Force
nasdaq_nsmequities_drop_asciidrop_v2_0.time_in_force.display = function(value)
  return "Time In Force: "..value
end

-- Dissect: Time In Force
nasdaq_nsmequities_drop_asciidrop_v2_0.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_drop_asciidrop_v2_0.time_in_force.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nsmequities_drop_asciidrop_v2_0.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Time Stamp
nasdaq_nsmequities_drop_asciidrop_v2_0.time_stamp = {}

-- Size: Time Stamp
nasdaq_nsmequities_drop_asciidrop_v2_0.time_stamp.size = 9

-- Display: Time Stamp
nasdaq_nsmequities_drop_asciidrop_v2_0.time_stamp.display = function(value)
  return "Time Stamp: "..value
end

-- Dissect: Time Stamp
nasdaq_nsmequities_drop_asciidrop_v2_0.time_stamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_drop_asciidrop_v2_0.time_stamp.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_drop_asciidrop_v2_0.time_stamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.time_stamp, range, value, display)

  return offset + length, value
end

-- Token
nasdaq_nsmequities_drop_asciidrop_v2_0.token = {}

-- Size: Token
nasdaq_nsmequities_drop_asciidrop_v2_0.token.size = 10

-- Display: Token
nasdaq_nsmequities_drop_asciidrop_v2_0.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
nasdaq_nsmequities_drop_asciidrop_v2_0.token.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_drop_asciidrop_v2_0.token.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_drop_asciidrop_v2_0.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.token, range, value, display)

  return offset + length, value
end

-- User
nasdaq_nsmequities_drop_asciidrop_v2_0.user = {}

-- Size: User
nasdaq_nsmequities_drop_asciidrop_v2_0.user.size = 4

-- Display: User
nasdaq_nsmequities_drop_asciidrop_v2_0.user.display = function(value)
  return "User: "..value
end

-- Dissect: User
nasdaq_nsmequities_drop_asciidrop_v2_0.user.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_drop_asciidrop_v2_0.user.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_drop_asciidrop_v2_0.user.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.user, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NsmEquities Drop AsciiDrop 2.0
-----------------------------------------------------------------------

-- Existing Order Cancelled Aiq Message
nasdaq_nsmequities_drop_asciidrop_v2_0.existing_order_cancelled_aiq_message = {}

-- Size: Existing Order Cancelled Aiq Message
nasdaq_nsmequities_drop_asciidrop_v2_0.existing_order_cancelled_aiq_message.size =
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.source.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.user.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.token.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.buy_sell.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.shares.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.stock.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.price.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.firm.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.reference.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.time_in_force.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.cancel_reason.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.clearing_code.size

-- Display: Existing Order Cancelled Aiq Message
nasdaq_nsmequities_drop_asciidrop_v2_0.existing_order_cancelled_aiq_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Existing Order Cancelled Aiq Message
nasdaq_nsmequities_drop_asciidrop_v2_0.existing_order_cancelled_aiq_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Separator 1: 1 byte separator, stepped over
  index = index + 1

  -- Source: Alphanumeric
  index, source = nasdaq_nsmequities_drop_asciidrop_v2_0.source.dissect(buffer, index, packet, parent)

  -- Separator 2: 1 byte separator, stepped over
  index = index + 1

  -- User: Alphanumeric
  index, user = nasdaq_nsmequities_drop_asciidrop_v2_0.user.dissect(buffer, index, packet, parent)

  -- Separator 3: 1 byte separator, stepped over
  index = index + 1

  -- Token: Alphanumeric
  index, token = nasdaq_nsmequities_drop_asciidrop_v2_0.token.dissect(buffer, index, packet, parent)

  -- Separator 4: 1 byte separator, stepped over
  index = index + 1

  -- Buy Sell: Alpha
  index, buy_sell = nasdaq_nsmequities_drop_asciidrop_v2_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Separator 5: 1 byte separator, stepped over
  index = index + 1

  -- Shares: Numeric
  index, shares = nasdaq_nsmequities_drop_asciidrop_v2_0.shares.dissect(buffer, index, packet, parent)

  -- Separator 6: 1 byte separator, stepped over
  index = index + 1

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_drop_asciidrop_v2_0.stock.dissect(buffer, index, packet, parent)

  -- Separator 7: 1 byte separator, stepped over
  index = index + 1

  -- Price: Numeric
  index, price = nasdaq_nsmequities_drop_asciidrop_v2_0.price.dissect(buffer, index, packet, parent)

  -- Separator 8: 1 byte separator, stepped over
  index = index + 1

  -- Firm: Alpha
  index, firm = nasdaq_nsmequities_drop_asciidrop_v2_0.firm.dissect(buffer, index, packet, parent)

  -- Separator 9: 1 byte separator, stepped over
  index = index + 1

  -- Reference: Numeric
  index, reference = nasdaq_nsmequities_drop_asciidrop_v2_0.reference.dissect(buffer, index, packet, parent)

  -- Separator 10: 1 byte separator, stepped over
  index = index + 1

  -- Time In Force: Numeric
  index, time_in_force = nasdaq_nsmequities_drop_asciidrop_v2_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Separator 11: 1 byte separator, stepped over
  index = index + 1

  -- Cancel Reason: Alpha
  index, cancel_reason = nasdaq_nsmequities_drop_asciidrop_v2_0.cancel_reason.dissect(buffer, index, packet, parent)

  -- Separator 12: 1 byte separator, stepped over
  index = index + 1

  -- Clearing Code: Alpha
  index, clearing_code = nasdaq_nsmequities_drop_asciidrop_v2_0.clearing_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Existing Order Cancelled Aiq Message
nasdaq_nsmequities_drop_asciidrop_v2_0.existing_order_cancelled_aiq_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.existing_order_cancelled_aiq_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_drop_asciidrop_v2_0.existing_order_cancelled_aiq_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_drop_asciidrop_v2_0.existing_order_cancelled_aiq_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_drop_asciidrop_v2_0.existing_order_cancelled_aiq_message.fields(buffer, offset, packet, parent)
  end
end

-- Previous Execution Broken Message
nasdaq_nsmequities_drop_asciidrop_v2_0.previous_execution_broken_message = {}

-- Size: Previous Execution Broken Message
nasdaq_nsmequities_drop_asciidrop_v2_0.previous_execution_broken_message.size =
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.source.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.user.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.token.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.buy_sell.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.shares.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.stock.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.price.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.firm.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.reference.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.match_number.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.liquidity_code.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.clearing_code.size

-- Display: Previous Execution Broken Message
nasdaq_nsmequities_drop_asciidrop_v2_0.previous_execution_broken_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Previous Execution Broken Message
nasdaq_nsmequities_drop_asciidrop_v2_0.previous_execution_broken_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Separator 1: 1 byte separator, stepped over
  index = index + 1

  -- Source: Alphanumeric
  index, source = nasdaq_nsmequities_drop_asciidrop_v2_0.source.dissect(buffer, index, packet, parent)

  -- Separator 2: 1 byte separator, stepped over
  index = index + 1

  -- User: Alphanumeric
  index, user = nasdaq_nsmequities_drop_asciidrop_v2_0.user.dissect(buffer, index, packet, parent)

  -- Separator 3: 1 byte separator, stepped over
  index = index + 1

  -- Token: Alphanumeric
  index, token = nasdaq_nsmequities_drop_asciidrop_v2_0.token.dissect(buffer, index, packet, parent)

  -- Separator 4: 1 byte separator, stepped over
  index = index + 1

  -- Buy Sell: Alpha
  index, buy_sell = nasdaq_nsmequities_drop_asciidrop_v2_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Separator 5: 1 byte separator, stepped over
  index = index + 1

  -- Shares: Numeric
  index, shares = nasdaq_nsmequities_drop_asciidrop_v2_0.shares.dissect(buffer, index, packet, parent)

  -- Separator 6: 1 byte separator, stepped over
  index = index + 1

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_drop_asciidrop_v2_0.stock.dissect(buffer, index, packet, parent)

  -- Separator 7: 1 byte separator, stepped over
  index = index + 1

  -- Price: Numeric
  index, price = nasdaq_nsmequities_drop_asciidrop_v2_0.price.dissect(buffer, index, packet, parent)

  -- Separator 8: 1 byte separator, stepped over
  index = index + 1

  -- Firm: Alpha
  index, firm = nasdaq_nsmequities_drop_asciidrop_v2_0.firm.dissect(buffer, index, packet, parent)

  -- Separator 9: 1 byte separator, stepped over
  index = index + 1

  -- Reference: Numeric
  index, reference = nasdaq_nsmequities_drop_asciidrop_v2_0.reference.dissect(buffer, index, packet, parent)

  -- Separator 10: 1 byte separator, stepped over
  index = index + 1

  -- Match Number: Numeric
  index, match_number = nasdaq_nsmequities_drop_asciidrop_v2_0.match_number.dissect(buffer, index, packet, parent)

  -- Separator 11: 1 byte separator, stepped over
  index = index + 1

  -- Liquidity Code: Alpha
  index, liquidity_code = nasdaq_nsmequities_drop_asciidrop_v2_0.liquidity_code.dissect(buffer, index, packet, parent)

  -- Separator 12: 1 byte separator, stepped over
  index = index + 1

  -- Clearing Code: Alpha
  index, clearing_code = nasdaq_nsmequities_drop_asciidrop_v2_0.clearing_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Previous Execution Broken Message
nasdaq_nsmequities_drop_asciidrop_v2_0.previous_execution_broken_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.previous_execution_broken_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_drop_asciidrop_v2_0.previous_execution_broken_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_drop_asciidrop_v2_0.previous_execution_broken_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_drop_asciidrop_v2_0.previous_execution_broken_message.fields(buffer, offset, packet, parent)
  end
end

-- Existing Order Canceled Message
nasdaq_nsmequities_drop_asciidrop_v2_0.existing_order_canceled_message = {}

-- Size: Existing Order Canceled Message
nasdaq_nsmequities_drop_asciidrop_v2_0.existing_order_canceled_message.size =
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.source.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.user.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.token.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.buy_sell.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.shares.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.stock.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.price.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.firm.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.reference.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.time_in_force.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.cancel_reason.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.clearing_code.size

-- Display: Existing Order Canceled Message
nasdaq_nsmequities_drop_asciidrop_v2_0.existing_order_canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Existing Order Canceled Message
nasdaq_nsmequities_drop_asciidrop_v2_0.existing_order_canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Separator 1: 1 byte separator, stepped over
  index = index + 1

  -- Source: Alphanumeric
  index, source = nasdaq_nsmequities_drop_asciidrop_v2_0.source.dissect(buffer, index, packet, parent)

  -- Separator 2: 1 byte separator, stepped over
  index = index + 1

  -- User: Alphanumeric
  index, user = nasdaq_nsmequities_drop_asciidrop_v2_0.user.dissect(buffer, index, packet, parent)

  -- Separator 3: 1 byte separator, stepped over
  index = index + 1

  -- Token: Alphanumeric
  index, token = nasdaq_nsmequities_drop_asciidrop_v2_0.token.dissect(buffer, index, packet, parent)

  -- Separator 4: 1 byte separator, stepped over
  index = index + 1

  -- Buy Sell: Alpha
  index, buy_sell = nasdaq_nsmequities_drop_asciidrop_v2_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Separator 5: 1 byte separator, stepped over
  index = index + 1

  -- Shares: Numeric
  index, shares = nasdaq_nsmequities_drop_asciidrop_v2_0.shares.dissect(buffer, index, packet, parent)

  -- Separator 6: 1 byte separator, stepped over
  index = index + 1

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_drop_asciidrop_v2_0.stock.dissect(buffer, index, packet, parent)

  -- Separator 7: 1 byte separator, stepped over
  index = index + 1

  -- Price: Numeric
  index, price = nasdaq_nsmequities_drop_asciidrop_v2_0.price.dissect(buffer, index, packet, parent)

  -- Separator 8: 1 byte separator, stepped over
  index = index + 1

  -- Firm: Alpha
  index, firm = nasdaq_nsmequities_drop_asciidrop_v2_0.firm.dissect(buffer, index, packet, parent)

  -- Separator 9: 1 byte separator, stepped over
  index = index + 1

  -- Reference: Numeric
  index, reference = nasdaq_nsmequities_drop_asciidrop_v2_0.reference.dissect(buffer, index, packet, parent)

  -- Separator 10: 1 byte separator, stepped over
  index = index + 1

  -- Time In Force: Numeric
  index, time_in_force = nasdaq_nsmequities_drop_asciidrop_v2_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Separator 11: 1 byte separator, stepped over
  index = index + 1

  -- Cancel Reason: Alpha
  index, cancel_reason = nasdaq_nsmequities_drop_asciidrop_v2_0.cancel_reason.dissect(buffer, index, packet, parent)

  -- Separator 12: 1 byte separator, stepped over
  index = index + 1

  -- Clearing Code: Alpha
  index, clearing_code = nasdaq_nsmequities_drop_asciidrop_v2_0.clearing_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Existing Order Canceled Message
nasdaq_nsmequities_drop_asciidrop_v2_0.existing_order_canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.existing_order_canceled_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_drop_asciidrop_v2_0.existing_order_canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_drop_asciidrop_v2_0.existing_order_canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_drop_asciidrop_v2_0.existing_order_canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Existing Order Executed Message
nasdaq_nsmequities_drop_asciidrop_v2_0.existing_order_executed_message = {}

-- Size: Existing Order Executed Message
nasdaq_nsmequities_drop_asciidrop_v2_0.existing_order_executed_message.size =
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.source.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.user.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.token.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.buy_sell.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.shares.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.stock.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.price.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.firm.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.reference.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.match_number.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.liquidity_code.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.clearing_code.size

-- Display: Existing Order Executed Message
nasdaq_nsmequities_drop_asciidrop_v2_0.existing_order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Existing Order Executed Message
nasdaq_nsmequities_drop_asciidrop_v2_0.existing_order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Separator 1: 1 byte separator, stepped over
  index = index + 1

  -- Source: Alphanumeric
  index, source = nasdaq_nsmequities_drop_asciidrop_v2_0.source.dissect(buffer, index, packet, parent)

  -- Separator 2: 1 byte separator, stepped over
  index = index + 1

  -- User: Alphanumeric
  index, user = nasdaq_nsmequities_drop_asciidrop_v2_0.user.dissect(buffer, index, packet, parent)

  -- Separator 3: 1 byte separator, stepped over
  index = index + 1

  -- Token: Alphanumeric
  index, token = nasdaq_nsmequities_drop_asciidrop_v2_0.token.dissect(buffer, index, packet, parent)

  -- Separator 4: 1 byte separator, stepped over
  index = index + 1

  -- Buy Sell: Alpha
  index, buy_sell = nasdaq_nsmequities_drop_asciidrop_v2_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Separator 5: 1 byte separator, stepped over
  index = index + 1

  -- Shares: Numeric
  index, shares = nasdaq_nsmequities_drop_asciidrop_v2_0.shares.dissect(buffer, index, packet, parent)

  -- Separator 6: 1 byte separator, stepped over
  index = index + 1

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_drop_asciidrop_v2_0.stock.dissect(buffer, index, packet, parent)

  -- Separator 7: 1 byte separator, stepped over
  index = index + 1

  -- Price: Numeric
  index, price = nasdaq_nsmequities_drop_asciidrop_v2_0.price.dissect(buffer, index, packet, parent)

  -- Separator 8: 1 byte separator, stepped over
  index = index + 1

  -- Firm: Alpha
  index, firm = nasdaq_nsmequities_drop_asciidrop_v2_0.firm.dissect(buffer, index, packet, parent)

  -- Separator 9: 1 byte separator, stepped over
  index = index + 1

  -- Reference: Numeric
  index, reference = nasdaq_nsmequities_drop_asciidrop_v2_0.reference.dissect(buffer, index, packet, parent)

  -- Separator 10: 1 byte separator, stepped over
  index = index + 1

  -- Match Number: Numeric
  index, match_number = nasdaq_nsmequities_drop_asciidrop_v2_0.match_number.dissect(buffer, index, packet, parent)

  -- Separator 11: 1 byte separator, stepped over
  index = index + 1

  -- Liquidity Code: Alpha
  index, liquidity_code = nasdaq_nsmequities_drop_asciidrop_v2_0.liquidity_code.dissect(buffer, index, packet, parent)

  -- Separator 12: 1 byte separator, stepped over
  index = index + 1

  -- Clearing Code: Alpha
  index, clearing_code = nasdaq_nsmequities_drop_asciidrop_v2_0.clearing_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Existing Order Executed Message
nasdaq_nsmequities_drop_asciidrop_v2_0.existing_order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.existing_order_executed_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_drop_asciidrop_v2_0.existing_order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_drop_asciidrop_v2_0.existing_order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_drop_asciidrop_v2_0.existing_order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Accepted Message
nasdaq_nsmequities_drop_asciidrop_v2_0.new_order_accepted_message = {}

-- Size: New Order Accepted Message
nasdaq_nsmequities_drop_asciidrop_v2_0.new_order_accepted_message.size =
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.source.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.user.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.token.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.buy_sell.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.shares.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.stock.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.price.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.firm.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.reference.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.time_in_force.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.liquidity_code.size + 
  1 + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.clearing_code.size

-- Display: New Order Accepted Message
nasdaq_nsmequities_drop_asciidrop_v2_0.new_order_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Accepted Message
nasdaq_nsmequities_drop_asciidrop_v2_0.new_order_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Separator 1: 1 byte separator, stepped over
  index = index + 1

  -- Source: Alphanumeric
  index, source = nasdaq_nsmequities_drop_asciidrop_v2_0.source.dissect(buffer, index, packet, parent)

  -- Separator 2: 1 byte separator, stepped over
  index = index + 1

  -- User: Alphanumeric
  index, user = nasdaq_nsmequities_drop_asciidrop_v2_0.user.dissect(buffer, index, packet, parent)

  -- Separator 3: 1 byte separator, stepped over
  index = index + 1

  -- Token: Alphanumeric
  index, token = nasdaq_nsmequities_drop_asciidrop_v2_0.token.dissect(buffer, index, packet, parent)

  -- Separator 4: 1 byte separator, stepped over
  index = index + 1

  -- Buy Sell: Alpha
  index, buy_sell = nasdaq_nsmequities_drop_asciidrop_v2_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Separator 5: 1 byte separator, stepped over
  index = index + 1

  -- Shares: Numeric
  index, shares = nasdaq_nsmequities_drop_asciidrop_v2_0.shares.dissect(buffer, index, packet, parent)

  -- Separator 6: 1 byte separator, stepped over
  index = index + 1

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_drop_asciidrop_v2_0.stock.dissect(buffer, index, packet, parent)

  -- Separator 7: 1 byte separator, stepped over
  index = index + 1

  -- Price: Numeric
  index, price = nasdaq_nsmequities_drop_asciidrop_v2_0.price.dissect(buffer, index, packet, parent)

  -- Separator 8: 1 byte separator, stepped over
  index = index + 1

  -- Firm: Alpha
  index, firm = nasdaq_nsmequities_drop_asciidrop_v2_0.firm.dissect(buffer, index, packet, parent)

  -- Separator 9: 1 byte separator, stepped over
  index = index + 1

  -- Reference: Numeric
  index, reference = nasdaq_nsmequities_drop_asciidrop_v2_0.reference.dissect(buffer, index, packet, parent)

  -- Separator 10: 1 byte separator, stepped over
  index = index + 1

  -- Time In Force: Numeric
  index, time_in_force = nasdaq_nsmequities_drop_asciidrop_v2_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Separator 11: 1 byte separator, stepped over
  index = index + 1

  -- Liquidity Code: Alpha
  index, liquidity_code = nasdaq_nsmequities_drop_asciidrop_v2_0.liquidity_code.dissect(buffer, index, packet, parent)

  -- Separator 12: 1 byte separator, stepped over
  index = index + 1

  -- Clearing Code: Alpha
  index, clearing_code = nasdaq_nsmequities_drop_asciidrop_v2_0.clearing_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Accepted Message
nasdaq_nsmequities_drop_asciidrop_v2_0.new_order_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.new_order_accepted_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_drop_asciidrop_v2_0.new_order_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_drop_asciidrop_v2_0.new_order_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_drop_asciidrop_v2_0.new_order_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_nsmequities_drop_asciidrop_v2_0.message = {}

-- Dissect: Message
nasdaq_nsmequities_drop_asciidrop_v2_0.message.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect New Order Accepted Message
  if message_type == "A" then
    return nasdaq_nsmequities_drop_asciidrop_v2_0.new_order_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Existing Order Executed Message
  if message_type == "E" then
    return nasdaq_nsmequities_drop_asciidrop_v2_0.existing_order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Existing Order Canceled Message
  if message_type == "X" then
    return nasdaq_nsmequities_drop_asciidrop_v2_0.existing_order_canceled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Previous Execution Broken Message
  if message_type == "B" then
    return nasdaq_nsmequities_drop_asciidrop_v2_0.previous_execution_broken_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Existing Order Cancelled Aiq Message
  if message_type == "Y" then
    return nasdaq_nsmequities_drop_asciidrop_v2_0.existing_order_cancelled_aiq_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_nsmequities_drop_asciidrop_v2_0.message_header = {}

-- Size: Message Header
nasdaq_nsmequities_drop_asciidrop_v2_0.message_header.size =
  nasdaq_nsmequities_drop_asciidrop_v2_0.time_stamp.size + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.comma.size + 
  nasdaq_nsmequities_drop_asciidrop_v2_0.message_type.size

-- Display: Message Header
nasdaq_nsmequities_drop_asciidrop_v2_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_nsmequities_drop_asciidrop_v2_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Stamp: 9 Byte Ascii String
  index, time_stamp = nasdaq_nsmequities_drop_asciidrop_v2_0.time_stamp.dissect(buffer, index, packet, parent)

  -- Comma: 1 Byte Ascii String
  index, comma = nasdaq_nsmequities_drop_asciidrop_v2_0.comma.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 5 values
  index, message_type = nasdaq_nsmequities_drop_asciidrop_v2_0.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_nsmequities_drop_asciidrop_v2_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_drop_asciidrop_v2_0.fields.message_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_drop_asciidrop_v2_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_drop_asciidrop_v2_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_drop_asciidrop_v2_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Line
nasdaq_nsmequities_drop_asciidrop_v2_0.line = {}

-- Verify required size of Tcp packet
nasdaq_nsmequities_drop_asciidrop_v2_0.line.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nsmequities_drop_asciidrop_v2_0.message_header.size
end

-- Dissect Line
nasdaq_nsmequities_drop_asciidrop_v2_0.line.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Line
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Message Header: Struct of 3 fields
    index, message_header = nasdaq_nsmequities_drop_asciidrop_v2_0.message_header.dissect(buffer, index, packet, parent)

    -- Dependency element: Message Type
    local message_type = buffer(index - 1, 1):string()

    -- Message: Runtime Type with 5 branches
    index = nasdaq_nsmequities_drop_asciidrop_v2_0.message.dissect(buffer, index, packet, parent, message_type)

    -- Cr: 1 Byte Fixed Width Integer Static
    index, cr = nasdaq_nsmequities_drop_asciidrop_v2_0.cr.dissect(buffer, index, packet, parent)

    -- Lf: 1 Byte Fixed Width Integer Static
    index, lf = nasdaq_nsmequities_drop_asciidrop_v2_0.lf.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_nsmequities_drop_asciidrop_v2_0.init()
end

-- Dissector for Nasdaq NsmEquities Drop AsciiDrop 2.0
function omi_nasdaq_nsmequities_drop_asciidrop_v2_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nsmequities_drop_asciidrop_v2_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nsmequities_drop_asciidrop_v2_0, buffer(), omi_nasdaq_nsmequities_drop_asciidrop_v2_0.description, "("..buffer:len().." Bytes)")
  return nasdaq_nsmequities_drop_asciidrop_v2_0.line.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Line: would its message dispatch accept this frame?
nasdaq_nsmequities_drop_asciidrop_v2_0.line.fingerprint = function(buffer)
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

  -- Existing Order Cancelled Aiq Message
  if message_type == "Y" then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq NsmEquities Drop AsciiDrop 2.0 (Tcp)
local function omi_nasdaq_nsmequities_drop_asciidrop_v2_0_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nsmequities_drop_asciidrop_v2_0.line.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_nsmequities_drop_asciidrop_v2_0.line.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nsmequities_drop_asciidrop_v2_0
  omi_nasdaq_nsmequities_drop_asciidrop_v2_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NsmEquities Drop AsciiDrop 2.0
omi_nasdaq_nsmequities_drop_asciidrop_v2_0:register_heuristic("tcp", omi_nasdaq_nsmequities_drop_asciidrop_v2_0_tcp_acceptor_heuristic)

-- Register Nasdaq NsmEquities Drop AsciiDrop 2.0 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nasdaq_nsmequities_drop_asciidrop_v2_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 2.0
--   Date: Monday, February 29, 2016
--   Specification: drop_200.pdf
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
