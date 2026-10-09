-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse NyseBonds Trades ArcaTrade 1.07.a Protocol
local omi_nyse_nysebonds_trades_arcatrade_v1_07_a = Proto("Omi.Nyse.NyseBonds.Trades.ArcaTrade.v1.07.a", "Nyse NyseBonds Trades ArcaTrade 1.07.a")

-- Protocol table
local nyse_nysebonds_trades_arcatrade_v1_07_a = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse NyseBonds Trades ArcaTrade 1.07.a Fields
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.arca_edge_subscription = ProtoField.new("Arca Edge Subscription", "nyse.nysebonds.trades.arcatrade.v1.07.a.arcaedgesubscription", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.bond_subscription = ProtoField.new("Bond Subscription", "nyse.nysebonds.trades.arcatrade.v1.07.a.bondsubscription", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.client_message_type = ProtoField.new("Client Message Type", "nyse.nysebonds.trades.arcatrade.v1.07.a.clientmessagetype", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.client_padding = ProtoField.new("Client Padding", "nyse.nysebonds.trades.arcatrade.v1.07.a.clientpadding", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.closing_price = ProtoField.new("Closing Price", "nyse.nysebonds.trades.arcatrade.v1.07.a.closingprice", ftypes.UINT32)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.closing_time = ProtoField.new("Closing Time", "nyse.nysebonds.trades.arcatrade.v1.07.a.closingtime", ftypes.UINT32)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.cusip_isin = ProtoField.new("Cusip Isin", "nyse.nysebonds.trades.arcatrade.v1.07.a.cusipisin", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.etf_subscription = ProtoField.new("Etf Subscription", "nyse.nysebonds.trades.arcatrade.v1.07.a.etfsubscription", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.etx = ProtoField.new("Etx", "nyse.nysebonds.trades.arcatrade.v1.07.a.etx", ftypes.UINT8)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.event_code = ProtoField.new("Event Code", "nyse.nysebonds.trades.arcatrade.v1.07.a.eventcode", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.nysebonds.trades.arcatrade.v1.07.a.exchangecode", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.last_sale_time = ProtoField.new("Last Sale Time", "nyse.nysebonds.trades.arcatrade.v1.07.a.lastsaletime", ftypes.UINT32)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.listed_subscription = ProtoField.new("Listed Subscription", "nyse.nysebonds.trades.arcatrade.v1.07.a.listedsubscription", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.login_sequence_number = ProtoField.new("Login Sequence Number", "nyse.nysebonds.trades.arcatrade.v1.07.a.loginsequencenumber", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.message_body_length = ProtoField.new("Message Body Length", "nyse.nysebonds.trades.arcatrade.v1.07.a.messagebodylength", ftypes.UINT16)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.message_type = ProtoField.new("Message Type", "nyse.nysebonds.trades.arcatrade.v1.07.a.messagetype", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.nyse_bond_symbol = ProtoField.new("Nyse Bond Symbol", "nyse.nysebonds.trades.arcatrade.v1.07.a.nysebondsymbol", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.options_subscription = ProtoField.new("Options Subscription", "nyse.nysebonds.trades.arcatrade.v1.07.a.optionssubscription", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.otc_subscription = ProtoField.new("Otc Subscription", "nyse.nysebonds.trades.arcatrade.v1.07.a.otcsubscription", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.padding = ProtoField.new("Padding", "nyse.nysebonds.trades.arcatrade.v1.07.a.padding", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.padding_ascii_1 = ProtoField.new("Padding Ascii 1", "nyse.nysebonds.trades.arcatrade.v1.07.a.paddingascii1", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.padding_ascii_2 = ProtoField.new("Padding Ascii 2", "nyse.nysebonds.trades.arcatrade.v1.07.a.paddingascii2", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.padding_ascii_3 = ProtoField.new("Padding Ascii 3", "nyse.nysebonds.trades.arcatrade.v1.07.a.paddingascii3", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.password = ProtoField.new("Password", "nyse.nysebonds.trades.arcatrade.v1.07.a.password", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.price = ProtoField.new("Price", "nyse.nysebonds.trades.arcatrade.v1.07.a.price", ftypes.UINT32)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.nysebonds.trades.arcatrade.v1.07.a.pricescalecode", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.quantity = ProtoField.new("Quantity", "nyse.nysebonds.trades.arcatrade.v1.07.a.quantity", ftypes.UINT32)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.reject_code = ProtoField.new("Reject Code", "nyse.nysebonds.trades.arcatrade.v1.07.a.rejectcode", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.security_type = ProtoField.new("Security Type", "nyse.nysebonds.trades.arcatrade.v1.07.a.securitytype", ftypes.UINT8)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.nysebonds.trades.arcatrade.v1.07.a.sequencenumber", ftypes.UINT32)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.system_code = ProtoField.new("System Code", "nyse.nysebonds.trades.arcatrade.v1.07.a.systemcode", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.test_message = ProtoField.new("Test Message", "nyse.nysebonds.trades.arcatrade.v1.07.a.testmessage", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.test_request_text = ProtoField.new("Test Request Text", "nyse.nysebonds.trades.arcatrade.v1.07.a.testrequesttext", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.trade_condition = ProtoField.new("Trade Condition", "nyse.nysebonds.trades.arcatrade.v1.07.a.tradecondition", ftypes.UINT8)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.trade_reference_number = ProtoField.new("Trade Reference Number", "nyse.nysebonds.trades.arcatrade.v1.07.a.tradereferencenumber", ftypes.UINT32)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.username = ProtoField.new("Username", "nyse.nysebonds.trades.arcatrade.v1.07.a.username", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.version_id = ProtoField.new("Version Id", "nyse.nysebonds.trades.arcatrade.v1.07.a.versionid", ftypes.STRING)

-- Nyse NyseBonds Trades ArcaTrade 1.07.a Framing
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.client_message_header = ProtoField.new("Client Message Header", "nyse.nysebonds.trades.arcatrade.v1.07.a.clientmessageheader", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.client_packet = ProtoField.new("Client Packet", "nyse.nysebonds.trades.arcatrade.v1.07.a.clientpacket", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.message = ProtoField.new("Message", "nyse.nysebonds.trades.arcatrade.v1.07.a.message", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.message_header = ProtoField.new("Message Header", "nyse.nysebonds.trades.arcatrade.v1.07.a.messageheader", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.server_packet = ProtoField.new("Server Packet", "nyse.nysebonds.trades.arcatrade.v1.07.a.serverpacket", ftypes.STRING)

-- Nyse NyseBonds Trades 1.07.a Application Messages
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "nyse.nysebonds.trades.arcatrade.v1.07.a.heartbeatmessage", ftypes.BYTES)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.last_sale_message = ProtoField.new("Last Sale Message", "nyse.nysebonds.trades.arcatrade.v1.07.a.lastsalemessage", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.login_accepted_message = ProtoField.new("Login Accepted Message", "nyse.nysebonds.trades.arcatrade.v1.07.a.loginacceptedmessage", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.login_rejected_message = ProtoField.new("Login Rejected Message", "nyse.nysebonds.trades.arcatrade.v1.07.a.loginrejectedmessage", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.nyse_bond_closing_price_message = ProtoField.new("Nyse Bond Closing Price Message", "nyse.nysebonds.trades.arcatrade.v1.07.a.nysebondclosingpricemessage", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.test_response_message = ProtoField.new("Test Response Message", "nyse.nysebonds.trades.arcatrade.v1.07.a.testresponsemessage", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.trade_bust_or_correction_message = ProtoField.new("Trade Bust Or Correction Message", "nyse.nysebonds.trades.arcatrade.v1.07.a.tradebustorcorrectionmessage", ftypes.STRING)

-- Nyse NyseBonds Trades 1.07.a Session Messages
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.nysebonds.trades.arcatrade.v1.07.a.heartbeatresponsemessage", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.login_message = ProtoField.new("Login Message", "nyse.nysebonds.trades.arcatrade.v1.07.a.loginmessage", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.logoff_message = ProtoField.new("Logoff Message", "nyse.nysebonds.trades.arcatrade.v1.07.a.logoffmessage", ftypes.STRING)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.test_request_message = ProtoField.new("Test Request Message", "nyse.nysebonds.trades.arcatrade.v1.07.a.testrequestmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Nyse NyseBonds Trades ArcaTrade 1.07.a Formatting
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

-- Nyse NyseBonds Trades ArcaTrade 1.07.a Element Dissection Options
show.headers = true
show.structs = true
show.session_messages = true
show.application_messages = true

-- Register Nyse NyseBonds Trades ArcaTrade 1.07.a Show Options
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nyse_nysebonds_trades_arcatrade_v1_07_a.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")

-- Handle changed preferences
function omi_nyse_nysebonds_trades_arcatrade_v1_07_a.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nyse_nysebonds_trades_arcatrade_v1_07_a.prefs.show_application_messages then
    show.application_messages = omi_nyse_nysebonds_trades_arcatrade_v1_07_a.prefs.show_application_messages
  end
  if show.headers ~= omi_nyse_nysebonds_trades_arcatrade_v1_07_a.prefs.show_headers then
    show.headers = omi_nyse_nysebonds_trades_arcatrade_v1_07_a.prefs.show_headers
  end
  if show.session_messages ~= omi_nyse_nysebonds_trades_arcatrade_v1_07_a.prefs.show_session_messages then
    show.session_messages = omi_nyse_nysebonds_trades_arcatrade_v1_07_a.prefs.show_session_messages
  end
  if show.structs ~= omi_nyse_nysebonds_trades_arcatrade_v1_07_a.prefs.show_structs then
    show.structs = omi_nyse_nysebonds_trades_arcatrade_v1_07_a.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Nyse NyseBonds Trades ArcaTrade 1.07.a Fields
-----------------------------------------------------------------------

-- Arca Edge Subscription
nyse_nysebonds_trades_arcatrade_v1_07_a.arca_edge_subscription = {}

-- Size: Arca Edge Subscription
nyse_nysebonds_trades_arcatrade_v1_07_a.arca_edge_subscription.size = 1

-- Display: Arca Edge Subscription
nyse_nysebonds_trades_arcatrade_v1_07_a.arca_edge_subscription.display = function(value)
  return "Arca Edge Subscription: "..value
end

-- Dissect: Arca Edge Subscription
nyse_nysebonds_trades_arcatrade_v1_07_a.arca_edge_subscription.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.arca_edge_subscription.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.arca_edge_subscription.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.arca_edge_subscription, range, value, display)

  return offset + length, value
end

-- Bond Subscription
nyse_nysebonds_trades_arcatrade_v1_07_a.bond_subscription = {}

-- Size: Bond Subscription
nyse_nysebonds_trades_arcatrade_v1_07_a.bond_subscription.size = 1

-- Display: Bond Subscription
nyse_nysebonds_trades_arcatrade_v1_07_a.bond_subscription.display = function(value)
  return "Bond Subscription: "..value
end

-- Dissect: Bond Subscription
nyse_nysebonds_trades_arcatrade_v1_07_a.bond_subscription.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.bond_subscription.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.bond_subscription.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.bond_subscription, range, value, display)

  return offset + length, value
end

-- Client Message Type
nyse_nysebonds_trades_arcatrade_v1_07_a.client_message_type = {}

-- Size: Client Message Type
nyse_nysebonds_trades_arcatrade_v1_07_a.client_message_type.size = 1

-- Display: Client Message Type
nyse_nysebonds_trades_arcatrade_v1_07_a.client_message_type.display = function(value)
  return "Client Message Type: "..value
end

-- Dissect: Client Message Type
nyse_nysebonds_trades_arcatrade_v1_07_a.client_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.client_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.client_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.client_message_type, range, value, display)

  return offset + length, value
end

-- Client Padding
nyse_nysebonds_trades_arcatrade_v1_07_a.client_padding = {}

-- Size: Client Padding
nyse_nysebonds_trades_arcatrade_v1_07_a.client_padding.size = 5

-- Display: Client Padding
nyse_nysebonds_trades_arcatrade_v1_07_a.client_padding.display = function(value)
  return "Client Padding: "..value
end

-- Dissect: Client Padding
nyse_nysebonds_trades_arcatrade_v1_07_a.client_padding.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.client_padding.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.client_padding.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.client_padding, range, value, display)

  return offset + length, value
end

-- Closing Price
nyse_nysebonds_trades_arcatrade_v1_07_a.closing_price = {}

-- Size: Closing Price
nyse_nysebonds_trades_arcatrade_v1_07_a.closing_price.size = 4

-- Display: Closing Price
nyse_nysebonds_trades_arcatrade_v1_07_a.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Dissect: Closing Price
nyse_nysebonds_trades_arcatrade_v1_07_a.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.closing_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Closing Time
nyse_nysebonds_trades_arcatrade_v1_07_a.closing_time = {}

-- Size: Closing Time
nyse_nysebonds_trades_arcatrade_v1_07_a.closing_time.size = 4

-- Display: Closing Time
nyse_nysebonds_trades_arcatrade_v1_07_a.closing_time.display = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
nyse_nysebonds_trades_arcatrade_v1_07_a.closing_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.closing_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.closing_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.closing_time, range, value, display)

  return offset + length, value
end

-- Cusip Isin
nyse_nysebonds_trades_arcatrade_v1_07_a.cusip_isin = {}

-- Size: Cusip Isin
nyse_nysebonds_trades_arcatrade_v1_07_a.cusip_isin.size = 14

-- Display: Cusip Isin
nyse_nysebonds_trades_arcatrade_v1_07_a.cusip_isin.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cusip Isin: No Value"
  end

  return "Cusip Isin: "..value
end

-- Dissect: Cusip Isin
nyse_nysebonds_trades_arcatrade_v1_07_a.cusip_isin.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.cusip_isin.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.cusip_isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.cusip_isin, range, value, display)

  return offset + length, value
end

-- Etf Subscription
nyse_nysebonds_trades_arcatrade_v1_07_a.etf_subscription = {}

-- Size: Etf Subscription
nyse_nysebonds_trades_arcatrade_v1_07_a.etf_subscription.size = 1

-- Display: Etf Subscription
nyse_nysebonds_trades_arcatrade_v1_07_a.etf_subscription.display = function(value)
  return "Etf Subscription: "..value
end

-- Dissect: Etf Subscription
nyse_nysebonds_trades_arcatrade_v1_07_a.etf_subscription.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.etf_subscription.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.etf_subscription.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.etf_subscription, range, value, display)

  return offset + length, value
end

-- Etx
nyse_nysebonds_trades_arcatrade_v1_07_a.etx = {}

-- Size: Etx
nyse_nysebonds_trades_arcatrade_v1_07_a.etx.size = 1

-- Display: Etx
nyse_nysebonds_trades_arcatrade_v1_07_a.etx.display = function(value)
  return "Etx: "..value
end

-- Dissect: Etx
nyse_nysebonds_trades_arcatrade_v1_07_a.etx.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.etx.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.etx.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.etx, range, value, display)

  return offset + length, value
end

-- Event Code
nyse_nysebonds_trades_arcatrade_v1_07_a.event_code = {}

-- Size: Event Code
nyse_nysebonds_trades_arcatrade_v1_07_a.event_code.size = 1

-- Display: Event Code
nyse_nysebonds_trades_arcatrade_v1_07_a.event_code.display = function(value)
  if value == "B" then
    return "Event Code: Trade Bust (B)"
  end
  if value == "C" then
    return "Event Code: Trade Correction (C)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nyse_nysebonds_trades_arcatrade_v1_07_a.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.event_code, range, value, display)

  return offset + length, value
end

-- Exchange Code
nyse_nysebonds_trades_arcatrade_v1_07_a.exchange_code = {}

-- Size: Exchange Code
nyse_nysebonds_trades_arcatrade_v1_07_a.exchange_code.size = 1

-- Display: Exchange Code
nyse_nysebonds_trades_arcatrade_v1_07_a.exchange_code.display = function(value)
  if value == "N" then
    return "Exchange Code: Nyse Listed Bond (N)"
  end

  return "Exchange Code: Unknown("..value..")"
end

-- Dissect: Exchange Code
nyse_nysebonds_trades_arcatrade_v1_07_a.exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.exchange_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Last Sale Time
nyse_nysebonds_trades_arcatrade_v1_07_a.last_sale_time = {}

-- Size: Last Sale Time
nyse_nysebonds_trades_arcatrade_v1_07_a.last_sale_time.size = 4

-- Display: Last Sale Time
nyse_nysebonds_trades_arcatrade_v1_07_a.last_sale_time.display = function(value)
  return "Last Sale Time: "..value
end

-- Dissect: Last Sale Time
nyse_nysebonds_trades_arcatrade_v1_07_a.last_sale_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.last_sale_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.last_sale_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.last_sale_time, range, value, display)

  return offset + length, value
end

-- Listed Subscription
nyse_nysebonds_trades_arcatrade_v1_07_a.listed_subscription = {}

-- Size: Listed Subscription
nyse_nysebonds_trades_arcatrade_v1_07_a.listed_subscription.size = 1

-- Display: Listed Subscription
nyse_nysebonds_trades_arcatrade_v1_07_a.listed_subscription.display = function(value)
  return "Listed Subscription: "..value
end

-- Dissect: Listed Subscription
nyse_nysebonds_trades_arcatrade_v1_07_a.listed_subscription.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.listed_subscription.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.listed_subscription.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.listed_subscription, range, value, display)

  return offset + length, value
end

-- Login Sequence Number
nyse_nysebonds_trades_arcatrade_v1_07_a.login_sequence_number = {}

-- Size: Login Sequence Number
nyse_nysebonds_trades_arcatrade_v1_07_a.login_sequence_number.size = 10

-- Display: Login Sequence Number
nyse_nysebonds_trades_arcatrade_v1_07_a.login_sequence_number.display = function(value)
  return "Login Sequence Number: "..value
end

-- Dissect: Login Sequence Number
nyse_nysebonds_trades_arcatrade_v1_07_a.login_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.login_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.login_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.login_sequence_number, range, value, display)

  return offset + length, value
end

-- Message Body Length
nyse_nysebonds_trades_arcatrade_v1_07_a.message_body_length = {}

-- Size: Message Body Length
nyse_nysebonds_trades_arcatrade_v1_07_a.message_body_length.size = 2

-- Display: Message Body Length
nyse_nysebonds_trades_arcatrade_v1_07_a.message_body_length.display = function(value)
  return "Message Body Length: "..value
end

-- Dissect: Message Body Length
nyse_nysebonds_trades_arcatrade_v1_07_a.message_body_length.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.message_body_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.message_body_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.message_body_length, range, value, display)

  return offset + length, value
end

-- Message Type
nyse_nysebonds_trades_arcatrade_v1_07_a.message_type = {}

-- Size: Message Type
nyse_nysebonds_trades_arcatrade_v1_07_a.message_type.size = 1

-- Display: Message Type
nyse_nysebonds_trades_arcatrade_v1_07_a.message_type.display = function(value)
  if value == "Q" then
    return "Message Type: Login Accepted Message (Q)"
  end
  if value == "R" then
    return "Message Type: Login Rejected Message (R)"
  end
  if value == "H" then
    return "Message Type: Heartbeat Message (H)"
  end
  if value == "S" then
    return "Message Type: Test Response Message (S)"
  end
  if value == "X" then
    return "Message Type: Last Sale Message (X)"
  end
  if value == "U" then
    return "Message Type: Trade Bust Or Correction Message (U)"
  end
  if value == "Z" then
    return "Message Type: Nyse Bond Closing Price Message (Z)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nyse_nysebonds_trades_arcatrade_v1_07_a.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nyse Bond Symbol
nyse_nysebonds_trades_arcatrade_v1_07_a.nyse_bond_symbol = {}

-- Size: Nyse Bond Symbol
nyse_nysebonds_trades_arcatrade_v1_07_a.nyse_bond_symbol.size = 22

-- Display: Nyse Bond Symbol
nyse_nysebonds_trades_arcatrade_v1_07_a.nyse_bond_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Nyse Bond Symbol: No Value"
  end

  return "Nyse Bond Symbol: "..value
end

-- Dissect: Nyse Bond Symbol
nyse_nysebonds_trades_arcatrade_v1_07_a.nyse_bond_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.nyse_bond_symbol.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.nyse_bond_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.nyse_bond_symbol, range, value, display)

  return offset + length, value
end

-- Options Subscription
nyse_nysebonds_trades_arcatrade_v1_07_a.options_subscription = {}

-- Size: Options Subscription
nyse_nysebonds_trades_arcatrade_v1_07_a.options_subscription.size = 1

-- Display: Options Subscription
nyse_nysebonds_trades_arcatrade_v1_07_a.options_subscription.display = function(value)
  return "Options Subscription: "..value
end

-- Dissect: Options Subscription
nyse_nysebonds_trades_arcatrade_v1_07_a.options_subscription.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.options_subscription.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.options_subscription.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.options_subscription, range, value, display)

  return offset + length, value
end

-- Otc Subscription
nyse_nysebonds_trades_arcatrade_v1_07_a.otc_subscription = {}

-- Size: Otc Subscription
nyse_nysebonds_trades_arcatrade_v1_07_a.otc_subscription.size = 1

-- Display: Otc Subscription
nyse_nysebonds_trades_arcatrade_v1_07_a.otc_subscription.display = function(value)
  return "Otc Subscription: "..value
end

-- Dissect: Otc Subscription
nyse_nysebonds_trades_arcatrade_v1_07_a.otc_subscription.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.otc_subscription.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.otc_subscription.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.otc_subscription, range, value, display)

  return offset + length, value
end

-- Padding
nyse_nysebonds_trades_arcatrade_v1_07_a.padding = {}

-- Size: Padding
nyse_nysebonds_trades_arcatrade_v1_07_a.padding.size = 1

-- Display: Padding
nyse_nysebonds_trades_arcatrade_v1_07_a.padding.display = function(value)
  return "Padding: "..value
end

-- Dissect: Padding
nyse_nysebonds_trades_arcatrade_v1_07_a.padding.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.padding.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.padding.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.padding, range, value, display)

  return offset + length, value
