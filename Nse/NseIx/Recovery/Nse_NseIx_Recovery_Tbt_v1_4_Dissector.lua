-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nse NseIx Recovery Tbt 1.4 Protocol
local omi_nse_nseix_recovery_tbt_v1_4 = Proto("Omi.Nse.NseIx.Recovery.Tbt.v1.4", "Nse NseIx Recovery Tbt 1.4")

-- Protocol table
local nse_nseix_recovery_tbt_v1_4 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nse NseIx Recovery Tbt 1.4 Fields
omi_nse_nseix_recovery_tbt_v1_4.fields.buy_order_id = ProtoField.new("Buy Order Id", "nse.nseix.recovery.tbt.v1.4.buyorderid", ftypes.DOUBLE, nil, nil, nil, "Day Unique Order Reference Number for Buy-Side Order")
omi_nse_nseix_recovery_tbt_v1_4.fields.client_message_type = ProtoField.new("Client Message Type", "nse.nseix.recovery.tbt.v1.4.clientmessagetype", ftypes.STRING, nil, nil, nil, "cMsgType. Code identifying message type [1, Char]")
omi_nse_nseix_recovery_tbt_v1_4.fields.end_sequence_number = ProtoField.new("End Sequence Number", "nse.nseix.recovery.tbt.v1.4.endsequencenumber", ftypes.INT32, nil, nil, nil, "Requested Message Sequence Number")
omi_nse_nseix_recovery_tbt_v1_4.fields.identifier = ProtoField.new("Identifier", "nse.nseix.recovery.tbt.v1.4.identifier", ftypes.STRING, nil, nil, nil, "Whether the open price or the close price is being determined: 'O' Indicative open price, 'C' Indicative close price")
omi_nse_nseix_recovery_tbt_v1_4.fields.indicative_price = ProtoField.new("Indicative Price", "nse.nseix.recovery.tbt.v1.4.indicativeprice", ftypes.DOUBLE, nil, nil, nil, "Indicative open or close price, in multiples of the tick size; divided by 10000 for converting into USD")
omi_nse_nseix_recovery_tbt_v1_4.fields.indicative_quantity = ProtoField.new("Indicative Quantity", "nse.nseix.recovery.tbt.v1.4.indicativequantity", ftypes.INT32, nil, nil, nil, "Indicative equilibrium quantity which shall be traded at the indicative open or close price")
omi_nse_nseix_recovery_tbt_v1_4.fields.instrument = ProtoField.new("Instrument", "nse.nseix.recovery.tbt.v1.4.instrument", ftypes.STRING, nil, nil, nil, "Name of the instrument for which the status change message is being sent, e.g. FUTIDX, OPTIDX")
omi_nse_nseix_recovery_tbt_v1_4.fields.last_sequence_no = ProtoField.new("Last Sequence No", "nse.nseix.recovery.tbt.v1.4.lastsequenceno", ftypes.INT32, nil, nil, nil, "Last sent data sequence no. of the Stream")
omi_nse_nseix_recovery_tbt_v1_4.fields.message_length = ProtoField.new("Message Length", "nse.nseix.recovery.tbt.v1.4.messagelength", ftypes.INT16, nil, nil, nil, "Total size of the packet including Stream Header and Stream Data [2, Short]")
omi_nse_nseix_recovery_tbt_v1_4.fields.message_type = ProtoField.new("Message Type", "nse.nseix.recovery.tbt.v1.4.messagetype", ftypes.STRING, nil, nil, nil, "cMsgType. Code identifying message type [1, Char]")
omi_nse_nseix_recovery_tbt_v1_4.fields.order_id = ProtoField.new("Order Id", "nse.nseix.recovery.tbt.v1.4.orderid", ftypes.DOUBLE, nil, nil, nil, "Day Unique Order Reference Number")
omi_nse_nseix_recovery_tbt_v1_4.fields.order_type = ProtoField.new("Order Type", "nse.nseix.recovery.tbt.v1.4.ordertype", ftypes.STRING, nil, nil, nil, "Order side: 'B' - Buy Order, 'S' - Sell Order")
omi_nse_nseix_recovery_tbt_v1_4.fields.price = ProtoField.new("Price", "nse.nseix.recovery.tbt.v1.4.price", ftypes.DOUBLE, nil, nil, nil, "Price of the order (In cents), in multiples of the tick size; divided by 10000 for converting into USD")
omi_nse_nseix_recovery_tbt_v1_4.fields.quantity = ProtoField.new("Quantity", "nse.nseix.recovery.tbt.v1.4.quantity", ftypes.INT32, nil, nil, nil, "Quantity of the order")
omi_nse_nseix_recovery_tbt_v1_4.fields.request_status = ProtoField.new("Request Status", "nse.nseix.recovery.tbt.v1.4.requeststatus", ftypes.STRING)
omi_nse_nseix_recovery_tbt_v1_4.fields.sell_order_id = ProtoField.new("Sell Order Id", "nse.nseix.recovery.tbt.v1.4.sellorderid", ftypes.DOUBLE, nil, nil, nil, "Day Unique Order Reference Number for Sell-Side Order")
omi_nse_nseix_recovery_tbt_v1_4.fields.sequence_number = ProtoField.new("Sequence Number", "nse.nseix.recovery.tbt.v1.4.sequencenumber", ftypes.UINT32, nil, nil, nil, "Sequence number of the packet for this Stream Id. For Equity Derivative (FO) segment, this field is unsigned int [4, Uint]")
omi_nse_nseix_recovery_tbt_v1_4.fields.session_indc = ProtoField.new("Session Indc", "nse.nseix.recovery.tbt.v1.4.sessionindc", ftypes.INT16, nil, nil, nil, "'1' T Session, '2' T+1 Session")
omi_nse_nseix_recovery_tbt_v1_4.fields.start_sequence_number = ProtoField.new("Start Sequence Number", "nse.nseix.recovery.tbt.v1.4.startsequencenumber", ftypes.INT32, nil, nil, nil, "Requested Message Sequence Number")
omi_nse_nseix_recovery_tbt_v1_4.fields.status = ProtoField.new("Status", "nse.nseix.recovery.tbt.v1.4.status", ftypes.INT16, nil, nil, nil, "'0' Preopen, '1' Open, '2' Closed, '3' Preopen-end, '4' PreClose, '5' PreClose-end")
omi_nse_nseix_recovery_tbt_v1_4.fields.stream_id = ProtoField.new("Stream Id", "nse.nseix.recovery.tbt.v1.4.streamid", ftypes.INT16, nil, nil, nil, "Unique Stream Reference")
omi_nse_nseix_recovery_tbt_v1_4.fields.timestamp = ProtoField.new("Timestamp", "nse.nseix.recovery.tbt.v1.4.timestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time in nanoseconds from 01-Jan-1980 00:00:00")
omi_nse_nseix_recovery_tbt_v1_4.fields.timestamp_utc = ProtoField.new("Timestamp", "nse.nseix.recovery.tbt.v1.4.timestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time in nanoseconds from 01-Jan-1980 00:00:00")
omi_nse_nseix_recovery_tbt_v1_4.fields.token = ProtoField.new("Token", "nse.nseix.recovery.tbt.v1.4.token", ftypes.INT32, nil, nil, nil, "Unique Contract Identifier")
omi_nse_nseix_recovery_tbt_v1_4.fields.trade_price = ProtoField.new("Trade Price", "nse.nseix.recovery.tbt.v1.4.tradeprice", ftypes.DOUBLE, nil, nil, nil, "Trade Price (In cents), at which the trade took place, in multiples of the tick size; divided by 10000 for converting into USD")
omi_nse_nseix_recovery_tbt_v1_4.fields.trade_quantity = ProtoField.new("Trade Quantity", "nse.nseix.recovery.tbt.v1.4.tradequantity", ftypes.INT32)

