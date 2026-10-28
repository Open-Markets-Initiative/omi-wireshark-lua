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
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.buy_sell = ProtoField.new("Buy Sell", "nasdaq.bxequities.drop.asciidrop.v2.0.buysell", ftypes.STRING, nil, nil, nil, "The side of the trade executed.")
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.clearing_code = ProtoField.new("Clearing Code", "nasdaq.bxequities.drop.asciidrop.v2.0.clearingcode", ftypes.STRING, nil, nil, nil, "The clearing path this trade will take.")
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.comma = ProtoField.new("Comma", "nasdaq.bxequities.drop.asciidrop.v2.0.comma", ftypes.STRING, nil, nil, nil, "Field separator")
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.cr = ProtoField.new("Cr", "nasdaq.bxequities.drop.asciidrop.v2.0.cr", ftypes.INT8, nil, nil, nil, "Carriage return ending the line")
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.firm = ProtoField.new("Firm", "nasdaq.bxequities.drop.asciidrop.v2.0.firm", ftypes.STRING, nil, nil, nil, "The order entry firm.")
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.lf = ProtoField.new("Lf", "nasdaq.bxequities.drop.asciidrop.v2.0.lf", ftypes.INT8, nil, nil, nil, "Line feed ending the line")
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.liquidity_code = ProtoField.new("Liquidity Code", "nasdaq.bxequities.drop.asciidrop.v2.0.liquiditycode", ftypes.STRING, nil, nil, nil, "For execution messages, the liquidity code value.")
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.match_number = ProtoField.new("Match Number", "nasdaq.bxequities.drop.asciidrop.v2.0.matchnumber", ftypes.UINT32, nil, nil, nil, "The match number assigned by Nasdaq to this trade. Each match consists of an execution between a buy order and a sell order.")
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.message_type = ProtoField.new("Message Type", "nasdaq.bxequities.drop.asciidrop.v2.0.messagetype", ftypes.STRING, nil, nil, nil, "The event the line reports")
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.price = ProtoField.new("Price", "nasdaq.bxequities.drop.asciidrop.v2.0.price", ftypes.STRING, nil, nil, nil, "For a new order accepted, the limit price of the order; for an execution, the execution price; for a cancel, the limit price of the open order.")
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.reference = ProtoField.new("Reference", "nasdaq.bxequities.drop.asciidrop.v2.0.reference", ftypes.UINT32, nil, nil, nil, "The order unique reference number assigned by Nasdaq to this order.")
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.shares = ProtoField.new("Shares", "nasdaq.bxequities.drop.asciidrop.v2.0.shares", ftypes.UINT24, nil, nil, nil, "For a new order accept, the total number of shares entered; for a cancel, the incremental number of shares canceled; for an execution, the incremental number of shares executed in this trade; for a broken execution, the number of shares in the previously transmitted execution.")
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.source = ProtoField.new("Source", "nasdaq.bxequities.drop.asciidrop.v2.0.source", ftypes.STRING, nil, nil, nil, "The source of the order. Typically the account of the OUCH port used to enter the order, but can also have the special value \"$PHON \" for orders received via the phone desk.")
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.stock = ProtoField.new("Stock", "nasdaq.bxequities.drop.asciidrop.v2.0.stock", ftypes.STRING, nil, nil, nil, "The stock symbol.")
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.time_in_force = ProtoField.new("Time In Force", "nasdaq.bxequities.drop.asciidrop.v2.0.timeinforce", ftypes.UINT32, nil, nil, nil, "On messages other than executions and breaks the Match field carries the order's Time in Force (TIF).")
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.time_stamp = ProtoField.new("Time Stamp", "nasdaq.bxequities.drop.asciidrop.v2.0.timestamp", ftypes.STRING, nil, nil, nil, "The time the event occurred, seconds past midnight Eastern with a written decimal point and three decimals (milliseconds)")
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.token = ProtoField.new("Token", "nasdaq.bxequities.drop.asciidrop.v2.0.token", ftypes.STRING, nil, nil, nil, "The free form Token field as specified by the order entry firm when the order was entered.")
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.user = ProtoField.new("User", "nasdaq.bxequities.drop.asciidrop.v2.0.user", ftypes.STRING, nil, nil, nil, "The free form User field as specified by the order entry firm when the order was entered.")

-- Nasdaq BxEquities Drop AsciiDrop 2.0 Framing
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.frame = ProtoField.new("Frame", "nasdaq.bxequities.drop.asciidrop.v2.0.frame", ftypes.STRING, nil, nil, nil, "A fixed length, comma delimited, CR/LF terminated Drop message line")
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.line = ProtoField.new("Line", "nasdaq.bxequities.drop.asciidrop.v2.0.line", ftypes.STRING, nil, nil, nil, "Drop line session: a run of CR/LF terminated lines")
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.message_header = ProtoField.new("Message Header", "nasdaq.bxequities.drop.asciidrop.v2.0.messageheader", ftypes.STRING, nil, nil, nil, "Time Stamp and Type opening every Drop message line")