end

-- Padding Ascii 1
nyse_nysebonds_trades_arcatrade_v1_07_a.padding_ascii_1 = {}

-- Size: Padding Ascii 1
nyse_nysebonds_trades_arcatrade_v1_07_a.padding_ascii_1.size = 1

-- Display: Padding Ascii 1
nyse_nysebonds_trades_arcatrade_v1_07_a.padding_ascii_1.display = function(value)
  return "Padding Ascii 1: "..value
end

-- Dissect: Padding Ascii 1
nyse_nysebonds_trades_arcatrade_v1_07_a.padding_ascii_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.padding_ascii_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.padding_ascii_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.padding_ascii_1, range, value, display)

  return offset + length, value
end

-- Padding Ascii 2
nyse_nysebonds_trades_arcatrade_v1_07_a.padding_ascii_2 = {}

-- Size: Padding Ascii 2
nyse_nysebonds_trades_arcatrade_v1_07_a.padding_ascii_2.size = 2

-- Display: Padding Ascii 2
nyse_nysebonds_trades_arcatrade_v1_07_a.padding_ascii_2.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Padding Ascii 2: No Value"
  end

  return "Padding Ascii 2: "..value
end

-- Dissect: Padding Ascii 2
nyse_nysebonds_trades_arcatrade_v1_07_a.padding_ascii_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.padding_ascii_2.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.padding_ascii_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.padding_ascii_2, range, value, display)

  return offset + length, value