-- Nse NseIx Recovery Tbt 1.4 Framing
omi_nse_nseix_recovery_tbt_v1_4.fields.client_message = ProtoField.new("Client Message", "nse.nseix.recovery.tbt.v1.4.clientmessage", ftypes.STRING, nil, nil, nil, "Client request. First field is always Message Type and must be read/interpreted first.")
omi_nse_nseix_recovery_tbt_v1_4.fields.client_packet = ProtoField.new("Client Packet", "nse.nseix.recovery.tbt.v1.4.clientpacket", ftypes.STRING, nil, nil, nil, "Recovery request sent by the client. No header is required for this message.")
omi_nse_nseix_recovery_tbt_v1_4.fields.message = ProtoField.new("Message", "nse.nseix.recovery.tbt.v1.4.message", ftypes.STRING, nil, nil, nil, "STREAM_DATA. First field is always Message Type and must be read/interpreted first.")
omi_nse_nseix_recovery_tbt_v1_4.fields.packet = ProtoField.new("Packet", "nse.nseix.recovery.tbt.v1.4.packet", ftypes.STRING, nil, nil, nil, "Mtbt Tcp Recovery root. The stream carries Stream-Header framed packets back to back.")
omi_nse_nseix_recovery_tbt_v1_4.fields.stream_header = ProtoField.new("Stream Header", "nse.nseix.recovery.tbt.v1.4.streamheader", ftypes.STRING, nil, nil, nil, "STREAM_HEADER")
omi_nse_nseix_recovery_tbt_v1_4.fields.stream_packet = ProtoField.new("Stream Packet", "nse.nseix.recovery.tbt.v1.4.streampacket", ftypes.STRING, nil, nil, nil, "Mtbt Tcp Packet. One STREAM_DATA message per packet, same framing as the multicast feed.")

-- Nse NseIx Recovery 1.4 Application Messages
omi_nse_nseix_recovery_tbt_v1_4.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "nse.nseix.recovery.tbt.v1.4.heartbeatmessage", ftypes.STRING, nil, nil, nil, "Sent when there is no data available for a few seconds; the sequence number field in the Stream Header will have the value 0 (zero) (section 9).")
omi_nse_nseix_recovery_tbt_v1_4.fields.indicative_price_and_quantity_message = ProtoField.new("Indicative Price And Quantity Message", "nse.nseix.recovery.tbt.v1.4.indicativepriceandquantitymessage", ftypes.STRING, nil, nil, nil, "Indicative equilibrium price and quantity, sent for contracts with pre-open and pre-close sessions, only between the preopen or preclose and the preopen end or preclose end statuses, when the indicative price and quantity are determined or updated during order collection (section 6.6).")
omi_nse_nseix_recovery_tbt_v1_4.fields.market_status_message = ProtoField.new("Market Status Message", "nse.nseix.recovery.tbt.v1.4.marketstatusmessage", ftypes.STRING, nil, nil, nil, "Sent whenever the status of the market is changed to preopen, preopen-end, open, closed, preclose and preclose-end, for both T and T+1 sessions (section 6.5).")
omi_nse_nseix_recovery_tbt_v1_4.fields.new_order_message = ProtoField.new("New Order Message", "nse.nseix.recovery.tbt.v1.4.newordermessage", ftypes.STRING, nil, nil, nil, "Sent for every new order request, including the active orders (section 6.1).")
omi_nse_nseix_recovery_tbt_v1_4.fields.new_spread_order_message = ProtoField.new("New Spread Order Message", "nse.nseix.recovery.tbt.v1.4.newspreadordermessage", ftypes.STRING, nil, nil, nil, "Sent for every new spread order request, including the active orders (section 6.3).")
omi_nse_nseix_recovery_tbt_v1_4.fields.order_cancellation_message = ProtoField.new("Order Cancellation Message", "nse.nseix.recovery.tbt.v1.4.ordercancellationmessage", ftypes.STRING, nil, nil, nil, "Sent for every order cancellation request (section 6.1). When the original Order Id is not found, the message is ignored.")
omi_nse_nseix_recovery_tbt_v1_4.fields.order_modification_message = ProtoField.new("Order Modification Message", "nse.nseix.recovery.tbt.v1.4.ordermodificationmessage", ftypes.STRING, nil, nil, nil, "Sent for every order modification request (section 6.1). When the original Order Id is not found, the message is treated as a new order.")
omi_nse_nseix_recovery_tbt_v1_4.fields.spread_order_cancellation_message = ProtoField.new("Spread Order Cancellation Message", "nse.nseix.recovery.tbt.v1.4.spreadordercancellationmessage", ftypes.STRING, nil, nil, nil, "Sent for every spread order cancellation request (section 6.3).")
omi_nse_nseix_recovery_tbt_v1_4.fields.spread_order_modification_message = ProtoField.new("Spread Order Modification Message", "nse.nseix.recovery.tbt.v1.4.spreadordermodificationmessage", ftypes.STRING, nil, nil, nil, "Sent for every spread order modification request (section 6.3).")
omi_nse_nseix_recovery_tbt_v1_4.fields.spread_trade_message = ProtoField.new("Spread Trade Message", "nse.nseix.recovery.tbt.v1.4.spreadtrademessage", ftypes.STRING, nil, nil, nil, "Sent whenever a spread order in the order book gets executed fully or partially (section 6.4). Buy Order ID or Sell Order ID can be zero, in which case that Order ID should be ignored.")
omi_nse_nseix_recovery_tbt_v1_4.fields.tick_data_recovery_request_message = ProtoField.new("Tick Data Recovery Request Message", "nse.nseix.recovery.tbt.v1.4.tickdatarecoveryrequestmessage", ftypes.STRING, nil, nil, nil, "Sent to the Recovery Server on Tcp whenever tick data is missed, with no header; when only one tick is missed Start and End Sequence Number are the same.")
omi_nse_nseix_recovery_tbt_v1_4.fields.tick_data_recovery_response_message = ProtoField.new("Tick Data Recovery Response Message", "nse.nseix.recovery.tbt.v1.4.tickdatarecoveryresponsemessage", ftypes.STRING, nil, nil, nil, "First message sent by the Recovery Server, indicating whether the request was processed successfully; the Stream Header's sequence number is zero.")
omi_nse_nseix_recovery_tbt_v1_4.fields.trade_message = ProtoField.new("Trade Message", "nse.nseix.recovery.tbt.v1.4.trademessage", ftypes.STRING, nil, nil, nil, "Sent whenever an order in the order book gets executed fully or partially (section 6.2). Either Buy Order ID or Sell Order ID can be zero, in which case that Order ID should be ignored; both are never zero at the same time.")

-- Nse NseIx Recovery Tbt 1.4 Expert Info
nse_nseix_recovery_tbt_v1_4.experts = {}
nse_nseix_recovery_tbt_v1_4.experts.undecoded = ProtoExpert.new("nse.nseix.recovery.tbt.v1.4.undecoded", "Fields run past the size the wire gives them", expert.group.MALFORMED, expert.severity.ERROR)
omi_nse_nseix_recovery_tbt_v1_4.experts = { nse_nseix_recovery_tbt_v1_4.experts.undecoded }

-----------------------------------------------------------------------
-- Nse NseIx Recovery Tbt 1.4 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "DateTime Local", 2 },
  { 2, "DateTime Utc", 3 },
  { 3, "DateTime Asia/Kolkata", 4 }
}

-- 0=Raw, 1=Time of Day, 2=DateTime Local, 3=DateTime Utc, 4=DateTime Zone
nse_nseix_recovery_tbt_v1_4.timestamp_format = 2

-- Offset of the source's zone from utc in seconds, as the reader states it
nse_nseix_recovery_tbt_v1_4.zone_offset = 0

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

-- Nse NseIx Recovery Tbt 1.4 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true

-- Register Nse NseIx Recovery Tbt 1.4 Show Options
omi_nse_nseix_recovery_tbt_v1_4.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nse_nseix_recovery_tbt_v1_4.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nse_nseix_recovery_tbt_v1_4.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nse_nseix_recovery_tbt_v1_4.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nse_nseix_recovery_tbt_v1_4.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nse_nseix_recovery_tbt_v1_4.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

omi_nse_nseix_recovery_tbt_v1_4.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)
omi_nse_nseix_recovery_tbt_v1_4.prefs.zone_offset = Pref.string("Asia/Kolkata Utc Offset", "", "Offset of Asia/Kolkata from Utc, as +HH:MM. This protocol names that zone and not its offset: stated here, a time kept on its clock reads as an instant, and an instant reads on its clock")