-- Nasdaq BxEquities Drop 2.0 Application Messages
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.existing_order_canceled_message = ProtoField.new("Existing Order Canceled Message", "nasdaq.bxequities.drop.asciidrop.v2.0.existingordercanceledmessage", ftypes.STRING, nil, nil, nil, "Existing order canceled.")
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.existing_order_executed_message = ProtoField.new("Existing Order Executed Message", "nasdaq.bxequities.drop.asciidrop.v2.0.existingorderexecutedmessage", ftypes.STRING, nil, nil, nil, "Existing order executed.")
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.new_order_accepted_message = ProtoField.new("New Order Accepted Message", "nasdaq.bxequities.drop.asciidrop.v2.0.neworderacceptedmessage", ftypes.STRING, nil, nil, nil, "New order accepted.")
omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.previous_execution_broken_message = ProtoField.new("Previous Execution Broken Message", "nasdaq.bxequities.drop.asciidrop.v2.0.previousexecutionbrokenmessage", ftypes.STRING, nil, nil, nil, "Previous execution broken.")

-- Nasdaq BxEquities Drop AsciiDrop 2.0 Expert Info
nasdaq_bxequities_drop_asciidrop_v2_0.experts = {}
nasdaq_bxequities_drop_asciidrop_v2_0.experts.not_a_number = ProtoExpert.new("nasdaq.bxequities.drop.asciidrop.v2.0.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_nasdaq_bxequities_drop_asciidrop_v2_0.experts = { nasdaq_bxequities_drop_asciidrop_v2_0.experts.not_a_number }

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

-- trim leading spaces
trim_left_spaces = function(str)
  local start = 1

  while start <= str:len() and str:byte(start) == 0x20 do
    start = start + 1
  end

  return str:sub(start)
end


-----------------------------------------------------------------------
-- Nasdaq BxEquities Drop AsciiDrop 2.0 Fields
-----------------------------------------------------------------------

-- Buy Sell
nasdaq_bxequities_drop_asciidrop_v2_0.buy_sell = {}

-- Size: Buy Sell
nasdaq_bxequities_drop_asciidrop_v2_0.buy_sell.size = 1

-- Display: Buy Sell
nasdaq_bxequities_drop_asciidrop_v2_0.buy_sell.labels = {
  ["B"] = "Buy Sell: Bought (B)",
  ["S"] = "Buy Sell: Sold (S)",
  ["T"] = "Buy Sell: Sold Short (T)",
  ["E"] = "Buy Sell: Sold Short Exempt (E)",
}

nasdaq_bxequities_drop_asciidrop_v2_0.buy_sell.display = function(value)
  return nasdaq_bxequities_drop_asciidrop_v2_0.buy_sell.labels[value] or "Buy Sell: Unknown("..value..")"
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
nasdaq_bxequities_drop_asciidrop_v2_0.clearing_code.labels = {
  ["Q"] = "Clearing Code: Qsr (Q)",
}

nasdaq_bxequities_drop_asciidrop_v2_0.clearing_code.display = function(value)
  return nasdaq_bxequities_drop_asciidrop_v2_0.clearing_code.labels[value] or "Clearing Code: Unknown("..value..")"
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
nasdaq_bxequities_drop_asciidrop_v2_0.liquidity_code.labels = {
  ["A"] = "Liquidity Code: Added (A)",
  ["R"] = "Liquidity Code: Removed (R)",
  ["X"] = "Liquidity Code: Routed (X)",
  ["D"] = "Liquidity Code: Dot (D)",
  ["F"] = "Liquidity Code: Added Or Opening Trade On Nyse (F)",
  ["G"] = "Liquidity Code: Odd Lot Or On Close Order On Nyse (G)",
  ["O"] = "Liquidity Code: Opening Cross Billable (O)",
  ["M"] = "Liquidity Code: Opening Cross Non Billable (M)",
  ["C"] = "Liquidity Code: Closing Cross Billable (C)",
  ["L"] = "Liquidity Code: Closing Cross Non Billable (L)",
  ["H"] = "Liquidity Code: Halt Ipo Cross Billable (H)",
  ["K"] = "Liquidity Code: Halt Ipo Cross Non Billable (K)",
  ["I"] = "Liquidity Code: Intraday And Post Market Crosses (I)",
  ["J"] = "Liquidity Code: Non Displayed Adding Liquidity (J)",
  ["Y"] = "Liquidity Code: Re Routed By Nyse (Y)",
  ["S"] = "Liquidity Code: Odd Lot Execution On Nyse (S)",
  ["U"] = "Liquidity Code: Added Liquidity On Nyse (U)",
  ["B"] = "Liquidity Code: Routed To Bx (B)",
  ["E"] = "Liquidity Code: Nyse Other (E)",
  ["P"] = "Liquidity Code: Routed To Psx (P)",
  ["T"] = "Liquidity Code: Opening Trade On Arca (T)",
  ["Z"] = "Liquidity Code: On Close Order On Arca (Z)",
  ["m"] = "Liquidity Code: Removed Liquidity At A Midpoint (m)",
  ["k"] = "Liquidity Code: Added Liquidity Via A Midpoint Order (k)",
}

nasdaq_bxequities_drop_asciidrop_v2_0.liquidity_code.display = function(value)
  return nasdaq_bxequities_drop_asciidrop_v2_0.liquidity_code.labels[value] or "Liquidity Code: Unknown("..value..")"
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
    value = 0
    local item = parent:add(omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.match_number, range, value, "Match Number: Not Applicable")
    item:add_proto_expert_info(nasdaq_bxequities_drop_asciidrop_v2_0.experts.not_a_number, "Match Number is not a number: '"..range:string().."'")
    return offset + length, value
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
nasdaq_bxequities_drop_asciidrop_v2_0.message_type.labels = {
  ["A"] = "Message Type: New Order Accepted Message (A)",
  ["E"] = "Message Type: Existing Order Executed Message (E)",
  ["X"] = "Message Type: Existing Order Canceled Message (X)",
  ["B"] = "Message Type: Previous Execution Broken Message (B)",
}

nasdaq_bxequities_drop_asciidrop_v2_0.message_type.display = function(value)
  return nasdaq_bxequities_drop_asciidrop_v2_0.message_type.labels[value] or "Message Type: Unknown("..value..")"
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
  local value = trim_left_spaces(range:string())
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
    value = 0
    local item = parent:add(omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.reference, range, value, "Reference: Not Applicable")
    item:add_proto_expert_info(nasdaq_bxequities_drop_asciidrop_v2_0.experts.not_a_number, "Reference is not a number: '"..range:string().."'")
    return offset + length, value
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
    value = 0
    local item = parent:add(omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.shares, range, value, "Shares: Not Applicable")
    item:add_proto_expert_info(nasdaq_bxequities_drop_asciidrop_v2_0.experts.not_a_number, "Shares is not a number: '"..range:string().."'")
    return offset + length, value
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
    value = 0
    local item = parent:add(omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.time_in_force, range, value, "Time In Force: Not Applicable")
    item:add_proto_expert_info(nasdaq_bxequities_drop_asciidrop_v2_0.experts.not_a_number, "Time In Force is not a number: '"..range:string().."'")
    return offset + length, value
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
  local value = trim_left_spaces(range:string())
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

-- Dispatch: Message
nasdaq_bxequities_drop_asciidrop_v2_0.message.dispatch = {
  ["A"] = nasdaq_bxequities_drop_asciidrop_v2_0.new_order_accepted_message.dissect,
  ["E"] = nasdaq_bxequities_drop_asciidrop_v2_0.existing_order_executed_message.dissect,
  ["X"] = nasdaq_bxequities_drop_asciidrop_v2_0.existing_order_canceled_message.dissect,
  ["B"] = nasdaq_bxequities_drop_asciidrop_v2_0.previous_execution_broken_message.dissect,
}

-- Dissect: Message
nasdaq_bxequities_drop_asciidrop_v2_0.message.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = nasdaq_bxequities_drop_asciidrop_v2_0.message.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
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

-- Frame
nasdaq_bxequities_drop_asciidrop_v2_0.frame = {}

-- Display: Frame
nasdaq_bxequities_drop_asciidrop_v2_0.frame.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Frame
nasdaq_bxequities_drop_asciidrop_v2_0.frame.fields = function(buffer, offset, packet, parent, size_of_frame)
  local index = offset

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

  return index
end

-- Dissect: Frame
nasdaq_bxequities_drop_asciidrop_v2_0.frame.dissect = function(buffer, offset, packet, parent, size_of_frame)
  local index = offset + size_of_frame

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_bxequities_drop_asciidrop_v2_0.fields.frame, buffer(offset, 0))
    local current = nasdaq_bxequities_drop_asciidrop_v2_0.frame.fields(buffer, offset, packet, parent, size_of_frame)
    parent:set_len(size_of_frame)
    local display = nasdaq_bxequities_drop_asciidrop_v2_0.frame.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_bxequities_drop_asciidrop_v2_0.frame.fields(buffer, offset, packet, parent, size_of_frame)

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

-- Line
nasdaq_bxequities_drop_asciidrop_v2_0.line = {}

-- Verify required size of Tcp packet
nasdaq_bxequities_drop_asciidrop_v2_0.line.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_bxequities_drop_asciidrop_v2_0.message_header.size
end

-- Dissect Line
nasdaq_bxequities_drop_asciidrop_v2_0.line.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Frame
  local end_of_payload = buffer:len()

  -- Frame: Struct of 4 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_frame = frame_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_frame):tvb()
      index = nasdaq_bxequities_drop_asciidrop_v2_0.frame.dissect(frame, index, packet, parent, size_of_frame)
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

  -- Verify the frame matches this tcp line message dispatch
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