end

-- Padding Ascii 3
nyse_nysebonds_trades_arcatrade_v1_07_a.padding_ascii_3 = {}

-- Size: Padding Ascii 3
nyse_nysebonds_trades_arcatrade_v1_07_a.padding_ascii_3.size = 3

-- Display: Padding Ascii 3
nyse_nysebonds_trades_arcatrade_v1_07_a.padding_ascii_3.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Padding Ascii 3: No Value"
  end

  return "Padding Ascii 3: "..value
end

-- Dissect: Padding Ascii 3
nyse_nysebonds_trades_arcatrade_v1_07_a.padding_ascii_3.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.padding_ascii_3.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.padding_ascii_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.padding_ascii_3, range, value, display)

  return offset + length, value
end

-- Password
nyse_nysebonds_trades_arcatrade_v1_07_a.password = {}

-- Size: Password
nyse_nysebonds_trades_arcatrade_v1_07_a.password.size = 10

-- Display: Password
nyse_nysebonds_trades_arcatrade_v1_07_a.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nyse_nysebonds_trades_arcatrade_v1_07_a.password.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.password, range, value, display)

  return offset + length, value
end

-- Price
nyse_nysebonds_trades_arcatrade_v1_07_a.price = {}

-- Size: Price
nyse_nysebonds_trades_arcatrade_v1_07_a.price.size = 4