-- Handle changed preferences
function omi_nse_nseix_recovery_tbt_v1_4.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nse_nseix_recovery_tbt_v1_4.prefs.show_application_messages then
    show.application_messages = omi_nse_nseix_recovery_tbt_v1_4.prefs.show_application_messages
  end
  if show.headers ~= omi_nse_nseix_recovery_tbt_v1_4.prefs.show_headers then
    show.headers = omi_nse_nseix_recovery_tbt_v1_4.prefs.show_headers
  end
  if show.structs ~= omi_nse_nseix_recovery_tbt_v1_4.prefs.show_structs then
    show.structs = omi_nse_nseix_recovery_tbt_v1_4.prefs.show_structs
  end
  if nse_nseix_recovery_tbt_v1_4.timestamp_format ~= omi_nse_nseix_recovery_tbt_v1_4.prefs.timestamp_format then
    nse_nseix_recovery_tbt_v1_4.timestamp_format = omi_nse_nseix_recovery_tbt_v1_4.prefs.timestamp_format
  end
  local sign, hours, minutes = string.match(omi_nse_nseix_recovery_tbt_v1_4.prefs.zone_offset, "^%s*([+-]?)(%d%d?):?(%d?%d?)%s*$")

  nse_nseix_recovery_tbt_v1_4.zone_offset = 0

  if hours then
    nse_nseix_recovery_tbt_v1_4.zone_offset = tonumber(hours) * 3600 + (tonumber(minutes) or 0) * 60
  end

  if sign == "-" then
    nse_nseix_recovery_tbt_v1_4.zone_offset = -nse_nseix_recovery_tbt_v1_4.zone_offset
  end
end


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------


-- Mark a sized group whose fields read past its end; raise any other failure as it was
local function undecoded(failure, parent, expert, text)
  if not string.find(tostring(failure), "Range is out of bounds", 1, true) then
    error(failure, 0)
  end

  parent:add_proto_expert_info(expert, text)
end
-----------------------------------------------------------------------
-- Nse NseIx Recovery Tbt 1.4 Fields
-----------------------------------------------------------------------

-- Buy Order Id
nse_nseix_recovery_tbt_v1_4.buy_order_id = {}

-- Size: Buy Order Id
nse_nseix_recovery_tbt_v1_4.buy_order_id.size = 8

-- Display: Buy Order Id
nse_nseix_recovery_tbt_v1_4.buy_order_id.display = function(value)
  return "Buy Order Id: "..string.format("%.0f", value)
end

-- Dissect: Buy Order Id
nse_nseix_recovery_tbt_v1_4.buy_order_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_recovery_tbt_v1_4.buy_order_id.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nse_nseix_recovery_tbt_v1_4.buy_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.buy_order_id, range, value, display)

  return offset + length, value
end

-- Client Message Type
nse_nseix_recovery_tbt_v1_4.client_message_type = {}

-- Size: Client Message Type
nse_nseix_recovery_tbt_v1_4.client_message_type.size = 1

-- Display: Client Message Type
nse_nseix_recovery_tbt_v1_4.client_message_type.labels = {
  ["R"] = "Client Message Type: Tick Data Recovery Request Message (R)",
}

nse_nseix_recovery_tbt_v1_4.client_message_type.display = function(value)
  return nse_nseix_recovery_tbt_v1_4.client_message_type.labels[value] or "Client Message Type: Unknown("..value..")"
end

-- Dissect: Client Message Type
nse_nseix_recovery_tbt_v1_4.client_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_recovery_tbt_v1_4.client_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_recovery_tbt_v1_4.client_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.client_message_type, range, value, display)

  return offset + length, value
end

-- End Sequence Number
nse_nseix_recovery_tbt_v1_4.end_sequence_number = {}

-- Size: End Sequence Number
nse_nseix_recovery_tbt_v1_4.end_sequence_number.size = 4

-- Display: End Sequence Number
nse_nseix_recovery_tbt_v1_4.end_sequence_number.display = function(value)
  return "End Sequence Number: "..value
end

-- Dissect: End Sequence Number
nse_nseix_recovery_tbt_v1_4.end_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_recovery_tbt_v1_4.end_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nseix_recovery_tbt_v1_4.end_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.end_sequence_number, range, value, display)

  return offset + length, value
end

-- Identifier
nse_nseix_recovery_tbt_v1_4.identifier = {}

-- Size: Identifier
nse_nseix_recovery_tbt_v1_4.identifier.size = 1

-- Display: Identifier
nse_nseix_recovery_tbt_v1_4.identifier.labels = {
  ["O"] = "Identifier: Indicative Open Price (O)",
  ["C"] = "Identifier: Indicative Close Price (C)",
}

nse_nseix_recovery_tbt_v1_4.identifier.display = function(value)
  return nse_nseix_recovery_tbt_v1_4.identifier.labels[value] or "Identifier: Unknown("..value..")"
end

-- Dissect: Identifier
nse_nseix_recovery_tbt_v1_4.identifier.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_recovery_tbt_v1_4.identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_recovery_tbt_v1_4.identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.identifier, range, value, display)

  return offset + length, value
end

-- Indicative Price
nse_nseix_recovery_tbt_v1_4.indicative_price = {}

-- Size: Indicative Price
nse_nseix_recovery_tbt_v1_4.indicative_price.size = 4

-- Display: Indicative Price
nse_nseix_recovery_tbt_v1_4.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
nse_nseix_recovery_tbt_v1_4.indicative_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Indicative Price
nse_nseix_recovery_tbt_v1_4.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_recovery_tbt_v1_4.indicative_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nse_nseix_recovery_tbt_v1_4.indicative_price.translate(raw)
  local display = nse_nseix_recovery_tbt_v1_4.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Indicative Quantity
nse_nseix_recovery_tbt_v1_4.indicative_quantity = {}

-- Size: Indicative Quantity
nse_nseix_recovery_tbt_v1_4.indicative_quantity.size = 4

-- Display: Indicative Quantity
nse_nseix_recovery_tbt_v1_4.indicative_quantity.display = function(value)
  return "Indicative Quantity: "..value
end

-- Dissect: Indicative Quantity
nse_nseix_recovery_tbt_v1_4.indicative_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_recovery_tbt_v1_4.indicative_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nseix_recovery_tbt_v1_4.indicative_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.indicative_quantity, range, value, display)

  return offset + length, value
end

-- Instrument
nse_nseix_recovery_tbt_v1_4.instrument = {}

-- Size: Instrument
nse_nseix_recovery_tbt_v1_4.instrument.size = 6

-- Display: Instrument
nse_nseix_recovery_tbt_v1_4.instrument.display = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
nse_nseix_recovery_tbt_v1_4.instrument.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_recovery_tbt_v1_4.instrument.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_recovery_tbt_v1_4.instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.instrument, range, value, display)

  return offset + length, value
end

-- Last Sequence No
nse_nseix_recovery_tbt_v1_4.last_sequence_no = {}

-- Size: Last Sequence No
nse_nseix_recovery_tbt_v1_4.last_sequence_no.size = 4

-- Display: Last Sequence No
nse_nseix_recovery_tbt_v1_4.last_sequence_no.display = function(value)
  return "Last Sequence No: "..value
end

-- Dissect: Last Sequence No
nse_nseix_recovery_tbt_v1_4.last_sequence_no.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_recovery_tbt_v1_4.last_sequence_no.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nseix_recovery_tbt_v1_4.last_sequence_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.last_sequence_no, range, value, display)

  return offset + length, value
end

-- Message Length
nse_nseix_recovery_tbt_v1_4.message_length = {}

-- Size: Message Length
nse_nseix_recovery_tbt_v1_4.message_length.size = 2

-- Display: Message Length
nse_nseix_recovery_tbt_v1_4.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nse_nseix_recovery_tbt_v1_4.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_recovery_tbt_v1_4.message_length.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nseix_recovery_tbt_v1_4.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nse_nseix_recovery_tbt_v1_4.message_type = {}

-- Size: Message Type
nse_nseix_recovery_tbt_v1_4.message_type.size = 1

-- Display: Message Type
nse_nseix_recovery_tbt_v1_4.message_type.labels = {
  ["N"] = "Message Type: New Order Message (N)",
  ["M"] = "Message Type: Order Modification Message (M)",
  ["X"] = "Message Type: Order Cancellation Message (X)",
  ["T"] = "Message Type: Trade Message (T)",
  ["G"] = "Message Type: New Spread Order Message (G)",
  ["H"] = "Message Type: Spread Order Modification Message (H)",
  ["J"] = "Message Type: Spread Order Cancellation Message (J)",
  ["K"] = "Message Type: Spread Trade Message (K)",
  ["S"] = "Message Type: Market Status Message (S)",
  ["P"] = "Message Type: Indicative Price And Quantity Message (P)",
  ["Z"] = "Message Type: Heartbeat Message (Z)",
  ["Y"] = "Message Type: Tick Data Recovery Response Message (Y)",
}

nse_nseix_recovery_tbt_v1_4.message_type.display = function(value)
  return nse_nseix_recovery_tbt_v1_4.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nse_nseix_recovery_tbt_v1_4.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_recovery_tbt_v1_4.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_recovery_tbt_v1_4.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.message_type, range, value, display)

  return offset + length, value
end

