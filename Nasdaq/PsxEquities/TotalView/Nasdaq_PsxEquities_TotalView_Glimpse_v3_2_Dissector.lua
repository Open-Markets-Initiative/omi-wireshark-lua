-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq PsxEquities TotalView Glimpse 3.2 Protocol
local omi_nasdaq_psxequities_totalview_glimpse_v3_2 = Proto("Omi.Nasdaq.PsxEquities.TotalView.Glimpse.v3.2", "Nasdaq PsxEquities TotalView Glimpse 3.2")

-- Protocol table
local nasdaq_psxequities_totalview_glimpse_v3_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq PsxEquities TotalView Glimpse 3.2 Fields
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.attribution = ProtoField.new("Attribution", "nasdaq.psxequities.totalview.glimpse.v3.2.attribution", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nasdaq.psxequities.totalview.glimpse.v3.2.buysellindicator", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.client_packet_type = ProtoField.new("Client Packet Type", "nasdaq.psxequities.totalview.glimpse.v3.2.clientpackettype", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.psxequities.totalview.glimpse.v3.2.debugpacket", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.event_code = ProtoField.new("Event Code", "nasdaq.psxequities.totalview.glimpse.v3.2.eventcode", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.psxequities.totalview.glimpse.v3.2.financialstatusindicator", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.itch_sequence_number = ProtoField.new("Itch Sequence Number", "nasdaq.psxequities.totalview.glimpse.v3.2.itchsequencenumber", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.psxequities.totalview.glimpse.v3.2.loginacceptedpacket", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.psxequities.totalview.glimpse.v3.2.loginrejectedpacket", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.psxequities.totalview.glimpse.v3.2.loginrequestpacket", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.market_category = ProtoField.new("Market Category", "nasdaq.psxequities.totalview.glimpse.v3.2.marketcategory", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.message_type = ProtoField.new("Message Type", "nasdaq.psxequities.totalview.glimpse.v3.2.messagetype", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.millisecond = ProtoField.new("Millisecond", "nasdaq.psxequities.totalview.glimpse.v3.2.millisecond", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.psxequities.totalview.glimpse.v3.2.orderreferencenumber", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.password = ProtoField.new("Password", "nasdaq.psxequities.totalview.glimpse.v3.2.password", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.price = ProtoField.new("Price", "nasdaq.psxequities.totalview.glimpse.v3.2.price", ftypes.DOUBLE)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.reason = ProtoField.new("Reason", "nasdaq.psxequities.totalview.glimpse.v3.2.reason", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.psxequities.totalview.glimpse.v3.2.regshoaction", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.psxequities.totalview.glimpse.v3.2.rejectreasoncode", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.psxequities.totalview.glimpse.v3.2.requestedsequencenumber", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.psxequities.totalview.glimpse.v3.2.requestedsession", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.reserved_1 = ProtoField.new("Reserved 1", "nasdaq.psxequities.totalview.glimpse.v3.2.reserved1", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.psxequities.totalview.glimpse.v3.2.roundlotsize", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.round_lots_only = ProtoField.new("Round Lots Only", "nasdaq.psxequities.totalview.glimpse.v3.2.roundlotsonly", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.second = ProtoField.new("Second", "nasdaq.psxequities.totalview.glimpse.v3.2.second", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.psxequities.totalview.glimpse.v3.2.sequencenumber", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.psxequities.totalview.glimpse.v3.2.sequenceddatapacket", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.server_packet_type = ProtoField.new("Server Packet Type", "nasdaq.psxequities.totalview.glimpse.v3.2.serverpackettype", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.session = ProtoField.new("Session", "nasdaq.psxequities.totalview.glimpse.v3.2.session", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.shares = ProtoField.new("Shares", "nasdaq.psxequities.totalview.glimpse.v3.2.shares", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.soup_lf = ProtoField.new("Soup Lf", "nasdaq.psxequities.totalview.glimpse.v3.2.souplf", ftypes.INT8)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.stock = ProtoField.new("Stock", "nasdaq.psxequities.totalview.glimpse.v3.2.stock", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.text = ProtoField.new("Text", "nasdaq.psxequities.totalview.glimpse.v3.2.text", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.trading_state = ProtoField.new("Trading State", "nasdaq.psxequities.totalview.glimpse.v3.2.tradingstate", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.psxequities.totalview.glimpse.v3.2.unsequenceddatapacket", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "nasdaq.psxequities.totalview.glimpse.v3.2.unsequencedmessage", ftypes.BYTES)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.username = ProtoField.new("Username", "nasdaq.psxequities.totalview.glimpse.v3.2.username", ftypes.STRING)

-- Nasdaq PsxEquities TotalView Glimpse 3.2 Framing
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.client_packet = ProtoField.new("Client Packet", "nasdaq.psxequities.totalview.glimpse.v3.2.clientpacket", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.client_packet_header = ProtoField.new("Client Packet Header", "nasdaq.psxequities.totalview.glimpse.v3.2.clientpacketheader", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.sequenced_message_header = ProtoField.new("Sequenced Message Header", "nasdaq.psxequities.totalview.glimpse.v3.2.sequencedmessageheader", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.server_packet = ProtoField.new("Server Packet", "nasdaq.psxequities.totalview.glimpse.v3.2.serverpacket", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.server_packet_header = ProtoField.new("Server Packet Header", "nasdaq.psxequities.totalview.glimpse.v3.2.serverpacketheader", ftypes.STRING)

-- Nasdaq PsxEquities TotalView 3.2 Application Messages
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.add_order_message = ProtoField.new("Add Order Message", "nasdaq.psxequities.totalview.glimpse.v3.2.addordermessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.add_order_mpid_attribution_message = ProtoField.new("Add Order Mpid Attribution Message", "nasdaq.psxequities.totalview.glimpse.v3.2.addordermpidattributionmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.end_of_snapshot_message = ProtoField.new("End Of Snapshot Message", "nasdaq.psxequities.totalview.glimpse.v3.2.endofsnapshotmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.milliseconds_message = ProtoField.new("Milliseconds Message", "nasdaq.psxequities.totalview.glimpse.v3.2.millisecondsmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.reg_sho_restriction_message = ProtoField.new("Reg Sho Restriction Message", "nasdaq.psxequities.totalview.glimpse.v3.2.regshorestrictionmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.seconds_message = ProtoField.new("Seconds Message", "nasdaq.psxequities.totalview.glimpse.v3.2.secondsmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.psxequities.totalview.glimpse.v3.2.stockdirectorymessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.stock_trading_action_message = ProtoField.new("Stock Trading Action Message", "nasdaq.psxequities.totalview.glimpse.v3.2.stocktradingactionmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.psxequities.totalview.glimpse.v3.2.systemeventmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Nasdaq PsxEquities TotalView Glimpse 3.2 Formatting
-----------------------------------------------------------------------

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

-- Nasdaq PsxEquities TotalView Glimpse 3.2 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true

-- Register Nasdaq PsxEquities TotalView Glimpse 3.2 Show Options
omi_nasdaq_psxequities_totalview_glimpse_v3_2.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nasdaq_psxequities_totalview_glimpse_v3_2.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nasdaq_psxequities_totalview_glimpse_v3_2.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nasdaq_psxequities_totalview_glimpse_v3_2.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_psxequities_totalview_glimpse_v3_2.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_psxequities_totalview_glimpse_v3_2.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

-- Handle changed preferences
function omi_nasdaq_psxequities_totalview_glimpse_v3_2.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_psxequities_totalview_glimpse_v3_2.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_psxequities_totalview_glimpse_v3_2.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_psxequities_totalview_glimpse_v3_2.prefs.show_headers then
    show.headers = omi_nasdaq_psxequities_totalview_glimpse_v3_2.prefs.show_headers
  end
  if show.structs ~= omi_nasdaq_psxequities_totalview_glimpse_v3_2.prefs.show_structs then
    show.structs = omi_nasdaq_psxequities_totalview_glimpse_v3_2.prefs.show_structs
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
-- Nasdaq PsxEquities TotalView Glimpse 3.2 Fields
-----------------------------------------------------------------------

-- Attribution
nasdaq_psxequities_totalview_glimpse_v3_2.attribution = {}

-- Size: Attribution
nasdaq_psxequities_totalview_glimpse_v3_2.attribution.size = 4

-- Display: Attribution
nasdaq_psxequities_totalview_glimpse_v3_2.attribution.display = function(value)
  return "Attribution: "..value
end

-- Dissect: Attribution
nasdaq_psxequities_totalview_glimpse_v3_2.attribution.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.attribution.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_glimpse_v3_2.attribution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.attribution, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
nasdaq_psxequities_totalview_glimpse_v3_2.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
nasdaq_psxequities_totalview_glimpse_v3_2.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
nasdaq_psxequities_totalview_glimpse_v3_2.buy_sell_indicator.display = function(value)
  if value == "B" then
    return "Buy Sell Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Buy Sell Indicator: Sell Order (S)"
  end

  return "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
nasdaq_psxequities_totalview_glimpse_v3_2.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v3_2.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Client Packet Type
nasdaq_psxequities_totalview_glimpse_v3_2.client_packet_type = {}

-- Size: Client Packet Type
nasdaq_psxequities_totalview_glimpse_v3_2.client_packet_type.size = 1

-- Display: Client Packet Type
nasdaq_psxequities_totalview_glimpse_v3_2.client_packet_type.display = function(value)
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
nasdaq_psxequities_totalview_glimpse_v3_2.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v3_2.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_psxequities_totalview_glimpse_v3_2.event_code = {}

-- Size: Event Code
nasdaq_psxequities_totalview_glimpse_v3_2.event_code.size = 1

-- Display: Event Code
nasdaq_psxequities_totalview_glimpse_v3_2.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages (O)"
  end
  if value == "S" then
    return "Event Code: Start Of System Hours (S)"
  end
  if value == "Q" then
    return "Event Code: Start Of Market Hours (Q)"
  end
  if value == "M" then
    return "Event Code: End Of Market Hours (M)"
  end
  if value == "E" then
    return "Event Code: End Of System Hours (E)"
  end
  if value == "C" then
    return "Event Code: End Of Messages (C)"
  end
  if value == "A" then
    return "Event Code: Emergency Market Condition Halt (A)"
  end
  if value == "R" then
    return "Event Code: Emergency Market Condition Quote Only Period (R)"
  end
  if value == "B" then
    return "Event Code: Emergency Market Condition Resumption (B)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_psxequities_totalview_glimpse_v3_2.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v3_2.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.event_code, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
nasdaq_psxequities_totalview_glimpse_v3_2.financial_status_indicator = {}

-- Size: Financial Status Indicator
nasdaq_psxequities_totalview_glimpse_v3_2.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
nasdaq_psxequities_totalview_glimpse_v3_2.financial_status_indicator.display = function(value)
  if value == "D" then
    return "Financial Status Indicator: Deficient (D)"
  end
  if value == "E" then
    return "Financial Status Indicator: Delinquent (E)"
  end
  if value == "Q" then
    return "Financial Status Indicator: Bankrupt (Q)"
  end
  if value == "S" then
    return "Financial Status Indicator: Suspended (S)"
  end
  if value == "G" then
    return "Financial Status Indicator: Deficient And Bankrupt (G)"
  end
  if value == "H" then
    return "Financial Status Indicator: Deficient And Delinquent (H)"
  end
  if value == "J" then
    return "Financial Status Indicator: Delinquent And Bankrupt (J)"
  end
  if value == "K" then
    return "Financial Status Indicator: Deficient Delinquent And Bankrupt (K)"
  end
  if value == " " then
    return "Financial Status Indicator: In Compliance (<whitespace>)"
  end

  return "Financial Status Indicator: Unknown("..value..")"
end

-- Dissect: Financial Status Indicator
nasdaq_psxequities_totalview_glimpse_v3_2.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v3_2.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Itch Sequence Number
nasdaq_psxequities_totalview_glimpse_v3_2.itch_sequence_number = {}

-- Size: Itch Sequence Number
nasdaq_psxequities_totalview_glimpse_v3_2.itch_sequence_number.size = 20

-- Display: Itch Sequence Number
nasdaq_psxequities_totalview_glimpse_v3_2.itch_sequence_number.display = function(value)
  return "Itch Sequence Number: "..value
end

-- Dissect: Itch Sequence Number
nasdaq_psxequities_totalview_glimpse_v3_2.itch_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.itch_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_psxequities_totalview_glimpse_v3_2.itch_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.itch_sequence_number, range, value, display)

  return offset + length, value
end

-- Market Category
nasdaq_psxequities_totalview_glimpse_v3_2.market_category = {}

-- Size: Market Category
nasdaq_psxequities_totalview_glimpse_v3_2.market_category.size = 1

-- Display: Market Category
nasdaq_psxequities_totalview_glimpse_v3_2.market_category.display = function(value)
  if value == "N" then
    return "Market Category: New York Stock Exchange (N)"
  end
  if value == "A" then
    return "Market Category: Nyse Amex (A)"
  end
  if value == "P" then
    return "Market Category: Nyse Arca (P)"
  end
  if value == "Q" then
    return "Market Category: Nasdaq Global Select Market (Q)"
  end
  if value == "G" then
    return "Market Category: Nasdaq Global Market (G)"
  end
  if value == "S" then
    return "Market Category: Nasdaq Capital Market (S)"
  end
  if value == "Z" then
    return "Market Category: Bats Bzx Exchange (Z)"
  end
  if value == " " then
    return "Market Category: Not Available (<whitespace>)"
  end

  return "Market Category: Unknown("..value..")"
end

-- Dissect: Market Category
nasdaq_psxequities_totalview_glimpse_v3_2.market_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.market_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v3_2.market_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.market_category, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_psxequities_totalview_glimpse_v3_2.message_type = {}

-- Size: Message Type
nasdaq_psxequities_totalview_glimpse_v3_2.message_type.size = 1

-- Display: Message Type
nasdaq_psxequities_totalview_glimpse_v3_2.message_type.display = function(value)
  if value == "T" then
    return "Message Type: Seconds Message (T)"
  end
  if value == "M" then
    return "Message Type: Milliseconds Message (M)"
  end
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "A" then
    return "Message Type: Add Order Message (A)"
  end
  if value == "F" then
    return "Message Type: Add Order Mpid Attribution Message (F)"
  end
  if value == "R" then
    return "Message Type: Stock Directory Message (R)"
  end
  if value == "H" then
    return "Message Type: Stock Trading Action Message (H)"
  end
  if value == "Y" then
    return "Message Type: Reg Sho Restriction Message (Y)"
  end
  if value == "G" then
    return "Message Type: End Of Snapshot Message (G)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_psxequities_totalview_glimpse_v3_2.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v3_2.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.message_type, range, value, display)

  return offset + length, value
end

-- Millisecond
nasdaq_psxequities_totalview_glimpse_v3_2.millisecond = {}

-- Size: Millisecond
nasdaq_psxequities_totalview_glimpse_v3_2.millisecond.size = 3

-- Display: Millisecond
nasdaq_psxequities_totalview_glimpse_v3_2.millisecond.display = function(value)
  return "Millisecond: "..value
end

-- Dissect: Millisecond
nasdaq_psxequities_totalview_glimpse_v3_2.millisecond.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.millisecond.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_psxequities_totalview_glimpse_v3_2.millisecond.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.millisecond, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nasdaq_psxequities_totalview_glimpse_v3_2.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_psxequities_totalview_glimpse_v3_2.order_reference_number.size = 12

-- Display: Order Reference Number
nasdaq_psxequities_totalview_glimpse_v3_2.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_psxequities_totalview_glimpse_v3_2.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.order_reference_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_psxequities_totalview_glimpse_v3_2.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_psxequities_totalview_glimpse_v3_2.password = {}

-- Size: Password
nasdaq_psxequities_totalview_glimpse_v3_2.password.size = 10

-- Display: Password
nasdaq_psxequities_totalview_glimpse_v3_2.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_psxequities_totalview_glimpse_v3_2.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_glimpse_v3_2.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.password, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_psxequities_totalview_glimpse_v3_2.price = {}

-- Size: Price
nasdaq_psxequities_totalview_glimpse_v3_2.price.size = 10

-- Display: Price
nasdaq_psxequities_totalview_glimpse_v3_2.price.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, nasdaq_psxequities_totalview_glimpse_v3_2.price.size):string():match("^%s*(.-)%s*$")
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
nasdaq_psxequities_totalview_glimpse_v3_2.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_psxequities_totalview_glimpse_v3_2.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.price, range, value, display)

  return offset + length, value
end

-- Reason
nasdaq_psxequities_totalview_glimpse_v3_2.reason = {}

-- Size: Reason
nasdaq_psxequities_totalview_glimpse_v3_2.reason.size = 4

-- Display: Reason
nasdaq_psxequities_totalview_glimpse_v3_2.reason.display = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
nasdaq_psxequities_totalview_glimpse_v3_2.reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_glimpse_v3_2.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.reason, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
nasdaq_psxequities_totalview_glimpse_v3_2.reg_sho_action = {}

-- Size: Reg Sho Action
nasdaq_psxequities_totalview_glimpse_v3_2.reg_sho_action.size = 1

-- Display: Reg Sho Action
nasdaq_psxequities_totalview_glimpse_v3_2.reg_sho_action.display = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price Test In Place (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Restriction In Effect (1)"
  end
  if value == "2" then
    return "Reg Sho Action: Restriction Remains In Effect (2)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
nasdaq_psxequities_totalview_glimpse_v3_2.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v3_2.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_psxequities_totalview_glimpse_v3_2.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_psxequities_totalview_glimpse_v3_2.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_psxequities_totalview_glimpse_v3_2.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
nasdaq_psxequities_totalview_glimpse_v3_2.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v3_2.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_psxequities_totalview_glimpse_v3_2.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_psxequities_totalview_glimpse_v3_2.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_psxequities_totalview_glimpse_v3_2.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_psxequities_totalview_glimpse_v3_2.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_glimpse_v3_2.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_psxequities_totalview_glimpse_v3_2.requested_session = {}

-- Size: Requested Session
nasdaq_psxequities_totalview_glimpse_v3_2.requested_session.size = 10

-- Display: Requested Session
nasdaq_psxequities_totalview_glimpse_v3_2.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_psxequities_totalview_glimpse_v3_2.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.requested_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_glimpse_v3_2.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved 1
nasdaq_psxequities_totalview_glimpse_v3_2.reserved_1 = {}

-- Size: Reserved 1
nasdaq_psxequities_totalview_glimpse_v3_2.reserved_1.size = 1

-- Display: Reserved 1
nasdaq_psxequities_totalview_glimpse_v3_2.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nasdaq_psxequities_totalview_glimpse_v3_2.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v3_2.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_psxequities_totalview_glimpse_v3_2.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_psxequities_totalview_glimpse_v3_2.round_lot_size.size = 6

-- Display: Round Lot Size
nasdaq_psxequities_totalview_glimpse_v3_2.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_psxequities_totalview_glimpse_v3_2.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.round_lot_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_psxequities_totalview_glimpse_v3_2.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Round Lots Only
nasdaq_psxequities_totalview_glimpse_v3_2.round_lots_only = {}

-- Size: Round Lots Only
nasdaq_psxequities_totalview_glimpse_v3_2.round_lots_only.size = 1

-- Display: Round Lots Only
nasdaq_psxequities_totalview_glimpse_v3_2.round_lots_only.display = function(value)
  if value == "Y" then
    return "Round Lots Only: Only Round Lots Are Accepted (Y)"
  end
  if value == "N" then
    return "Round Lots Only: Odd And Mixed Lots Are Allowed (N)"
  end

  return "Round Lots Only: Unknown("..value..")"
end

-- Dissect: Round Lots Only
nasdaq_psxequities_totalview_glimpse_v3_2.round_lots_only.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.round_lots_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v3_2.round_lots_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.round_lots_only, range, value, display)

  return offset + length, value
end

-- Second
nasdaq_psxequities_totalview_glimpse_v3_2.second = {}

-- Size: Second
nasdaq_psxequities_totalview_glimpse_v3_2.second.size = 5

-- Display: Second
nasdaq_psxequities_totalview_glimpse_v3_2.second.display = function(value)
  return "Second: "..value
end

-- Dissect: Second
nasdaq_psxequities_totalview_glimpse_v3_2.second.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.second.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_psxequities_totalview_glimpse_v3_2.second.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.second, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_psxequities_totalview_glimpse_v3_2.sequence_number = {}

-- Size: Sequence Number
nasdaq_psxequities_totalview_glimpse_v3_2.sequence_number.size = 20

-- Display: Sequence Number
nasdaq_psxequities_totalview_glimpse_v3_2.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_psxequities_totalview_glimpse_v3_2.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.sequence_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_glimpse_v3_2.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Server Packet Type
nasdaq_psxequities_totalview_glimpse_v3_2.server_packet_type = {}

-- Size: Server Packet Type
nasdaq_psxequities_totalview_glimpse_v3_2.server_packet_type.size = 1

-- Display: Server Packet Type
nasdaq_psxequities_totalview_glimpse_v3_2.server_packet_type.display = function(value)
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
nasdaq_psxequities_totalview_glimpse_v3_2.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v3_2.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_psxequities_totalview_glimpse_v3_2.session = {}

-- Size: Session
nasdaq_psxequities_totalview_glimpse_v3_2.session.size = 10

-- Display: Session
nasdaq_psxequities_totalview_glimpse_v3_2.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
nasdaq_psxequities_totalview_glimpse_v3_2.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_glimpse_v3_2.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.session, range, value, display)

  return offset + length, value
end

-- Shares
nasdaq_psxequities_totalview_glimpse_v3_2.shares = {}

-- Size: Shares
nasdaq_psxequities_totalview_glimpse_v3_2.shares.size = 6

-- Display: Shares
nasdaq_psxequities_totalview_glimpse_v3_2.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
nasdaq_psxequities_totalview_glimpse_v3_2.shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_psxequities_totalview_glimpse_v3_2.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.shares, range, value, display)

  return offset + length, value
end

-- Soup Lf
nasdaq_psxequities_totalview_glimpse_v3_2.soup_lf = {}

-- Size: Soup Lf
nasdaq_psxequities_totalview_glimpse_v3_2.soup_lf.size = 1

-- Display: Soup Lf
nasdaq_psxequities_totalview_glimpse_v3_2.soup_lf.display = function(value)
  if value == 10 then
    return "Soup Lf: Line Feed"
  end

  return "Soup Lf: Unknown("..value..")"
end

-- Dissect: Soup Lf
nasdaq_psxequities_totalview_glimpse_v3_2.soup_lf.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.soup_lf.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_psxequities_totalview_glimpse_v3_2.soup_lf.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.soup_lf, range, value, display)

  return offset + length, value
end

-- Stock
nasdaq_psxequities_totalview_glimpse_v3_2.stock = {}

-- Size: Stock
nasdaq_psxequities_totalview_glimpse_v3_2.stock.size = 8

-- Display: Stock
nasdaq_psxequities_totalview_glimpse_v3_2.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_psxequities_totalview_glimpse_v3_2.stock.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_glimpse_v3_2.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.stock, range, value, display)

  return offset + length, value
end

-- Text
nasdaq_psxequities_totalview_glimpse_v3_2.text = {}

-- Size: Text
nasdaq_psxequities_totalview_glimpse_v3_2.text.size = 1

-- Display: Text
nasdaq_psxequities_totalview_glimpse_v3_2.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
nasdaq_psxequities_totalview_glimpse_v3_2.text.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v3_2.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.text, range, value, display)

  return offset + length, value
end

-- Trading State
nasdaq_psxequities_totalview_glimpse_v3_2.trading_state = {}

-- Size: Trading State
nasdaq_psxequities_totalview_glimpse_v3_2.trading_state.size = 1

-- Display: Trading State
nasdaq_psxequities_totalview_glimpse_v3_2.trading_state.display = function(value)
  if value == "H" then
    return "Trading State: Halted Or Paused Across All Us Equity Markets (H)"
  end
  if value == "Q" then
    return "Trading State: Quotation Only Period (Q)"
  end
  if value == "T" then
    return "Trading State: Trading On Psx (T)"
  end

  return "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
nasdaq_psxequities_totalview_glimpse_v3_2.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_glimpse_v3_2.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
nasdaq_psxequities_totalview_glimpse_v3_2.unsequenced_message = {}

-- Size: Unsequenced Message
nasdaq_psxequities_totalview_glimpse_v3_2.unsequenced_message.size = 0

-- Display: Unsequenced Message
nasdaq_psxequities_totalview_glimpse_v3_2.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect: Unsequenced Message
nasdaq_psxequities_totalview_glimpse_v3_2.unsequenced_message.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.unsequenced_message.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_psxequities_totalview_glimpse_v3_2.unsequenced_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.unsequenced_message, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_psxequities_totalview_glimpse_v3_2.username = {}

-- Size: Username
nasdaq_psxequities_totalview_glimpse_v3_2.username.size = 6

-- Display: Username
nasdaq_psxequities_totalview_glimpse_v3_2.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_psxequities_totalview_glimpse_v3_2.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_glimpse_v3_2.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_glimpse_v3_2.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq PsxEquities TotalView Glimpse 3.2
-----------------------------------------------------------------------

-- End Of Snapshot Message
nasdaq_psxequities_totalview_glimpse_v3_2.end_of_snapshot_message = {}

-- Size: End Of Snapshot Message
nasdaq_psxequities_totalview_glimpse_v3_2.end_of_snapshot_message.size =
  nasdaq_psxequities_totalview_glimpse_v3_2.itch_sequence_number.size

-- Display: End Of Snapshot Message
nasdaq_psxequities_totalview_glimpse_v3_2.end_of_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Snapshot Message
nasdaq_psxequities_totalview_glimpse_v3_2.end_of_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Itch Sequence Number: Numeric
  index, itch_sequence_number = nasdaq_psxequities_totalview_glimpse_v3_2.itch_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Snapshot Message
nasdaq_psxequities_totalview_glimpse_v3_2.end_of_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.end_of_snapshot_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v3_2.end_of_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v3_2.end_of_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v3_2.end_of_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Reg Sho Restriction Message
nasdaq_psxequities_totalview_glimpse_v3_2.reg_sho_restriction_message = {}

-- Size: Reg Sho Restriction Message
nasdaq_psxequities_totalview_glimpse_v3_2.reg_sho_restriction_message.size =
  nasdaq_psxequities_totalview_glimpse_v3_2.stock.size + 
  nasdaq_psxequities_totalview_glimpse_v3_2.reg_sho_action.size

-- Display: Reg Sho Restriction Message
nasdaq_psxequities_totalview_glimpse_v3_2.reg_sho_restriction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Restriction Message
nasdaq_psxequities_totalview_glimpse_v3_2.reg_sho_restriction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_totalview_glimpse_v3_2.stock.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: Alpha
  index, reg_sho_action = nasdaq_psxequities_totalview_glimpse_v3_2.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Restriction Message
nasdaq_psxequities_totalview_glimpse_v3_2.reg_sho_restriction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.reg_sho_restriction_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v3_2.reg_sho_restriction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v3_2.reg_sho_restriction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v3_2.reg_sho_restriction_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Trading Action Message
nasdaq_psxequities_totalview_glimpse_v3_2.stock_trading_action_message = {}

-- Size: Stock Trading Action Message
nasdaq_psxequities_totalview_glimpse_v3_2.stock_trading_action_message.size =
  nasdaq_psxequities_totalview_glimpse_v3_2.stock.size + 
  nasdaq_psxequities_totalview_glimpse_v3_2.trading_state.size + 
  nasdaq_psxequities_totalview_glimpse_v3_2.reserved_1.size + 
  nasdaq_psxequities_totalview_glimpse_v3_2.reason.size

-- Display: Stock Trading Action Message
nasdaq_psxequities_totalview_glimpse_v3_2.stock_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Trading Action Message
nasdaq_psxequities_totalview_glimpse_v3_2.stock_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_totalview_glimpse_v3_2.stock.dissect(buffer, index, packet, parent)

  -- Trading State: Alphabetic
  index, trading_state = nasdaq_psxequities_totalview_glimpse_v3_2.trading_state.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alphanumeric
  index, reserved_1 = nasdaq_psxequities_totalview_glimpse_v3_2.reserved_1.dissect(buffer, index, packet, parent)

  -- Reason: Alphanumeric
  index, reason = nasdaq_psxequities_totalview_glimpse_v3_2.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Trading Action Message
nasdaq_psxequities_totalview_glimpse_v3_2.stock_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.stock_trading_action_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v3_2.stock_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v3_2.stock_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v3_2.stock_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Directory Message
nasdaq_psxequities_totalview_glimpse_v3_2.stock_directory_message = {}

-- Size: Stock Directory Message
nasdaq_psxequities_totalview_glimpse_v3_2.stock_directory_message.size =
  nasdaq_psxequities_totalview_glimpse_v3_2.stock.size + 
  nasdaq_psxequities_totalview_glimpse_v3_2.market_category.size + 
  nasdaq_psxequities_totalview_glimpse_v3_2.financial_status_indicator.size + 
  nasdaq_psxequities_totalview_glimpse_v3_2.round_lot_size.size + 
  nasdaq_psxequities_totalview_glimpse_v3_2.round_lots_only.size

-- Display: Stock Directory Message
nasdaq_psxequities_totalview_glimpse_v3_2.stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
nasdaq_psxequities_totalview_glimpse_v3_2.stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_totalview_glimpse_v3_2.stock.dissect(buffer, index, packet, parent)

  -- Market Category: Alphanumeric
  index, market_category = nasdaq_psxequities_totalview_glimpse_v3_2.market_category.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Alphanumeric
  index, financial_status_indicator = nasdaq_psxequities_totalview_glimpse_v3_2.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Numeric
  index, round_lot_size = nasdaq_psxequities_totalview_glimpse_v3_2.round_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lots Only: Alphabetic
  index, round_lots_only = nasdaq_psxequities_totalview_glimpse_v3_2.round_lots_only.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
nasdaq_psxequities_totalview_glimpse_v3_2.stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.stock_directory_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v3_2.stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v3_2.stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v3_2.stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Mpid Attribution Message
nasdaq_psxequities_totalview_glimpse_v3_2.add_order_mpid_attribution_message = {}

-- Size: Add Order Mpid Attribution Message
nasdaq_psxequities_totalview_glimpse_v3_2.add_order_mpid_attribution_message.size =
  nasdaq_psxequities_totalview_glimpse_v3_2.order_reference_number.size + 
  nasdaq_psxequities_totalview_glimpse_v3_2.buy_sell_indicator.size + 
  nasdaq_psxequities_totalview_glimpse_v3_2.shares.size + 
  nasdaq_psxequities_totalview_glimpse_v3_2.stock.size + 
  nasdaq_psxequities_totalview_glimpse_v3_2.price.size + 
  nasdaq_psxequities_totalview_glimpse_v3_2.attribution.size

-- Display: Add Order Mpid Attribution Message
nasdaq_psxequities_totalview_glimpse_v3_2.add_order_mpid_attribution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Mpid Attribution Message
nasdaq_psxequities_totalview_glimpse_v3_2.add_order_mpid_attribution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Reference Number: Numeric
  index, order_reference_number = nasdaq_psxequities_totalview_glimpse_v3_2.order_reference_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = nasdaq_psxequities_totalview_glimpse_v3_2.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: Numeric
  index, shares = nasdaq_psxequities_totalview_glimpse_v3_2.shares.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_totalview_glimpse_v3_2.stock.dissect(buffer, index, packet, parent)

  -- Price: Numeric
  index, price = nasdaq_psxequities_totalview_glimpse_v3_2.price.dissect(buffer, index, packet, parent)

  -- Attribution: Alpha
  index, attribution = nasdaq_psxequities_totalview_glimpse_v3_2.attribution.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Mpid Attribution Message
nasdaq_psxequities_totalview_glimpse_v3_2.add_order_mpid_attribution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.add_order_mpid_attribution_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v3_2.add_order_mpid_attribution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v3_2.add_order_mpid_attribution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v3_2.add_order_mpid_attribution_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
nasdaq_psxequities_totalview_glimpse_v3_2.add_order_message = {}

-- Size: Add Order Message
nasdaq_psxequities_totalview_glimpse_v3_2.add_order_message.size =
  nasdaq_psxequities_totalview_glimpse_v3_2.order_reference_number.size + 
  nasdaq_psxequities_totalview_glimpse_v3_2.buy_sell_indicator.size + 
  nasdaq_psxequities_totalview_glimpse_v3_2.shares.size + 
  nasdaq_psxequities_totalview_glimpse_v3_2.stock.size + 
  nasdaq_psxequities_totalview_glimpse_v3_2.price.size

-- Display: Add Order Message
nasdaq_psxequities_totalview_glimpse_v3_2.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
nasdaq_psxequities_totalview_glimpse_v3_2.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Reference Number: Numeric
  index, order_reference_number = nasdaq_psxequities_totalview_glimpse_v3_2.order_reference_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = nasdaq_psxequities_totalview_glimpse_v3_2.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: Numeric
  index, shares = nasdaq_psxequities_totalview_glimpse_v3_2.shares.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_totalview_glimpse_v3_2.stock.dissect(buffer, index, packet, parent)

  -- Price: Numeric
  index, price = nasdaq_psxequities_totalview_glimpse_v3_2.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
nasdaq_psxequities_totalview_glimpse_v3_2.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.add_order_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v3_2.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v3_2.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v3_2.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_psxequities_totalview_glimpse_v3_2.system_event_message = {}

-- Size: System Event Message
nasdaq_psxequities_totalview_glimpse_v3_2.system_event_message.size =
  nasdaq_psxequities_totalview_glimpse_v3_2.event_code.size

-- Display: System Event Message
nasdaq_psxequities_totalview_glimpse_v3_2.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_psxequities_totalview_glimpse_v3_2.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Code: Alpha
  index, event_code = nasdaq_psxequities_totalview_glimpse_v3_2.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_psxequities_totalview_glimpse_v3_2.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v3_2.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v3_2.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v3_2.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Milliseconds Message
nasdaq_psxequities_totalview_glimpse_v3_2.milliseconds_message = {}

-- Size: Milliseconds Message
nasdaq_psxequities_totalview_glimpse_v3_2.milliseconds_message.size =
  nasdaq_psxequities_totalview_glimpse_v3_2.millisecond.size

-- Display: Milliseconds Message
nasdaq_psxequities_totalview_glimpse_v3_2.milliseconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Milliseconds Message
nasdaq_psxequities_totalview_glimpse_v3_2.milliseconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Millisecond: Numeric
  index, millisecond = nasdaq_psxequities_totalview_glimpse_v3_2.millisecond.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Milliseconds Message
nasdaq_psxequities_totalview_glimpse_v3_2.milliseconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.milliseconds_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v3_2.milliseconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v3_2.milliseconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v3_2.milliseconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Seconds Message
nasdaq_psxequities_totalview_glimpse_v3_2.seconds_message = {}

-- Size: Seconds Message
nasdaq_psxequities_totalview_glimpse_v3_2.seconds_message.size =
  nasdaq_psxequities_totalview_glimpse_v3_2.second.size

-- Display: Seconds Message
nasdaq_psxequities_totalview_glimpse_v3_2.seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seconds Message
nasdaq_psxequities_totalview_glimpse_v3_2.seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: Numeric
  index, second = nasdaq_psxequities_totalview_glimpse_v3_2.second.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Seconds Message
nasdaq_psxequities_totalview_glimpse_v3_2.seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.seconds_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v3_2.seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v3_2.seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v3_2.seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nasdaq_psxequities_totalview_glimpse_v3_2.sequenced_message = {}

-- Dissect: Sequenced Message
nasdaq_psxequities_totalview_glimpse_v3_2.sequenced_message.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Seconds Message
  if message_type == "T" then
    return nasdaq_psxequities_totalview_glimpse_v3_2.seconds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Milliseconds Message
  if message_type == "M" then
    return nasdaq_psxequities_totalview_glimpse_v3_2.milliseconds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_psxequities_totalview_glimpse_v3_2.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == "A" then
    return nasdaq_psxequities_totalview_glimpse_v3_2.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Mpid Attribution Message
  if message_type == "F" then
    return nasdaq_psxequities_totalview_glimpse_v3_2.add_order_mpid_attribution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if message_type == "R" then
    return nasdaq_psxequities_totalview_glimpse_v3_2.stock_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Trading Action Message
  if message_type == "H" then
    return nasdaq_psxequities_totalview_glimpse_v3_2.stock_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Restriction Message
  if message_type == "Y" then
    return nasdaq_psxequities_totalview_glimpse_v3_2.reg_sho_restriction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Snapshot Message
  if message_type == "G" then
    return nasdaq_psxequities_totalview_glimpse_v3_2.end_of_snapshot_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Message Header
nasdaq_psxequities_totalview_glimpse_v3_2.sequenced_message_header = {}

-- Size: Sequenced Message Header
nasdaq_psxequities_totalview_glimpse_v3_2.sequenced_message_header.size =
  nasdaq_psxequities_totalview_glimpse_v3_2.message_type.size

-- Display: Sequenced Message Header
nasdaq_psxequities_totalview_glimpse_v3_2.sequenced_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message Header
nasdaq_psxequities_totalview_glimpse_v3_2.sequenced_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 9 values
  index, message_type = nasdaq_psxequities_totalview_glimpse_v3_2.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Message Header
nasdaq_psxequities_totalview_glimpse_v3_2.sequenced_message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.sequenced_message_header, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v3_2.sequenced_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v3_2.sequenced_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v3_2.sequenced_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Data Packet
nasdaq_psxequities_totalview_glimpse_v3_2.sequenced_data_packet = {}

-- Calculate size of: Sequenced Data Packet
nasdaq_psxequities_totalview_glimpse_v3_2.sequenced_data_packet.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_totalview_glimpse_v3_2.sequenced_message_header.size

  -- Calculate runtime size of Sequenced Message field
  local sequenced_message_offset = offset + index
  local sequenced_message_type = buffer(sequenced_message_offset - 1, 1):string()
  index = index + nasdaq_psxequities_totalview_glimpse_v3_2.sequenced_message.size(buffer, sequenced_message_offset, sequenced_message_type)

  return index
end

-- Display: Sequenced Data Packet
nasdaq_psxequities_totalview_glimpse_v3_2.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_psxequities_totalview_glimpse_v3_2.sequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequenced Message Header: Struct of 1 fields
  index, sequenced_message_header = nasdaq_psxequities_totalview_glimpse_v3_2.sequenced_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Sequenced Message: Runtime Type with 9 branches
  index = nasdaq_psxequities_totalview_glimpse_v3_2.sequenced_message.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_psxequities_totalview_glimpse_v3_2.sequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.sequenced_data_packet, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v3_2.sequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v3_2.sequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v3_2.sequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Rejected Packet
nasdaq_psxequities_totalview_glimpse_v3_2.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_psxequities_totalview_glimpse_v3_2.login_rejected_packet.size =
  nasdaq_psxequities_totalview_glimpse_v3_2.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_psxequities_totalview_glimpse_v3_2.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_psxequities_totalview_glimpse_v3_2.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = nasdaq_psxequities_totalview_glimpse_v3_2.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_psxequities_totalview_glimpse_v3_2.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v3_2.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v3_2.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v3_2.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_psxequities_totalview_glimpse_v3_2.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_psxequities_totalview_glimpse_v3_2.login_accepted_packet.size =
  nasdaq_psxequities_totalview_glimpse_v3_2.session.size + 
  nasdaq_psxequities_totalview_glimpse_v3_2.sequence_number.size

-- Display: Login Accepted Packet
nasdaq_psxequities_totalview_glimpse_v3_2.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_psxequities_totalview_glimpse_v3_2.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_psxequities_totalview_glimpse_v3_2.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 20 Byte Ascii String
  index, sequence_number = nasdaq_psxequities_totalview_glimpse_v3_2.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_psxequities_totalview_glimpse_v3_2.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v3_2.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v3_2.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v3_2.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_psxequities_totalview_glimpse_v3_2.debug_packet = {}

-- Size: Debug Packet
nasdaq_psxequities_totalview_glimpse_v3_2.debug_packet.size =
  nasdaq_psxequities_totalview_glimpse_v3_2.text.size

-- Display: Debug Packet
nasdaq_psxequities_totalview_glimpse_v3_2.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_psxequities_totalview_glimpse_v3_2.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = nasdaq_psxequities_totalview_glimpse_v3_2.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
nasdaq_psxequities_totalview_glimpse_v3_2.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v3_2.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v3_2.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v3_2.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
nasdaq_psxequities_totalview_glimpse_v3_2.server_payload = {}

-- Dissect: Server Payload
nasdaq_psxequities_totalview_glimpse_v3_2.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  -- Dissect Debug Packet
  if server_packet_type == "+" then
    return nasdaq_psxequities_totalview_glimpse_v3_2.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if server_packet_type == "A" then
    return nasdaq_psxequities_totalview_glimpse_v3_2.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if server_packet_type == "J" then
    return nasdaq_psxequities_totalview_glimpse_v3_2.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if server_packet_type == "S" then
    return nasdaq_psxequities_totalview_glimpse_v3_2.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
nasdaq_psxequities_totalview_glimpse_v3_2.server_packet_header = {}

-- Size: Server Packet Header
nasdaq_psxequities_totalview_glimpse_v3_2.server_packet_header.size =
  nasdaq_psxequities_totalview_glimpse_v3_2.server_packet_type.size

-- Display: Server Packet Header
nasdaq_psxequities_totalview_glimpse_v3_2.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
nasdaq_psxequities_totalview_glimpse_v3_2.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Server Packet Type: 1 Byte Ascii String Enum with 5 values
  index, server_packet_type = nasdaq_psxequities_totalview_glimpse_v3_2.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
nasdaq_psxequities_totalview_glimpse_v3_2.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.server_packet_header, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v3_2.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v3_2.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v3_2.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Packet
nasdaq_psxequities_totalview_glimpse_v3_2.server_packet = {}

-- Verify required size of Tcp packet
nasdaq_psxequities_totalview_glimpse_v3_2.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_psxequities_totalview_glimpse_v3_2.server_packet_header.size
end

-- Dissect Server Packet
nasdaq_psxequities_totalview_glimpse_v3_2.server_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Server Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Server Packet Header: Struct of 1 fields
    index, server_packet_header = nasdaq_psxequities_totalview_glimpse_v3_2.server_packet_header.dissect(buffer, index, packet, parent)

    -- Dependency element: Server Packet Type
    local server_packet_type = buffer(index - 1, 1):string()

    -- Server Payload: Runtime Type with 4 branches
    index = nasdaq_psxequities_totalview_glimpse_v3_2.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

    -- Soup Lf: 1 Byte Fixed Width Integer Static
    index, soup_lf = nasdaq_psxequities_totalview_glimpse_v3_2.soup_lf.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Unsequenced Data Packet
nasdaq_psxequities_totalview_glimpse_v3_2.unsequenced_data_packet = {}

-- Size: Unsequenced Data Packet
nasdaq_psxequities_totalview_glimpse_v3_2.unsequenced_data_packet.size =
  nasdaq_psxequities_totalview_glimpse_v3_2.unsequenced_message.size

-- Display: Unsequenced Data Packet
nasdaq_psxequities_totalview_glimpse_v3_2.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_psxequities_totalview_glimpse_v3_2.unsequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = nasdaq_psxequities_totalview_glimpse_v3_2.unsequenced_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_psxequities_totalview_glimpse_v3_2.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.unsequenced_data_packet, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v3_2.unsequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v3_2.unsequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v3_2.unsequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Packet
nasdaq_psxequities_totalview_glimpse_v3_2.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_psxequities_totalview_glimpse_v3_2.login_request_packet.size =
  nasdaq_psxequities_totalview_glimpse_v3_2.username.size + 
  nasdaq_psxequities_totalview_glimpse_v3_2.password.size + 
  nasdaq_psxequities_totalview_glimpse_v3_2.requested_session.size + 
  nasdaq_psxequities_totalview_glimpse_v3_2.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_psxequities_totalview_glimpse_v3_2.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_psxequities_totalview_glimpse_v3_2.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_psxequities_totalview_glimpse_v3_2.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_psxequities_totalview_glimpse_v3_2.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_psxequities_totalview_glimpse_v3_2.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_psxequities_totalview_glimpse_v3_2.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_psxequities_totalview_glimpse_v3_2.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v3_2.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v3_2.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v3_2.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
nasdaq_psxequities_totalview_glimpse_v3_2.client_payload = {}

-- Dissect: Client Payload
nasdaq_psxequities_totalview_glimpse_v3_2.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  -- Dissect Debug Packet
  if client_packet_type == "+" then
    return nasdaq_psxequities_totalview_glimpse_v3_2.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if client_packet_type == "L" then
    return nasdaq_psxequities_totalview_glimpse_v3_2.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if client_packet_type == "U" then
    return nasdaq_psxequities_totalview_glimpse_v3_2.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
nasdaq_psxequities_totalview_glimpse_v3_2.client_packet_header = {}

-- Size: Client Packet Header
nasdaq_psxequities_totalview_glimpse_v3_2.client_packet_header.size =
  nasdaq_psxequities_totalview_glimpse_v3_2.client_packet_type.size

-- Display: Client Packet Header
nasdaq_psxequities_totalview_glimpse_v3_2.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
nasdaq_psxequities_totalview_glimpse_v3_2.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = nasdaq_psxequities_totalview_glimpse_v3_2.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
nasdaq_psxequities_totalview_glimpse_v3_2.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2.fields.client_packet_header, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_glimpse_v3_2.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_glimpse_v3_2.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_glimpse_v3_2.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Packet
nasdaq_psxequities_totalview_glimpse_v3_2.client_packet = {}

-- Verify required size of Tcp packet
nasdaq_psxequities_totalview_glimpse_v3_2.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_psxequities_totalview_glimpse_v3_2.client_packet_header.size
end

-- Dissect Client Packet
nasdaq_psxequities_totalview_glimpse_v3_2.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Client Packet Header: Struct of 1 fields
    index, client_packet_header = nasdaq_psxequities_totalview_glimpse_v3_2.client_packet_header.dissect(buffer, index, packet, parent)

    -- Dependency element: Client Packet Type
    local client_packet_type = buffer(index - 1, 1):string()

    -- Client Payload: Runtime Type with 3 branches
    index = nasdaq_psxequities_totalview_glimpse_v3_2.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

    -- Soup Lf: 1 Byte Fixed Width Integer Static
    index, soup_lf = nasdaq_psxequities_totalview_glimpse_v3_2.soup_lf.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_psxequities_totalview_glimpse_v3_2.init()
end

-- Connection roles for Nasdaq PsxEquities TotalView Glimpse 3.2: Client is the initiator, Server is the acceptor
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
nasdaq_psxequities_totalview_glimpse_v3_2.role = function(packet)
  if omi_nasdaq_psxequities_totalview_glimpse_v3_2.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nasdaq_psxequities_totalview_glimpse_v3_2.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nasdaq_psxequities_totalview_glimpse_v3_2.prefs.acceptor_port

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

  if omi_nasdaq_psxequities_totalview_glimpse_v3_2.prefs.swap_sides then
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
nasdaq_psxequities_totalview_glimpse_v3_2.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nasdaq PsxEquities TotalView Glimpse 3.2
function omi_nasdaq_psxequities_totalview_glimpse_v3_2.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_psxequities_totalview_glimpse_v3_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_psxequities_totalview_glimpse_v3_2, buffer(), omi_nasdaq_psxequities_totalview_glimpse_v3_2.description, "("..buffer:len().." Bytes)")

  local role = nasdaq_psxequities_totalview_glimpse_v3_2.role(packet)

  if role == "initiator" then
    return nasdaq_psxequities_totalview_glimpse_v3_2.client_packet.dissect(buffer, packet, protocol)
  end

  return nasdaq_psxequities_totalview_glimpse_v3_2.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nasdaq_psxequities_totalview_glimpse_v3_2.client_packet.fingerprint = function(buffer)
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

  -- Unsequenced Data Packet
  if client_packet_type == "U" then
    return true
  end

  return false
end

-- Fingerprint of Server Packet: would its message dispatch accept this frame?
nasdaq_psxequities_totalview_glimpse_v3_2.server_packet.fingerprint = function(buffer)
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
    if buffer:len() < 2 then
      return false
    end

    local message_type = buffer(1, 1):string()

    -- Seconds Message
    if message_type == "T" then
      return true
    end

    -- Milliseconds Message
    if message_type == "M" then
      return true
    end

    -- System Event Message
    if message_type == "S" then
      return true
    end

    -- Add Order Message
    if message_type == "A" then
      return true
    end

    -- Add Order Mpid Attribution Message
    if message_type == "F" then
      return true
    end

    -- Stock Directory Message
    if message_type == "R" then
      return true
    end

    -- Stock Trading Action Message
    if message_type == "H" then
      return true
    end

    -- Reg Sho Restriction Message
    if message_type == "Y" then
      return true
    end

    -- End Of Snapshot Message
    if message_type == "G" then
      return true
    end

    return false
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq PsxEquities TotalView Glimpse 3.2 (Tcp)
local function omi_nasdaq_psxequities_totalview_glimpse_v3_2_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_psxequities_totalview_glimpse_v3_2.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_psxequities_totalview_glimpse_v3_2.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_psxequities_totalview_glimpse_v3_2
  omi_nasdaq_psxequities_totalview_glimpse_v3_2.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq PsxEquities TotalView Glimpse 3.2 (Tcp)
local function omi_nasdaq_psxequities_totalview_glimpse_v3_2_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_psxequities_totalview_glimpse_v3_2.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_psxequities_totalview_glimpse_v3_2.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_psxequities_totalview_glimpse_v3_2
  omi_nasdaq_psxequities_totalview_glimpse_v3_2.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq PsxEquities TotalView Glimpse 3.2 (Tcp): apply the heuristic of the sender's connection role
local function omi_nasdaq_psxequities_totalview_glimpse_v3_2_tcp_heuristic(buffer, packet, parent)
  local role = nasdaq_psxequities_totalview_glimpse_v3_2.role(packet)
  local initiator = omi_nasdaq_psxequities_totalview_glimpse_v3_2_tcp_initiator_heuristic
  local acceptor = omi_nasdaq_psxequities_totalview_glimpse_v3_2_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nasdaq_psxequities_totalview_glimpse_v3_2.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nasdaq_psxequities_totalview_glimpse_v3_2.swap(packet)

  return false
end

-- Register Heuristics for Nasdaq PsxEquities TotalView Glimpse 3.2
omi_nasdaq_psxequities_totalview_glimpse_v3_2:register_heuristic("tcp", omi_nasdaq_psxequities_totalview_glimpse_v3_2_tcp_heuristic)

-- Register Nasdaq PsxEquities TotalView Glimpse 3.2 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nasdaq_psxequities_totalview_glimpse_v3_2)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 3.2
--   Date: Tuesday, January 8, 2013
--   Specification: PSXGLIMPSE-V3_2.pdf
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