-- Display: Price
nyse_nysebonds_trades_arcatrade_v1_07_a.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
nyse_nysebonds_trades_arcatrade_v1_07_a.price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.price, range, value, display)

  return offset + length, value
end

-- Price Scale Code
nyse_nysebonds_trades_arcatrade_v1_07_a.price_scale_code = {}

-- Size: Price Scale Code
nyse_nysebonds_trades_arcatrade_v1_07_a.price_scale_code.size = 1

-- Display: Price Scale Code
nyse_nysebonds_trades_arcatrade_v1_07_a.price_scale_code.display = function(value)
  if value == "0" then
    return "Price Scale Code: No Division (0)"
  end
  if value == "1" then
    return "Price Scale Code: Ten (1)"
  end
  if value == "2" then
    return "Price Scale Code: One Hundred (2)"
  end
  if value == "3" then
    return "Price Scale Code: One Thousand (3)"
  end
  if value == "4" then
    return "Price Scale Code: Ten Thousand (4)"
  end
  if value == "5" then
    return "Price Scale Code: One Hundred Thousand (5)"
  end
  if value == "6" then
    return "Price Scale Code: One Million (6)"
  end

  return "Price Scale Code: Unknown("..value..")"
end

-- Dissect: Price Scale Code
nyse_nysebonds_trades_arcatrade_v1_07_a.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.price_scale_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Quantity
nyse_nysebonds_trades_arcatrade_v1_07_a.quantity = {}

-- Size: Quantity
nyse_nysebonds_trades_arcatrade_v1_07_a.quantity.size = 4

-- Display: Quantity
nyse_nysebonds_trades_arcatrade_v1_07_a.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
nyse_nysebonds_trades_arcatrade_v1_07_a.quantity.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reject Code
nyse_nysebonds_trades_arcatrade_v1_07_a.reject_code = {}

-- Size: Reject Code
nyse_nysebonds_trades_arcatrade_v1_07_a.reject_code.size = 1

-- Display: Reject Code
nyse_nysebonds_trades_arcatrade_v1_07_a.reject_code.display = function(value)
  if value == "A" then
    return "Reject Code: Not Authorized (A)"
  end
  if value == "M" then
    return "Reject Code: Maximum Server Connections Reached (M)"
  end
  if value == "R" then
    return "Reject Code: Invalid Subscription (R)"
  end
  if value == "S" then
    return "Reject Code: Invalid Sequence (S)"
  end
  if value == "T" then
    return "Reject Code: Timeout (T)"
  end

  return "Reject Code: Unknown("..value..")"
end

-- Dissect: Reject Code
nyse_nysebonds_trades_arcatrade_v1_07_a.reject_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.reject_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.reject_code, range, value, display)

  return offset + length, value
end

-- Security Type
nyse_nysebonds_trades_arcatrade_v1_07_a.security_type = {}

-- Size: Security Type
nyse_nysebonds_trades_arcatrade_v1_07_a.security_type.size = 1

-- Display: Security Type
nyse_nysebonds_trades_arcatrade_v1_07_a.security_type.display = function(value)
  if value == 1 then
    return "Security Type: Corporate Bonds (1)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
nyse_nysebonds_trades_arcatrade_v1_07_a.security_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.security_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.security_type, range, value, display)

  return offset + length, value
end

-- Sequence Number
nyse_nysebonds_trades_arcatrade_v1_07_a.sequence_number = {}

-- Size: Sequence Number
nyse_nysebonds_trades_arcatrade_v1_07_a.sequence_number.size = 4

-- Display: Sequence Number
nyse_nysebonds_trades_arcatrade_v1_07_a.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nyse_nysebonds_trades_arcatrade_v1_07_a.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- System Code
nyse_nysebonds_trades_arcatrade_v1_07_a.system_code = {}

-- Size: System Code
nyse_nysebonds_trades_arcatrade_v1_07_a.system_code.size = 1

-- Display: System Code
nyse_nysebonds_trades_arcatrade_v1_07_a.system_code.display = function(value)
  if value == "F" then
    return "System Code: Bonds Trading Platform (F)"
  end

  return "System Code: Unknown("..value..")"
end

-- Dissect: System Code
nyse_nysebonds_trades_arcatrade_v1_07_a.system_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.system_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.system_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.system_code, range, value, display)

  return offset + length, value
end

-- Test Message
nyse_nysebonds_trades_arcatrade_v1_07_a.test_message = {}

-- Size: Test Message
nyse_nysebonds_trades_arcatrade_v1_07_a.test_message.size = 20

-- Display: Test Message
nyse_nysebonds_trades_arcatrade_v1_07_a.test_message.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Test Message: No Value"
  end

  return "Test Message: "..value
end

-- Dissect: Test Message
nyse_nysebonds_trades_arcatrade_v1_07_a.test_message.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.test_message.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.test_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.test_message, range, value, display)

  return offset + length, value
end

-- Test Request Text
nyse_nysebonds_trades_arcatrade_v1_07_a.test_request_text = {}

-- Size: Test Request Text
nyse_nysebonds_trades_arcatrade_v1_07_a.test_request_text.size = 20

-- Display: Test Request Text
nyse_nysebonds_trades_arcatrade_v1_07_a.test_request_text.display = function(value)
  return "Test Request Text: "..value
end

-- Dissect: Test Request Text
nyse_nysebonds_trades_arcatrade_v1_07_a.test_request_text.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.test_request_text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.test_request_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.test_request_text, range, value, display)

  return offset + length, value
end

-- Trade Condition
nyse_nysebonds_trades_arcatrade_v1_07_a.trade_condition = {}

-- Size: Trade Condition
nyse_nysebonds_trades_arcatrade_v1_07_a.trade_condition.size = 1

-- Display: Trade Condition
nyse_nysebonds_trades_arcatrade_v1_07_a.trade_condition.display = function(value)
  return "Trade Condition: "..value
end

-- Dissect: Trade Condition
nyse_nysebonds_trades_arcatrade_v1_07_a.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.trade_condition.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trade Reference Number
nyse_nysebonds_trades_arcatrade_v1_07_a.trade_reference_number = {}

-- Size: Trade Reference Number
nyse_nysebonds_trades_arcatrade_v1_07_a.trade_reference_number.size = 4

-- Display: Trade Reference Number
nyse_nysebonds_trades_arcatrade_v1_07_a.trade_reference_number.display = function(value)
  return "Trade Reference Number: "..value
end

-- Dissect: Trade Reference Number
nyse_nysebonds_trades_arcatrade_v1_07_a.trade_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.trade_reference_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.trade_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.trade_reference_number, range, value, display)

  return offset + length, value
end

-- Username
nyse_nysebonds_trades_arcatrade_v1_07_a.username = {}

-- Size: Username
nyse_nysebonds_trades_arcatrade_v1_07_a.username.size = 8