-- Order Id
nse_nseix_recovery_tbt_v1_4.order_id = {}

-- Size: Order Id
nse_nseix_recovery_tbt_v1_4.order_id.size = 8

-- Display: Order Id
nse_nseix_recovery_tbt_v1_4.order_id.display = function(value)
  return "Order Id: "..string.format("%.0f", value)
end

-- Dissect: Order Id
nse_nseix_recovery_tbt_v1_4.order_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_recovery_tbt_v1_4.order_id.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nse_nseix_recovery_tbt_v1_4.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Type
nse_nseix_recovery_tbt_v1_4.order_type = {}

-- Size: Order Type
nse_nseix_recovery_tbt_v1_4.order_type.size = 1

-- Display: Order Type
nse_nseix_recovery_tbt_v1_4.order_type.labels = {
  ["B"] = "Order Type: Buy Order (B)",
  ["S"] = "Order Type: Sell Order (S)",
}

nse_nseix_recovery_tbt_v1_4.order_type.display = function(value)
  return nse_nseix_recovery_tbt_v1_4.order_type.labels[value] or "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
nse_nseix_recovery_tbt_v1_4.order_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_recovery_tbt_v1_4.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_recovery_tbt_v1_4.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.order_type, range, value, display)

  return offset + length, value
end

-- Price
nse_nseix_recovery_tbt_v1_4.price = {}

-- Size: Price
nse_nseix_recovery_tbt_v1_4.price.size = 4

-- Display: Price
nse_nseix_recovery_tbt_v1_4.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nse_nseix_recovery_tbt_v1_4.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
nse_nseix_recovery_tbt_v1_4.price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_recovery_tbt_v1_4.price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nse_nseix_recovery_tbt_v1_4.price.translate(raw)
  local display = nse_nseix_recovery_tbt_v1_4.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
nse_nseix_recovery_tbt_v1_4.quantity = {}

-- Size: Quantity
nse_nseix_recovery_tbt_v1_4.quantity.size = 4

-- Display: Quantity
nse_nseix_recovery_tbt_v1_4.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
nse_nseix_recovery_tbt_v1_4.quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_recovery_tbt_v1_4.quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nseix_recovery_tbt_v1_4.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.quantity, range, value, display)

  return offset + length, value
end

-- Request Status
nse_nseix_recovery_tbt_v1_4.request_status = {}

-- Size: Request Status
nse_nseix_recovery_tbt_v1_4.request_status.size = 1

-- Display: Request Status
nse_nseix_recovery_tbt_v1_4.request_status.labels = {
  ["S"] = "Request Status: Success (S)",
  ["E"] = "Request Status: Error (E)",
}

nse_nseix_recovery_tbt_v1_4.request_status.display = function(value)
  return nse_nseix_recovery_tbt_v1_4.request_status.labels[value] or "Request Status: Unknown("..value..")"
end

-- Dissect: Request Status
nse_nseix_recovery_tbt_v1_4.request_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_recovery_tbt_v1_4.request_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_recovery_tbt_v1_4.request_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.request_status, range, value, display)

  return offset + length, value
end

-- Sell Order Id
nse_nseix_recovery_tbt_v1_4.sell_order_id = {}

-- Size: Sell Order Id
nse_nseix_recovery_tbt_v1_4.sell_order_id.size = 8

-- Display: Sell Order Id
nse_nseix_recovery_tbt_v1_4.sell_order_id.display = function(value)
  return "Sell Order Id: "..string.format("%.0f", value)
end

-- Dissect: Sell Order Id
nse_nseix_recovery_tbt_v1_4.sell_order_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_recovery_tbt_v1_4.sell_order_id.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nse_nseix_recovery_tbt_v1_4.sell_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.sell_order_id, range, value, display)

  return offset + length, value
end

-- Sequence Number
nse_nseix_recovery_tbt_v1_4.sequence_number = {}

-- Size: Sequence Number
nse_nseix_recovery_tbt_v1_4.sequence_number.size = 4

-- Display: Sequence Number
nse_nseix_recovery_tbt_v1_4.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nse_nseix_recovery_tbt_v1_4.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_recovery_tbt_v1_4.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nse_nseix_recovery_tbt_v1_4.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Indc
nse_nseix_recovery_tbt_v1_4.session_indc = {}

-- Size: Session Indc
nse_nseix_recovery_tbt_v1_4.session_indc.size = 2

-- Display: Session Indc
nse_nseix_recovery_tbt_v1_4.session_indc.labels = {
  [1] = "Session Indc: T Session (1)",
  [2] = "Session Indc: T 1 Session (2)",
}

nse_nseix_recovery_tbt_v1_4.session_indc.display = function(value)
  return nse_nseix_recovery_tbt_v1_4.session_indc.labels[value] or "Session Indc: Unknown("..value..")"
end

-- Dissect: Session Indc
nse_nseix_recovery_tbt_v1_4.session_indc.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_recovery_tbt_v1_4.session_indc.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nseix_recovery_tbt_v1_4.session_indc.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.session_indc, range, value, display)

  return offset + length, value
end

-- Start Sequence Number
nse_nseix_recovery_tbt_v1_4.start_sequence_number = {}

-- Size: Start Sequence Number
nse_nseix_recovery_tbt_v1_4.start_sequence_number.size = 4

-- Display: Start Sequence Number
nse_nseix_recovery_tbt_v1_4.start_sequence_number.display = function(value)
  return "Start Sequence Number: "..value
end

-- Dissect: Start Sequence Number
nse_nseix_recovery_tbt_v1_4.start_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_recovery_tbt_v1_4.start_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nseix_recovery_tbt_v1_4.start_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.start_sequence_number, range, value, display)

  return offset + length, value
end

-- Status
nse_nseix_recovery_tbt_v1_4.status = {}

-- Size: Status
nse_nseix_recovery_tbt_v1_4.status.size = 2

-- Display: Status
nse_nseix_recovery_tbt_v1_4.status.labels = {
  [0] = "Status: Preopen (0)",
  [1] = "Status: Open (1)",
  [2] = "Status: Closed (2)",
  [3] = "Status: Preopen End (3)",
  [4] = "Status: Pre Close (4)",
  [5] = "Status: Pre Close End (5)",
}

nse_nseix_recovery_tbt_v1_4.status.display = function(value)
  return nse_nseix_recovery_tbt_v1_4.status.labels[value] or "Status: Unknown("..value..")"
end

-- Dissect: Status
nse_nseix_recovery_tbt_v1_4.status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_recovery_tbt_v1_4.status.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nseix_recovery_tbt_v1_4.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.status, range, value, display)

  return offset + length, value
end

-- Stream Id
nse_nseix_recovery_tbt_v1_4.stream_id = {}

-- Size: Stream Id
nse_nseix_recovery_tbt_v1_4.stream_id.size = 2

-- Display: Stream Id
nse_nseix_recovery_tbt_v1_4.stream_id.display = function(value)
  return "Stream Id: "..value
end

-- Dissect: Stream Id
nse_nseix_recovery_tbt_v1_4.stream_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_recovery_tbt_v1_4.stream_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nseix_recovery_tbt_v1_4.stream_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.stream_id, range, value, display)

  return offset + length, value
end

-- Timestamp
nse_nseix_recovery_tbt_v1_4.timestamp = {}

-- Size: Timestamp
nse_nseix_recovery_tbt_v1_4.timestamp.size = 8

-- Dissect: Timestamp
nse_nseix_recovery_tbt_v1_4.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_recovery_tbt_v1_4.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_recovery_tbt_v1_4.fields.timestamp
  if nse_nseix_recovery_tbt_v1_4.timestamp_format == 3 then field = omi_nse_nseix_recovery_tbt_v1_4.fields.timestamp_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = (value / UInt64(1000000000)):tonumber() + 315532800
  local nanos = (value % UInt64(1000000000)):tonumber()

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_recovery_tbt_v1_4.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, nanos))
    item:set_text("Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanos).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_recovery_tbt_v1_4.zone_offset, nanos))

  return offset + length, value
end

-- Token
nse_nseix_recovery_tbt_v1_4.token = {}

-- Size: Token
nse_nseix_recovery_tbt_v1_4.token.size = 4

-- Display: Token
nse_nseix_recovery_tbt_v1_4.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
nse_nseix_recovery_tbt_v1_4.token.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_recovery_tbt_v1_4.token.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nseix_recovery_tbt_v1_4.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.token, range, value, display)

  return offset + length, value
end

-- Trade Price
nse_nseix_recovery_tbt_v1_4.trade_price = {}