-- Display: Username
nyse_nysebonds_trades_arcatrade_v1_07_a.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nyse_nysebonds_trades_arcatrade_v1_07_a.username.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.username.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.username, range, value, display)

  return offset + length, value
end

-- Version Id
nyse_nysebonds_trades_arcatrade_v1_07_a.version_id = {}

-- Size: Version Id
nyse_nysebonds_trades_arcatrade_v1_07_a.version_id.size = 5

-- Display: Version Id
nyse_nysebonds_trades_arcatrade_v1_07_a.version_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Version Id: No Value"
  end

  return "Version Id: "..value
end

-- Dissect: Version Id
nyse_nysebonds_trades_arcatrade_v1_07_a.version_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_trades_arcatrade_v1_07_a.version_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nyse_nysebonds_trades_arcatrade_v1_07_a.version_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.version_id, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nyse NyseBonds Trades ArcaTrade 1.07.a
-----------------------------------------------------------------------

-- Test Request Message
nyse_nysebonds_trades_arcatrade_v1_07_a.test_request_message = {}

-- Size: Test Request Message
nyse_nysebonds_trades_arcatrade_v1_07_a.test_request_message.size =
  nyse_nysebonds_trades_arcatrade_v1_07_a.test_request_text.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.etx.size

-- Display: Test Request Message
nyse_nysebonds_trades_arcatrade_v1_07_a.test_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Test Request Message
nyse_nysebonds_trades_arcatrade_v1_07_a.test_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Test Request Text: 20 Byte Ascii String
  index, test_request_text = nyse_nysebonds_trades_arcatrade_v1_07_a.test_request_text.dissect(buffer, index, packet, parent)

  -- Etx: 1 Byte Unsigned Fixed Width Integer
  index, etx = nyse_nysebonds_trades_arcatrade_v1_07_a.etx.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Test Request Message
nyse_nysebonds_trades_arcatrade_v1_07_a.test_request_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.test_request_message, buffer(offset, 0))
    local index = nyse_nysebonds_trades_arcatrade_v1_07_a.test_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_trades_arcatrade_v1_07_a.test_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_trades_arcatrade_v1_07_a.test_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Response Message
nyse_nysebonds_trades_arcatrade_v1_07_a.heartbeat_response_message = {}

-- Size: Heartbeat Response Message
nyse_nysebonds_trades_arcatrade_v1_07_a.heartbeat_response_message.size =
  nyse_nysebonds_trades_arcatrade_v1_07_a.etx.size

-- Display: Heartbeat Response Message
nyse_nysebonds_trades_arcatrade_v1_07_a.heartbeat_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Response Message
nyse_nysebonds_trades_arcatrade_v1_07_a.heartbeat_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Etx: 1 Byte Unsigned Fixed Width Integer
  index, etx = nyse_nysebonds_trades_arcatrade_v1_07_a.etx.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response Message
nyse_nysebonds_trades_arcatrade_v1_07_a.heartbeat_response_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.heartbeat_response_message, buffer(offset, 0))
    local index = nyse_nysebonds_trades_arcatrade_v1_07_a.heartbeat_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_trades_arcatrade_v1_07_a.heartbeat_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_trades_arcatrade_v1_07_a.heartbeat_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Logoff Message
nyse_nysebonds_trades_arcatrade_v1_07_a.logoff_message = {}

-- Size: Logoff Message
nyse_nysebonds_trades_arcatrade_v1_07_a.logoff_message.size =
  nyse_nysebonds_trades_arcatrade_v1_07_a.etx.size

-- Display: Logoff Message
nyse_nysebonds_trades_arcatrade_v1_07_a.logoff_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logoff Message
nyse_nysebonds_trades_arcatrade_v1_07_a.logoff_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Etx: 1 Byte Unsigned Fixed Width Integer
  index, etx = nyse_nysebonds_trades_arcatrade_v1_07_a.etx.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logoff Message
nyse_nysebonds_trades_arcatrade_v1_07_a.logoff_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.logoff_message, buffer(offset, 0))
    local index = nyse_nysebonds_trades_arcatrade_v1_07_a.logoff_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_trades_arcatrade_v1_07_a.logoff_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_trades_arcatrade_v1_07_a.logoff_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Message
nyse_nysebonds_trades_arcatrade_v1_07_a.login_message = {}

-- Size: Login Message
nyse_nysebonds_trades_arcatrade_v1_07_a.login_message.size =
  nyse_nysebonds_trades_arcatrade_v1_07_a.username.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.password.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.login_sequence_number.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.listed_subscription.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.etf_subscription.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.otc_subscription.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.arca_edge_subscription.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.bond_subscription.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.options_subscription.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.client_padding.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.etx.size

-- Display: Login Message
nyse_nysebonds_trades_arcatrade_v1_07_a.login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Message
nyse_nysebonds_trades_arcatrade_v1_07_a.login_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 8 Byte Ascii String
  index, username = nyse_nysebonds_trades_arcatrade_v1_07_a.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nyse_nysebonds_trades_arcatrade_v1_07_a.password.dissect(buffer, index, packet, parent)

  -- Login Sequence Number: 10 Byte Ascii String
  index, login_sequence_number = nyse_nysebonds_trades_arcatrade_v1_07_a.login_sequence_number.dissect(buffer, index, packet, parent)

  -- Listed Subscription: 1 Byte Ascii String
  index, listed_subscription = nyse_nysebonds_trades_arcatrade_v1_07_a.listed_subscription.dissect(buffer, index, packet, parent)

  -- Etf Subscription: 1 Byte Ascii String
  index, etf_subscription = nyse_nysebonds_trades_arcatrade_v1_07_a.etf_subscription.dissect(buffer, index, packet, parent)

  -- Otc Subscription: 1 Byte Ascii String
  index, otc_subscription = nyse_nysebonds_trades_arcatrade_v1_07_a.otc_subscription.dissect(buffer, index, packet, parent)

  -- Arca Edge Subscription: 1 Byte Ascii String
  index, arca_edge_subscription = nyse_nysebonds_trades_arcatrade_v1_07_a.arca_edge_subscription.dissect(buffer, index, packet, parent)

  -- Bond Subscription: 1 Byte Ascii String
  index, bond_subscription = nyse_nysebonds_trades_arcatrade_v1_07_a.bond_subscription.dissect(buffer, index, packet, parent)

  -- Options Subscription: 1 Byte Ascii String
  index, options_subscription = nyse_nysebonds_trades_arcatrade_v1_07_a.options_subscription.dissect(buffer, index, packet, parent)

  -- Client Padding: 5 Byte Ascii String
  index, client_padding = nyse_nysebonds_trades_arcatrade_v1_07_a.client_padding.dissect(buffer, index, packet, parent)

  -- Etx: 1 Byte Unsigned Fixed Width Integer
  index, etx = nyse_nysebonds_trades_arcatrade_v1_07_a.etx.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
nyse_nysebonds_trades_arcatrade_v1_07_a.login_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.login_message, buffer(offset, 0))
    local index = nyse_nysebonds_trades_arcatrade_v1_07_a.login_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_trades_arcatrade_v1_07_a.login_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_trades_arcatrade_v1_07_a.login_message.fields(buffer, offset, packet, parent)
  end
end

-- Client Data
nyse_nysebonds_trades_arcatrade_v1_07_a.client_data = {}

-- Dissect: Client Data
nyse_nysebonds_trades_arcatrade_v1_07_a.client_data.dissect = function(buffer, offset, packet, parent, client_message_type)
  -- Dissect Login Message
  if client_message_type == "L" then
    return nyse_nysebonds_trades_arcatrade_v1_07_a.login_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logoff Message
  if client_message_type == "O" then
    return nyse_nysebonds_trades_arcatrade_v1_07_a.logoff_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response Message
  if client_message_type == "H" then
    return nyse_nysebonds_trades_arcatrade_v1_07_a.heartbeat_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Test Request Message
  if client_message_type == "T" then
    return nyse_nysebonds_trades_arcatrade_v1_07_a.test_request_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Message Header
nyse_nysebonds_trades_arcatrade_v1_07_a.client_message_header = {}

-- Size: Client Message Header
nyse_nysebonds_trades_arcatrade_v1_07_a.client_message_header.size =
  nyse_nysebonds_trades_arcatrade_v1_07_a.client_message_type.size

-- Display: Client Message Header
nyse_nysebonds_trades_arcatrade_v1_07_a.client_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Message Header
nyse_nysebonds_trades_arcatrade_v1_07_a.client_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Type: 1 Byte Ascii String
  index, client_message_type = nyse_nysebonds_trades_arcatrade_v1_07_a.client_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Message Header
nyse_nysebonds_trades_arcatrade_v1_07_a.client_message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.client_message_header, buffer(offset, 0))
    local index = nyse_nysebonds_trades_arcatrade_v1_07_a.client_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_trades_arcatrade_v1_07_a.client_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_trades_arcatrade_v1_07_a.client_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Packet
nyse_nysebonds_trades_arcatrade_v1_07_a.client_packet = {}

-- Verify required size of Tcp packet
nyse_nysebonds_trades_arcatrade_v1_07_a.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nyse_nysebonds_trades_arcatrade_v1_07_a.client_message_header.size
end

-- Dissect Client Packet
nyse_nysebonds_trades_arcatrade_v1_07_a.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Client Message Header: Struct of 1 fields
  index, client_message_header = nyse_nysebonds_trades_arcatrade_v1_07_a.client_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Message Type
  local client_message_type = buffer(index - 1, 1):string()

  -- Client Data: Runtime Type with 4 branches
  index = nyse_nysebonds_trades_arcatrade_v1_07_a.client_data.dissect(buffer, index, packet, parent, client_message_type)

  return index
end

-- Nyse Bond Closing Price Message
nyse_nysebonds_trades_arcatrade_v1_07_a.nyse_bond_closing_price_message = {}

-- Size: Nyse Bond Closing Price Message
nyse_nysebonds_trades_arcatrade_v1_07_a.nyse_bond_closing_price_message.size =
  nyse_nysebonds_trades_arcatrade_v1_07_a.closing_time.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.sequence_number.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.trade_reference_number.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.quantity.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.closing_price.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.price_scale_code.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.system_code.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.exchange_code.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.trade_condition.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.security_type.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.nyse_bond_symbol.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.cusip_isin.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.padding_ascii_3.size

-- Display: Nyse Bond Closing Price Message
nyse_nysebonds_trades_arcatrade_v1_07_a.nyse_bond_closing_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Nyse Bond Closing Price Message
nyse_nysebonds_trades_arcatrade_v1_07_a.nyse_bond_closing_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Closing Time: Binary
  index, closing_time = nyse_nysebonds_trades_arcatrade_v1_07_a.closing_time.dissect(buffer, index, packet, parent)

  -- Sequence Number: Binary
  index, sequence_number = nyse_nysebonds_trades_arcatrade_v1_07_a.sequence_number.dissect(buffer, index, packet, parent)

  -- Trade Reference Number: Binary
  index, trade_reference_number = nyse_nysebonds_trades_arcatrade_v1_07_a.trade_reference_number.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = nyse_nysebonds_trades_arcatrade_v1_07_a.quantity.dissect(buffer, index, packet, parent)

  -- Closing Price: Binary
  index, closing_price = nyse_nysebonds_trades_arcatrade_v1_07_a.closing_price.dissect(buffer, index, packet, parent)

  -- Price Scale Code: ASCII
  index, price_scale_code = nyse_nysebonds_trades_arcatrade_v1_07_a.price_scale_code.dissect(buffer, index, packet, parent)

  -- System Code: ASCII
  index, system_code = nyse_nysebonds_trades_arcatrade_v1_07_a.system_code.dissect(buffer, index, packet, parent)

  -- Exchange Code: ASCII
  index, exchange_code = nyse_nysebonds_trades_arcatrade_v1_07_a.exchange_code.dissect(buffer, index, packet, parent)

  -- Trade Condition: Binary
  index, trade_condition = nyse_nysebonds_trades_arcatrade_v1_07_a.trade_condition.dissect(buffer, index, packet, parent)

  -- Security Type: Binary
  index, security_type = nyse_nysebonds_trades_arcatrade_v1_07_a.security_type.dissect(buffer, index, packet, parent)

  -- Nyse Bond Symbol: ASCII
  index, nyse_bond_symbol = nyse_nysebonds_trades_arcatrade_v1_07_a.nyse_bond_symbol.dissect(buffer, index, packet, parent)

  -- Cusip Isin: ASCII
  index, cusip_isin = nyse_nysebonds_trades_arcatrade_v1_07_a.cusip_isin.dissect(buffer, index, packet, parent)

  -- Padding Ascii 3: ASCII
  index, padding_ascii_3 = nyse_nysebonds_trades_arcatrade_v1_07_a.padding_ascii_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Nyse Bond Closing Price Message
nyse_nysebonds_trades_arcatrade_v1_07_a.nyse_bond_closing_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.nyse_bond_closing_price_message, buffer(offset, 0))
    local index = nyse_nysebonds_trades_arcatrade_v1_07_a.nyse_bond_closing_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_trades_arcatrade_v1_07_a.nyse_bond_closing_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_trades_arcatrade_v1_07_a.nyse_bond_closing_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Bust Or Correction Message
nyse_nysebonds_trades_arcatrade_v1_07_a.trade_bust_or_correction_message = {}

-- Size: Trade Bust Or Correction Message
nyse_nysebonds_trades_arcatrade_v1_07_a.trade_bust_or_correction_message.size =
  nyse_nysebonds_trades_arcatrade_v1_07_a.last_sale_time.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.sequence_number.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.trade_reference_number.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.quantity.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.price.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.price_scale_code.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.system_code.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.event_code.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.exchange_code.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.trade_condition.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.security_type.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.nyse_bond_symbol.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.cusip_isin.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.padding_ascii_2.size

-- Display: Trade Bust Or Correction Message
nyse_nysebonds_trades_arcatrade_v1_07_a.trade_bust_or_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Bust Or Correction Message
nyse_nysebonds_trades_arcatrade_v1_07_a.trade_bust_or_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Sale Time: Binary
  index, last_sale_time = nyse_nysebonds_trades_arcatrade_v1_07_a.last_sale_time.dissect(buffer, index, packet, parent)

  -- Sequence Number: Binary
  index, sequence_number = nyse_nysebonds_trades_arcatrade_v1_07_a.sequence_number.dissect(buffer, index, packet, parent)

  -- Trade Reference Number: Binary
  index, trade_reference_number = nyse_nysebonds_trades_arcatrade_v1_07_a.trade_reference_number.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = nyse_nysebonds_trades_arcatrade_v1_07_a.quantity.dissect(buffer, index, packet, parent)

  -- Price: Binary
  index, price = nyse_nysebonds_trades_arcatrade_v1_07_a.price.dissect(buffer, index, packet, parent)

  -- Price Scale Code: ASCII
  index, price_scale_code = nyse_nysebonds_trades_arcatrade_v1_07_a.price_scale_code.dissect(buffer, index, packet, parent)

  -- System Code: ASCII
  index, system_code = nyse_nysebonds_trades_arcatrade_v1_07_a.system_code.dissect(buffer, index, packet, parent)

  -- Event Code: ASCII
  index, event_code = nyse_nysebonds_trades_arcatrade_v1_07_a.event_code.dissect(buffer, index, packet, parent)

  -- Exchange Code: ASCII
  index, exchange_code = nyse_nysebonds_trades_arcatrade_v1_07_a.exchange_code.dissect(buffer, index, packet, parent)

  -- Trade Condition: Binary
  index, trade_condition = nyse_nysebonds_trades_arcatrade_v1_07_a.trade_condition.dissect(buffer, index, packet, parent)

  -- Security Type: Binary
  index, security_type = nyse_nysebonds_trades_arcatrade_v1_07_a.security_type.dissect(buffer, index, packet, parent)

  -- Nyse Bond Symbol: ASCII
  index, nyse_bond_symbol = nyse_nysebonds_trades_arcatrade_v1_07_a.nyse_bond_symbol.dissect(buffer, index, packet, parent)

  -- Cusip Isin: ASCII
  index, cusip_isin = nyse_nysebonds_trades_arcatrade_v1_07_a.cusip_isin.dissect(buffer, index, packet, parent)

  -- Padding Ascii 2: ASCII
  index, padding_ascii_2 = nyse_nysebonds_trades_arcatrade_v1_07_a.padding_ascii_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Bust Or Correction Message