-- Size: Trade Price
nse_nseix_recovery_tbt_v1_4.trade_price.size = 4

-- Display: Trade Price
nse_nseix_recovery_tbt_v1_4.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
nse_nseix_recovery_tbt_v1_4.trade_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Trade Price
nse_nseix_recovery_tbt_v1_4.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_recovery_tbt_v1_4.trade_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nse_nseix_recovery_tbt_v1_4.trade_price.translate(raw)
  local display = nse_nseix_recovery_tbt_v1_4.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Quantity
nse_nseix_recovery_tbt_v1_4.trade_quantity = {}

-- Size: Trade Quantity
nse_nseix_recovery_tbt_v1_4.trade_quantity.size = 4

-- Display: Trade Quantity
nse_nseix_recovery_tbt_v1_4.trade_quantity.display = function(value)
  return "Trade Quantity: "..value
end

-- Dissect: Trade Quantity
nse_nseix_recovery_tbt_v1_4.trade_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_recovery_tbt_v1_4.trade_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nseix_recovery_tbt_v1_4.trade_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.trade_quantity, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nse NseIx Recovery Tbt 1.4
-----------------------------------------------------------------------

-- Tick Data Recovery Request Message
nse_nseix_recovery_tbt_v1_4.tick_data_recovery_request_message = {}

-- Size: Tick Data Recovery Request Message
nse_nseix_recovery_tbt_v1_4.tick_data_recovery_request_message.size =
  nse_nseix_recovery_tbt_v1_4.stream_id.size + 
  nse_nseix_recovery_tbt_v1_4.start_sequence_number.size + 
  nse_nseix_recovery_tbt_v1_4.end_sequence_number.size

-- Display: Tick Data Recovery Request Message
nse_nseix_recovery_tbt_v1_4.tick_data_recovery_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Data Recovery Request Message
nse_nseix_recovery_tbt_v1_4.tick_data_recovery_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Id: SHORT
  index, stream_id = nse_nseix_recovery_tbt_v1_4.stream_id.dissect(buffer, index, packet, parent)

  -- Start Sequence Number: INT
  index, start_sequence_number = nse_nseix_recovery_tbt_v1_4.start_sequence_number.dissect(buffer, index, packet, parent)

  -- End Sequence Number: INT
  index, end_sequence_number = nse_nseix_recovery_tbt_v1_4.end_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Data Recovery Request Message
nse_nseix_recovery_tbt_v1_4.tick_data_recovery_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.tick_data_recovery_request_message, buffer(offset, 0))
    local index = nse_nseix_recovery_tbt_v1_4.tick_data_recovery_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_recovery_tbt_v1_4.tick_data_recovery_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_recovery_tbt_v1_4.tick_data_recovery_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
nse_nseix_recovery_tbt_v1_4.client_payload = {}

-- Dispatch: Client Payload
nse_nseix_recovery_tbt_v1_4.client_payload.dispatch = {
  ["R"] = nse_nseix_recovery_tbt_v1_4.tick_data_recovery_request_message.dissect,
}

-- Dissect: Client Payload
nse_nseix_recovery_tbt_v1_4.client_payload.dissect = function(buffer, offset, packet, parent, client_message_type)
  local dissect = nse_nseix_recovery_tbt_v1_4.client_payload.dispatch[client_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Message
nse_nseix_recovery_tbt_v1_4.client_message = {}

-- Size: Client Message
nse_nseix_recovery_tbt_v1_4.client_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index)
end

-- Display: Client Message
nse_nseix_recovery_tbt_v1_4.client_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Message
nse_nseix_recovery_tbt_v1_4.client_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Type: Char
  index, client_message_type = nse_nseix_recovery_tbt_v1_4.client_message_type.dissect(buffer, index, packet, parent)

  -- Dependency for Client Payload
  local end_of_payload = buffer:len()

  -- Client Payload: Runtime Type with 1 branches
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Client Payload: Runtime Type with 1 branches
    index = nse_nseix_recovery_tbt_v1_4.client_payload.dissect(buffer, index, packet, parent, client_message_type)
  end

  return index
end

-- Dissect: Client Message
nse_nseix_recovery_tbt_v1_4.client_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.client_message, buffer(offset, 0))
    local index = nse_nseix_recovery_tbt_v1_4.client_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_recovery_tbt_v1_4.client_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_recovery_tbt_v1_4.client_message.fields(buffer, offset, packet, parent)
  end
end

-- Client Packet
nse_nseix_recovery_tbt_v1_4.client_packet = {}

-- Verify required size of Tcp packet
nse_nseix_recovery_tbt_v1_4.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nseix_recovery_tbt_v1_4.client_message_type.size
end

-- Dissect Client Packet
nse_nseix_recovery_tbt_v1_4.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Client Message: Struct of 2 fields
  index, client_message = nse_nseix_recovery_tbt_v1_4.client_message.dissect(buffer, index, packet, parent)

  return index
end

-- Tick Data Recovery Response Message
nse_nseix_recovery_tbt_v1_4.tick_data_recovery_response_message = {}

-- Size: Tick Data Recovery Response Message
nse_nseix_recovery_tbt_v1_4.tick_data_recovery_response_message.size =
  nse_nseix_recovery_tbt_v1_4.request_status.size

-- Display: Tick Data Recovery Response Message
nse_nseix_recovery_tbt_v1_4.tick_data_recovery_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Data Recovery Response Message
nse_nseix_recovery_tbt_v1_4.tick_data_recovery_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Status: CHAR
  index, request_status = nse_nseix_recovery_tbt_v1_4.request_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Data Recovery Response Message
nse_nseix_recovery_tbt_v1_4.tick_data_recovery_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.tick_data_recovery_response_message, buffer(offset, 0))
    local index = nse_nseix_recovery_tbt_v1_4.tick_data_recovery_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_recovery_tbt_v1_4.tick_data_recovery_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_recovery_tbt_v1_4.tick_data_recovery_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
nse_nseix_recovery_tbt_v1_4.heartbeat_message = {}

-- Size: Heartbeat Message
nse_nseix_recovery_tbt_v1_4.heartbeat_message.size =
  nse_nseix_recovery_tbt_v1_4.last_sequence_no.size

-- Display: Heartbeat Message
nse_nseix_recovery_tbt_v1_4.heartbeat_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Message
nse_nseix_recovery_tbt_v1_4.heartbeat_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Sequence No: INT
  index, last_sequence_no = nse_nseix_recovery_tbt_v1_4.last_sequence_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Message
nse_nseix_recovery_tbt_v1_4.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.heartbeat_message, buffer(offset, 0))
    local index = nse_nseix_recovery_tbt_v1_4.heartbeat_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_recovery_tbt_v1_4.heartbeat_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_recovery_tbt_v1_4.heartbeat_message.fields(buffer, offset, packet, parent)
  end
end

-- Indicative Price And Quantity Message
nse_nseix_recovery_tbt_v1_4.indicative_price_and_quantity_message = {}

-- Size: Indicative Price And Quantity Message
nse_nseix_recovery_tbt_v1_4.indicative_price_and_quantity_message.size =
  nse_nseix_recovery_tbt_v1_4.timestamp.size + 
  nse_nseix_recovery_tbt_v1_4.token.size + 
  nse_nseix_recovery_tbt_v1_4.identifier.size + 
  nse_nseix_recovery_tbt_v1_4.indicative_price.size + 
  nse_nseix_recovery_tbt_v1_4.indicative_quantity.size

-- Display: Indicative Price And Quantity Message
nse_nseix_recovery_tbt_v1_4.indicative_price_and_quantity_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indicative Price And Quantity Message
nse_nseix_recovery_tbt_v1_4.indicative_price_and_quantity_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nseix_recovery_tbt_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nseix_recovery_tbt_v1_4.token.dissect(buffer, index, packet, parent)

  -- Identifier: CHAR
  index, identifier = nse_nseix_recovery_tbt_v1_4.identifier.dissect(buffer, index, packet, parent)

  -- Indicative Price: INT
  index, indicative_price = nse_nseix_recovery_tbt_v1_4.indicative_price.dissect(buffer, index, packet, parent)

  -- Indicative Quantity: INT
  index, indicative_quantity = nse_nseix_recovery_tbt_v1_4.indicative_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Indicative Price And Quantity Message
nse_nseix_recovery_tbt_v1_4.indicative_price_and_quantity_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.indicative_price_and_quantity_message, buffer(offset, 0))
    local index = nse_nseix_recovery_tbt_v1_4.indicative_price_and_quantity_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_recovery_tbt_v1_4.indicative_price_and_quantity_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_recovery_tbt_v1_4.indicative_price_and_quantity_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Status Message