nyse_nysebonds_trades_arcatrade_v1_07_a.trade_bust_or_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.trade_bust_or_correction_message, buffer(offset, 0))
    local index = nyse_nysebonds_trades_arcatrade_v1_07_a.trade_bust_or_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_trades_arcatrade_v1_07_a.trade_bust_or_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_trades_arcatrade_v1_07_a.trade_bust_or_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Sale Message
nyse_nysebonds_trades_arcatrade_v1_07_a.last_sale_message = {}

-- Size: Last Sale Message
nyse_nysebonds_trades_arcatrade_v1_07_a.last_sale_message.size =
  nyse_nysebonds_trades_arcatrade_v1_07_a.last_sale_time.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.sequence_number.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.trade_reference_number.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.quantity.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.price.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.price_scale_code.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.system_code.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.exchange_code.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.trade_condition.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.security_type.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.nyse_bond_symbol.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.cusip_isin.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.padding_ascii_3.size

-- Display: Last Sale Message
nyse_nysebonds_trades_arcatrade_v1_07_a.last_sale_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Sale Message
nyse_nysebonds_trades_arcatrade_v1_07_a.last_sale_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Sale Time: Binary
  index, last_sale_time = nyse_nysebonds_trades_arcatrade_v1_07_a.last_sale_time.dissect(buffer, index, packet, parent)

  -- Sequence Number: Binary
  index, sequence_number = nyse_nysebonds_trades_arcatrade_v1_07_a.sequence_number.dissect(buffer, index, packet, parent)

  -- Trade Reference Number: Binary
  index, trade_reference_number = nyse_nysebonds_trades_arcatrade_v1_07_a.trade_reference_number.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = nyse_nysebonds_trades_arcatrade_v1_07_a.quantity.dissect(buffer, index, packet, parent)

  -- Price: Binary
  index, price = nyse_nysebonds_trades_arcatrade_v1_07_a.price.dissect(buffer, index, packet, parent)

  -- Price Scale Code: ASCII
  index, price_scale_code = nyse_nysebonds_trades_arcatrade_v1_07_a.price_scale_code.dissect(buffer, index, packet, parent)

  -- System Code: ASCII
  index, system_code = nyse_nysebonds_trades_arcatrade_v1_07_a.system_code.dissect(buffer, index, packet, parent)

  -- Exchange Code: ASCII
  index, exchange_code = nyse_nysebonds_trades_arcatrade_v1_07_a.exchange_code.dissect(buffer, index, packet, parent)

  -- Trade Condition: Binary
  index, trade_condition = nyse_nysebonds_trades_arcatrade_v1_07_a.trade_condition.dissect(buffer, index, packet, parent)

  -- Security Type: Binary
  index, security_type = nyse_nysebonds_trades_arcatrade_v1_07_a.security_type.dissect(buffer, index, packet, parent)

  -- Nyse Bond Symbol: ASCII
  index, nyse_bond_symbol = nyse_nysebonds_trades_arcatrade_v1_07_a.nyse_bond_symbol.dissect(buffer, index, packet, parent)

  -- Cusip Isin: ASCII
  index, cusip_isin = nyse_nysebonds_trades_arcatrade_v1_07_a.cusip_isin.dissect(buffer, index, packet, parent)

  -- Padding Ascii 3: ASCII
  index, padding_ascii_3 = nyse_nysebonds_trades_arcatrade_v1_07_a.padding_ascii_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Sale Message
nyse_nysebonds_trades_arcatrade_v1_07_a.last_sale_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.last_sale_message, buffer(offset, 0))
    local index = nyse_nysebonds_trades_arcatrade_v1_07_a.last_sale_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_trades_arcatrade_v1_07_a.last_sale_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_trades_arcatrade_v1_07_a.last_sale_message.fields(buffer, offset, packet, parent)
  end
end

-- Test Response Message
nyse_nysebonds_trades_arcatrade_v1_07_a.test_response_message = {}

-- Size: Test Response Message
nyse_nysebonds_trades_arcatrade_v1_07_a.test_response_message.size =
  nyse_nysebonds_trades_arcatrade_v1_07_a.test_message.size

-- Display: Test Response Message
nyse_nysebonds_trades_arcatrade_v1_07_a.test_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Test Response Message
nyse_nysebonds_trades_arcatrade_v1_07_a.test_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Test Message: ASCII
  index, test_message = nyse_nysebonds_trades_arcatrade_v1_07_a.test_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Test Response Message
nyse_nysebonds_trades_arcatrade_v1_07_a.test_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.test_response_message, buffer(offset, 0))
    local index = nyse_nysebonds_trades_arcatrade_v1_07_a.test_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_trades_arcatrade_v1_07_a.test_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_trades_arcatrade_v1_07_a.test_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Rejected Message
nyse_nysebonds_trades_arcatrade_v1_07_a.login_rejected_message = {}

-- Size: Login Rejected Message
nyse_nysebonds_trades_arcatrade_v1_07_a.login_rejected_message.size =
  nyse_nysebonds_trades_arcatrade_v1_07_a.reject_code.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.padding_ascii_1.size

-- Display: Login Rejected Message
nyse_nysebonds_trades_arcatrade_v1_07_a.login_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Message
nyse_nysebonds_trades_arcatrade_v1_07_a.login_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Code: ASCII
  index, reject_code = nyse_nysebonds_trades_arcatrade_v1_07_a.reject_code.dissect(buffer, index, packet, parent)

  -- Padding Ascii 1: ASCII
  index, padding_ascii_1 = nyse_nysebonds_trades_arcatrade_v1_07_a.padding_ascii_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Message
nyse_nysebonds_trades_arcatrade_v1_07_a.login_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.login_rejected_message, buffer(offset, 0))
    local index = nyse_nysebonds_trades_arcatrade_v1_07_a.login_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_trades_arcatrade_v1_07_a.login_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_trades_arcatrade_v1_07_a.login_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Message
nyse_nysebonds_trades_arcatrade_v1_07_a.login_accepted_message = {}

-- Size: Login Accepted Message
nyse_nysebonds_trades_arcatrade_v1_07_a.login_accepted_message.size =
  nyse_nysebonds_trades_arcatrade_v1_07_a.version_id.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.padding_ascii_1.size

-- Display: Login Accepted Message
nyse_nysebonds_trades_arcatrade_v1_07_a.login_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Message
nyse_nysebonds_trades_arcatrade_v1_07_a.login_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version Id: ASCII
  index, version_id = nyse_nysebonds_trades_arcatrade_v1_07_a.version_id.dissect(buffer, index, packet, parent)

  -- Padding Ascii 1: ASCII
  index, padding_ascii_1 = nyse_nysebonds_trades_arcatrade_v1_07_a.padding_ascii_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Message
nyse_nysebonds_trades_arcatrade_v1_07_a.login_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.login_accepted_message, buffer(offset, 0))
    local index = nyse_nysebonds_trades_arcatrade_v1_07_a.login_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_trades_arcatrade_v1_07_a.login_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_trades_arcatrade_v1_07_a.login_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nyse_nysebonds_trades_arcatrade_v1_07_a.payload = {}