nse_nseix_recovery_tbt_v1_4.market_status_message = {}

-- Size: Market Status Message
nse_nseix_recovery_tbt_v1_4.market_status_message.size =
  nse_nseix_recovery_tbt_v1_4.timestamp.size + 
  nse_nseix_recovery_tbt_v1_4.instrument.size + 
  nse_nseix_recovery_tbt_v1_4.status.size + 
  nse_nseix_recovery_tbt_v1_4.session_indc.size

-- Display: Market Status Message
nse_nseix_recovery_tbt_v1_4.market_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Status Message
nse_nseix_recovery_tbt_v1_4.market_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nseix_recovery_tbt_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: CHAR
  index, instrument = nse_nseix_recovery_tbt_v1_4.instrument.dissect(buffer, index, packet, parent)

  -- Status: SHORT
  index, status = nse_nseix_recovery_tbt_v1_4.status.dissect(buffer, index, packet, parent)

  -- Session Indc: SHORT
  index, session_indc = nse_nseix_recovery_tbt_v1_4.session_indc.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Status Message
nse_nseix_recovery_tbt_v1_4.market_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.market_status_message, buffer(offset, 0))
    local index = nse_nseix_recovery_tbt_v1_4.market_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_recovery_tbt_v1_4.market_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_recovery_tbt_v1_4.market_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Spread Trade Message
nse_nseix_recovery_tbt_v1_4.spread_trade_message = {}

-- Size: Spread Trade Message
nse_nseix_recovery_tbt_v1_4.spread_trade_message.size =
  nse_nseix_recovery_tbt_v1_4.timestamp.size + 
  nse_nseix_recovery_tbt_v1_4.buy_order_id.size + 
  nse_nseix_recovery_tbt_v1_4.sell_order_id.size + 
  nse_nseix_recovery_tbt_v1_4.token.size + 
  nse_nseix_recovery_tbt_v1_4.trade_price.size + 
  nse_nseix_recovery_tbt_v1_4.quantity.size

-- Display: Spread Trade Message
nse_nseix_recovery_tbt_v1_4.spread_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Trade Message
nse_nseix_recovery_tbt_v1_4.spread_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nseix_recovery_tbt_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Buy Order Id: DOUBLE
  index, buy_order_id = nse_nseix_recovery_tbt_v1_4.buy_order_id.dissect(buffer, index, packet, parent)

  -- Sell Order Id: DOUBLE
  index, sell_order_id = nse_nseix_recovery_tbt_v1_4.sell_order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nseix_recovery_tbt_v1_4.token.dissect(buffer, index, packet, parent)

  -- Trade Price: INT
  index, trade_price = nse_nseix_recovery_tbt_v1_4.trade_price.dissect(buffer, index, packet, parent)

  -- Quantity: INT
  index, quantity = nse_nseix_recovery_tbt_v1_4.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Trade Message
nse_nseix_recovery_tbt_v1_4.spread_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.spread_trade_message, buffer(offset, 0))
    local index = nse_nseix_recovery_tbt_v1_4.spread_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_recovery_tbt_v1_4.spread_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_recovery_tbt_v1_4.spread_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Spread Order Cancellation Message
nse_nseix_recovery_tbt_v1_4.spread_order_cancellation_message = {}

-- Size: Spread Order Cancellation Message
nse_nseix_recovery_tbt_v1_4.spread_order_cancellation_message.size =
  nse_nseix_recovery_tbt_v1_4.timestamp.size + 
  nse_nseix_recovery_tbt_v1_4.order_id.size + 
  nse_nseix_recovery_tbt_v1_4.token.size + 
  nse_nseix_recovery_tbt_v1_4.order_type.size + 
  nse_nseix_recovery_tbt_v1_4.price.size + 
  nse_nseix_recovery_tbt_v1_4.quantity.size

-- Display: Spread Order Cancellation Message
nse_nseix_recovery_tbt_v1_4.spread_order_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Order Cancellation Message
nse_nseix_recovery_tbt_v1_4.spread_order_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nseix_recovery_tbt_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: DOUBLE
  index, order_id = nse_nseix_recovery_tbt_v1_4.order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nseix_recovery_tbt_v1_4.token.dissect(buffer, index, packet, parent)

  -- Order Type: CHAR
  index, order_type = nse_nseix_recovery_tbt_v1_4.order_type.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nseix_recovery_tbt_v1_4.price.dissect(buffer, index, packet, parent)

  -- Quantity: INT
  index, quantity = nse_nseix_recovery_tbt_v1_4.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Order Cancellation Message
nse_nseix_recovery_tbt_v1_4.spread_order_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.spread_order_cancellation_message, buffer(offset, 0))
    local index = nse_nseix_recovery_tbt_v1_4.spread_order_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_recovery_tbt_v1_4.spread_order_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_recovery_tbt_v1_4.spread_order_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Spread Order Modification Message
nse_nseix_recovery_tbt_v1_4.spread_order_modification_message = {}

-- Size: Spread Order Modification Message
nse_nseix_recovery_tbt_v1_4.spread_order_modification_message.size =
  nse_nseix_recovery_tbt_v1_4.timestamp.size + 
  nse_nseix_recovery_tbt_v1_4.order_id.size + 
  nse_nseix_recovery_tbt_v1_4.token.size + 
  nse_nseix_recovery_tbt_v1_4.order_type.size + 
  nse_nseix_recovery_tbt_v1_4.price.size + 
  nse_nseix_recovery_tbt_v1_4.quantity.size

-- Display: Spread Order Modification Message
nse_nseix_recovery_tbt_v1_4.spread_order_modification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Order Modification Message
nse_nseix_recovery_tbt_v1_4.spread_order_modification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nseix_recovery_tbt_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: DOUBLE
  index, order_id = nse_nseix_recovery_tbt_v1_4.order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nseix_recovery_tbt_v1_4.token.dissect(buffer, index, packet, parent)

  -- Order Type: CHAR
  index, order_type = nse_nseix_recovery_tbt_v1_4.order_type.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nseix_recovery_tbt_v1_4.price.dissect(buffer, index, packet, parent)

  -- Quantity: INT
  index, quantity = nse_nseix_recovery_tbt_v1_4.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Order Modification Message
nse_nseix_recovery_tbt_v1_4.spread_order_modification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.spread_order_modification_message, buffer(offset, 0))
    local index = nse_nseix_recovery_tbt_v1_4.spread_order_modification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_recovery_tbt_v1_4.spread_order_modification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_recovery_tbt_v1_4.spread_order_modification_message.fields(buffer, offset, packet, parent)
  end
end

-- New Spread Order Message
nse_nseix_recovery_tbt_v1_4.new_spread_order_message = {}

-- Size: New Spread Order Message
nse_nseix_recovery_tbt_v1_4.new_spread_order_message.size =
  nse_nseix_recovery_tbt_v1_4.timestamp.size + 
  nse_nseix_recovery_tbt_v1_4.order_id.size + 
  nse_nseix_recovery_tbt_v1_4.token.size + 
  nse_nseix_recovery_tbt_v1_4.order_type.size + 
  nse_nseix_recovery_tbt_v1_4.price.size + 
  nse_nseix_recovery_tbt_v1_4.quantity.size

-- Display: New Spread Order Message
nse_nseix_recovery_tbt_v1_4.new_spread_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Spread Order Message
nse_nseix_recovery_tbt_v1_4.new_spread_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nseix_recovery_tbt_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: DOUBLE
  index, order_id = nse_nseix_recovery_tbt_v1_4.order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nseix_recovery_tbt_v1_4.token.dissect(buffer, index, packet, parent)

  -- Order Type: CHAR
  index, order_type = nse_nseix_recovery_tbt_v1_4.order_type.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nseix_recovery_tbt_v1_4.price.dissect(buffer, index, packet, parent)

  -- Quantity: INT
  index, quantity = nse_nseix_recovery_tbt_v1_4.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Spread Order Message
nse_nseix_recovery_tbt_v1_4.new_spread_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.new_spread_order_message, buffer(offset, 0))
    local index = nse_nseix_recovery_tbt_v1_4.new_spread_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_recovery_tbt_v1_4.new_spread_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_recovery_tbt_v1_4.new_spread_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
nse_nseix_recovery_tbt_v1_4.trade_message = {}

-- Size: Trade Message
nse_nseix_recovery_tbt_v1_4.trade_message.size =
  nse_nseix_recovery_tbt_v1_4.timestamp.size + 
  nse_nseix_recovery_tbt_v1_4.buy_order_id.size + 
  nse_nseix_recovery_tbt_v1_4.sell_order_id.size + 
  nse_nseix_recovery_tbt_v1_4.token.size + 
  nse_nseix_recovery_tbt_v1_4.trade_price.size + 
  nse_nseix_recovery_tbt_v1_4.trade_quantity.size

-- Display: Trade Message
nse_nseix_recovery_tbt_v1_4.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
nse_nseix_recovery_tbt_v1_4.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nseix_recovery_tbt_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Buy Order Id: DOUBLE
  index, buy_order_id = nse_nseix_recovery_tbt_v1_4.buy_order_id.dissect(buffer, index, packet, parent)

  -- Sell Order Id: DOUBLE
  index, sell_order_id = nse_nseix_recovery_tbt_v1_4.sell_order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nseix_recovery_tbt_v1_4.token.dissect(buffer, index, packet, parent)

  -- Trade Price: INT
  index, trade_price = nse_nseix_recovery_tbt_v1_4.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Quantity: INT
  index, trade_quantity = nse_nseix_recovery_tbt_v1_4.trade_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
nse_nseix_recovery_tbt_v1_4.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.trade_message, buffer(offset, 0))
    local index = nse_nseix_recovery_tbt_v1_4.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_recovery_tbt_v1_4.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_recovery_tbt_v1_4.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancellation Message
nse_nseix_recovery_tbt_v1_4.order_cancellation_message = {}

-- Size: Order Cancellation Message
nse_nseix_recovery_tbt_v1_4.order_cancellation_message.size =
  nse_nseix_recovery_tbt_v1_4.timestamp.size + 
  nse_nseix_recovery_tbt_v1_4.order_id.size + 
  nse_nseix_recovery_tbt_v1_4.token.size + 
  nse_nseix_recovery_tbt_v1_4.order_type.size + 
  nse_nseix_recovery_tbt_v1_4.price.size + 
  nse_nseix_recovery_tbt_v1_4.quantity.size

-- Display: Order Cancellation Message
nse_nseix_recovery_tbt_v1_4.order_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancellation Message
nse_nseix_recovery_tbt_v1_4.order_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nseix_recovery_tbt_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: DOUBLE
  index, order_id = nse_nseix_recovery_tbt_v1_4.order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nseix_recovery_tbt_v1_4.token.dissect(buffer, index, packet, parent)

  -- Order Type: CHAR
  index, order_type = nse_nseix_recovery_tbt_v1_4.order_type.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nseix_recovery_tbt_v1_4.price.dissect(buffer, index, packet, parent)

  -- Quantity: INT
  index, quantity = nse_nseix_recovery_tbt_v1_4.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancellation Message
nse_nseix_recovery_tbt_v1_4.order_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.order_cancellation_message, buffer(offset, 0))
    local index = nse_nseix_recovery_tbt_v1_4.order_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_recovery_tbt_v1_4.order_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_recovery_tbt_v1_4.order_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modification Message
nse_nseix_recovery_tbt_v1_4.order_modification_message = {}

-- Size: Order Modification Message
nse_nseix_recovery_tbt_v1_4.order_modification_message.size =
  nse_nseix_recovery_tbt_v1_4.timestamp.size + 
  nse_nseix_recovery_tbt_v1_4.order_id.size + 
  nse_nseix_recovery_tbt_v1_4.token.size + 
  nse_nseix_recovery_tbt_v1_4.order_type.size + 
  nse_nseix_recovery_tbt_v1_4.price.size + 
  nse_nseix_recovery_tbt_v1_4.quantity.size

-- Display: Order Modification Message
nse_nseix_recovery_tbt_v1_4.order_modification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modification Message
nse_nseix_recovery_tbt_v1_4.order_modification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nseix_recovery_tbt_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: DOUBLE
  index, order_id = nse_nseix_recovery_tbt_v1_4.order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nseix_recovery_tbt_v1_4.token.dissect(buffer, index, packet, parent)

  -- Order Type: CHAR
  index, order_type = nse_nseix_recovery_tbt_v1_4.order_type.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nseix_recovery_tbt_v1_4.price.dissect(buffer, index, packet, parent)

  -- Quantity: INT
  index, quantity = nse_nseix_recovery_tbt_v1_4.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modification Message
nse_nseix_recovery_tbt_v1_4.order_modification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.order_modification_message, buffer(offset, 0))
    local index = nse_nseix_recovery_tbt_v1_4.order_modification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_recovery_tbt_v1_4.order_modification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_recovery_tbt_v1_4.order_modification_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Message
nse_nseix_recovery_tbt_v1_4.new_order_message = {}

-- Size: New Order Message
nse_nseix_recovery_tbt_v1_4.new_order_message.size =
  nse_nseix_recovery_tbt_v1_4.timestamp.size + 
  nse_nseix_recovery_tbt_v1_4.order_id.size + 
  nse_nseix_recovery_tbt_v1_4.token.size + 
  nse_nseix_recovery_tbt_v1_4.order_type.size + 
  nse_nseix_recovery_tbt_v1_4.price.size + 
  nse_nseix_recovery_tbt_v1_4.quantity.size

-- Display: New Order Message
nse_nseix_recovery_tbt_v1_4.new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Message
nse_nseix_recovery_tbt_v1_4.new_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nseix_recovery_tbt_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: DOUBLE
  index, order_id = nse_nseix_recovery_tbt_v1_4.order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nseix_recovery_tbt_v1_4.token.dissect(buffer, index, packet, parent)

  -- Order Type: CHAR
  index, order_type = nse_nseix_recovery_tbt_v1_4.order_type.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nseix_recovery_tbt_v1_4.price.dissect(buffer, index, packet, parent)

  -- Quantity: INT
  index, quantity = nse_nseix_recovery_tbt_v1_4.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Message
nse_nseix_recovery_tbt_v1_4.new_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.new_order_message, buffer(offset, 0))
    local index = nse_nseix_recovery_tbt_v1_4.new_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_recovery_tbt_v1_4.new_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_recovery_tbt_v1_4.new_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nse_nseix_recovery_tbt_v1_4.payload = {}

-- Dispatch: Payload
nse_nseix_recovery_tbt_v1_4.payload.dispatch = {
  ["N"] = nse_nseix_recovery_tbt_v1_4.new_order_message.dissect,
  ["M"] = nse_nseix_recovery_tbt_v1_4.order_modification_message.dissect,
  ["X"] = nse_nseix_recovery_tbt_v1_4.order_cancellation_message.dissect,
  ["T"] = nse_nseix_recovery_tbt_v1_4.trade_message.dissect,
  ["G"] = nse_nseix_recovery_tbt_v1_4.new_spread_order_message.dissect,
  ["H"] = nse_nseix_recovery_tbt_v1_4.spread_order_modification_message.dissect,
  ["J"] = nse_nseix_recovery_tbt_v1_4.spread_order_cancellation_message.dissect,
  ["K"] = nse_nseix_recovery_tbt_v1_4.spread_trade_message.dissect,
  ["S"] = nse_nseix_recovery_tbt_v1_4.market_status_message.dissect,
  ["P"] = nse_nseix_recovery_tbt_v1_4.indicative_price_and_quantity_message.dissect,
  ["Z"] = nse_nseix_recovery_tbt_v1_4.heartbeat_message.dissect,
  ["Y"] = nse_nseix_recovery_tbt_v1_4.tick_data_recovery_response_message.dissect,
}

-- Dissect: Payload
nse_nseix_recovery_tbt_v1_4.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = nse_nseix_recovery_tbt_v1_4.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message
nse_nseix_recovery_tbt_v1_4.message = {}

-- Size: Message
nse_nseix_recovery_tbt_v1_4.message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index)
end

-- Display: Message
nse_nseix_recovery_tbt_v1_4.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nse_nseix_recovery_tbt_v1_4.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: Char
  index, message_type = nse_nseix_recovery_tbt_v1_4.message_type.dissect(buffer, index, packet, parent)

  -- Dependency for Payload
  local end_of_payload = buffer:len()

  -- Payload: Runtime Type with 12 branches
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Payload: Runtime Type with 12 branches
    index = nse_nseix_recovery_tbt_v1_4.payload.dissect(buffer, index, packet, parent, message_type)
  end

  return index
end

-- Dissect: Message
nse_nseix_recovery_tbt_v1_4.message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.message, buffer(offset, 0))
    local index = nse_nseix_recovery_tbt_v1_4.message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_recovery_tbt_v1_4.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_recovery_tbt_v1_4.message.fields(buffer, offset, packet, parent)
  end