-- Dissect: Payload
nyse_nysebonds_trades_arcatrade_v1_07_a.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Accepted Message
  if message_type == "Q" then
    return nyse_nysebonds_trades_arcatrade_v1_07_a.login_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Message
  if message_type == "R" then
    return nyse_nysebonds_trades_arcatrade_v1_07_a.login_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if message_type == "H" then
    return offset
  end
  -- Dissect Test Response Message
  if message_type == "S" then
    return nyse_nysebonds_trades_arcatrade_v1_07_a.test_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Last Sale Message
  if message_type == "X" then
    return nyse_nysebonds_trades_arcatrade_v1_07_a.last_sale_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Bust Or Correction Message
  if message_type == "U" then
    return nyse_nysebonds_trades_arcatrade_v1_07_a.trade_bust_or_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Nyse Bond Closing Price Message
  if message_type == "Z" then
    return nyse_nysebonds_trades_arcatrade_v1_07_a.nyse_bond_closing_price_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nyse_nysebonds_trades_arcatrade_v1_07_a.message_header = {}

-- Size: Message Header
nyse_nysebonds_trades_arcatrade_v1_07_a.message_header.size =
  nyse_nysebonds_trades_arcatrade_v1_07_a.message_body_length.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.message_type.size + 
  nyse_nysebonds_trades_arcatrade_v1_07_a.padding.size

-- Display: Message Header
nyse_nysebonds_trades_arcatrade_v1_07_a.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_nysebonds_trades_arcatrade_v1_07_a.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Body Length: 2 Byte Unsigned Fixed Width Integer
  index, message_body_length = nyse_nysebonds_trades_arcatrade_v1_07_a.message_body_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 7 values
  index, message_type = nyse_nysebonds_trades_arcatrade_v1_07_a.message_type.dissect(buffer, index, packet, parent)

  -- Padding: 1 Byte Ascii String
  index, padding = nyse_nysebonds_trades_arcatrade_v1_07_a.padding.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_nysebonds_trades_arcatrade_v1_07_a.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.message_header, buffer(offset, 0))
    local index = nyse_nysebonds_trades_arcatrade_v1_07_a.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_trades_arcatrade_v1_07_a.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_trades_arcatrade_v1_07_a.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nyse_nysebonds_trades_arcatrade_v1_07_a.message = {}

-- Display: Message
nyse_nysebonds_trades_arcatrade_v1_07_a.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_nysebonds_trades_arcatrade_v1_07_a.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = nyse_nysebonds_trades_arcatrade_v1_07_a.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 1):string()

  -- Payload: Runtime Type with 7 branches
  index = nyse_nysebonds_trades_arcatrade_v1_07_a.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_nysebonds_trades_arcatrade_v1_07_a.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a.fields.message, buffer(offset, 0))
    local current = nyse_nysebonds_trades_arcatrade_v1_07_a.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = nyse_nysebonds_trades_arcatrade_v1_07_a.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_nysebonds_trades_arcatrade_v1_07_a.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Server Packet
nyse_nysebonds_trades_arcatrade_v1_07_a.server_packet = {}

-- Verify required size of Tcp packet
nyse_nysebonds_trades_arcatrade_v1_07_a.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nyse_nysebonds_trades_arcatrade_v1_07_a.message_header.size
end

-- Dissect Server Packet
nyse_nysebonds_trades_arcatrade_v1_07_a.server_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Body Length
    local message_body_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_body_length + 4

    -- Message: Struct of 2 fields
    index, message = nyse_nysebonds_trades_arcatrade_v1_07_a.message.dissect(buffer, index, packet, parent, size_of_message)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_nysebonds_trades_arcatrade_v1_07_a.init()
end

-- Connection roles for Nyse NyseBonds Trades ArcaTrade 1.07.a: Client is the initiator, Exchange is the acceptor
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
nyse_nysebonds_trades_arcatrade_v1_07_a.role = function(packet)
  if omi_nyse_nysebonds_trades_arcatrade_v1_07_a.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nyse_nysebonds_trades_arcatrade_v1_07_a.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nyse_nysebonds_trades_arcatrade_v1_07_a.prefs.acceptor_port

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

  if omi_nyse_nysebonds_trades_arcatrade_v1_07_a.prefs.swap_sides then
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
nyse_nysebonds_trades_arcatrade_v1_07_a.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nyse NyseBonds Trades ArcaTrade 1.07.a
function omi_nyse_nysebonds_trades_arcatrade_v1_07_a.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nyse_nysebonds_trades_arcatrade_v1_07_a.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_nysebonds_trades_arcatrade_v1_07_a, buffer(), omi_nyse_nysebonds_trades_arcatrade_v1_07_a.description, "("..buffer:len().." Bytes)")
  local role = nyse_nysebonds_trades_arcatrade_v1_07_a.role(packet)

  if role == "initiator" then
    return nyse_nysebonds_trades_arcatrade_v1_07_a.client_packet.dissect(buffer, packet, protocol)
  end

  return nyse_nysebonds_trades_arcatrade_v1_07_a.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Server Packet: would its message dispatch accept this frame?
nyse_nysebonds_trades_arcatrade_v1_07_a.server_packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end

  local message_type = buffer(2, 1):string()

  -- Login Accepted Message
  if message_type == "Q" then
    return true
  end

  -- Login Rejected Message
  if message_type == "R" then
    return true
  end

  -- Heartbeat Message
  if message_type == "H" then
    return true
  end

  -- Test Response Message
  if message_type == "S" then
    return true
  end

  -- Last Sale Message
  if message_type == "X" then
    return true
  end

  -- Trade Bust Or Correction Message
  if message_type == "U" then
    return true
  end

  -- Nyse Bond Closing Price Message
  if message_type == "Z" then
    return true
  end

  return false
end

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nyse_nysebonds_trades_arcatrade_v1_07_a.client_packet.fingerprint = function(buffer)
  if buffer:len() < 1 then
    return false
  end

  local client_message_type = buffer(0, 1):string()

  -- Login Message
  if client_message_type == "L" then
    return true
  end

  -- Logoff Message
  if client_message_type == "O" then
    return true
  end

  -- Heartbeat Response Message
  if client_message_type == "H" then
    return true
  end

  -- Test Request Message
  if client_message_type == "T" then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nyse NyseBonds Trades ArcaTrade 1.07.a (Tcp)
local function omi_nyse_nysebonds_trades_arcatrade_v1_07_a_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_nysebonds_trades_arcatrade_v1_07_a.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nyse_nysebonds_trades_arcatrade_v1_07_a.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_nysebonds_trades_arcatrade_v1_07_a
  omi_nyse_nysebonds_trades_arcatrade_v1_07_a.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nyse NyseBonds Trades ArcaTrade 1.07.a (Tcp)
local function omi_nyse_nysebonds_trades_arcatrade_v1_07_a_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_nysebonds_trades_arcatrade_v1_07_a.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nyse_nysebonds_trades_arcatrade_v1_07_a.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_nysebonds_trades_arcatrade_v1_07_a
  omi_nyse_nysebonds_trades_arcatrade_v1_07_a.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nyse NyseBonds Trades ArcaTrade 1.07.a (Tcp): apply the heuristic of the sender's connection role
local function omi_nyse_nysebonds_trades_arcatrade_v1_07_a_tcp_heuristic(buffer, packet, parent)
  local role = nyse_nysebonds_trades_arcatrade_v1_07_a.role(packet)
  local initiator = omi_nyse_nysebonds_trades_arcatrade_v1_07_a_tcp_initiator_heuristic
  local acceptor = omi_nyse_nysebonds_trades_arcatrade_v1_07_a_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nyse_nysebonds_trades_arcatrade_v1_07_a.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nyse_nysebonds_trades_arcatrade_v1_07_a.swap(packet)

  return false
end

-- Register Heuristics for Nyse NyseBonds Trades ArcaTrade 1.07.a
omi_nyse_nysebonds_trades_arcatrade_v1_07_a:register_heuristic("tcp", omi_nyse_nysebonds_trades_arcatrade_v1_07_a_tcp_heuristic)

-- Register Nyse NyseBonds Trades ArcaTrade 1.07.a for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nyse_nysebonds_trades_arcatrade_v1_07_a)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 1.07.a
--   Date: Tuesday, September 4, 2012
--   Specification: NYSE_Bonds_Trades_Client_Specification_v1.07a.pdf
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