end

-- Stream Header
nse_nseix_recovery_tbt_v1_4.stream_header = {}

-- Size: Stream Header
nse_nseix_recovery_tbt_v1_4.stream_header.size =
  nse_nseix_recovery_tbt_v1_4.message_length.size + 
  nse_nseix_recovery_tbt_v1_4.stream_id.size + 
  nse_nseix_recovery_tbt_v1_4.sequence_number.size

-- Display: Stream Header
nse_nseix_recovery_tbt_v1_4.stream_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Header
nse_nseix_recovery_tbt_v1_4.stream_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: Short
  index, message_length = nse_nseix_recovery_tbt_v1_4.message_length.dissect(buffer, index, packet, parent)

  -- Stream Id: SHORT
  index, stream_id = nse_nseix_recovery_tbt_v1_4.stream_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: Uint
  index, sequence_number = nse_nseix_recovery_tbt_v1_4.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Header
nse_nseix_recovery_tbt_v1_4.stream_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.stream_header, buffer(offset, 0))
    local index = nse_nseix_recovery_tbt_v1_4.stream_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_recovery_tbt_v1_4.stream_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_recovery_tbt_v1_4.stream_header.fields(buffer, offset, packet, parent)
  end
end

-- Stream Packet
nse_nseix_recovery_tbt_v1_4.stream_packet = {}

-- Display: Stream Packet
nse_nseix_recovery_tbt_v1_4.stream_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Packet
nse_nseix_recovery_tbt_v1_4.stream_packet.fields = function(buffer, offset, packet, parent, size_of_stream_packet)
  local index = offset

  -- Stream Header: Struct of 3 fields
  index, stream_header = nse_nseix_recovery_tbt_v1_4.stream_header.dissect(buffer, index, packet, parent)

  -- Message: Struct of 2 fields
  index, message = nse_nseix_recovery_tbt_v1_4.message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Packet
nse_nseix_recovery_tbt_v1_4.stream_packet.dissect = function(buffer, offset, packet, parent, size_of_stream_packet)
  local index = offset + size_of_stream_packet

  -- Its fields read only its own bytes: a layout running past them is marked, not raised
  local bounded = buffer(0, math.min(index, buffer:len())):tvb()

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nse_nseix_recovery_tbt_v1_4.fields.stream_packet, buffer(offset, 0))
    local decoded, failure = pcall(nse_nseix_recovery_tbt_v1_4.stream_packet.fields, bounded, offset, packet, parent, size_of_stream_packet)
    if not decoded then
      undecoded(failure, parent, nse_nseix_recovery_tbt_v1_4.experts.undecoded, "Stream Packet does not decode within its "..size_of_stream_packet.." bytes")
    end
    parent:set_len(size_of_stream_packet)
    local display = nse_nseix_recovery_tbt_v1_4.stream_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    local decoded, failure = pcall(nse_nseix_recovery_tbt_v1_4.stream_packet.fields, bounded, offset, packet, parent, size_of_stream_packet)
    if not decoded then
      undecoded(failure, parent, nse_nseix_recovery_tbt_v1_4.experts.undecoded, "Stream Packet does not decode within its "..size_of_stream_packet.." bytes")
    end

    return index
  end
end

-- Remaining Bytes For: Stream Packet
local stream_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nse_nseix_recovery_tbt_v1_4.stream_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):le_int()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
nse_nseix_recovery_tbt_v1_4.packet = {}

-- Verify required size of Tcp packet
nse_nseix_recovery_tbt_v1_4.packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nseix_recovery_tbt_v1_4.stream_header.size + nse_nseix_recovery_tbt_v1_4.message_type.size
end

-- Dissect Packet
nse_nseix_recovery_tbt_v1_4.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Stream Packet
  local end_of_payload = buffer:len()

  -- Stream Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_stream_packet = stream_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_stream_packet):tvb()
      index = nse_nseix_recovery_tbt_v1_4.stream_packet.dissect(frame, index, packet, parent, size_of_stream_packet)
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
function omi_nse_nseix_recovery_tbt_v1_4.init()
end

-- Connection roles for Nse NseIx Recovery Tbt 1.4: Client is the initiator, Server is the acceptor
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
nse_nseix_recovery_tbt_v1_4.role = function(packet)
  if omi_nse_nseix_recovery_tbt_v1_4.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nse_nseix_recovery_tbt_v1_4.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nse_nseix_recovery_tbt_v1_4.prefs.acceptor_port

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

  if omi_nse_nseix_recovery_tbt_v1_4.prefs.swap_sides then
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
nse_nseix_recovery_tbt_v1_4.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nse NseIx Recovery Tbt 1.4
function omi_nse_nseix_recovery_tbt_v1_4.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nse_nseix_recovery_tbt_v1_4.name

  -- Dissect protocol
  local protocol = parent:add(omi_nse_nseix_recovery_tbt_v1_4, buffer(), omi_nse_nseix_recovery_tbt_v1_4.description, "("..buffer:len().." Bytes)")
  local role = nse_nseix_recovery_tbt_v1_4.role(packet)

  if role == "initiator" then
    return nse_nseix_recovery_tbt_v1_4.client_packet.dissect(buffer, packet, protocol)
  end

  return nse_nseix_recovery_tbt_v1_4.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
nse_nseix_recovery_tbt_v1_4.packet.fingerprint = function(buffer)
  if buffer:len() < 9 then
    return false
  end

  local message_type = buffer(8, 1):string()

  -- New Order Message
  if message_type == "N" then
    return true
  end

  -- Order Modification Message
  if message_type == "M" then
    return true
  end

  -- Order Cancellation Message
  if message_type == "X" then
    return true
  end

  -- Trade Message
  if message_type == "T" then
    return true
  end

  -- New Spread Order Message
  if message_type == "G" then
    return true
  end

  -- Spread Order Modification Message
  if message_type == "H" then
    return true
  end

  -- Spread Order Cancellation Message
  if message_type == "J" then
    return true
  end

  -- Spread Trade Message
  if message_type == "K" then
    return true
  end

  -- Market Status Message
  if message_type == "S" then
    return true
  end

  -- Indicative Price And Quantity Message
  if message_type == "P" then
    return true
  end

  -- Heartbeat Message
  if message_type == "Z" then
    return true
  end

  -- Tick Data Recovery Response Message
  if message_type == "Y" then
    return true
  end

  return false
end

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nse_nseix_recovery_tbt_v1_4.client_packet.fingerprint = function(buffer)
  if buffer:len() < 1 then
    return false
  end

  local client_message_type = buffer(0, 1):string()

  -- Tick Data Recovery Request Message
  if client_message_type == "R" then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nse NseIx Recovery Tbt 1.4 (Tcp)
local function omi_nse_nseix_recovery_tbt_v1_4_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nseix_recovery_tbt_v1_4.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp packet message dispatch
  if not nse_nseix_recovery_tbt_v1_4.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nseix_recovery_tbt_v1_4
  omi_nse_nseix_recovery_tbt_v1_4.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nse NseIx Recovery Tbt 1.4 (Tcp)
local function omi_nse_nseix_recovery_tbt_v1_4_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nseix_recovery_tbt_v1_4.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp client packet message dispatch
  if not nse_nseix_recovery_tbt_v1_4.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nseix_recovery_tbt_v1_4
  omi_nse_nseix_recovery_tbt_v1_4.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nse NseIx Recovery Tbt 1.4 (Tcp): apply the heuristic of the sender's connection role
local function omi_nse_nseix_recovery_tbt_v1_4_tcp_heuristic(buffer, packet, parent)
  local role = nse_nseix_recovery_tbt_v1_4.role(packet)
  local initiator = omi_nse_nseix_recovery_tbt_v1_4_tcp_initiator_heuristic
  local acceptor = omi_nse_nseix_recovery_tbt_v1_4_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nse_nseix_recovery_tbt_v1_4.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nse_nseix_recovery_tbt_v1_4.swap(packet)

  return false
end

-- Register Heuristics for Nse NseIx Recovery Tbt 1.4
omi_nse_nseix_recovery_tbt_v1_4:register_heuristic("tcp", omi_nse_nseix_recovery_tbt_v1_4_tcp_heuristic)

-- Register Nse NseIx Recovery Tbt 1.4 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nse_nseix_recovery_tbt_v1_4)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Stock Exchange of India Ltd
--   Version: 1.4
--   Date: Wednesday, January 28, 2026
--   Specification: NSEIFSCMTBTAPIv1_4_2_20260324142815.pdf
--
-- Script:
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
